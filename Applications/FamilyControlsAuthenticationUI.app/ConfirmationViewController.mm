@interface ConfirmationViewController
- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation ConfirmationViewController

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100004268(disappear);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for ConfirmationViewController();
  v2 = v4.receiver;
  [(ConfirmationViewController *)&v4 viewDidLoad];
  navigationItem = [v2 navigationItem];
  [navigationItem setHidesBackButton:1 animated:0];
}

- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_100004550(v9, v11, text, v13, v14, v16, layout);
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
  return sub_100004550(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC30FamilyControlsAuthenticationUI26ConfirmationViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (text)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    text = v10;
  }

  *&self->delegate[OBJC_IVAR____TtC30FamilyControlsAuthenticationUI26ConfirmationViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  iconCopy = icon;
  v12 = String._bridgeToObjectiveC()();

  if (text)
  {
    v13 = String._bridgeToObjectiveC()();
  }

  else
  {
    v13 = 0;
  }

  v16.receiver = self;
  v16.super_class = type metadata accessor for ConfirmationViewController();
  v14 = [(ConfirmationViewController *)&v16 initWithTitle:v12 detailText:v13 icon:iconCopy contentLayout:layout];

  return v14;
}

@end