@interface FMDeviceActionsViewController
- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelActionWithSender:(id)a3;
- (void)performAction;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation FMDeviceActionsViewController

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for FMDeviceActionsViewController();
  v2 = v4.receiver;
  v3 = [(FMDeviceActionsViewController *)&v4 viewDidLoad];
  (*((swift_isaMask & *v2) + 0x160))(v3);
  sub_1003BC000();
  [*(v2 + OBJC_IVAR____TtC6FindMy29FMDeviceActionsViewController_performButton) addTarget:v2 action:"performAction" forControlEvents:{64, v4.receiver, v4.super_class}];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1003BF970(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_1003BFEC0(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v3 = self;
  sub_1003BC6AC();
}

- (void)performAction
{
  v2 = self;
  sub_1003BC8BC();
}

- (void)cancelActionWithSender:(id)a3
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

- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_1003C1554(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_1003C1554(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy29FMDeviceActionsViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
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
  return sub_1003C18B0(v9, v11, a4, v13, a5, a6);
}

@end