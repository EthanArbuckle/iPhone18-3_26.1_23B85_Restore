@interface AppPromotionScrollableContentContainerView
- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithCoder:(id)a3;
- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)a3;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (void)layoutSubviews;
@end

@implementation AppPromotionScrollableContentContainerView

- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithCoder:(id)a3
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
  v2 = self;
  sub_217AB8();
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v8 = a4;
  v9 = self;
  v10 = sub_217BBC(a4, x, y);

  return v10;
}

- (_TtC18ASMessagesProvider42AppPromotionScrollableContentContainerView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end