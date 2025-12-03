@interface SALocalSearchMapItem
- (BOOL)isBusinessLocation;
- (BOOL)isCurrentLocation;
- (BOOL)isParkingLocation;
- (BOOL)needsAttribution;
- (NSString)locationDetailLabel;
- (SARecordActivity)donateActivityCommand;
- (SARestaurantRestaurant)restaurantInfo;
- (void)updateEntityInSession:(id)session;
@end

@implementation SALocalSearchMapItem

- (BOOL)needsAttribution
{
  attributions = [(SALocalSearchMapItem *)self attributions];
  if (attributions)
  {
    attributions2 = [(SALocalSearchMapItem *)self attributions];
    v5 = [attributions2 count] != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (NSString)locationDetailLabel
{
  location = [(SALocalSearchMapItem *)self location];
  street = [location street];

  location2 = [(SALocalSearchMapItem *)self location];
  v6 = location2;
  if (street)
  {
    street2 = [location2 street];
LABEL_9:
    v14 = street2;
LABEL_10:

    goto LABEL_11;
  }

  thoroughfare = [location2 thoroughfare];

  location3 = [(SALocalSearchMapItem *)self location];
  v6 = location3;
  if (thoroughfare)
  {
    street2 = [location3 thoroughfare];
    goto LABEL_9;
  }

  city = [location3 city];

  location4 = [(SALocalSearchMapItem *)self location];
  v6 = location4;
  if (city)
  {
    street2 = [location4 city];
    goto LABEL_9;
  }

  stateCode = [location4 stateCode];

  location5 = [(SALocalSearchMapItem *)self location];
  v6 = location5;
  if (stateCode)
  {
    street2 = [location5 stateCode];
    goto LABEL_9;
  }

  countryCode = [location5 countryCode];

  if (countryCode)
  {
    v6 = +[NSLocale _ma_locale];
    location6 = [(SALocalSearchMapItem *)self location];
    countryCode2 = [location6 countryCode];
    v14 = [v6 displayNameForKey:NSLocaleCountryCode value:countryCode2];

    goto LABEL_10;
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (SARestaurantRestaurant)restaurantInfo
{
  detail = [(SALocalSearchMapItem *)self detail];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    detail2 = [(SALocalSearchMapItem *)self detail];
  }

  else
  {
    detail2 = 0;
  }

  return detail2;
}

- (SARecordActivity)donateActivityCommand
{
  location = [(SALocalSearchMapItem *)self location];
  locationActivityMetaData = [location locationActivityMetaData];
  v5 = [NSMutableDictionary dictionaryWithDictionary:locationActivityMetaData];

  restaurantInfo = [(SALocalSearchMapItem *)self restaurantInfo];
  phoneNumber = [restaurantInfo phoneNumber];

  if (phoneNumber)
  {
    v13 = phoneNumber;
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
  detailType = [(SALocalSearchMapItem *)self detailType];
  v3 = [detailType isEqualToString:SALocalSearchMapItemMapItemTypeBUSINESS_ITEMValue];

  return v3;
}

- (BOOL)isCurrentLocation
{
  detailType = [(SALocalSearchMapItem *)self detailType];
  v3 = [detailType isEqualToString:SALocalSearchMapItemMapItemTypeCURRENT_LOCATIONValue];

  return v3;
}

- (BOOL)isParkingLocation
{
  detailType = [(SALocalSearchMapItem *)self detailType];
  v3 = [detailType isEqualToString:SALocalSearchMapItemMapItemTypePARKING_LOCATIONValue];

  return v3;
}

- (void)updateEntityInSession:(id)session
{
  sessionCopy = session;
  if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
  {
    extSessionGuid = [(SALocalSearchMapItem *)self extSessionGuid];
    extSessionGuidCreatedTimestamp = [(SALocalSearchMapItem *)self extSessionGuidCreatedTimestamp];
    v6 = extSessionGuidCreatedTimestamp;
    if (extSessionGuid && extSessionGuidCreatedTimestamp)
    {
      v7 = objc_alloc_init(GEOUserSessionEntity);
      [v7 updateSessionIDFromUUIDString:extSessionGuid];
      [v6 timeIntervalSinceReferenceDate];
      [v7 setSessionCreationTime:?];
      [sessionCopy setSharedMapsUserSessionEntity:v7 shareSessionIDWithMaps:1];
    }
  }
}

@end