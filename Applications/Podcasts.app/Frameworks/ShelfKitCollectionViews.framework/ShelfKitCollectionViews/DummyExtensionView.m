@interface DummyExtensionView
- (_TtC23ShelfKitCollectionViews18DummyExtensionView)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews18DummyExtensionView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation DummyExtensionView

- (void)layoutSubviews
{
  v15.receiver = self;
  v15.super_class = type metadata accessor for DummyExtensionView();
  v2 = v15.receiver;
  [(DummyExtensionView *)&v15 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_contentView];
  if (v3)
  {
    v4 = v3;
    [v2 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    [v2 safeAreaInsets];
    [v4 setFrame:{UIEdgeInsetsInsetRect(v6, v8, v10, v12, v13, v14)}];

    v2 = v4;
  }
}

- (_TtC23ShelfKitCollectionViews18DummyExtensionView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_disableAutomaticLayout) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_disableBlurEffects) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DummyExtensionView();
  return [(DummyExtensionView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC23ShelfKitCollectionViews18DummyExtensionView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_contentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_disableAutomaticLayout) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18DummyExtensionView_disableBlurEffects) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for DummyExtensionView();
  v4 = a3;
  v5 = [(DummyExtensionView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end