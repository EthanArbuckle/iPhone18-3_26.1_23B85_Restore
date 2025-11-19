@interface CarAddressWaypointsController
- (CarAddressWaypointsController)initWithAddress:(id)a3 overridingTitle:(id)a4;
- (id)subtitleForCurrentDestination;
- (id)titleForCurrentDestination;
@end

@implementation CarAddressWaypointsController

- (id)subtitleForCurrentDestination
{
  v2 = [(CarAddressWaypointsController *)self address];
  v3 = [v2 singleLineAddress];

  return v3;
}

- (id)titleForCurrentDestination
{
  v3 = [(CarAddressWaypointsController *)self titleOverride];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(CarAddressWaypointsController *)self address];
    v5 = [v6 compositeName];
  }

  return v5;
}

- (CarAddressWaypointsController)initWithAddress:(id)a3 overridingTitle:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = CarAddressWaypointsController;
  v9 = [(CarAddressWaypointsController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_address, a3);
    objc_storeStrong(&v10->_titleOverride, a4);
    v11 = [SearchResult alloc];
    v12 = [(CarAddressWaypointsController *)v10 address];
    v13 = [(SearchResult *)v11 initWithSearchResult:0 address:v12];
    searchResult = v10->_searchResult;
    v10->_searchResult = v13;
  }

  return v10;
}

@end