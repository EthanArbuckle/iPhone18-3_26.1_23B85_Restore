@interface TouchPassThroughView
- (_TtC7Measure20TouchPassThroughView)initWithCoder:(id)a3;
- (_TtC7Measure20TouchPassThroughView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation TouchPassThroughView

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v14.receiver = self;
  v14.super_class = type metadata accessor for TouchPassThroughView();
  v7 = v14.receiver;
  v8 = a4;
  v9 = [(TouchPassThroughView *)&v14 hitTest:v8 withEvent:x, y];
  if (!v9)
  {

LABEL_6:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v9;

  v11 = v10;
  v12 = v10 == v7;
  v7 = v10;
  if (v12)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (_TtC7Measure20TouchPassThroughView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for TouchPassThroughView();
  return [(TouchPassThroughView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC7Measure20TouchPassThroughView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for TouchPassThroughView();
  v4 = a3;
  v5 = [(TouchPassThroughView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end