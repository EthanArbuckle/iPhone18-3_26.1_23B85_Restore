@interface SVSInterventionViewController
- (SVSInterventionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didContactSomeoneForInterventionViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation SVSInterventionViewController

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006709C;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_1000A9190(a3, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1000A9B40(a3);
}

- (void)viewDidLoad
{
  v2.receiver = self;
  v2.super_class = type metadata accessor for SVSInterventionViewController();
  [(SVSInterventionViewController *)&v2 viewDidLoad];
}

- (void)_willAppearInRemoteViewController
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for SVSInterventionViewController();
  v2 = v4.receiver;
  [(SVSBaseMainController *)&v4 _willAppearInRemoteViewController];
  v3 = sub_1000A035C();
  if (v3)
  {
    [v3 setAllowsAlertStacking:{1, v4.receiver, v4.super_class}];
    swift_unknownObjectRelease();
  }
}

- (void)didContactSomeoneForInterventionViewController:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1000AAC88();
  swift_unknownObjectRelease();
}

- (SVSInterventionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1000AA068(v5, v7, a4);
}

@end