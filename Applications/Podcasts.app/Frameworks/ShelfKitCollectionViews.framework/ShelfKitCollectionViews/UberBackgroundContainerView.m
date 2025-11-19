@interface UberBackgroundContainerView
- (_TtC23ShelfKitCollectionViews27UberBackgroundContainerView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation UberBackgroundContainerView

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(UberBackgroundContainerView *)&v5 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView];
  if (v3)
  {
    v4 = v3;
    [v2 bringSubviewToFront:{v4, v5.receiver, v5.super_class}];
  }
}

- (_TtC23ShelfKitCollectionViews27UberBackgroundContainerView)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_backgroundImageView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_gradientOverlayView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_offset) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_mirrorAmount) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews27UberBackgroundContainerView_zoomFactor) = 0x3FF0000000000000;
  result = sub_30D648();
  __break(1u);
  return result;
}

@end