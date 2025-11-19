@interface BundleSearchResultContentView
- (_TtC20ProductPageExtension29BundleSearchResultContentView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation BundleSearchResultContentView

- (_TtC20ProductPageExtension29BundleSearchResultContentView)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC20ProductPageExtension29BundleSearchResultContentView_bundleView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_10077156C();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_100714B24();
}

@end