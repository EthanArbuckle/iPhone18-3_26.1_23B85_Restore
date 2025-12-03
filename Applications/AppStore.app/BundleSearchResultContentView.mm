@interface BundleSearchResultContentView
- (_TtC8AppStore29BundleSearchResultContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BundleSearchResultContentView

- (_TtC8AppStore29BundleSearchResultContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8AppStore29BundleSearchResultContentView_bundleView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1002A711C();
}

@end