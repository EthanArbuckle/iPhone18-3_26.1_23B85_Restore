@interface BundleSearchResultContentView
- (_TtC18ASMessagesProvider29BundleSearchResultContentView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation BundleSearchResultContentView

- (_TtC18ASMessagesProvider29BundleSearchResultContentView)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_lockupView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for SmallSearchLockupView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC18ASMessagesProvider29BundleSearchResultContentView_bundleView;
  *(&self->super.super.super.isa + v5) = [objc_allocWithZone(type metadata accessor for BundleView()) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_6F5458();
}

@end