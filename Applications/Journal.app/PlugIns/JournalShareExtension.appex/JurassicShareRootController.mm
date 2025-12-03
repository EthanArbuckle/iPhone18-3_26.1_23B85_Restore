@interface JurassicShareRootController
- (JurassicShareRootController)initWithCoder:(id)coder;
- (JurassicShareRootController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass;
- (JurassicShareRootController)initWithNibName:(id)name bundle:(id)bundle;
- (JurassicShareRootController)initWithRootViewController:(id)controller;
- (void)presentationControllerDidAttemptToDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation JurassicShareRootController

- (JurassicShareRootController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_100100FD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_10006C600(v5, v7, bundle);
}

- (JurassicShareRootController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___JurassicShareRootController____lazy_storage___contentViewController) = 0;
  result = sub_100101D94();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10006C7E4();
}

- (void)presentationControllerDidAttemptToDismiss:(id)dismiss
{
  selfCopy = self;
  v4 = sub_10006C588();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v5 = swift_allocObject();
  *(v5 + 16) = selfCopy;
  v6 = selfCopy;
  sub_1000D24E8(v6, v7, sub_10006CF78, v5);
}

- (JurassicShareRootController)initWithNavigationBarClass:(Class)class toolbarClass:(Class)toolbarClass
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (JurassicShareRootController)initWithRootViewController:(id)controller
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end