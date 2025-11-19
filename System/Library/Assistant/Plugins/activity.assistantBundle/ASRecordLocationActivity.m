@interface ASRecordLocationActivity
- (ASRecordLocationActivity)recordLocationActivityWithCompletion:(id)a3;
- (id)_activityFromLocation:(id)a3 sourceType:(id)a4;
- (id)_locationMetadataFromLocation:(id)a3;
- (id)_recordActivityCommandFromLocation:(id)a3 sourceType:(id)a4;
@end

@implementation ASRecordLocationActivity

- (ASRecordLocationActivity)recordLocationActivityWithCompletion:(id)a3
{
  v4 = a3;
  v5 = AFSiriLogContextService;
  if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_DEBUG))
  {
    sub_7720(v5);
  }

  v6 = [(ASRecordLocationActivity *)self location];

  if (!v6)
  {
    v11 = [NSString stringWithFormat:@"Invalid ace command %@", self];
    v12 = AFSiriLogContextService;
    if (os_log_type_enabled(AFSiriLogContextService, OS_LOG_TYPE_ERROR))
    {
      sub_77A4(v11, v12);
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else if (!v4)
    {
LABEL_8:

      goto LABEL_9;
    }

    v13 = [[SACommandFailed alloc] initWithReason:v11];
    v14 = [v13 dictionary];
    v4[2](v4, v14);

    goto LABEL_8;
  }

  v7 = [(ASRecordLocationActivity *)self location];
  v8 = [(ASRecordLocationActivity *)self sourceType];
  v9 = [(ASRecordLocationActivity *)self _recordActivityCommandFromLocation:v7 sourceType:v8];
  recordActivityCommand = self->_recordActivityCommand;
  self->_recordActivityCommand = v9;

  [(ASRecordActivity *)self->_recordActivityCommand performWithCompletion:v4];
LABEL_9:

  return result;
}

- (id)_recordActivityCommandFromLocation:(id)a3 sourceType:(id)a4
{
  v4 = [(ASRecordLocationActivity *)self _activityFromLocation:a3 sourceType:a4];
  v5 = objc_opt_new();
  v6 = +[NSUUID UUID];
  v7 = [v6 UUIDString];
  [v5 setAceId:v7];

  [v5 setActivity:v4];

  return v5;
}

- (id)_activityFromLocation:(id)a3 sourceType:(id)a4
{
  v6 = a4;
  v7 = [(ASRecordLocationActivity *)self _locationMetadataFromLocation:a3];
  v8 = objc_opt_new();
  v9 = +[NSUUID UUID];
  v10 = [v9 UUIDString];
  [v8 setAceId:v10];

  v11 = @"com.apple.siri";
  if (([v6 isEqualToString:@"Default"] & 1) == 0 && objc_msgSend(v6, "isEqualToString:", @"HomePod"))
  {
    v11 = @"com.apple.siri.homepod";
  }

  [v8 setType:v11];
  [v8 setStreamType:@"/app/locationActivity"];
  [v8 setVisibility:@"Public"];
  [v8 setMetadata:v7];

  return v8;
}

- (id)_locationMetadataFromLocation:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v5 = [v3 city];
  v6 = [v3 countryCode];
  v7 = [v3 stateCode];
  v8 = [v3 thoroughfare];
  v33 = [v3 subThoroughfare];
  v32 = [v3 postalCode];
  v34 = [v3 latitude];
  v9 = [v3 longitude];
  v10 = [v3 label];
  v11 = [v3 street];

  v30 = v11;
  if (![v10 length] && objc_msgSend(v11, "length", v11))
  {
    v12 = v11;

    v10 = v12;
  }

  if ([v10 length])
  {
    v13 = +[_DKLocationApplicationActivityMetadataKey locationName];
    [v4 setObject:v10 forKeyedSubscript:v13];
  }

  if ([v5 length])
  {
    v14 = +[_DKLocationApplicationActivityMetadataKey city];
    [v4 setObject:v5 forKeyedSubscript:v14];
  }

  if ([v6 length])
  {
    v15 = +[_DKLocationApplicationActivityMetadataKey country];
    [v4 setObject:v6 forKeyedSubscript:v15];
  }

  if ([v7 length])
  {
    v16 = +[_DKLocationApplicationActivityMetadataKey stateOrProvince];
    [v4 setObject:v7 forKeyedSubscript:v16];
  }

  if ([v8 length])
  {
    v17 = +[_DKLocationApplicationActivityMetadataKey thoroughfare];
    [v4 setObject:v8 forKeyedSubscript:v17];
  }

  if ([v33 length])
  {
    v18 = +[_DKLocationApplicationActivityMetadataKey subThoroughfare];
    [v4 setObject:v33 forKeyedSubscript:v18];
  }

  v19 = v7;
  v20 = v32;
  if ([v32 length])
  {
    v21 = +[_DKLocationApplicationActivityMetadataKey postalCode];
    [v4 setObject:v32 forKeyedSubscript:v21];
  }

  if (v34)
  {
    v22 = [v34 stringValue];
    +[_DKLocationApplicationActivityMetadataKey latitude];
    v23 = v6;
    v25 = v24 = v5;
    [v4 setObject:v22 forKeyedSubscript:v25];

    v5 = v24;
    v6 = v23;
    v20 = v32;
  }

  if (v9)
  {
    v26 = [v9 stringValue];
    +[_DKLocationApplicationActivityMetadataKey longitude];
    v28 = v27 = v5;
    [v4 setObject:v26 forKeyedSubscript:v28];

    v5 = v27;
  }

  return v4;
}

@end