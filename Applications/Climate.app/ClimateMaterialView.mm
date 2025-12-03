@interface ClimateMaterialView
- (_TtC7Climate19ClimateMaterialView)initWithCoder:(id)coder;
- (_TtC7Climate19ClimateMaterialView)initWithFrame:(CGRect)frame;
@end

@implementation ClimateMaterialView

- (_TtC7Climate19ClimateMaterialView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateMaterialView();
  return [(ClimateMaterialView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Climate19ClimateMaterialView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateMaterialView();
  coderCopy = coder;
  v5 = [(ClimateMaterialView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end