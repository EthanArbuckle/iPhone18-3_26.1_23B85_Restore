@interface B332SetupViewControllerProxy
- (_TtC18SharingViewService28B332SetupViewControllerProxy)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)pnpDeviceTypeForType:(unint64_t)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)didTapCancelPairing;
- (void)didTapToPairPencil;
- (void)dismissUIAnimated:(BOOL)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)showAlertIfNeeded;
- (void)showPairConsentPrompt;
- (void)showPairingFailure;
- (void)showPairingStarted;
- (void)showPairingSuccess;
- (void)showSubsequentPairSuccess;
- (void)updateDeviceInfoWithDeviceType:(unint64_t)a3 batteryLevel:(double)a4 batteryLevelKnown:(BOOL)a5 edge:(unint64_t)a6 orientation:(int64_t)a7 isCharging:(BOOL)a8 identifier:(id)a9;
- (void)viewControllerDidDismiss:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation B332SetupViewControllerProxy

- (void)viewDidLoad
{
  v2 = self;
  sub_1000B1B6C();
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v12 = self;
  if (a3 && (v9 = [a3 userInfo]) != 0)
  {
    v10 = v9;
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v11.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v11.super.isa = 0;
  }

  [(SVSBaseMainController *)v12 setUserInfo:v11.super.isa];

  if (v6)
  {
    v8();
    sub_100025EF4(v8, v7);
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v4 = self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService28B332SetupViewControllerProxy_dismissed];
  v5 = self;
  v6 = v5;
  if ((v4 & 1) == 0)
  {
    [(B332SetupViewControllerProxy *)v5 dismiss:21];
  }

  v7.receiver = v6;
  v7.super_class = type metadata accessor for B332SetupViewControllerProxy();
  [(SVSBaseMainController *)&v7 viewDidDisappear:v3];
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
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

  v8 = self;
  sub_1000B2140(a3, v6, v7);
  sub_100025EF4(v6, v7);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000670A4();
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1000B2540(v4);
}

- (_TtC18SharingViewService28B332SetupViewControllerProxy)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000B287C(v5, v7, a4);
}

- (void)updateDeviceInfoWithDeviceType:(unint64_t)a3 batteryLevel:(double)a4 batteryLevelKnown:(BOOL)a5 edge:(unint64_t)a6 orientation:(int64_t)a7 isCharging:(BOOL)a8 identifier:(id)a9
{
  v16 = sub_100005DCC(&unk_1001BBAA0);
  __chkstk_darwin(v16 - 8);
  v18 = &v22 - v17;
  if (a9)
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

  v21 = self;
  sub_1000B45F4(a3, a6, a7, a8, v18, a4);

  sub_10001259C(v18, &unk_1001BBAA0);
}

- (void)dismissUIAnimated:(BOOL)a3
{
  v3 = self;
  sub_1000B48D0();
}

- (void)didTapToPairPencil
{
  v2 = self;
  sub_1000B2D60();
}

- (void)didTapCancelPairing
{
  v2 = self;
  sub_1000B2EA8();
}

- (void)showAlertIfNeeded
{
  v2 = self;
  sub_1000B3004();
}

- (void)showPairingStarted
{
  v2 = self;
  sub_1000B3314();
}

- (void)showPairingSuccess
{
  v2 = self;
  sub_1000B35A0();
}

- (int64_t)pnpDeviceTypeForType:(unint64_t)a3
{
  if (a3 - 1 > 3)
  {
    return 0;
  }

  else
  {
    return qword_100170288[a3 - 1];
  }
}

- (void)showSubsequentPairSuccess
{
  v2 = self;
  sub_1000B37B4("showSubsequentPairingSuccess", &selRef_pairingSucceededSubsequently);
}

- (void)showPairingFailure
{
  v2 = self;
  sub_1000B37B4("showPairingFailure", &selRef_pairingFailed);
}

- (void)showPairConsentPrompt
{
  v2 = self;
  sub_1000B3928();
}

- (void)viewControllerDidDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000B49CC();
}

@end