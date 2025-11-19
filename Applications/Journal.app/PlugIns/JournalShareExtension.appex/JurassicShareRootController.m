@interface JurassicShareRootController
- (JurassicShareRootController)initWithCoder:(id)a3;
- (JurassicShareRootController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4;
- (JurassicShareRootController)initWithNibName:(id)a3 bundle:(id)a4;
- (JurassicShareRootController)initWithRootViewController:(id)a3;
- (void)presentationControllerDidAttemptToDismiss:(id)a3;
- (void)viewDidLoad;
@end

@implementation JurassicShareRootController

- (JurassicShareRootController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_100100FD4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_10006C600(v5, v7, a4);
}

- (JurassicShareRootController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR___JurassicShareRootController____lazy_storage___contentViewController) = 0;
  result = sub_100101D94();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_10006C7E4();
}

- (void)presentationControllerDidAttemptToDismiss:(id)a3
{
  v3 = self;
  v4 = sub_10006C588();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100101644();

  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  v6 = v3;
  sub_1000D24E8(v6, v7, sub_10006CF78, v5);
}

- (JurassicShareRootController)initWithNavigationBarClass:(Class)a3 toolbarClass:(Class)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (JurassicShareRootController)initWithRootViewController:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end