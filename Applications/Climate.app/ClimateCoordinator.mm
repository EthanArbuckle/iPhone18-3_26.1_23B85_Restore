@interface ClimateCoordinator
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4;
- (void)positionManagerDidUpdateTracking:(id)a3;
- (void)sessionDidDisconnect:(void *)a1;
@end

@implementation ClimateCoordinator

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_10005066C(a4);
}

- (void)carDidUpdateAccessories:(id)a3
{
  v3 = self;
  sub_100044F58(0xD00000000000001BLL, 0x80000001000DC520);
}

- (void)carDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v5 = a3;
  v6 = self;
  sub_100050A00();
}

- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4
{
  v4 = self;
  sub_100044F58(0xD00000000000001DLL, 0x80000001000DC4D0);
}

- (void)positionManagerDidUpdateTracking:(id)a3
{
  v3 = self;
  sub_100044F58(0xD000000000000024, 0x80000001000DC4A0);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v4 = self;
  sub_100044F58(0xD000000000000028, 0x80000001000DC460);
}

- (void)sessionDidDisconnect:(void *)a1
{
  v1 = a1;
  sub_10004290C();
}

@end