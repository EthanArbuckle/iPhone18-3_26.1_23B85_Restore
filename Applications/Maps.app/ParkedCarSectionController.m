@interface ParkedCarSectionController
- (ParkedCarSectionController)initWithParkedCar:(id)a3;
- (void)setParkedCar:(id)a3;
@end

@implementation ParkedCarSectionController

- (void)setParkedCar:(id)a3
{
  v5 = a3;
  if (self->_parkedCar != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_parkedCar, a3);
    [(ParkedCarSectionController *)self updateFromParkedCar];
    v5 = v6;
  }
}

- (ParkedCarSectionController)initWithParkedCar:(id)a3
{
  v5 = a3;
  v6 = [v5 mapItem];
  v9.receiver = self;
  v9.super_class = ParkedCarSectionController;
  v7 = [(ParkedCarSectionController *)&v9 initWithMapItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_parkedCar, a3);
  }

  return v7;
}

@end