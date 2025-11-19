@interface UpsellShowGridView
- (_TtC23ShelfKitCollectionViews18UpsellShowGridView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation UpsellShowGridView

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v2 = v7.receiver;
  [(UpsellShowGridView *)&v7 layoutSubviews];
  [v2 bounds];
  CGRectGetWidth(v8);
  v3 = sub_302BF8();
  sub_2EF144();
  *(v2 + OBJC_IVAR____TtC23ShelfKitCollectionViews18UpsellShowGridView____lazy_storage___sizeClass) = v3;
  sub_302C18();
  v5 = v4;
  sub_302C18();
  if (v5 != v6)
  {
    sub_2EF190();
  }
}

- (_TtC23ShelfKitCollectionViews18UpsellShowGridView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end