@interface TrendDetailViewController
- (_TtC10FitnessApp25TrendDetailViewController)initWithNibName:(id)name bundle:(id)bundle;
- (uint64_t)tapToRadar;
- (void)contentSizeCategoryDidChangeWithNote:(id)note;
- (void)loadView;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TrendDetailViewController

- (void)contentSizeCategoryDidChangeWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1002E26B8();

  (*(v5 + 8))(v7, v4);
}

- (void)loadView
{
  selfCopy = self;
  sub_1002E2990();
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1002E3420();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1002E3690(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for TrendDetailViewController();
  v4 = v7.receiver;
  [(TrendDetailViewController *)&v7 viewDidAppear:appearCopy];
  if (*(v4 + OBJC_IVAR____TtC10FitnessApp25TrendDetailViewController_direction) != 1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    v6 = v4;
    sub_1001B1314(sub_1002E3BC8, v5);
  }
}

- (_TtC10FitnessApp25TrendDetailViewController)initWithNibName:(id)name bundle:(id)bundle
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
  defaultWorkspace = [objc_opt_self() defaultWorkspace];
  if (defaultWorkspace)
  {
    v10 = defaultWorkspace;
    URL._bridgeToObjectiveC()(v9);
    v12 = v11;
    [v10 openURL:v11 configuration:0 completionHandler:0];
  }

  return (*(v4 + 8))(v6, v3);
}

@end