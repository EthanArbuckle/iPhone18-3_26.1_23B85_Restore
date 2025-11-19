@interface VisitedPlacesDataRetentionViewController
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)continueButtonTapped;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation VisitedPlacesDataRetentionViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100212338();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  v4 = v7.receiver;
  [(VisitedPlacesDataRetentionViewController *)&v7 viewWillAppear:v3];
  v5 = [objc_opt_self() sharedMapsDelegate];
  if (v5)
  {
    v6 = v5;
    [v5 setLockedOrientations:2];

    v4 = v6;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for VisitedPlacesDataRetentionViewController();
  v4 = v7.receiver;
  [(VisitedPlacesDataRetentionViewController *)&v7 viewWillDisappear:v3];
  v5 = [objc_opt_self() sharedMapsDelegate];
  if (v5)
  {
    v6 = v5;
    [v5 setLockedOrientations:0];
  }
}

- (void)continueButtonTapped
{
  v2 = self;
  sub_100212728();
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC4Maps40VisitedPlacesDataRetentionViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v12 = sub_100212BD4(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_100212EFC(v10);

  (*(v7 + 8))(v9, v6);
}

@end