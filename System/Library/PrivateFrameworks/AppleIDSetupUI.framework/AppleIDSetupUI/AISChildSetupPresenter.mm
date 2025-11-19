@interface AISChildSetupPresenter
- (AISChildSetupPresenterDelegate)delegate;
- (AISChildSetupStoreProtocol)childSetupStore;
- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5;
- (void)setPresentationHandler:(id)a3;
- (void)startFlowWithViewControllerPresentationHandler:(id)a3;
@end

@implementation AISChildSetupPresenter

- (AISChildSetupPresenterDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setPresentationHandler:(id)a3
{
  v4 = *(self + OBJC_IVAR___AISChildSetupPresenter_presentationHandler);
  *(self + OBJC_IVAR___AISChildSetupPresenter_presentationHandler) = a3;
  v3 = a3;
}

- (AISChildSetupStoreProtocol)childSetupStore
{
  v2 = *(self + OBJC_IVAR___AISChildSetupPresenter_childSetupStore);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)startFlowWithViewControllerPresentationHandler:(id)a3
{
  swift_getObjectType();
  v5 = a3;
  v6 = self;
  sub_2409FC588(v5, v6);
}

- (void)navigationController:(id)a3 didShowViewController:(id)a4 animated:(BOOL)a5
{
  v6 = a3;
  v7 = self;
  sub_2409FB6B8(v6);
}

@end