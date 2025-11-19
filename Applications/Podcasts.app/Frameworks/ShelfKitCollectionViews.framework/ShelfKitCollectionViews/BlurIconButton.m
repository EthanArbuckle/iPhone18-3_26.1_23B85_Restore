@interface BlurIconButton
- (BOOL)accessibilityActivate;
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (CGSize)sizeThatFits:(CGSize)a3;
- (void)layoutSubviews;
@end

@implementation BlurIconButton

- (void)layoutSubviews
{
  v2 = self;
  sub_21A174();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_21A3F0();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  v4 = a4;
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  LOBYTE(v4) = sub_21A534(v4, x, y);

  return v4 & 1;
}

- (BOOL)accessibilityActivate
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler);
  if (v2)
  {
    v3 = *&self->handler[OBJC_IVAR____TtC23ShelfKitCollectionViews14BlurIconButton_handler];
    v4 = self;
    sub_9FF04(v2);
    v2(v4);

    sub_2B8D4(v2, v3);
  }

  return 1;
}

@end