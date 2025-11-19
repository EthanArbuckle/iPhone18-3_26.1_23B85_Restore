@interface ButtonWithTouchInsets
- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4;
- (_TtC23ShelfKitCollectionViews21ButtonWithTouchInsets)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews21ButtonWithTouchInsets)initWithFrame:(CGRect)a3;
@end

@implementation ButtonWithTouchInsets

- (_TtC23ShelfKitCollectionViews21ButtonWithTouchInsets)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v7 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews21ButtonWithTouchInsets_touchInsets;
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v7[32] = 1;
  v9.receiver = self;
  v9.super_class = type metadata accessor for ButtonWithTouchInsets();
  return [(DynamicTypeButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews21ButtonWithTouchInsets)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews21ButtonWithTouchInsets_touchInsets;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (BOOL)pointInside:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = (self + OBJC_IVAR____TtC23ShelfKitCollectionViews21ButtonWithTouchInsets_touchInsets);
  if (self->super.fontUseCase[OBJC_IVAR____TtC23ShelfKitCollectionViews21ButtonWithTouchInsets_touchInsets + 24])
  {
    v19.receiver = self;
    v19.super_class = type metadata accessor for ButtonWithTouchInsets();
    return [(ButtonWithTouchInsets *)&v19 pointInside:a4 withEvent:x, y];
  }

  else
  {
    v11 = *v7;
    v10 = v7[1];
    v12 = a4;
    v13 = self;
    [(ButtonWithTouchInsets *)v13 bounds];
    v21.origin.x = UIEdgeInsetsInsetRect(v14, v15, v16, v17, v11, v10);
    v20.x = x;
    v20.y = y;
    v18 = CGRectContainsPoint(v21, v20);

    return v18;
  }
}

@end