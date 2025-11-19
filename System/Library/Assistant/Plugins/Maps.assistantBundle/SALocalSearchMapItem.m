@interface SALocalSearchMapItem
- (BOOL)isBusinessLocation;
- (BOOL)isCurrentLocation;
- (BOOL)isParkingLocation;
- (BOOL)needsAttribution;
- (NSString)locationDetailLabel;
- (SARecordActivity)donateActivityCommand;
- (SARestaurantRestaurant)restaurantInfo;
- (void)updateEntityInSession:(id)a3;
@end

@implementation SALocalSearchMapItem

- (BOOL)needsAttribution
{
  v3 = [(SALocalSearchMapItem *)self attributions];
  if (v3)
  {
    v4 = [(SALocalSearchMapItem *)self attributions];
    v5 = [v4 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)locationDetailLabel
{
  v3 = [(SALocalSearchMapItem *)self location];
  v4 = [v3 street];

  v5 = [(SALocalSearchMapItem *)self location];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 street];
LABEL_9:
    v14 = v7;
LABEL_10:

    goto LABEL_11;
  }

  v8 = [v5 thoroughfare];

  v9 = [(SALocalSearchMapItem *)self location];
  v6 = v9;
  if (v8)
  {
    v7 = [v9 thoroughfare];
    goto LABEL_9;
  }

  v10 = [v9 city];

  v11 = [(SALocalSearchMapItem *)self location];
  v6 = v11;
  if (v10)
  {
    v7 = [v11 city];
    goto LABEL_9;
  }

  v12 = [v11 stateCode];

  v13 = [(SALocalSearchMapItem *)self location];
  v6 = v13;
  if (v12)
  {
    v7 = [v13 stateCode];
    goto LABEL_9;
  }

  v16 = [v13 countryCode];

  if (v16)
  {
    v6 = +[NSLocale _ma_locale];
    v17 = [(SALocalSearchMapItem *)self location];
    v18 = [v17 countryCode];
    v14 = [v6 displayNameForKey:NSLocaleCountryCode value:v18];

    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (SARestaurantRestaurant)restaurantInfo
{
  v3 = [(SALocalSearchMapItem *)self detail];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [(SALocalSearchMapItem *)self detail];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (SARecordActivity)donateActivityCommand
{
  v3 = [(SALocalSearchMapItem *)self location];
  v4 = [v3 locationActivityMetaData];
  v5 = [NSMutableDictionary dictionaryWithDictionary:v4];

  v6 = [(SALocalSearchMapItem *)self restaurantInfo];
  v7 = [v6 phoneNumber];

  if (v7)
  {
    v13 = v7;
    v8 = [NSArray arrayWithObjects:&v13 count:1];
    v9 = +[_DKLocationApplicationActivityMetadataKey phoneNumbers];
    [v5 setValue:v8 forKey:v9];
  }

  if ([v5 count])
  {
    v10 = objc_alloc_init(SAActivityObject);
    [v10 setType:@"com.apple.siri"];
    [v10 setMetadata:v5];
    [v10 setVisibility:SAAceActivityVisibilityTypePublicValue];
    [v10 setStreamType:@"/app/locationActivity"];
    v11 = objc_alloc_init(SARecordActivity);
    [v11 setActivity:v10];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (BOOL)isBusinessLocation
{
  v2 = [(SALocalSearchMapItem *)self detailType];
  v3 = [v2 isEqualToString:SALocalSearchMapItemMapItemTypeBUSINESS_ITEMValue];

  return v3;
}

- (BOOL)isCurrentLocation
{
  v2 = [(SALocalSearchMapItem *)self detailType];
  v3 = [v2 isEqualToString:SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue];

  return v3;
}

- (BOOL)isParkingLocation
{
  v2 = [(SALocalSearchMapItem *)self detailType];
  v3 = [v2 isEqualToString:SALocalSearchMapItemMapItemTypePARKING_LOCATIONValue];

  return v3;
}

- (void)updateEntityInSession:(id)a3
{
  v8 = a3;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    v4 = [(SALocalSearchMapItem *)self extSessionGuid];
    v5 = [(SALocalSearchMapItem *)self extSessionGuidCreatedTimestamp];
    v6 = v5;
    if (v4 && v5)
    {
      v7 = objc_alloc_init(GEOUserSessionEntity);
      [v7 updateSessionIDFromUUIDString:v4];
      [v6 timeIntervalSinceReferenceDate];
      [v7 setSessionCreationTime:?];
      [v8 setSharedMapsUserSessionEntity:v7 shareSessionIDWithMaps:1];
    }
  }
}

@end