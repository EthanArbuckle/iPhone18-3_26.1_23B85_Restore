@interface FMSeparationWelcomeScreenViewController
- (_TtC6FindMy39FMSeparationWelcomeScreenViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dismissPresentedVCWithSender:(id)a3;
- (void)nextAction;
- (void)secondaryAction;
- (void)viewDidLayoutSubviews;
@end

@implementation FMSeparationWelcomeScreenViewController

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1004E096C();
}

- (void)nextAction
{
  v2 = self;
  sub_1004E0AE8();
}

- (void)secondaryAction
{
  v2 = self;
  sub_1004E0D18();
}

- (void)dismissPresentedVCWithSender:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v5 = [(FMSeparationWelcomeScreenViewController *)v4 presentedViewController];
  if (v5)
  {
    v6 = v5;
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v9[4] = sub_1000822F4;
    v9[5] = v7;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 1107296256;
    v9[2] = sub_100004AE4;
    v9[3] = &unk_100643070;
    v8 = _Block_copy(v9);

    [v6 dismissViewControllerAnimated:1 completion:v8];
    _Block_release(v8);
  }

  else
  {
  }

  sub_100006060(v10);
}

- (_TtC6FindMy39FMSeparationWelcomeScreenViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end