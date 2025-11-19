@interface MacButton
- (CGSize)intrinsicContentSize;
- (CGSize)sizeThatFits:(CGSize)a3;
- (UIEdgeInsets)alignmentRectInsets;
- (_TtC23ShelfKitCollectionViews9MacButton)initWithCoder:(id)a3;
- (_TtC23ShelfKitCollectionViews9MacButton)initWithFrame:(CGRect)a3;
- (void)setEnabled:(BOOL)a3;
- (void)setHighlighted:(BOOL)a3;
- (void)tintColorDidChange;
@end

@implementation MacButton

- (_TtC23ShelfKitCollectionViews9MacButton)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_usesBoundsForBaselineGuide) = 0;
  v3 = self + OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_touchInsets;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  v3[32] = 1;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton____lazy_storage___layoutView) = 0;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews9MacButton_progressView) = 0;
  result = sub_30D648();
  __break(1u);
  return result;
}

- (void)tintColorDidChange
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(MacButton *)&v3 tintColorDidChange];
  sub_272F28();
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MacButton *)&v5 setHighlighted:v3];
  sub_273280();
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  ObjectType = swift_getObjectType();
  v10.receiver = self;
  v10.super_class = ObjectType;
  v6 = self;
  [(MacButton *)&v10 setEnabled:v3];
  v9.receiver = v6;
  v9.super_class = ObjectType;
  v7 = [(MacButton *)&v9 isEnabled];
  v8 = 0.5;
  if (v7)
  {
    v8 = 1.0;
  }

  [(MacButton *)v6 setAlpha:v8];
}

- (UIEdgeInsets)alignmentRectInsets
{
  v2 = 0.0;
  v3 = 0.0;
  v4 = -1.0;
  v5 = 0.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  sub_273984();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_273984();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (_TtC23ShelfKitCollectionViews9MacButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end