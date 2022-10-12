void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for (int x=0; x < width+100; x = x + width/10) {
    for (int y = 0; y < height+100; y = y + height/20) {
      scale(x, y);

    }
  }
}
void scale(int x, int y) {
  stroke(0);
  fill(random(255), random(255), random(255));
  arc(x, y, width/10, height/10, 0, PI / 2.0); // lower quarter circle
  arc(x, y, width/10, height/10, -PI, 0);  // upper half of circle
  arc(x, y, width/10, height/10, -PI / 6, PI / 6); // 60 degrees
  arc(x, y, width/5, height/10, PI / 2, 3 * PI / 2); // 180 degrees
}
