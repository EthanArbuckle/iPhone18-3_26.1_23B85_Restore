@interface ClimateCoordinator
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)positionManager:(id)manager didUpdateState:(unint64_t)state;
- (void)positionManagerDidUpdateTracking:(id)tracking;
- (void)sessionDidDisconnect:(void *)disconnect;
@end

@implementation ClimateCoordinator

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_10005066C(car);
}

- (void)carDidUpdateAccessories:(id)accessories
{
  selfCopy = self;
  sub_100044F58(0xD00000000000001BLL, 0x80000001000DC520);
}

- (void)carDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  sub_100050A00();
}

- (void)positionManager:(id)manager didUpdateState:(unint64_t)state
{
  selfCopy = self;
  sub_100044F58(0xD00000000000001DLL, 0x80000001000DC4D0);
}

- (void)positionManagerDidUpdateTracking:(id)tracking
{
  selfCopy = self;
  sub_100044F58(0xD000000000000024, 0x80000001000DC4A0);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  selfCopy = self;
  sub_100044F58(0xD000000000000028, 0x80000001000DC460);
}

- (void)sessionDidDisconnect:(void *)disconnect
{
  disconnectCopy = disconnect;
  sub_10004290C();
}

@end