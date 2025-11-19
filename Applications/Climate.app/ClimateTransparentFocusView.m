@interface ClimateTransparentFocusView
- (_TtC7Climate27ClimateTransparentFocusView)initWithCoder:(id)a3;
- (_TtC7Climate27ClimateTransparentFocusView)initWithFrame:(CGRect)a3;
@end

@implementation ClimateTransparentFocusView

- (_TtC7Climate27ClimateTransparentFocusView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction) = 1;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateTransparentFocusView();
  return [(ClimateTransparentFocusView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Climate27ClimateTransparentFocusView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7Climate27ClimateTransparentFocusView_canBePartOfFocusInteraction) = 1;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateTransparentFocusView();
  v4 = a3;
  v5 = [(ClimateTransparentFocusView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end