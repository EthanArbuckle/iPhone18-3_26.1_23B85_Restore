@interface InfoLayerOverlayContainerView
- (CGSize)sizeThatFits:(CGSize)a3;
- (_TtC22SubscribePageExtension29InfoLayerOverlayContainerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation InfoLayerOverlayContainerView

- (_TtC22SubscribePageExtension29InfoLayerOverlayContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_overlayView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_sizeCategory) = 5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_originalSizeCategory) = 5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC22SubscribePageExtension29InfoLayerOverlayContainerView_isTransitioning) = 0;
  result = sub_100754644();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10045FA1C();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  v3 = self;
  sub_10045FD28();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end