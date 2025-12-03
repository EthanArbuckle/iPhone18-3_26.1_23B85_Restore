@interface InfoLayerOverlayContainerView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC18ASMessagesProvider29InfoLayerOverlayContainerView)initWithCoder:(id)coder;
- (void)layoutSubviews;
@end

@implementation InfoLayerOverlayContainerView

- (_TtC18ASMessagesProvider29InfoLayerOverlayContainerView)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_overlayView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_sizeCategory) = 5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isExpanded) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_originalSizeCategory) = 5;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isLayoutRequired) = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC18ASMessagesProvider29InfoLayerOverlayContainerView_isTransitioning) = 0;
  result = sub_76A840();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_38D1F4();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  selfCopy = self;
  sub_38D500();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

@end