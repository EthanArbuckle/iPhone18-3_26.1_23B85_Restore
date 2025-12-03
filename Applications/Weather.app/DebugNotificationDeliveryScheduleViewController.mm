@interface DebugNotificationDeliveryScheduleViewController
- (_TtC7Weather47DebugNotificationDeliveryScheduleViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation DebugNotificationDeliveryScheduleViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1007BA7BC();
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sub_1007BA908(self, section);
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = type metadata accessor for IndexPath();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  static IndexPath._unconditionallyBridgeFromObjectiveC(_:)();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1007BA9D0();

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC7Weather47DebugNotificationDeliveryScheduleViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_1007BB8B0();
}

@end