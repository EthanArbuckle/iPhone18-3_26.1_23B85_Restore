@interface ConfirmationViewController
- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation ConfirmationViewController

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100004268(a3);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ConfirmationViewController();
  v2 = v4.receiver;
  [(ConfirmationViewController *)&v4 viewDidLoad];
  v3 = [v2 navigationItem];
  [v3 setHidesBackButton:1 animated:0];
}

- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_100004550(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_100004550(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v10;
  }

  *&self->delegate[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI26ConfirmationViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  v11 = a5;
  v12 = String._bridgeToObjectiveC()();

  if (a4)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for ConfirmationViewController();
  v14 = [(ConfirmationViewController *)&v16 initWithTitle:v12 detailText:v13 icon:v11 contentLayout:a6];

  return v14;
}

@end