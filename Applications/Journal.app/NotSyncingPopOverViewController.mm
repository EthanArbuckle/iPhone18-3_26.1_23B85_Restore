@interface NotSyncingPopOverViewController
- (_TtC7Journal31NotSyncingPopOverViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
@end

@implementation NotSyncingPopOverViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for NotSyncingPopOverViewController();
  v2 = v3.receiver;
  [(NotSyncingPopOverViewController *)&v3 viewDidLoad];
  sub_1001BE494();
}

- (_TtC7Journal31NotSyncingPopOverViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return sub_1001BE8C8(v5, v7, a4);
}

@end