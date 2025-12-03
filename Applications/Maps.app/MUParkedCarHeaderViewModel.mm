@interface MUParkedCarHeaderViewModel
- (MUParkedCarHeaderViewModel)initWithParkedCar:(id)car;
@end

@implementation MUParkedCarHeaderViewModel

- (MUParkedCarHeaderViewModel)initWithParkedCar:(id)car
{
  carCopy = car;
  mapItem = [carCopy mapItem];
  v9.receiver = self;
  v9.super_class = MUParkedCarHeaderViewModel;
  v7 = [(MUParkedCarHeaderViewModel *)&v9 initWithMapItem:mapItem];

  if (v7)
  {
    objc_storeStrong(&v7->_parkedCar, car);
  }

  return v7;
}

@end