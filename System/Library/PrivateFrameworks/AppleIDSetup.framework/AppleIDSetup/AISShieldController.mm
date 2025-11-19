@interface AISShieldController
- (AISShieldController)init;
- (AISShieldControllerDelegate)delegate;
- (void)presentShieldFlowWithContext:(id)a3;
- (void)presentShieldOptions;
- (void)setPresenter:(id)a3;
- (void)setRemoteHandler:(id)a3;
- (void)setRemoteListener:(id)a3;
@end

@implementation AISShieldController

- (void)setRemoteListener:(id)a3
{
  v4 = *(self + OBJC_IVAR___AISShieldController_remoteListener);
  *(self + OBJC_IVAR___AISShieldController_remoteListener) = a3;
  v3 = a3;
}

- (void)setRemoteHandler:(id)a3
{
  v4 = *(self + OBJC_IVAR___AISShieldController_remoteHandler);
  *(self + OBJC_IVAR___AISShieldController_remoteHandler) = a3;
  v3 = a3;
}

- (void)setPresenter:(id)a3
{
  v4 = *(self + OBJC_IVAR___AISShieldController_presenter);
  *(self + OBJC_IVAR___AISShieldController_presenter) = a3;
  v3 = a3;
}

- (AISShieldControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)presentShieldOptions
{
  v3 = objc_allocWithZone(AISShieldFlowContext);
  v5 = self;
  v4 = [v3 init];
  [(AISShieldController *)v5 presentShieldFlowWithContext:v4];
}

- (void)presentShieldFlowWithContext:(id)a3
{
  v4 = a3;
  v5 = self;
  AISShieldController.presentShieldFlow(with:)(v4);
}

- (AISShieldController)init
{
  *(self + OBJC_IVAR___AISShieldController_remoteListener) = 0;
  *(self + OBJC_IVAR___AISShieldController_remoteHandler) = 0;
  *(self + OBJC_IVAR___AISShieldController_presenter) = 0;
  swift_unknownObjectWeakInit();
  v4.receiver = self;
  v4.super_class = AISShieldController;
  return [(AISShieldController *)&v4 init];
}

@end