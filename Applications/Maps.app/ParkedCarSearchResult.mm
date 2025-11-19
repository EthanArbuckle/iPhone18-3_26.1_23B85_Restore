@interface ParkedCarSearchResult
- (ParkedCarSearchResult)initWithParkedCar:(id)a3;
@end

@implementation ParkedCarSearchResult

- (ParkedCarSearchResult)initWithParkedCar:(id)a3
{
  v5 = a3;
  v6 = [v5 mapItem];
  v9.receiver = self;
  v9.super_class = ParkedCarSearchResult;
  v7 = [(SearchResult *)&v9 initWithMapItem:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_parkedCar, a3);
  }

  return v7;
}

@end