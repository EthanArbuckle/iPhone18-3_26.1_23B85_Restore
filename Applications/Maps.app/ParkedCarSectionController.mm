@interface ParkedCarSectionController
- (ParkedCarSectionController)initWithParkedCar:(id)car;
- (void)setParkedCar:(id)car;
@end

@implementation ParkedCarSectionController

- (void)setParkedCar:(id)car
{
  carCopy = car;
  if (self->_parkedCar != carCopy)
  {
    v6 = carCopy;
    objc_storeStrong(&self->_parkedCar, car);
    [(ParkedCarSectionController *)self updateFromParkedCar];
    carCopy = v6;
  }
}

- (ParkedCarSectionController)initWithParkedCar:(id)car
{
  carCopy = car;
  mapItem = [carCopy mapItem];
  v9.receiver = self;
  v9.super_class = ParkedCarSectionController;
  v7 = [(ParkedCarSectionController *)&v9 initWithMapItem:mapItem];

  if (v7)
  {
    objc_storeStrong(&v7->_parkedCar, car);
  }

  return v7;
}

@end