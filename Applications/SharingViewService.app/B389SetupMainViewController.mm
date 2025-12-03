@interface B389SetupMainViewController
- (unint64_t)supportedInterfaceOrientations;
- (void)b389NFCPromptUpdateConfiguration:(id)configuration;
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
- (void)setResponseHandler:(id)handler;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation B389SetupMainViewController

- (unint64_t)supportedInterfaceOrientations
{
  selfCopy = self;
  v3 = sub_100037D20();

  return v3;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_100037E28(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_100038C00(disappear);
}

- (void)configureWithContext:(id)context completion:(id)completion
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

  contextCopy = context;
  selfCopy = self;
  sub_10003A1D8(context, v6, v7);
  sub_100012050(v6);
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
  sub_10003B6A0(v4);
}

- (void)dismiss:(int)dismiss
{
  v5 = sub_100005DCC(&qword_1001BA7B0);
  __chkstk_darwin(v5 - 8);
  v7 = &v12 - v6;
  v8 = *&self->super.SBUIRemoteAlertServiceViewController_opaque[OBJC_IVAR____TtC18SharingViewService27B389SetupMainViewController_nfcVC];
  if (v8)
  {
    v9 = v8 + OBJC_IVAR____TtC18SharingViewService27B389NFCStatusViewController_response;
    *v9 = 2;
    *(v9 + 8) = 0;
  }

  v10 = type metadata accessor for URL();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  selfCopy = self;
  sub_10003BFDC(dismiss, v7, 0, 0, 391);
  sub_10001259C(v7, &qword_1001BA7B0);
}

- (void)dismissViewControllerAnimated:(BOOL)animated completion:(id)completion
{
  v6 = _Block_copy(completion);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_10006709C;
  }

  else
  {
    v7 = 0;
  }

  selfCopy = self;
  sub_10003E34C(animated, v6, v7);
  sub_100012050(v6);
}

- (void)setResponseHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_10003FAE0(sub_100066BC0, v5);
}

- (void)b389NFCPromptUpdateConfiguration:(id)configuration
{
  configurationCopy = configuration;
  selfCopy = self;
  sub_10003FE28(configuration);
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100051D80(stateCopy);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_100062554(peripheralCopy);
}

- (void)centralManager:(id)manager didLosePeripheral:(id)peripheral forType:(id)type
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  typeCopy = type;
  selfCopy = self;
  sub_100063390(peripheralCopy, typeCopy);
}

- (void)pairingAgent:(id)agent peerDidFailToCompletePairing:(id)pairing error:(id)error
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  errorCopy = error;
  sub_1000636C0(pairing, error);
}

- (void)pairingAgent:(id)agent peerDidCompletePairing:(id)pairing
{
  agentCopy = agent;
  pairingCopy = pairing;
  selfCopy = self;
  sub_100063A2C(pairing);
}

- (void)pairingAgent:(id)agent peerDidRequestPairing:(id)pairing type:(int64_t)type passkey:(id)passkey
{
  agentCopy = agent;
  pairingCopy = pairing;
  passkeyCopy = passkey;
  selfCopy = self;
  sub_100064208(pairing, type);
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_1000521F4(peripheralCopy, services);
}

- (void)peripheral:(id)peripheral didDiscoverCharacteristicsForService:(id)service error:(id)error
{
  peripheralCopy = peripheral;
  serviceCopy = service;
  selfCopy = self;
  errorCopy = error;
  sub_100064D88(peripheralCopy);
}

- (void)peripheral:(id)peripheral didUpdateValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  selfCopy = self;
  errorCopy = error;
  sub_1000653BC(peripheralCopy, characteristicCopy);
}

@end