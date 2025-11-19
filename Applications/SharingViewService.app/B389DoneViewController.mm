@interface B389DoneViewController
- (_TtC18SharingViewService22B389DoneViewController)initWithMainController:(id)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)customizePressed;
- (void)dismissPressed;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation B389DoneViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10005CA80(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for B389DoneViewController();
  [(B389DoneViewController *)&v4 viewDidDisappear:v3];
}

- (void)dismissPressed
{
  v2 = self;
  sub_10005DC44();
}

- (void)customizePressed
{
  v2 = self;
  sub_10005DDD8();
}

- (_TtC18SharingViewService22B389DoneViewController)initWithMainController:(id)a3
{
  v5 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_tv;
  v6 = objc_allocWithZone(UITableView);
  v7 = a3;
  *(&self->super.super.super.super.isa + v5) = [v6 initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController) = 0;
  v8 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_data;
  *(&self->super.super.super.super.isa + v8) = sub_10005C41C();
  v11.receiver = self;
  v11.super_class = type metadata accessor for B389DoneViewController();
  v9 = [(SVSBaseViewController *)&v11 initWithMainController:v7];

  return v9;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = a3;
  v11 = self;
  sub_10005EAB4(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

@end