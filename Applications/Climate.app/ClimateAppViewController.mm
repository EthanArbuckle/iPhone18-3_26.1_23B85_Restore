@interface ClimateAppViewController
- (BOOL)shouldUpdateFocusInContext:(id)context;
- (_TtC7Climate24ClimateAppViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)appMovedToForeground;
- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator;
- (void)loadView;
- (void)settingsButtonTapped;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation ClimateAppViewController

- (void)settingsButtonTapped
{
  selfCopy = self;
  sub_100084144();
}

- (void)appMovedToForeground
{
  selfCopy = self;
  sub_100084744();
}

- (_TtC7Climate24ClimateAppViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100084C44();
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ClimateAppViewController();
  v2 = v4.receiver;
  [(ClimateAppViewController *)&v4 viewDidLayoutSubviews];
  v3 = sub_100081DFC();
  sub_10005D938();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateAppViewController();
  v4 = v7.receiver;
  [(ClimateAppViewController *)&v7 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setNavigationBarHidden:1];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100087E14(appear);
}

- (BOOL)shouldUpdateFocusInContext:(id)context
{
  contextCopy = context;
  selfCopy = self;
  LOBYTE(self) = sub_100087FA8(contextCopy);

  return self & 1;
}

- (void)didUpdateFocusInContext:(id)context withAnimationCoordinator:(id)coordinator
{
  contextCopy = context;
  coordinatorCopy = coordinator;
  selfCopy = self;
  sub_1000884A8(contextCopy, coordinatorCopy);
}

- (void)loadView
{
  v3 = type metadata accessor for ClimateAppView();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  v7.receiver = v4;
  v7.super_class = v3;
  selfCopy = self;
  v6 = [(ClimateAppViewController *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  swift_unknownObjectWeakAssign();
  [(ClimateAppViewController *)selfCopy setView:v6, v7.receiver, v7.super_class];
}

@end