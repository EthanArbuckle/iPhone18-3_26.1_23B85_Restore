@interface TrendDetailViewController
- (_TtC10FitnessApp25TrendDetailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (uint64_t)tapToRadar;
- (void)contentSizeCategoryDidChangeWithNote:(id)a3;
- (void)loadView;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation TrendDetailViewController

- (void)contentSizeCategoryDidChangeWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1002E26B8();

  (*(v5 + 8))(v7, v4);
}

- (void)loadView
{
  v2 = self;
  sub_1002E2990();
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1002E3420();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1002E3690(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TrendDetailViewController();
  v4 = v7.receiver;
  [(TrendDetailViewController *)&v7 viewDidAppear:v3];
  if (*(v4 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_direction) != 1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_1001B1314(sub_1002E3BC8, v5);
  }
}

- (_TtC10FitnessApp25TrendDetailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)tapToRadar
{
  v0 = sub_100140278(&unk_1008EB5B0);
  __chkstk_darwin(v0 - 8);
  v2 = &v13 - v1;
  v3 = type metadata accessor for URL();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TrendsRadarHandler();
  sub_100175B90(v2);
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_1001854D4(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  v8 = [objc_opt_self() defaultWorkspace];
  if (v8)
  {
    v10 = v8;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    [v10 openURL:v11 configuration:0 completionHandler:0];
  }

  return (*(v4 + 8))(v6, v3);
}

@end