@interface SAClientUserActivity
- (BOOL)hasLocationData;
- (CLLocationCoordinate2D)coordinate;
- (id)addressDictionary;
- (id)mapItem;
- (id)startNavigationCommand;
@end

@implementation SAClientUserActivity

- (id)startNavigationCommand
{
  v3 = [(SAClientUserActivity *)self addressDictionary];
  [(SAClientUserActivity *)self coordinate];
  v4 = [SALocation locationWithContactDictionary:v3 coordinate:?];

  v5 = [(SAClientUserActivity *)self userInfo];
  v6 = [v5 valueForKey:@"name"];
  [v4 setLabel:v6];

  v7 = objc_alloc_init(ASStartNavigation);
  [(ASStartNavigation *)v7 setDestination:v4];
  [(ASStartNavigation *)v7 setDirectionsType:SALocalSearchDirectionsTypeByCarValue];

  return v7;
}

- (id)addressDictionary
{
  v2 = [(SAClientUserActivity *)self userInfo];
  v9[0] = CNPostalAddressStreetKey;
  v9[1] = CNPostalAddressPostalCodeKey;
  v9[2] = CNPostalAddressStateKey;
  v9[3] = CNPostalAddressCityKey;
  v9[4] = CNPostalAddressCountryKey;
  v3 = [NSArray arrayWithObjects:v9 count:5];
  v4 = [v2 dictionaryWithValuesForKeys:v3];
  v5 = [v4 mutableCopy];

  v6 = [v5 keysOfEntriesPassingTest:&stru_C608];
  v7 = [v6 allObjects];
  [v5 removeObjectsForKeys:v7];

  return v5;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(SAClientUserActivity *)self userInfo];
  v4 = [v3 objectForKey:@"latitude"];

  v5 = [(SAClientUserActivity *)self userInfo];
  v6 = [v5 objectForKey:@"longitude"];

  if (v4)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7 || ([v4 floatValue], v9 = v8, objc_msgSend(v6, "floatValue"), v15 = CLLocationCoordinate2DMake(v9, v10), latitude = v15.latitude, longitude = v15.longitude, !CLLocationCoordinate2DIsValid(v15)))
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v13 = latitude;
  v14 = longitude;
  result.longitude = v14;
  result.latitude = v13;
  return result;
}

- (id)mapItem
{
  if ([(SAClientUserActivity *)self hasLocationData])
  {
    v3 = [MKPlacemark alloc];
    [(SAClientUserActivity *)self coordinate];
    v5 = v4;
    v7 = v6;
    v8 = [(SAClientUserActivity *)self addressDictionary];
    v9 = [v3 initWithCoordinate:v8 addressDictionary:{v5, v7}];

    v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)hasLocationData
{
  v2 = [(SAClientUserActivity *)self userInfo];
  v3 = [v2 allKeys];

  if ([v3 containsObject:@"latitude"] && (objc_msgSend(v3, "containsObject:", @"longitude") & 1) != 0 || objc_msgSend(v3, "containsObject:", CNPostalAddressStreetKey) && (objc_msgSend(v3, "containsObject:", CNPostalAddressCityKey) & 1) != 0 || objc_msgSend(v3, "containsObject:", CNPostalAddressStateKey) && (objc_msgSend(v3, "containsObject:", CNPostalAddressCityKey) & 1) != 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 containsObject:CNPostalAddressPostalCodeKey];
  }

  return v4;
}

@end