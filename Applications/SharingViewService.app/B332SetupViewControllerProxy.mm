@interface B332SetupViewControllerProxy
- (_TtC18SharingViewService28B332SetupViewControllerProxy)initWithNibName:(id)name bundle:(id)bundle;
- (int64_t)pnpDeviceTypeForType:(unint64_t)type;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)didTapCancelPairing;
- (void)didTapToPairPencil;
- (void)dismissUIAnimated:(BOOL)animated;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)showAlertIfNeeded;
- (void)showPairConsentPrompt;
- (void)showPairingFailure;
- (void)showPairingStarted;
- (void)showPairingSuccess;
- (void)showSubsequentPairSuccess;
- (void)updateDeviceInfoWithDeviceType:(unint64_t)type batteryLevel:(double)level batteryLevelKnown:(BOOL)known edge:(unint64_t)edge orientation:(int64_t)orientation isCharging:(BOOL)charging identifier:(id)identifier;
- (void)viewControllerDidDismiss:(id)dismiss;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
@end

@implementation B332SetupViewControllerProxy

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1000B1B6C();
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v8 = sub_100067384;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  selfCopy = self;
  if (context && (v9 = [context userInfo]) != 0)
  {
    v10 = v9;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [(SVSBaseMainController *)selfCopy setUserInfo:v11.super.isa];

  if (v6)
  {
    v8();
    sub_100025EF4(v8, v7);
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v4 = self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_dismissed];
  selfCopy = self;
  v6 = selfCopy;
  if ((v4 & 1) == 0)
  {
    [(B332SetupViewControllerProxy *)selfCopy dismiss:21];
  }

  v7.receiver = v6;
  v7.super_class = type metadata accessor for B332SetupViewControllerProxy();
  [(SVSBaseMainController *)&v7 viewDidDisappear:disappearCopy];
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_100067384;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_1000B2140(animated, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000670A4();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1000B2540(v4);
}

- (_TtC18SharingViewService28B332SetupViewControllerProxy)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return sub_1000B287C(v5, v7, bundle);
}

- (void)updateDeviceInfoWithDeviceType:(unint64_t)type batteryLevel:(double)level batteryLevelKnown:(BOOL)known edge:(unint64_t)edge orientation:(int64_t)orientation isCharging:(BOOL)charging identifier:(id)identifier
{
  v16 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v22 - v17;
  if (identifier)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = type metadata accessor for UUID();
    (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  }

  else
  {
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v18, 1, 1, v20);
  }

  selfCopy = self;
  sub_1000B45F4(type, edge, orientation, charging, v18, level);

  sub_10001259C(v18, &unk_1001BBAA0);
}

- (void)dismissUIAnimated:(BOOL)animated
{
  selfCopy = self;
  sub_1000B48D0();
}

- (void)didTapToPairPencil
{
  selfCopy = self;
  sub_1000B2D60();
}

- (void)didTapCancelPairing
{
  selfCopy = self;
  sub_1000B2EA8();
}

- (void)showAlertIfNeeded
{
  selfCopy = self;
  sub_1000B3004();
}

- (void)showPairingStarted
{
  selfCopy = self;
  sub_1000B3314();
}

- (void)showPairingSuccess
{
  selfCopy = self;
  sub_1000B35A0();
}

- (int64_t)pnpDeviceTypeForType:(unint64_t)type
{
  if (type - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_100170288[type - 1];
  }
}

- (void)showSubsequentPairSuccess
{
  selfCopy = self;
  sub_1000B37B4("showSubsequentPairingSuccess", &selRef_pairingSucceededSubsequently);
}

- (void)showPairingFailure
{
  selfCopy = self;
  sub_1000B37B4("showPairingFailure", &selRef_pairingFailed);
}

- (void)showPairConsentPrompt
{
  selfCopy = self;
  sub_1000B3928();
}

- (void)viewControllerDidDismiss:(id)dismiss
{
  dismissCopy = dismiss;
  selfCopy = self;
  sub_1000B49CC();
}

@end