@interface AISShieldController
- (AISShieldController)init;
- (AISShieldControllerDelegate)delegate;
- (void)presentShieldFlowWithContext:(id)context;
- (void)presentShieldOptions;
- (void)setPresenter:(id)presenter;
- (void)setRemoteHandler:(id)handler;
- (void)setRemoteListener:(id)listener;
@end

@implementation AISShieldController

- (void)setRemoteListener:(id)listener
{
  v4 = *(self + OBJC_IVAR___AISShieldController_remoteListener);
  *(self + OBJC_IVAR___AISShieldController_remoteListener) = listener;
  listenerCopy = listener;
}

- (void)setRemoteHandler:(id)handler
{
  v4 = *(self + OBJC_IVAR___AISShieldController_remoteHandler);
  *(self + OBJC_IVAR___AISShieldController_remoteHandler) = handler;
  handlerCopy = handler;
}

- (void)setPresenter:(id)presenter
{
  v4 = *(self + OBJC_IVAR___AISShieldController_presenter);
  *(self + OBJC_IVAR___AISShieldController_presenter) = presenter;
  presenterCopy = presenter;
}

- (AISShieldControllerDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)presentShieldOptions
{
  v3 = objc_allocWithZone(AISShieldFlowContext);
  selfCopy = self;
  v4 = [v3 init];
  [(AISShieldController *)selfCopy presentShieldFlowWithContext:v4];
}

- (void)presentShieldFlowWithContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  AISShieldController.presentShieldFlow(with:)(contextCopy);
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