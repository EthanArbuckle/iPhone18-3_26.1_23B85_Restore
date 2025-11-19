@interface DebugNotificationFetchSchedulesViewController
- (_TtC7Weather45DebugNotificationFetchSchedulesViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation DebugNotificationFetchSchedulesViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_10098743C();
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
  v12 = sub_100987598(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC7Weather45DebugNotificationFetchSchedulesViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_100987E94();
}

@end