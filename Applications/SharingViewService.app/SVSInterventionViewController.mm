@interface SVSInterventionViewController
- (SVSInterventionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)_willAppearInRemoteViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didContactSomeoneForInterventionViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
@end

@implementation SVSInterventionViewController

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_1000A9190(context, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)viewIsAppearing:(BOOL)appearing
{
  selfCopy = self;
  sub_1000A9B40(appearing);
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

- (void)didContactSomeoneForInterventionViewController:(id)controller
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1000AAC88();
  swift_unknownObjectRelease();
}

- (SVSInterventionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000AA068(v5, v7, bundle);
}

@end