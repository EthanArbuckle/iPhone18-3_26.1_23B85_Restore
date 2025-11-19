@interface ManageDashboardViewController
- (_TtC11FTMInternal29ManageDashboardViewController)initWithCoder:(id)a3;
- (_TtC11FTMInternal29ManageDashboardViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)didTapDismissWithSender:(id)a3;
- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5;
- (void)viewDidLoad;
@end

@implementation ManageDashboardViewController

- (_TtC11FTMInternal29ManageDashboardViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController____lazy_storage___tableView) = 0;
  v3 = OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dismissButton;
  *(&self->super.super.super.super.isa + v3) = sub_1002305C8();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100230700();
}

- (_TtC11FTMInternal29ManageDashboardViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v5 + 8))(v8, v4);
  return 60.0;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = OBJC_IVAR____TtC11FTMInternal29ManageDashboardViewController_dashboardList;
  swift_beginAccess();
  return (*(&self->super.super.super.super.isa + v5))[2];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = a3;
  v12 = self;
  v13 = sub_100230E90(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (void)tableView:(id)a3 commitEditingStyle:(int64_t)a4 forRowAtIndexPath:(id)a5
{
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = a3;
  v14 = self;
  sub_10023118C(v13, a4, v12);

  (*(v9 + 8))(v12, v8);
}

- (void)didTapDismissWithSender:(id)a3
{
  v4 = objc_allocWithZone(UIImpactFeedbackGenerator);
  v6 = self;
  v5 = [v4 initWithStyle:1];
  [v5 impactOccurred];
  [(ManageDashboardViewController *)v6 dismissViewControllerAnimated:1 completion:0];
}

@end