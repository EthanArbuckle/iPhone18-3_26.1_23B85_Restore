@interface __AISSetupViewController
- (__AISSetupViewController)initWithCoder:(id)a3;
- (__AISSetupViewController)initWithContext:(id)a3 dontSuggestUserAction:(id)a4 skipAction:(id)a5 shouldAutoDismiss:(BOOL)a6 isPreEstablishedClient:(BOOL)a7 reportHandler:(id)a8;
- (__AISSetupViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation __AISSetupViewController

- (__AISSetupViewController)initWithContext:(id)a3 dontSuggestUserAction:(id)a4 skipAction:(id)a5 shouldAutoDismiss:(BOOL)a6 isPreEstablishedClient:(BOOL)a7 reportHandler:(id)a8
{
  v13 = _Block_copy(a8);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = a3;
  v16 = a4;
  v17 = a5;
  return SetupViewController.init(context:dontSuggestUserAction:skipAction:shouldAutoDismiss:isPreEstablishedClient:reportHandler:)(a3, a4, a5, a6, a7, sub_2409C4520, v14);
}

- (__AISSetupViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR_____AISSetupViewController_hostingController) = 0;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_2409C3404();
}

- (__AISSetupViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end