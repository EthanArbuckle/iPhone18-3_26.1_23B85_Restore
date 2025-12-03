@interface B389DoneViewController
- (_TtC18SharingViewService22B389DoneViewController)initWithMainController:(id)controller;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)customizePressed;
- (void)dismissPressed;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389DoneViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10005CA80(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for B389DoneViewController();
  [(B389DoneViewController *)&v4 viewDidDisappear:disappearCopy];
}

- (void)dismissPressed
{
  selfCopy = self;
  sub_10005DC44();
}

- (void)customizePressed
{
  selfCopy = self;
  sub_10005DDD8();
}

- (_TtC18SharingViewService22B389DoneViewController)initWithMainController:(id)controller
{
  v5 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_tv;
  v6 = objc_allocWithZone(UITableView);
  controllerCopy = controller;
  *(&self->super.super.super.super.isa + v5) = [v6 initWithFrame:0 style:{0.0, 0.0, 0.0, 0.0}];
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_mapViewController) = 0;
  v8 = OBJC_IVAR____TtC18SharingViewService22B389DoneViewController_data;
  *(&self->super.super.super.super.isa + v8) = sub_10005C41C();
  v11.receiver = self;
  v11.super_class = type metadata accessor for B389DoneViewController();
  v9 = [(SVSBaseViewController *)&v11 initWithMainController:controllerCopy];

  return v9;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_10005EAB4(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

@end