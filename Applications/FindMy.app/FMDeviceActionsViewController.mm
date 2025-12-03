@interface FMDeviceActionsViewController
- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelActionWithSender:(id)sender;
- (void)performAction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation FMDeviceActionsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMDeviceActionsViewController();
  v2 = v4.receiver;
  viewDidLoad = [(FMDeviceActionsViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x160))(viewDidLoad);
  sub_1003BC000();
  [*(v2 + OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton) addTarget:v2 action:"performAction" forControlEvents:{64, v4.receiver, v4.super_class}];
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1003BF970(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1003BFEC0(disappear);
}

- (void)traitCollectionDidChange:(id)change
{
  selfCopy = self;
  sub_1003BC6AC();
}

- (void)performAction
{
  selfCopy = self;
  sub_1003BC8BC();
}

- (void)cancelActionWithSender:(id)sender
{
  v5[4] = State.rawValue.getter;
  v5[5] = 0;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 1107296256;
  v5[2] = sub_100004AE4;
  v5[3] = &unk_10063AFE8;
  v4 = _Block_copy(v5);
  [(FMDeviceActionsViewController *)self dismissViewControllerAnimated:1 completion:v4];
  _Block_release(v4);
}

- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_1003C1554(v9, v11, text, v13, v14, v16, layout);
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
  return sub_1003C1554(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  return sub_1003C18B0(v9, v11, text, v13, icon, layout);
}

@end