@interface ClimateAppViewController
- (BOOL)shouldUpdateFocusInContext:(id)a3;
- (_TtC7Climate24ClimateAppViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)appMovedToForeground;
- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4;
- (void)loadView;
- (void)settingsButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation ClimateAppViewController

- (void)settingsButtonTapped
{
  v2 = self;
  sub_100084144();
}

- (void)appMovedToForeground
{
  v2 = self;
  sub_100084744();
}

- (_TtC7Climate24ClimateAppViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ClimateAppViewController();
  v4 = v7.receiver;
  [(ClimateAppViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setNavigationBarHidden:1];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_100087E14(a3);
}

- (BOOL)shouldUpdateFocusInContext:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_100087FA8(v4);

  return self & 1;
}

- (void)didUpdateFocusInContext:(id)a3 withAnimationCoordinator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000884A8(v6, v7);
}

- (void)loadView
{
  v3 = type metadata accessor for ClimateAppView();
  v4 = objc_allocWithZone(v3);
  swift_unknownObjectWeakInit();
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = self;
  v6 = [(ClimateAppViewController *)&v7 initWithFrame:0.0, 0.0, 0.0, 0.0];
  swift_unknownObjectWeakAssign();
  [(ClimateAppViewController *)v5 setView:v6, v7.receiver, v7.super_class];
}

@end