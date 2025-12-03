@interface TextItemCell
- (_TtC24MenstrualCyclesAppPlugin12TextItemCell)initWithCoder:(id)coder;
- (_TtC24MenstrualCyclesAppPlugin12TextItemCell)initWithFrame:(CGRect)frame;
@end

@implementation TextItemCell

- (_TtC24MenstrualCyclesAppPlugin12TextItemCell)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TextItemCell();
  return [(ListCell *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC24MenstrualCyclesAppPlugin12TextItemCell)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TextItemCell();
  coderCopy = coder;
  v5 = [(ListCell *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end