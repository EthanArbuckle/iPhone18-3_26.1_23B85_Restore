@interface ParkedCarSearchResult
- (ParkedCarSearchResult)initWithParkedCar:(id)car;
@end

@implementation ParkedCarSearchResult

- (ParkedCarSearchResult)initWithParkedCar:(id)car
{
  carCopy = car;
  mapItem = [carCopy mapItem];
  v9.receiver = self;
  v9.super_class = ParkedCarSearchResult;
  v7 = [(SearchResult *)&v9 initWithMapItem:mapItem];

  if (v7)
  {
    objc_storeStrong(&v7->_parkedCar, car);
  }

  return v7;
}

@end