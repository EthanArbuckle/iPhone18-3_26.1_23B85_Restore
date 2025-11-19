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
  v3 = [(CSSearchableItemAttributeSet *)self thoroughfare];
  if (v3)
  {
    v4 = [(CSSearchableItemAttributeSet *)self city];
    if (v4)
    {
      v5 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  v6 = [(CSSearchableItemAttributeSet *)self latitude];
  if (v6 && ([(CSSearchableItemAttributeSet *)self longitude], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v5 = 1;
  }

  else
  {
    v8 = [(CSSearchableItemAttributeSet *)self postalCode];
    v5 = v8 != 0;

    if (!v6)
    {
      goto LABEL_10;
    }

    v7 = 0;
  }

LABEL_10:
  if (v3)
  {
    v4 = 0;
    goto LABEL_12;
  }

LABEL_13:

  return v5;
}

- (void)openDirections
{
  v2 = [(CSSearchableItemAttributeSet *)self mapItem];
  v3 = v2;
  if (v2)
  {
    v8 = v2;
    v4 = [NSArray arrayWithObjects:&v8 count:1];
    v6 = MKLaunchOptionsDirectionsModeKey;
    v7 = MKLaunchOptionsDirectionsModeDriving;
    v5 = [NSDictionary dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    [MKMapItem openMapsWithItems:v4 launchOptions:v5];
  }
}

- (CLLocationCoordinate2D)coordinate
{
  v3 = [(CSSearchableItemAttributeSet *)self latitude];
  v4 = [(CSSearchableItemAttributeSet *)self longitude];
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

- (id)addressDictionary
{
  if (![(CSSearchableItemAttributeSet *)self hasLocationData])
  {
    v3 = 0;
    goto LABEL_19;
  }

  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [(CSSearchableItemAttributeSet *)self subThoroughfare];
  if (v4)
  {
    v5 = v4;
    v6 = [(CSSearchableItemAttributeSet *)self thoroughfare];

    if (v6)
    {
      v7 = [(CSSearchableItemAttributeSet *)self subThoroughfare];
      v8 = [(CSSearchableItemAttributeSet *)self thoroughfare];
      v9 = [NSString stringWithFormat:@"%@ %@", v7, v8];

LABEL_8:
      [v3 setObject:v9 forKey:CNPostalAddressStreetKey];

      goto LABEL_9;
    }
  }

  v10 = [(CSSearchableItemAttributeSet *)self thoroughfare];

  if (v10)
  {
    v9 = [(CSSearchableItemAttributeSet *)self thoroughfare];
    goto LABEL_8;
  }

LABEL_9:
  v11 = [(CSSearchableItemAttributeSet *)self stateOrProvince];

  if (v11)
  {
    v12 = [(CSSearchableItemAttributeSet *)self city];
    [v3 setObject:v12 forKey:CNPostalAddressStateKey];
  }

  v13 = [(CSSearchableItemAttributeSet *)self city];

  if (v13)
  {
    v14 = [(CSSearchableItemAttributeSet *)self city];
    [v3 setObject:v14 forKey:CNPostalAddressCityKey];
  }

  v15 = [(CSSearchableItemAttributeSet *)self stateOrProvince];

  if (v15)
  {
    v16 = [(CSSearchableItemAttributeSet *)self stateOrProvince];
    [v3 setObject:v16 forKey:CNPostalAddressStateKey];
  }

  v17 = [(CSSearchableItemAttributeSet *)self postalCode];

  if (v17)
  {
    v18 = [(CSSearchableItemAttributeSet *)self postalCode];
    [v3 setObject:v18 forKey:CNPostalAddressPostalCodeKey];
  }

  v19 = [(CSSearchableItemAttributeSet *)self country];

  if (v19)
  {
    v20 = [(CSSearchableItemAttributeSet *)self country];
    [v3 setObject:v20 forKey:CNPostalAddressCountryKey];
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
    v8 = [(CSSearchableItemAttributeSet *)self addressDictionary];
    v9 = [v3 initWithCoordinate:v8 addressDictionary:{v5, v7}];

    v10 = [[MKMapItem alloc] initWithPlacemark:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end