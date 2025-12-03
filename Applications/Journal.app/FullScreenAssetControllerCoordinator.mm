@interface FullScreenAssetControllerCoordinator
- (_TtC7Journal36FullScreenAssetControllerCoordinator)init;
- (void)presentationControllerDidDismiss:(id)dismiss;
@end

@implementation FullScreenAssetControllerCoordinator

- (_TtC7Journal36FullScreenAssetControllerCoordinator)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedFullScreenController) = 0;
  v3 = (self + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_onDelete);
  *v3 = DebugData.init(name:);
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  v5.receiver = self;
  v5.super_class = type metadata accessor for FullScreenAssetControllerCoordinator();
  return [(FullScreenAssetControllerCoordinator *)&v5 init];
}

- (void)presentationControllerDidDismiss:(id)dismiss
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController);
  *(&self->super.isa + OBJC_IVAR____TtC7Journal36FullScreenAssetControllerCoordinator_presentedController) = 0;
}

@end