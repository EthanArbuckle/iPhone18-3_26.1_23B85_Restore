@interface CarAddressWaypointsController
- (CarAddressWaypointsController)initWithAddress:(id)address overridingTitle:(id)title;
- (id)subtitleForCurrentDestination;
- (id)titleForCurrentDestination;
@end

@implementation CarAddressWaypointsController

- (id)subtitleForCurrentDestination
{
  address = [(CarAddressWaypointsController *)self address];
  singleLineAddress = [address singleLineAddress];

  return singleLineAddress;
}

- (id)titleForCurrentDestination
{
  titleOverride = [(CarAddressWaypointsController *)self titleOverride];
  v4 = titleOverride;
  if (titleOverride)
  {
    compositeName = titleOverride;
  }

  else
  {
    address = [(CarAddressWaypointsController *)self address];
    compositeName = [address compositeName];
  }

  return compositeName;
}

- (CarAddressWaypointsController)initWithAddress:(id)address overridingTitle:(id)title
{
  addressCopy = address;
  titleCopy = title;
  v16.receiver = self;
  v16.super_class = CarAddressWaypointsController;
  v9 = [(CarAddressWaypointsController *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_address, address);
    objc_storeStrong(&v10->_titleOverride, title);
    v11 = [SearchResult alloc];
    address = [(CarAddressWaypointsController *)v10 address];
    v13 = [(SearchResult *)v11 initWithSearchResult:0 address:address];
    searchResult = v10->_searchResult;
    v10->_searchResult = v13;
  }

  return v10;
}

@end