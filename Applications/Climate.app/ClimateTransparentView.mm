@interface ClimateTransparentView
- (_TtC7Climate22ClimateTransparentView)initWithCoder:(id)a3;
- (_TtC7Climate22ClimateTransparentView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation ClimateTransparentView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v13.receiver = self;
  v13.super_class = type metadata accessor for ClimateTransparentView();
  v7 = v13.receiver;
  v8 = a4;
  v9 = [(ClimateTransparentView *)&v13 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

    goto LABEL_5;
  }

  v10 = v9;
  sub_100005AA0();
  v11 = v7;
  v7 = v10;
  LOBYTE(v10) = static NSObject.== infix(_:_:)();

  if (v10)
  {
LABEL_5:

    v7 = 0;
  }

  return v7;
}

- (_TtC7Climate22ClimateTransparentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ClimateTransparentView();
  return [(ClimateTransparentView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Climate22ClimateTransparentView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateTransparentView();
  v4 = a3;
  v5 = [(ClimateTransparentView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end