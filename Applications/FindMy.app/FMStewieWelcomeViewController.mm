@interface FMStewieWelcomeViewController
- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (double)_contentViewHeight;
- (void)cancelActionWithSender:(id)sender;
- (void)performAction;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMStewieWelcomeViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_100427BD8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100427CC8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100428138(disappear);
}

- (double)_contentViewHeight
{
  v11 = &type metadata for SolariumFeatureFlag;
  v12 = sub_10000BD04();
  selfCopy = self;
  v4 = isFeatureEnabled(_:)();
  sub_100006060(v10);
  if (v4)
  {

    return 214.0;
  }

  view = [(FMStewieWelcomeViewController *)selfCopy view];
  if (view)
  {
    v8 = view;
    [view frame];
    v5 = v9;

    return v5;
  }

  __break(1u);
  return result;
}

- (void)performAction
{
  selfCopy = self;
  sub_10042AE20();
}

- (void)cancelActionWithSender:(id)sender
{
  selfCopy = self;
  v4 = sub_100426ACC();
  v6 = v5;
  updated = type metadata accessor for FMFSatelliteLocationUpdateEvent();
  if (!(*(*(updated - 8) + 48))(v6, 1, updated))
  {
    FMFSatelliteLocationUpdateEvent.updateFlowCanceled.setter();
  }

  (v4)(&v8, 0);
  [(FMStewieWelcomeViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];
}

- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (!text)
  {
    v13 = 0;
    if (name)
    {
      goto LABEL_3;
    }

LABEL_5:
    v14 = 0;
    v16 = 0;
    return sub_10042BB04(v9, v11, text, v13, v14, v16, layout);
  }

  text = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  if (!name)
  {
    goto LABEL_5;
  }

LABEL_3:
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;
  return sub_10042BB04(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy29FMStewieWelcomeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (text)
  {
    text = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  iconCopy = icon;
  return sub_10042BEB8(v9, v11, text, v13, icon, layout);
}

@end