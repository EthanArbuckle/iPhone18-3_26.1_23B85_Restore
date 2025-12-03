@interface InteractiveLabel
- (_TtC7Measure16InteractiveLabel)initWithFrame:(CGRect)frame textContainer:(id)container;
@end

@implementation InteractiveLabel

- (_TtC7Measure16InteractiveLabel)initWithFrame:(CGRect)frame textContainer:(id)container
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  containerCopy = container;
  return sub_10007CD98(container, x, y, width, height);
}

@end