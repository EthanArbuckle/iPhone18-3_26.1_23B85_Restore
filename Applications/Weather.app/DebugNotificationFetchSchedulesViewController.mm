@interface DebugNotificationFetchSchedulesViewController
- (_TtC7Weather45DebugNotificationFetchSchedulesViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation DebugNotificationFetchSchedulesViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_10098743C();
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
  v12 = sub_100987598(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (_TtC7Weather45DebugNotificationFetchSchedulesViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  bundleCopy = bundle;
  sub_100987E94();
}

@end