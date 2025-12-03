@interface RatchetCoolOffContentViewController
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithCoder:(id)coder;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithRootViewController:(id)controller;
- (void)setCoolOffDuration:(double)duration;
- (void)viewDidLoad;
- (void)willMoveToParent:(id)parent;
@end

@implementation RatchetCoolOffContentViewController

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithCoder:(id)coder
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
  interactivePopGestureRecognizer = [v2 interactivePopGestureRecognizer];
  if (interactivePopGestureRecognizer)
  {
    v4 = interactivePopGestureRecognizer;
    [interactivePopGestureRecognizer setEnabled:0];
  }

  RatchetCoolOffContentViewController.setup()();
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)willMoveToParent:(id)parent
{
  parentCopy = parent;
  selfCopy = self;
  [parentCopy addChildViewController:selfCopy];
  [(RatchetCoolOffContentViewController *)selfCopy willMoveToParentViewController:parentCopy];
}

- (void)setCoolOffDuration:(double)duration
{
  v5 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel);
  v6 = *&self->viewModel[OBJC_IVAR____TtC28LocalAuthenticationUIService35RatchetCoolOffContentViewController_viewModel];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  selfCopy = self;
  v8(ObjectType, v6, duration);
}

@end