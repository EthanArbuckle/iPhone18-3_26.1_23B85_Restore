@interface SALocation
+ (SALocation)locationWithContactDictionary:(id)a3 coordinate:(CLLocationCoordinate2D)a4;
- (BOOL)hasLocationData;
- (CLLocationCoordinate2D)coordinate;
- (id)addressDictionary;
- (id)mapItem;
@end

@implementation SALocation

+ (SALocation)locationWithContactDictionary:(id)a3 coordinate:(CLLocationCoordinate2D)a4
{
  longitude = a4.longitude;
  latitude = a4.latitude;
  v6 = a3;
  v7 = objc_alloc_init(SALocation);
  v8 = [v6 allKeys];
  v25.latitude = latitude;
  v25.longitude = longitude;
  if (CLLocationCoordinate2DIsValid(v25))
  {
    v9 = [NSNumber numberWithDouble:longitude];
    [v7 setLongitude:v9];

    v10 = [NSNumber numberWithDouble:latitude];
    [v7 setLatitude:v10];
  }

  v11 = +[NSUUID UUID];
  v12 = [v11 UUIDString];
  [v7 setAceId:v12];

  if ([v8 containsObject:@"latitude"])
  {
    v13 = [v6 valueForKey:@"latitude"];
    [v7 setLatitude:v13];
  }

  if ([v8 containsObject:@"longitude"])
  {
    v14 = [v6 valueForKey:@"longitude"];
    [v7 setLongitude:v14];
  }

  if ([v8 containsObject:@"name"])
  {
    v15 = [v6 valueForKey:@"name"];
    [v7 setLabel:v15];
  }

  if ([v8 containsObject:CNPostalAddressStreetKey])
  {
    v16 = [v6 valueForKey:CNPostalAddressStreetKey];
    [v7 setStreet:v16];

    v17 = [v6 valueForKey:CNPostalAddressStreetKey];
    [v7 setThoroughfare:v17];
  }

  if ([v8 containsObject:CNPostalAddressCityKey])
  {
    v18 = [v6 valueForKey:CNPostalAddressCityKey];
    [v7 setCity:v18];
  }

  if ([v8 containsObject:CNPostalAddressStateKey])
  {
    v19 = [v6 valueForKey:CNPostalAddressStateKey];
    [v7 setStateCode:v19];
  }

  if ([v8 containsObject:CNPostalAddressCountryKey])
  {
    v20 = [v6 valueForKey:CNPostalAddressCountryKey];
    [v7 setCountryCode:v20];
  }

  if ([v8 containsObject:CNPostalAddressPostalCodeKey])
  {
    v21 = [v6 valueForKey:CNPostalAddressPostalCodeKey];
    [v7 setPostalCode:v21];
  }

  if ([v8 containsObject:CNPostalAddressPostalCodeKey])
  {
    v22 = [v6 valueForKey:CNPostalAddressPostalCodeKey];
    [v7 setPostalCode:v22];
  }

  return v7;
}

- (id)addressDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(SALocation *)self street];
  if (v4)
  {
    [v3 setObject:v4 forKeyedSubscript:CNPostalAddressStreetKey];
  }

  else
  {
    v5 = [(SALocation *)self thoroughfare];
    [v3 setObject:v5 forKeyedSubscript:CNPostalAddressStreetKey];
  }

  v6 = [(SALocation *)self city];
  [v3 setObject:v6 forKeyedSubscript:CNPostalAddressCityKey];

  v7 = [(SALocation *)self stateCode];
  [v3 setObject:v7 forKeyedSubscript:CNPostalAddressStateKey];

  v8 = [(SALocation *)self postalCode];
  [v3 setObject:v8 forKeyedSubscript:CNPostalAddressPostalCodeKey];

  v9 = [(SALocation *)self countryCode];
  [v3 setObject:v9 forKeyedSubscript:CNPostalAddressCountryKey];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(SALocation *)self latitude];
  v4 = [(SALocation *)self longitude];
  v5 = v4;
  if (!v3 || !v4 || ([v3 floatValue], v7 = v6, objc_msgSend(v5, "floatValue"), v13 = CLLocationCoordinate2DMake(v7, v8), latitude = v13.latitude, longitude = v13.longitude, !CLLocationCoordinate2DIsValid(v13)))
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  v11 = latitude;
  v12 = longitude;
  result.longitude = v12;
  result.latitude = v11;
  return result;
}

- (BOOL)hasLocationData
{
  [(SALocation *)self coordinate];
  if (!CLLocationCoordinate2DIsValid(v8))
  {
    v4 = [(SALocation *)self street];
    if (v4 && ([(SALocation *)self city], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = 1;
    }

    else
    {
      v6 = [(SALocation *)self postalCode];
      v3 = v6 != 0;

      if (!v4)
      {
LABEL_9:

        return v3;
      }

      v5 = 0;
    }

    goto LABEL_9;
  }

  return 1;
}

- (id)mapItem
{
  if ([(SALocation *)self hasLocationData])
  {
    v3 = [MKPlacemark alloc];
    [(SALocation *)self coordinate];
    v5 = v4;
    v7 = v6;
    v8 = [(SALocation *)self addressDictionary];
    v9 = [v3 initWithCoordinate:v8 addressDictionary:{v5, v7}];

    v10 = [[MKMapItem alloc] initWithPlacemark:v9];
    v11 = [(SALocation *)self label];
    [v10 setName:v11];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end