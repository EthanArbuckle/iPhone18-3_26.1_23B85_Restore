@interface AppPromotionScrollableContentContainerView
- (_TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView)initWithCoder:(id)coder;
- (_TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppPromotionScrollableContentContainerView

- (_TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_protectionMode) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_isCollapsing) = 0;
  v4 = OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v5 = enum case for MediaOverlayStyle.matchSystem(_:);
  v6 = sub_100746BA4();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_contentBasedProtectionView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView_fullProtectionView) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000AF424();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1000AF528(event, x, y);

  return v10;
}

- (_TtC22SubscribePageExtension42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end