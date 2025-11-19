@interface FMStewieWelcomeViewController
- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (double)_contentViewHeight;
- (void)cancelActionWithSender:(id)a3;
- (void)performAction;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMStewieWelcomeViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_100427BD8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_100427CC8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_100428138(a3);
}

- (double)_contentViewHeight
{
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  v3 = self;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (v4)
  {

    return 214.0;
  }

  v6 = [(FMStewieWelcomeViewController *)v3 view];
  if (v6)
  {
    v8 = v6;
    [v6 frame];
    v5 = v9;

    return v5;
  }

  __break(1u);
  return result;
}

- (void)performAction
{
  v2 = self;
  sub_10042AE20();
}

- (void)cancelActionWithSender:(id)a3
{
  v3 = self;
  v4 = sub_100426ACC();
  v6 = v5;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  if (!(*(*(updated - 8) + 48))(v6, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.updateFlowCanceled.setter();
  }

  (v4)(&v8, 0);
  [(FMStewieWelcomeViewController *)v3 dismissViewControllerAnimated:1 completion:0];
}

- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!a4)
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10042BB04(v9, v11, a4, v13, v14, v16, a6);
  }

  a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!a5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10042BB04(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (a4)
  {
    a4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = a5;
  return sub_10042BEB8(v9, v11, a4, v13, a5, a6);
}

@end