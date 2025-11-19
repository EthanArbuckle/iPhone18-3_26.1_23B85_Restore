@interface InteractiveLabel
- (_TtC7Measure16InteractiveLabel)initWithFrame:(CGRect)a3 textContainer:(id)a4;
@end

@implementation InteractiveLabel

- (_TtC7Measure16InteractiveLabel)initWithFrame:(CGRect)a3 textContainer:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  return sub_10007CD98(a4, x, y, width, height);
}

@end