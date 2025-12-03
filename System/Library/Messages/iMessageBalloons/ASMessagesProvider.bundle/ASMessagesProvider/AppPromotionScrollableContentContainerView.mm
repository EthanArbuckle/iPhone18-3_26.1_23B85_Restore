@interface AppPromotionScrollableContentContainerView
- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithCoder:(id)coder;
- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)frame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (void)layoutSubviews;
@end

@implementation AppPromotionScrollableContentContainerView

- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_protectionMode) = (&dword_0 + 1);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_isCollapsing) = 0;
  v4 = OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_mediaOverlayStyle;
  v5 = enum case for MediaOverlayStyle.matchSystem(_:);
  v6 = sub_75CA40();
  (*(*(v6 - 8) + 104))(self + v4, v5, v6);
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_contentBasedProtectionView) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView_fullProtectionView) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_217AB8();
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  selfCopy = self;
  v10 = sub_217BBC(event, x, y);

  return v10;
}

- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end