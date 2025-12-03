@interface FMSeparationWelcomeScreenViewController
- (_TtC6FindMy39FMSeparationWelcomeScreenViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dismissPresentedVCWithSender:(id)sender;
- (void)nextAction;
- (void)secondaryAction;
- (void)viewDidLayoutSubviews;
@end

@implementation FMSeparationWelcomeScreenViewController

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1004E096C();
}

- (void)nextAction
{
  selfCopy = self;
  sub_1004E0AE8();
}

- (void)secondaryAction
{
  selfCopy = self;
  sub_1004E0D18();
}

- (void)dismissPresentedVCWithSender:(id)sender
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  presentedViewController = [(FMSeparationWelcomeScreenViewController *)selfCopy presentedViewController];
  if (presentedViewController)
  {
    v6 = presentedViewController;
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

- (_TtC6FindMy39FMSeparationWelcomeScreenViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end