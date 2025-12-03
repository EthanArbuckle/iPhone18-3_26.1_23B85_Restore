@interface ASRecordLocationActivity
- (ASRecordLocationActivity)recordLocationActivityWithCompletion:(id)completion;
- (id)_activityFromLocation:(id)location sourceType:(id)type;
- (id)_locationMetadataFromLocation:(id)location;
- (id)_recordActivityCommandFromLocation:(id)location sourceType:(id)type;
@end

@implementation ASRecordLocationActivity

- (ASRecordLocationActivity)recordLocationActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    sub_7720(v5);
  }

  location = [(ASRecordLocationActivity *)self location];

  if (!location)
  {
    v11 = [NSString stringWithFormat:@"Invalid ace command %@", self];
    v12 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_77A4(v11, v12);
      if (!completionCopy)
      {
        goto LABEL_8;
      }
    }

    else if (!completionCopy)
    {
LABEL_8:

      goto LABEL_9;
    }

    v13 = [[SACommandFailed alloc] initWithReason:v11];
    dictionary = [v13 dictionary];
    completionCopy[2](completionCopy, dictionary);

    goto LABEL_8;
  }

  location2 = [(ASRecordLocationActivity *)self location];
  sourceType = [(ASRecordLocationActivity *)self sourceType];
  v9 = [(ASRecordLocationActivity *)self _recordActivityCommandFromLocation:location2 sourceType:sourceType];
  recordActivityCommand = self->_recordActivityCommand;
  self->_recordActivityCommand = v9;

  [(ASRecordActivity *)self->_recordActivityCommand performWithCompletion:completionCopy];
LABEL_9:

  return result;
}

- (id)_recordActivityCommandFromLocation:(id)location sourceType:(id)type
{
  v4 = [(ASRecordLocationActivity *)self _activityFromLocation:location sourceType:type];
  v5 = objc_opt_new();
  v6 = +[NSUUID UUID];
  uUIDString = [v6 UUIDString];
  [v5 setAceId:uUIDString];

  [v5 setActivity:v4];

  return v5;
}

- (id)_activityFromLocation:(id)location sourceType:(id)type
{
  typeCopy = type;
  v7 = [(ASRecordLocationActivity *)self _locationMetadataFromLocation:location];
  v8 = objc_opt_new();
  v9 = +[NSUUID UUID];
  uUIDString = [v9 UUIDString];
  [v8 setAceId:uUIDString];

  v11 = @"com.apple.siri";
  if (([typeCopy isEqualToString:@"Default"] & 1) == 0 && objc_msgSend(typeCopy, "isEqualToString:", @"HomePod"))
  {
    v11 = @"com.apple.siri.homepod";
  }

  [v8 setType:v11];
  [v8 setStreamType:@"/app/locationActivity"];
  [v8 setVisibility:@"Public"];
  [v8 setMetadata:v7];

  return v8;
}

- (id)_locationMetadataFromLocation:(id)location
{
  locationCopy = location;
  v4 = +[NSMutableDictionary dictionary];
  city = [locationCopy city];
  countryCode = [locationCopy countryCode];
  stateCode = [locationCopy stateCode];
  thoroughfare = [locationCopy thoroughfare];
  subThoroughfare = [locationCopy subThoroughfare];
  postalCode = [locationCopy postalCode];
  latitude = [locationCopy latitude];
  longitude = [locationCopy longitude];
  label = [locationCopy label];
  street = [locationCopy street];

  v30 = street;
  if (![label length] && objc_msgSend(street, "length", street))
  {
    v12 = street;

    label = v12;
  }

  if ([label length])
  {
    v13 = +[_DKLocationApplicationActivityMetadataKey locationName];
    [v4 setObject:label forKeyedSubscript:v13];
  }

  if ([city length])
  {
    v14 = +[_DKLocationApplicationActivityMetadataKey city];
    [v4 setObject:city forKeyedSubscript:v14];
  }

  if ([countryCode length])
  {
    v15 = +[_DKLocationApplicationActivityMetadataKey country];
    [v4 setObject:countryCode forKeyedSubscript:v15];
  }

  if ([stateCode length])
  {
    v16 = +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
    [v4 setObject:stateCode forKeyedSubscript:v16];
  }

  if ([thoroughfare length])
  {
    v17 = +[_DKLocationApplicationActivityMetadataKey thoroughfare];
    [v4 setObject:thoroughfare forKeyedSubscript:v17];
  }

  if ([subThoroughfare length])
  {
    v18 = +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
    [v4 setObject:subThoroughfare forKeyedSubscript:v18];
  }

  v19 = stateCode;
  v20 = postalCode;
  if ([postalCode length])
  {
    v21 = +[_DKLocationApplicationActivityMetadataKey postalCode];
    [v4 setObject:postalCode forKeyedSubscript:v21];
  }

  if (latitude)
  {
    stringValue = [latitude stringValue];
    +[_DKLocationApplicationActivityMetadataKey latitude];
    v23 = countryCode;
    v25 = v24 = city;
    [v4 setObject:stringValue forKeyedSubscript:v25];

    city = v24;
    countryCode = v23;
    v20 = postalCode;
  }

  if (longitude)
  {
    stringValue2 = [longitude stringValue];
    +[_DKLocationApplicationActivityMetadataKey longitude];
    v28 = v27 = city;
    [v4 setObject:stringValue2 forKeyedSubscript:v28];

    city = v27;
  }

  return v4;
}

@end