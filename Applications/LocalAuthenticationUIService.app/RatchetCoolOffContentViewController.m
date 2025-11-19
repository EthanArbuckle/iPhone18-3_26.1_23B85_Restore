@interface RatchetCoolOffContentViewController
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithCoder:(id)a3;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithRootViewController:(id)a3;
- (void)setCoolOffDuration:(double)a3;
- (void)viewDidLoad;
- (void)willMoveToParent:(id)a3;
@end

@implementation RatchetCoolOffContentViewController

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithCoder:(id)a3
{
  if (&_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    v4 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC7Combine14AnyCancellableC_Tt0g5Tf4g_n(&_swiftEmptyArrayStorage);
  }

  else
  {
    v4 = &_swiftEmptySetSingleton;
  }

  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_cancellables) = v4;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v2 = v5.receiver;
  [(RatchetCoolOffContentViewController *)&v5 viewDidLoad];
  v3 = [v2 interactivePopGestureRecognizer];
  if (v3)
  {
    v4 = v3;
    [v3 setEnabled:0];
  }

  RatchetCoolOffContentViewController.setup()();
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willMoveToParent:(id)a3
{
  v4 = a3;
  v5 = self;
  [v4 addChildViewController:v5];
  [(RatchetCoolOffContentViewController *)v5 willMoveToParentViewController:v4];
}

- (void)setCoolOffDuration:(double)a3
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel);
  v6 = *&self->viewModel[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  v9 = self;
  v8(ObjectType, v6, a3);
}

@end