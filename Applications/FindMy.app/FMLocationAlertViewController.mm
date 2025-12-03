@interface FMLocationAlertViewController
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)cancel;
- (void)saveAlertWithSender:(id)sender;
- (void)showRemoveAlertWithSender:(id)sender;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)traitCollectionDidChange:(id)change;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMLocationAlertViewController

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10009C0C8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMLocationAlertViewController(0);
  [(FMLocationAlertViewController *)&v4 viewWillDisappear:disappearCopy];
}

- (void)traitCollectionDidChange:(id)change
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMLocationAlertViewController(0);
  changeCopy = change;
  v5 = v6.receiver;
  [(FMLocationAlertViewController *)&v6 traitCollectionDidChange:changeCopy];
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
  selfCopy = self;

  [(FMLocationAlertViewController *)selfCopy dismissViewControllerAnimated:1 completion:v4];

  _Block_release(v4);
}

- (void)saveAlertWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1000A5FF4(senderCopy);
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  sub_1000AACD8(viewCopy, v9);

  (*(v7 + 8))(v9, v6);
}

- (void)showRemoveAlertWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1000AD96C(sender);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1000BAAC8(section);

  return v8;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  v5 = String._bridgeToObjectiveC()();
  v6 = [viewCopy dequeueReusableHeaderFooterViewWithIdentifier:v5];

  return v6;
}

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  if (qword_1006AEA30 != -1)
  {
    swift_once();
  }

  return *&qword_1006D3CA8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1000BAF10(section);
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

- (int64_t)numberOfSectionsInTableView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_1000BB190();

  return v6;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1000BB7E8(v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

@end