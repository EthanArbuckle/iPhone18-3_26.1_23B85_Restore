@interface DebugNotificationDeliveryScheduleViewController
- (_TtC7Weather47DebugNotificationDeliveryScheduleViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation DebugNotificationDeliveryScheduleViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1007BA7BC();
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  sub_1007BA908(self, a4);
  if (v4)
  {
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
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
  v12 = sub_1007BA9D0();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC7Weather47DebugNotificationDeliveryScheduleViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v5 = a4;
  sub_1007BB8B0();
}

@end