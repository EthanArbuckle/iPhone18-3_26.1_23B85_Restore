@interface AudioBoxBluetoothManager
- (_TtC15Diagnostic_838924AudioBoxBluetoothManager)init;
- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral;
- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i;
- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error;
- (void)centralManagerDidUpdateState:(id)state;
- (void)peripheral:(id)peripheral didDiscoverServices:(id)services;
- (void)peripheral:(id)peripheral didModifyServices:(id)services;
- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error;
- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error;
- (void)stream:(id)stream handleEvent:(unint64_t)event;
@end

@implementation AudioBoxBluetoothManager

- (_TtC15Diagnostic_838924AudioBoxBluetoothManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)centralManagerDidUpdateState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_100005BBC(stateCopy);
}

- (void)centralManager:(id)manager didDiscoverPeripheral:(id)peripheral advertisementData:(id)data RSSI:(id)i
{
  v10 = sub_10002186C();
  managerCopy = manager;
  peripheralCopy = peripheral;
  iCopy = i;
  selfCopy = self;
  sub_10000AB30(managerCopy, peripheralCopy, v10);
}

- (void)centralManager:(id)manager didConnectPeripheral:(id)peripheral
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_10000B058(peripheralCopy);
}

- (void)centralManager:(id)manager didFailToConnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_10000B22C();
}

- (void)centralManager:(id)manager didDisconnectPeripheral:(id)peripheral error:(id)error
{
  managerCopy = manager;
  peripheralCopy = peripheral;
  selfCopy = self;
  errorCopy = error;
  sub_10000B430();
}

- (void)peripheral:(id)peripheral didDiscoverServices:(id)services
{
  peripheralCopy = peripheral;
  selfCopy = self;
  servicesCopy = services;
  sub_1000065A0(peripheralCopy, services);
}

- (void)peripheral:(id)peripheral didModifyServices:(id)services
{
  sub_10000C380(0, &qword_100035D60, CBService_ptr);
  v6 = sub_10002197C();
  peripheralCopy = peripheral;
  selfCopy = self;
  sub_10000B634(v6);
}

- (void)peripheral:(id)peripheral didWriteValueForCharacteristic:(id)characteristic error:(id)error
{
  peripheralCopy = peripheral;
  characteristicCopy = characteristic;
  selfCopy = self;
  errorCopy = error;
  sub_10000BA38(error);
}

- (void)peripheral:(id)peripheral didOpenL2CAPChannel:(id)channel error:(id)error
{
  peripheralCopy = peripheral;
  channelCopy = channel;
  selfCopy = self;
  errorCopy = error;
  sub_10000BCF4(channel, error);
}

- (void)stream:(id)stream handleEvent:(unint64_t)event
{
  streamCopy = stream;
  selfCopy = self;
  sub_100008C00(streamCopy, event);
}

@end