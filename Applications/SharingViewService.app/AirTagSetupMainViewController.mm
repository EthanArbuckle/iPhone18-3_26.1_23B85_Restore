@interface AirTagSetupMainViewController
- (_TtC18SharingViewService29AirTagSetupMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didLosePeripheral:(id)peripheral forType:(id)type;
- (void)centralManagerDidUpdateState:(id)state;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)dismiss:(int)dismiss;
- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion;
- (void)handleButtonActions:(id)actions;
- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing;
- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error;
- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey;
- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error;
- (void)proxCardFlowDidDismiss;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation AirTagSetupMainViewController

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1000BD3A0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_1000BDE8C(disappear);
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  contextCopy = context;
  selfCopy = self;
  sub_1000BF778(context, v6, v7);
  sub_100012050(v6);
}

- (void)handleButtonActions:(id)actions
{
  if (actions)
  {
    sub_1000122EC(0, &qword_1001BC220);
    sub_1000A1F20(&qword_1001BBC40, &qword_1001BC220);
    v4 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
  sub_1000C0E20(v4);
}

- (void)dismiss:(int)dismiss
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
  selfCopy = self;
  sub_1000C1744(dismiss, v7, 0, 0, 429);
  sub_10001259C(v7, &qword_1001BA7B0);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
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

  selfCopy = self;
  sub_1000C3A98(animated, v6, v7);
  sub_100012050(v6);
}

- (_TtC18SharingViewService29AirTagSetupMainViewController)initWithNibName:(id)name bundle:(id)bundle
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
  return sub_1000C3F10(v5, v7, bundle);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1000D6154(stateCopy);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_1000DFAF0(peripheralCopy);
}

- (void)centralManager:(id)manager didLosePeripheral:(id)peripheral forType:(id)type
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  typeCopy = type;
  selfCopy = self;
  sub_1000E0924(peripheralCopy, typeCopy);
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  errorCopy = error;
  sub_1000E0C50(pairing, error);
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  sub_1000E0FB8(pairing);
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  selfCopy = self;
  sub_1000E1794(pairing, type);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_1000D65C8(peripheralCopy, services);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  selfCopy = self;
  errorCopy = error;
  sub_1000E2314(peripheralCopy);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  selfCopy = self;
  errorCopy = error;
  sub_1000E2948(peripheralCopy, characteristicCopy);
}

- (void)proxCardFlowDidDismiss
{
  selfCopy = self;
  sub_1000D6C20();
}

@end