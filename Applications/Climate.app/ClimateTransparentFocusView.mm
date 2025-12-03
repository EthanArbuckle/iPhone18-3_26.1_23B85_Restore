@interface ClimateTransparentFocusView
- (_TtC7Climate27ClimateTransparentFocusView)initWithCoder:(id)coder;
- (_TtC7Climate27ClimateTransparentFocusView)initWithFrame:(CGRect)frame;
@end

@implementation ClimateTransparentFocusView

- (_TtC7Climate27ClimateTransparentFocusView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateTransparentFocusView();
  return [(ClimateTransparentFocusView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Climate27ClimateTransparentFocusView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateTransparentFocusView();
  coderCopy = coder;
  v5 = [(ClimateTransparentFocusView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end