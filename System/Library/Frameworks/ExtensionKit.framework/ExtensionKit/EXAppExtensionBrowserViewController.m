@interface EXAppExtensionBrowserViewController
- (EXAppExtensionBrowserViewController)init;
- (EXAppExtensionBrowserViewController)initWithCoder:(id)a3;
- (EXAppExtensionBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation EXAppExtensionBrowserViewController

- (EXAppExtensionBrowserViewController)init
{
  v3 = [objc_allocWithZone(_EXHostViewController) init];
  *(&self->super.super.super.isa + OBJC_IVAR___EXAppExtensionBrowserViewController_hostViewController) = v3;
  if (qword_1EC700928 != -1)
  {
    swift_once();
  }

  *(&self->super.super + OBJC_IVAR___EXAppExtensionBrowserViewController__configuration) = xmmword_1EC7016B0;
  v5.receiver = self;
  v5.super_class = EXAppExtensionBrowserViewController;

  return [(EXAppExtensionBrowserViewController *)&v5 initWithNibName:0 bundle:0];
}

- (EXAppExtensionBrowserViewController)initWithCoder:(id)a3
{
  result = sub_1D2A006A8();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  EXAppExtensionBrowserViewController.loadView()();
}

- (EXAppExtensionBrowserViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end