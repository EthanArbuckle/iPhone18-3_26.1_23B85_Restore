@interface CarPlayService
- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values;
- (void)carDidUpdate:(id)update state:(unint64_t)state;
- (void)carDidUpdateAccessories:(id)accessories;
- (void)carManager:(id)manager didAdd:(id)add;
- (void)carManager:(id)manager didRemove:(id)remove;
- (void)carManager:(id)manager didUpdateCurrentCar:(id)car;
- (void)positionManager:(id)manager didUpdateState:(unint64_t)state;
@end

@implementation CarPlayService

- (void)carDidUpdateAccessories:(id)accessories
{
  accessoriesCopy = accessories;
  selfCopy = self;
  sub_13C1E4(accessoriesCopy);
}

- (void)carDidUpdate:(id)update state:(unint64_t)state
{
  updateCopy = update;
  selfCopy = self;
  sub_13C1E4(updateCopy);
}

- (void)carManager:(id)manager didUpdateCurrentCar:(id)car
{
  managerCopy = manager;
  carCopy = car;
  selfCopy = self;
  sub_13C2BC(selfCopy, car);
}

- (void)carManager:(id)manager didAdd:(id)add
{
  sub_16484(0, &unk_1EE970, CAFCar_ptr);
  sub_16A7D4();
}

- (void)carManager:(id)manager didRemove:(id)remove
{
  sub_16484(0, &unk_1EE970, CAFCar_ptr);
  v6 = sub_16A7D4();
  managerCopy = manager;
  selfCopy = self;
  sub_13C3D0(selfCopy, v6);
}

- (void)positionManager:(id)manager didUpdateState:(unint64_t)state
{
  managerCopy = manager;
  selfCopy = self;
  sub_13C774(managerCopy);
}

- (void)accessoryDidUpdate:(id)update receivedAllValues:(BOOL)values
{
  updateCopy = update;
  selfCopy = self;
  sub_13C7E0(updateCopy, values);
}

@end