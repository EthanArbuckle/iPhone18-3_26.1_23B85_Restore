@interface FMDevicePasscodeViewController
- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string;
- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)cancelActionWithSender:(id)sender;
- (void)nextActionWithSender:(id)sender;
- (void)textChangedWithSender:(id)sender;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation FMDevicePasscodeViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMDevicePasscodeViewController();
  v2 = v3.receiver;
  [(FMDevicePasscodeViewController *)&v3 viewDidLoad];
  sub_1002B38BC();
  sub_1002B3CD8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMDevicePasscodeViewController();
  v4 = v5.receiver;
  [(FMDevicePasscodeViewController *)&v5 viewWillAppear:appearCopy];
  sub_1002B58CC();
  sub_1002B5BB4();
  sub_1002B417C();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMDevicePasscodeViewController();
  v4 = v6.receiver;
  [(FMDevicePasscodeViewController *)&v6 viewDidAppear:appearCopy];
  v5 = *&v4[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField];
  [v5 becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField];
  selfCopy = self;
  [v4 resignFirstResponder];
  v6.receiver = selfCopy;
  v6.super_class = type metadata accessor for FMDevicePasscodeViewController();
  [(FMDevicePasscodeViewController *)&v6 viewWillDisappear:disappearCopy];
  sub_1002B44BC();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FMDevicePasscodeViewController();
  v2 = v3.receiver;
  [(FMDevicePasscodeViewController *)&v3 viewWillLayoutSubviews];
  sub_1002B5200();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1002B46A8(change);
}

- (void)textChangedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1002B8CC4();
}

- (BOOL)textField:(id)field shouldChangeCharactersInRange:(_NSRange)range replacementString:(id)string
{
  length = range.length;
  location = range.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  fieldCopy = field;
  selfCopy = self;
  LOBYTE(length) = sub_1002B8F08(location, length, v9, v11);

  return length & 1;
}

- (void)nextActionWithSender:(id)sender
{
  if (*&self->mediator[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode])
  {

    selfCopy = self;
    sub_1002B7EA0();
  }
}

- (void)cancelActionWithSender:(id)sender
{
  selfCopy = self;
  navigationController = [(FMDevicePasscodeViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v4 = navigationController;
    aBlock[4] = State.rawValue.getter;
    aBlock[5] = 0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100633C08;
    v5 = _Block_copy(aBlock);
    [v4 dismissViewControllerAnimated:1 completion:v5];

    _Block_release(v5);
  }

  else
  {
  }
}

- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
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
    return sub_1002B6ED4(v9, v11, text, v13, v14, v16, layout);
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
  return sub_1002B6ED4(v9, v11, text, v13, v14, v16, layout);
}

- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
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
  return sub_1002B73B8(v9, v11, text, v13, icon, layout);
}

@end