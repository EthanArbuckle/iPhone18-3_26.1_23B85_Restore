@interface CarPlayService
- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4;
- (void)carDidUpdate:(id)a3 state:(unint64_t)a4;
- (void)carDidUpdateAccessories:(id)a3;
- (void)carManager:(id)a3 didAdd:(id)a4;
- (void)carManager:(id)a3 didRemove:(id)a4;
- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4;
- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4;
@end

@implementation CarPlayService

- (void)carDidUpdateAccessories:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_13C1E4(v4);
}

- (void)carDidUpdate:(id)a3 state:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_13C1E4(v5);
}

- (void)carManager:(id)a3 didUpdateCurrentCar:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_13C2BC(v8, a4);
}

- (void)carManager:(id)a3 didAdd:(id)a4
{
  sub_16484(0, &unk_1EE970, CAFCar_ptr);
  sub_16A7D4();
}

- (void)carManager:(id)a3 didRemove:(id)a4
{
  sub_16484(0, &unk_1EE970, CAFCar_ptr);
  v6 = sub_16A7D4();
  v7 = a3;
  v8 = self;
  sub_13C3D0(v8, v6);
}

- (void)positionManager:(id)a3 didUpdateState:(unint64_t)a4
{
  v5 = a3;
  v6 = self;
  sub_13C774(v5);
}

- (void)accessoryDidUpdate:(id)a3 receivedAllValues:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_13C7E0(v6, a4);
}

@end