@interface TrendsListViewController
- (_TtC10FitnessApp24TrendsListViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (uint64_t)tapToRadar;
- (void)dealloc;
- (void)reloadForFontSizeChangeWithNote:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
- (void)wheelchairUseDidChangeWithNote:(id)a3;
@end

@implementation TrendsListViewController

- (void)dealloc
{
  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataProvider);
  swift_beginAccess();
  v4 = self;
  v5 = v3;
  sub_100559A44(0, 0, v4);
  swift_endAccess();

  v6.receiver = v4;
  v6.super_class = type metadata accessor for TrendsListViewController();
  [(TrendsListViewController *)&v6 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1003B1AF0();
}

- (void)wheelchairUseDidChangeWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1003B2228();

  (*(v5 + 8))(v7, v4);
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1003B2414();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003B25BC(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1003B2878(a3);
}

- (void)reloadForFontSizeChangeWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_dataDidLoad) == 1)
  {
    v8 = self;
    sub_1003B30BC();
    v9 = [(TrendsListViewController *)v8 view];
    if (v9)
    {
      v10 = v9;
      [v9 setNeedsLayout];

      [*(&v8->super.super.super.isa + OBJC_IVAR____TtC10FitnessApp24TrendsListViewController_tableView) reloadData];
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    (*(v5 + 8))(v7, v4);
  }
}

- (_TtC10FitnessApp24TrendsListViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1003B7060(a4);

  return v8;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  v12 = sub_1003B5718(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1003B5A98(v6, a4);

  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = 0.0;
  if ([(TrendsListViewController *)v7 tableView:v6 numberOfRowsInSection:a4]>= 1 && (a4 | 4) != 4)
  {
    v8 = UITableViewAutomaticDimension;
  }

  return v8;
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
    return sub_10000EA04(v2, &unk_1008EB5B0);
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