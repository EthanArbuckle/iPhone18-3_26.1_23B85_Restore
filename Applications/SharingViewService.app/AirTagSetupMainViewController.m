@interface AirTagSetupMainViewController
- (_TtC18SharingViewService29AirTagSetupMainViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didLosePeripheral:(id)a4 forType:(id)a5;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)dismiss:(int)a3;
- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4;
- (void)handleButtonActions:(id)a3;
- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4;
- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5;
- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation AirTagSetupMainViewController

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_1000BD3A0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_1000BDE8C(a3);
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000E4B64;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3;
  v9 = self;
  sub_1000BF778(a3, v6, v7);
  sub_100012050(v6);
}

- (void)handleButtonActions:(id)a3
{
  if (a3)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000A1F20(&qword_1001BBC40, &qword_1001BC220);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1000C0E20(v4);
}

- (void)dismiss:(int)a3
{
  v5 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService29AirTagSetupMainViewController_nfcVC];
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response;
    *v9 = 2;
    *(v9 + 8) = 0;
  }

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = self;
  sub_1000C1744(a3, v7, 0, 0, 429);
  sub_10001259C(v7, &qword_1001BA7B0);
}

- (void)dismissViewControllerAnimated:(BOOL)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_1000E4498;
  }

  else
  {
    v7 = 0;
  }

  v8 = self;
  sub_1000C3A98(a3, v6, v7);
  sub_100012050(v6);
}

- (_TtC18SharingViewService29AirTagSetupMainViewController)initWithNibName:(id)a3 bundle:(id)a4
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
  return sub_1000C3F10(v5, v7, a4);
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000D6154(v4);
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000DFAF0(v7);
}

- (void)centralManager:(id)a3 didLosePeripheral:(id)a4 forType:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = self;
  sub_1000E0924(v9, v10);
}

- (void)pairingAgent:(id)a3 peerDidFailToCompletePairing:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1000E0C50(a4, a5);
}

- (void)pairingAgent:(id)a3 peerDidCompletePairing:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1000E0FB8(a4);
}

- (void)pairingAgent:(id)a3 peerDidRequestPairing:(id)a4 type:(int64_t)a5 passkey:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = self;
  sub_1000E1794(a4, a5);
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  sub_1000D65C8(v6, a4);
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1000E2314(v8);
}

- (void)peripheral:(id)a3 didUpdateValueForCharacteristic:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  sub_1000E2948(v8, v9);
}

- (void)proxCardFlowDidDismiss
{
  v2 = self;
  sub_1000D6C20();
}

@end