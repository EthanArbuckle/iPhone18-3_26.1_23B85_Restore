@interface DirectionsHomeHistoryItem
- (AddressBookAddress)homeAddress;
- (DirectionsHomeHistoryItem)init;
- (id)entryWithTicket:(id)ticket;
- (void)updateModel:(id)model;
@end

@implementation DirectionsHomeHistoryItem

- (AddressBookAddress)homeAddress
{
  v2 = +[AddressBookManager sharedManager];
  meCardHomeAddress = [v2 meCardHomeAddress];

  return meCardHomeAddress;
}

- (DirectionsHomeHistoryItem)init
{
  v5.receiver = self;
  v5.super_class = DirectionsHomeHistoryItem;
  v2 = [(DirectionsHomeHistoryItem *)&v5 init];
  if (v2)
  {
    v3 = +[SearchResult currentLocationSearchResult];
    [(DirectionsHomeHistoryItem *)v2 setCurrentLocation:v3];
  }

  return v2;
}

- (void)updateModel:(id)model
{
  modelCopy = model;
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Home [Address Book label]" value:@"localized string not found" table:0];
  [modelCopy setFirstLine:v6];

  homeAddress = [(DirectionsHomeHistoryItem *)self homeAddress];
  singleLineAddress = [homeAddress singleLineAddress];
  [modelCopy setSecondLine:singleLineAddress];

  homeAddress2 = [(DirectionsHomeHistoryItem *)self homeAddress];
  geocodedMapItem = [homeAddress2 geocodedMapItem];
  [modelCopy setMapItem:geocodedMapItem];

  mapItem = [modelCopy mapItem];
  if (mapItem)
  {
  }

  else
  {
    homeAddress3 = [(DirectionsHomeHistoryItem *)self homeAddress];
    geocodingError = [homeAddress3 geocodingError];

    if (!geocodingError)
    {
      homeAddress4 = [(DirectionsHomeHistoryItem *)self homeAddress];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10080194C;
      v15[3] = &unk_101630438;
      v16 = modelCopy;
      [homeAddress4 forwardGeocodeAddress:v15];
    }
  }

  [modelCopy setDebugSubtitle:@"[Home]"];
}

- (id)entryWithTicket:(id)ticket
{
  v4 = [[GEORPSuggestionEntry alloc] initWithType:4];
  v5 = +[NSBundle mainBundle];
  v6 = [v5 localizedStringForKey:@"Home [Address Book label]" value:@"localized string not found" table:0];
  [v4 safeAddDisplayLine:v6];

  currentLocation = [(DirectionsHomeHistoryItem *)self currentLocation];
  mapItem = [currentLocation mapItem];
  name = [mapItem name];
  [v4 safeAddDisplayLine:name];

  return v4;
}

@end