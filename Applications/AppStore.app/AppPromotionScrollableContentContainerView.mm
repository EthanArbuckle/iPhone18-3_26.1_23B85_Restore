@interface AppPromotionScrollableContentContainerView
- (_TtC8AppStore42AppPromotionScrollableContentContainerView)initWithCoder:(id)coder;
- (_TtC8AppStore42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppPromotionScrollableContentContainerView

- (_TtC8AppStore42AppPromotionScrollableContentContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_protectionMode) = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_isCollapsing) = 0;
  v4 = OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v5 = enum case for MediaOverlayStyle.matchSystem(_:);
  v6 = type metadata accessor for MediaOverlayStyle();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_contentBasedProtectionView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8AppStore42AppPromotionScrollableContentContainerView_fullProtectionView) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_1000D1344();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_1000D1448(event, x, y);

  return v10;
}

- (_TtC8AppStore42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end