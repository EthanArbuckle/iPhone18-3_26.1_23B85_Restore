@interface AISAppleIDSignInController
- (AISAppleIDSignInController)init;
- (AISAppleIDSignInController)initWithConfiguration:(id)a3;
- (AISAppleIDSignInControllerDelegate)delegate;
- (UIViewController)hostingViewController;
- (void)setHostingViewController:(id)a3;
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
  v2 = self;
  v3 = sub_2409EC9B0();

  return v3;
}

- (void)setHostingViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController);
  *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = a3;
  v3 = a3;
}

- (AISAppleIDSignInController)initWithConfiguration:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISAppleIDSignInController____lazy_storage___hostingViewController) = 0;
  *(self + OBJC_IVAR___AISAppleIDSignInController_configuration) = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for AISAppleIDSignInController();
  v5 = a3;
  return [(AISAppleIDSignInController *)&v7 init];
}

- (AISAppleIDSignInController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end