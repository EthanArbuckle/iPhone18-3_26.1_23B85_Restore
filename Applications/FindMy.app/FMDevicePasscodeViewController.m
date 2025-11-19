@interface FMDevicePasscodeViewController
- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5;
- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6;
- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6;
- (void)cancelActionWithSender:(id)a3;
- (void)nextActionWithSender:(id)a3;
- (void)textChangedWithSender:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
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

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for FMDevicePasscodeViewController();
  v4 = v5.receiver;
  [(FMDevicePasscodeViewController *)&v5 viewWillAppear:v3];
  sub_1002B58CC();
  sub_1002B5BB4();
  sub_1002B417C();
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = type metadata accessor for FMDevicePasscodeViewController();
  v4 = v6.receiver;
  [(FMDevicePasscodeViewController *)&v6 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField];
  [v5 becomeFirstResponder];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = *&self->OBWelcomeController_opaque[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_hiddenPasscodeTextField];
  v5 = self;
  [v4 resignFirstResponder];
  v6.receiver = v5;
  v6.super_class = type metadata accessor for FMDevicePasscodeViewController();
  [(FMDevicePasscodeViewController *)&v6 viewWillDisappear:v3];
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

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1002B46A8(a3);
}

- (void)textChangedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1002B8CC4();
}

- (BOOL)textField:(id)a3 shouldChangeCharactersInRange:(_NSRange)a4 replacementString:(id)a5
{
  length = a4.length;
  location = a4.location;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  v12 = a3;
  v13 = self;
  LOBYTE(length) = sub_1002B8F08(location, length, v9, v11);

  return length & 1;
}

- (void)nextActionWithSender:(id)a3
{
  if (*&self->mediator[OBJC_IVAR____TtC6FindMy30FMDevicePasscodeViewController_firstPasscode])
  {

    v4 = self;
    sub_1002B7EA0();
  }
}

- (void)cancelActionWithSender:(id)a3
{
  v6 = self;
  v3 = [(FMDevicePasscodeViewController *)v6 navigationController];
  if (v3)
  {
    v4 = v3;
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

- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 contentLayout:(int64_t)a6
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
    return sub_1002B6ED4(v9, v11, a4, v13, v14, v16, a6);
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
  return sub_1002B6ED4(v9, v11, a4, v13, v14, v16, a6);
}

- (_TtC6FindMy30FMDevicePasscodeViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 contentLayout:(int64_t)a6
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
  return sub_1002B73B8(v9, v11, a4, v13, a5, a6);
}

@end