@interface DirectionsWorkHistoryItem
- (AddressBookAddress)workAddress;
- (DirectionsWorkHistoryItem)init;
- (id)entryWithTicket:(id)ticket;
- (void)updateModel:(id)model;
@end

@implementation DirectionsWorkHistoryItem

- (AddressBookAddress)workAddress
{
  v2 = +[AddressBookManager sharedManager];
  meCardWorkAddress = [v2 meCardWorkAddress];

  return meCardWorkAddress;
}

- (DirectionsWorkHistoryItem)init
{
  v5.receiver = self;
  v5.super_class = DirectionsWorkHistoryItem;
  v2 = [(DirectionsWorkHistoryItem *)&v5 init];
  if (v2)
  {
    v3 = +[SearchResult currentLocationSearchResult];
    [(DirectionsWorkHistoryItem *)v2 setCurrentLocation:v3];
  }

  return v2;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Work [Address Book label]" value:@"localized string not found" table:0];
  [modelCopy setFirstLine:v6];

  workAddress = [(DirectionsWorkHistoryItem *)self workAddress];
  singleLineAddress = [workAddress singleLineAddress];
  [modelCopy setSecondLine:singleLineAddress];

  workAddress2 = [(DirectionsWorkHistoryItem *)self workAddress];
  geocodedMapItem = [workAddress2 geocodedMapItem];
  [modelCopy setMapItem:geocodedMapItem];

  mapItem = [modelCopy mapItem];
  if (mapItem)
  {
  }

  else
  {
    workAddress3 = [(DirectionsWorkHistoryItem *)self workAddress];
    geocodingError = [workAddress3 geocodingError];

    if (!geocodingError)
    {
      workAddress4 = [(DirectionsWorkHistoryItem *)self workAddress];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100801720;
      v15[3] = &unk_101630438;
      v16 = modelCopy;
      [workAddress4 forwardGeocodeAddress:v15];
    }
  }

  [modelCopy setDebugSubtitle:@"[Work]"];
}

- (id)entryWithTicket:(id)ticket
{
  v4 = [[GEORPSuggestionEntry alloc] initWithType:4];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Work [Address Book label]" value:@"localized string not found" table:0];
  [v4 safeAddDisplayLine:v6];

  currentLocation = [(DirectionsWorkHistoryItem *)self currentLocation];
  mapItem = [currentLocation mapItem];
  name = [mapItem name];
  [v4 safeAddDisplayLine:name];

  return v4;
}

@end