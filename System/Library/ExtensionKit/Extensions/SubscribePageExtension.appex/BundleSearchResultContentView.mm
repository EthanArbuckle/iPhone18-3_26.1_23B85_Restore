@interface BundleSearchResultContentView
- (_TtC22SubscribePageExtension29BundleSearchResultContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BundleSearchResultContentView

- (_TtC22SubscribePageExtension29BundleSearchResultContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC22SubscribePageExtension29BundleSearchResultContentView_bundleView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_100704504();
}

@end