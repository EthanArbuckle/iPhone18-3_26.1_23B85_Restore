@interface AISAppleIDSignInController
- (AISAppleIDSignInController)init;
- (AISAppleIDSignInController)initWithConfiguration:(id)configuration;
- (AISAppleIDSignInControllerDelegate)delegate;
- (UIViewController)hostingViewController;
- (void)setHostingViewController:(id)controller;
@end

@implementation AISAppleIDSignInController

- (AISAppleIDSignInControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UIViewController)hostingViewController
{
  selfCopy = self;
  v3 = sub_2409EC9B0();

  return v3;
}

- (void)setHostingViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController);
  *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = controller;
  controllerCopy = controller;
}

- (AISAppleIDSignInController)initWithConfiguration:(id)configuration
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = 0;
  *(self + OBJC_IVAR___AISAppleIDSignInController_configuration) = configuration;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AISAppleIDSignInController();
  configurationCopy = configuration;
  return [(AISAppleIDSignInController *)&v7 init];
}

- (AISAppleIDSignInController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end