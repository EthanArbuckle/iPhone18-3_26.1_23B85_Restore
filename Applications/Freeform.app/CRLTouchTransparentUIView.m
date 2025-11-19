@interface CRLTouchTransparentUIView
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC8Freeform25CRLTouchTransparentUIView)initWithCoder:(id)a3;
- (_TtC8Freeform25CRLTouchTransparentUIView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
@end

@implementation CRLTouchTransparentUIView

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_100B527B4(v4, x, y);

  return v4 & 1;
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_100B5297C(a4, x, y);

  return v10;
}

- (_TtC8Freeform25CRLTouchTransparentUIView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLTouchTransparentUIView();
  return [(CRLTouchTransparentUIView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC8Freeform25CRLTouchTransparentUIView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLTouchTransparentUIView();
  v4 = a3;
  v5 = [(CRLTouchTransparentUIView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end