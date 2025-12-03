@interface SALocation
+ (SALocation)locationWithContactDictionary:(id)dictionary coordinate:(CLLocationCoordinate2D)coordinate;
- (BOOL)hasLocationData;
- (CLLocationCoordinate2D)coordinate;
- (id)addressDictionary;
- (id)mapItem;
@end

@implementation SALocation

+ (SALocation)locationWithContactDictionary:(id)dictionary coordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  dictionaryCopy = dictionary;
  v7 = objc_alloc_init(SALocation);
  allKeys = [dictionaryCopy allKeys];
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
  uUIDString = [v11 UUIDString];
  [v7 setAceId:uUIDString];

  if ([allKeys containsObject:@"latitude"])
  {
    v13 = [dictionaryCopy valueForKey:@"latitude"];
    [v7 setLatitude:v13];
  }

  if ([allKeys containsObject:@"longitude"])
  {
    v14 = [dictionaryCopy valueForKey:@"longitude"];
    [v7 setLongitude:v14];
  }

  if ([allKeys containsObject:@"name"])
  {
    v15 = [dictionaryCopy valueForKey:@"name"];
    [v7 setLabel:v15];
  }

  if ([allKeys containsObject:CNPostalAddressStreetKey])
  {
    v16 = [dictionaryCopy valueForKey:CNPostalAddressStreetKey];
    [v7 setStreet:v16];

    v17 = [dictionaryCopy valueForKey:CNPostalAddressStreetKey];
    [v7 setThoroughfare:v17];
  }

  if ([allKeys containsObject:CNPostalAddressCityKey])
  {
    v18 = [dictionaryCopy valueForKey:CNPostalAddressCityKey];
    [v7 setCity:v18];
  }

  if ([allKeys containsObject:CNPostalAddressStateKey])
  {
    v19 = [dictionaryCopy valueForKey:CNPostalAddressStateKey];
    [v7 setStateCode:v19];
  }

  if ([allKeys containsObject:CNPostalAddressCountryKey])
  {
    v20 = [dictionaryCopy valueForKey:CNPostalAddressCountryKey];
    [v7 setCountryCode:v20];
  }

  if ([allKeys containsObject:CNPostalAddressPostalCodeKey])
  {
    v21 = [dictionaryCopy valueForKey:CNPostalAddressPostalCodeKey];
    [v7 setPostalCode:v21];
  }

  if ([allKeys containsObject:CNPostalAddressPostalCodeKey])
  {
    v22 = [dictionaryCopy valueForKey:CNPostalAddressPostalCodeKey];
    [v7 setPostalCode:v22];
  }

  return v7;
}

- (id)addressDictionary
{
  v3 = objc_alloc_init(NSMutableDictionary);
  street = [(SALocation *)self street];
  if (street)
  {
    [v3 setObject:street forKeyedSubscript:CNPostalAddressStreetKey];
  }

  else
  {
    thoroughfare = [(SALocation *)self thoroughfare];
    [v3 setObject:thoroughfare forKeyedSubscript:CNPostalAddressStreetKey];
  }

  city = [(SALocation *)self city];
  [v3 setObject:city forKeyedSubscript:CNPostalAddressCityKey];

  stateCode = [(SALocation *)self stateCode];
  [v3 setObject:stateCode forKeyedSubscript:CNPostalAddressStateKey];

  postalCode = [(SALocation *)self postalCode];
  [v3 setObject:postalCode forKeyedSubscript:CNPostalAddressPostalCodeKey];

  countryCode = [(SALocation *)self countryCode];
  [v3 setObject:countryCode forKeyedSubscript:CNPostalAddressCountryKey];

  return v3;
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = [(SALocation *)self latitude];
  longitude = [(SALocation *)self longitude];
  v5 = longitude;
  if (!latitude || !longitude || ([latitude floatValue], v7 = v6, objc_msgSend(v5, "floatValue"), v13 = CLLocationCoordinate2DMake(v7, v8), latitude = v13.latitude, longitude = v13.longitude, !CLLocationCoordinate2DIsValid(v13)))
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
    street = [(SALocation *)self street];
    if (street && ([(SALocation *)self city], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v3 = 1;
    }

    else
    {
      postalCode = [(SALocation *)self postalCode];
      v3 = postalCode != 0;

      if (!street)
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
    addressDictionary = [(SALocation *)self addressDictionary];
    v9 = [v3 initWithCoordinate:addressDictionary addressDictionary:{v5, v7}];

    v10 = [[MKMapItem alloc] initWithPlacemark:v9];
    label = [(SALocation *)self label];
    [v10 setName:label];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end