@interface FMLocationAlertViewController
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)cancel;
- (void)saveAlertWithSender:(id)a3;
- (void)showRemoveAlertWithSender:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMLocationAlertViewController

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10009C0C8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMLocationAlertViewController(0);
  [(FMLocationAlertViewController *)&v4 viewWillDisappear:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMLocationAlertViewController(0);
  v4 = a3;
  v5 = v6.receiver;
  [(FMLocationAlertViewController *)&v6 traitCollectionDidChange:v4];
  [*&v5[OBJC_IVAR____TtC6FindMy29FMLocationAlertViewController_tableView] reloadData];
}

- (void)cancel
{
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6[4] = sub_100097224;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100004AE4;
  v6[3] = &unk_100624C90;
  v4 = _Block_copy(v6);
  v5 = self;

  [(FMLocationAlertViewController *)v5 dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)saveAlertWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000A5FF4(v4);
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
  sub_1000AACD8(v10, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)showRemoveAlertWithSender:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1000AD96C(a3);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1000BAAC8(a4);

  return v8;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = a3;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 dequeueReusableHeaderFooterViewWithIdentifier:v5];

  return v6;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  if (qword_1006AEA30 != -1)
  {
    swift_once();
  }

  return *&qword_1006D3CA8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1000BAF10(a4);
  v9 = v8;

  if (v9)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1000BB190();

  return v6;
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
  v12 = sub_1000BB7E8(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end