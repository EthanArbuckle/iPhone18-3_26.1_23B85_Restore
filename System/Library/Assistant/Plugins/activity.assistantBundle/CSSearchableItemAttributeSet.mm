@interface CSSearchableItemAttributeSet
- (BOOL)hasLocationData;
- (CLLocationCoordinate2D)coordinate;
- (id)addressDictionary;
- (id)mapItem;
- (void)openDirections;
@end

@implementation CSSearchableItemAttributeSet

- (BOOL)hasLocationData
{
  thoroughfare = [(CSSearchableItemAttributeSet *)self thoroughfare];
  if (thoroughfare)
  {
    city = [(CSSearchableItemAttributeSet *)self city];
    if (city)
    {
      v5 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  latitude = [(CSSearchableItemAttributeSet *)self latitude];
  if (latitude && ([(CSSearchableItemAttributeSet *)self longitude], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = 1;
  }

  else
  {
    postalCode = [(CSSearchableItemAttributeSet *)self postalCode];
    v5 = postalCode != 0;

    if (!latitude)
    {
      goto LABEL_10;
    }

    v7 = 0;
  }

LABEL_10:
  if (thoroughfare)
  {
    city = 0;
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (void)openDirections
{
  mapItem = [(CSSearchableItemAttributeSet *)self mapItem];
  v3 = mapItem;
  if (mapItem)
  {
    v8 = mapItem;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = MKLaunchOptionsDirectionsModeKey;
    v7 = MKLaunchOptionsDirectionsModeDriving;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [MKMapItem openMapsWithItems:v4 launchOptions:v5];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  latitude = [(CSSearchableItemAttributeSet *)self latitude];
  longitude = [(CSSearchableItemAttributeSet *)self longitude];
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

- (id)addressDictionary
{
  if (![(CSSearchableItemAttributeSet *)self hasLocationData])
  {
    v3 = 0;
    goto LABEL_19;
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  subThoroughfare = [(CSSearchableItemAttributeSet *)self subThoroughfare];
  if (subThoroughfare)
  {
    v5 = subThoroughfare;
    thoroughfare = [(CSSearchableItemAttributeSet *)self thoroughfare];

    if (thoroughfare)
    {
      subThoroughfare2 = [(CSSearchableItemAttributeSet *)self subThoroughfare];
      thoroughfare2 = [(CSSearchableItemAttributeSet *)self thoroughfare];
      thoroughfare4 = [NSString stringWithFormat:@"%@ %@", subThoroughfare2, thoroughfare2];

LABEL_8:
      [v3 setObject:thoroughfare4 forKey:CNPostalAddressStreetKey];

      goto LABEL_9;
    }
  }

  thoroughfare3 = [(CSSearchableItemAttributeSet *)self thoroughfare];

  if (thoroughfare3)
  {
    thoroughfare4 = [(CSSearchableItemAttributeSet *)self thoroughfare];
    goto LABEL_8;
  }

LABEL_9:
  stateOrProvince = [(CSSearchableItemAttributeSet *)self stateOrProvince];

  if (stateOrProvince)
  {
    city = [(CSSearchableItemAttributeSet *)self city];
    [v3 setObject:city forKey:CNPostalAddressStateKey];
  }

  city2 = [(CSSearchableItemAttributeSet *)self city];

  if (city2)
  {
    city3 = [(CSSearchableItemAttributeSet *)self city];
    [v3 setObject:city3 forKey:CNPostalAddressCityKey];
  }

  stateOrProvince2 = [(CSSearchableItemAttributeSet *)self stateOrProvince];

  if (stateOrProvince2)
  {
    stateOrProvince3 = [(CSSearchableItemAttributeSet *)self stateOrProvince];
    [v3 setObject:stateOrProvince3 forKey:CNPostalAddressStateKey];
  }

  postalCode = [(CSSearchableItemAttributeSet *)self postalCode];

  if (postalCode)
  {
    postalCode2 = [(CSSearchableItemAttributeSet *)self postalCode];
    [v3 setObject:postalCode2 forKey:CNPostalAddressPostalCodeKey];
  }

  country = [(CSSearchableItemAttributeSet *)self country];

  if (country)
  {
    country2 = [(CSSearchableItemAttributeSet *)self country];
    [v3 setObject:country2 forKey:CNPostalAddressCountryKey];
  }

LABEL_19:

  return v3;
}

- (id)mapItem
{
  if ([(CSSearchableItemAttributeSet *)self hasLocationData])
  {
    v3 = [MKPlacemark alloc];
    [(CSSearchableItemAttributeSet *)self coordinate];
    v5 = v4;
    v7 = v6;
    addressDictionary = [(CSSearchableItemAttributeSet *)self addressDictionary];
    v9 = [v3 initWithCoordinate:addressDictionary addressDictionary:{v5, v7}];

    v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end