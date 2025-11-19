@interface HeadphoneAnnounceCustomizeViewController
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation HeadphoneAnnounceCustomizeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(HeadphoneAnnounceCustomizeViewController *)&v3 viewDidLoad];
  [v2 setDismissalType:{1, v3.receiver, v3.super_class}];
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
  v13 = sub_100093ABC(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = UITableViewAutomaticDimension;
  if ((a4 & 0xFFFFFFFFFFFFFFFELL) != 2)
  {
    return 0.0;
  }

  return result;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v4 = sub_1000946A0(a4);

  return v4;
}

@end