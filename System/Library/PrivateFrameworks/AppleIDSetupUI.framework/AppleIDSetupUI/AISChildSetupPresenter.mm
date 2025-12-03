@interface AISChildSetupPresenter
- (AISChildSetupPresenterDelegate)delegate;
- (AISChildSetupStoreProtocol)childSetupStore;
- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated;
- (void)setPresentationHandler:(id)handler;
- (void)startFlowWithViewControllerPresentationHandler:(id)handler;
@end

@implementation AISChildSetupPresenter

- (AISChildSetupPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPresentationHandler:(id)handler
{
  v4 = *(self + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  *(self + OBJC_IVAR___AISChildSetupPresenter_presentationHandler) = handler;
  handlerCopy = handler;
}

- (AISChildSetupStoreProtocol)childSetupStore
{
  v2 = *(self + OBJC_IVAR___AISChildSetupPresenter_childSetupStore);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)startFlowWithViewControllerPresentationHandler:(id)handler
{
  swift_getObjectType();
  handlerCopy = handler;
  selfCopy = self;
  sub_2409FC588(handlerCopy, selfCopy);
}

- (void)navigationController:(id)controller didShowViewController:(id)viewController animated:(BOOL)animated
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2409FB6B8(controllerCopy);
}

@end