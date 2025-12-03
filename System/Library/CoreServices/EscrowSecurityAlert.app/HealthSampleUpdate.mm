@interface HealthSampleUpdate
- (HealthSampleUpdate)init;
- (HealthSampleUpdate)initWithCoder:(id)coder;
- (HealthSampleUpdate)initWithDictionary:(id)dictionary;
- (NSDate)lastHealthSampleTimestamp;
- (id)metricsDict;
- (id)recordForType:(unint64_t)type;
- (id)updatedValueWithHealthSample:(id)sample;
@end

@implementation HealthSampleUpdate

- (HealthSampleUpdate)init
{
  v3 = objc_alloc_init(NSDictionary);
  v4 = [(HealthSampleUpdate *)self initWithDictionary:v3];

  return v4;
}

- (HealthSampleUpdate)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v11.receiver = self;
  v11.super_class = HealthSampleUpdate;
  v6 = [(HealthSampleUpdate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, dictionary);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006D08;
    v9[3] = &unk_1000106F0;
    v10 = v7;
    [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v9];
  }

  return v7;
}

- (id)recordForType:(unint64_t)type
{
  if (type - 3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_100010710 + type - 3);
  }

  return [(NSDictionary *)self->_storage objectForKey:v3];
}

- (NSDate)lastHealthSampleTimestamp
{
  lastHealthSample = [(HealthSampleUpdate *)self lastHealthSample];
  timestamp = [lastHealthSample timestamp];

  return timestamp;
}

- (id)updatedValueWithHealthSample:(id)sample
{
  sampleCopy = sample;
  lastHealthSample = [(HealthSampleUpdate *)self lastHealthSample];
  v6 = [sampleCopy isNewerThanHealthSample:lastHealthSample];

  if (v6)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    for (i = 0; i != 3; ++i)
    {
      if (i > 2)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(&off_100010710 + i);
      }

      v10 = [(NSDictionary *)self->_storage objectForKey:v9];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v12 = [[HealthSampleUpdateRecord alloc] initWithRecordType:i + 3 initialSample:sampleCopy];
      }

      v13 = v12;

      v14 = [(HealthSampleUpdateRecord *)v13 updatedRecordWithHealthSample:sampleCopy];
      [v7 setValue:v14 forKey:v9];
    }

    selfCopy = [[HealthSampleUpdate alloc] initWithDictionary:v7];
  }

  else
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (id)metricsDict
{
  lastHealthSample = [(HealthSampleUpdate *)self lastHealthSample];
  v3 = objc_alloc_init(NSMutableDictionary);
  timestamp = [lastHealthSample timestamp];
  [timestamp timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"timestamp"];

  if ([lastHealthSample internal])
  {
    v6 = &off_1000115B0;
  }

  else
  {
    v6 = &off_1000115C8;
  }

  [v3 setObject:v6 forKeyedSubscript:@"internal"];
  build = [lastHealthSample build];
  [v3 setObject:build forKeyedSubscript:@"build"];

  v8 = v3;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [lastHealthSample accountSecurityLevel]);
  [v3 setObject:v9 forKeyedSubscript:@"accountSecurityLevel"];

  if ([lastHealthSample testAccount])
  {
    v10 = &off_1000115B0;
  }

  else
  {
    v10 = &off_1000115C8;
  }

  [v3 setObject:v10 forKeyedSubscript:@"testAccount"];
  if ([lastHealthSample iCDPEnabledForDSID])
  {
    v11 = &off_1000115B0;
  }

  else
  {
    v11 = &off_1000115C8;
  }

  [v3 setObject:v11 forKeyedSubscript:@"iCDPEnabledForDSID"];
  v45 = lastHealthSample;
  if ([lastHealthSample passcodeEnabled])
  {
    v12 = &off_1000115B0;
  }

  else
  {
    v12 = &off_1000115C8;
  }

  [v3 setObject:v12 forKeyedSubscript:@"passcodeEnabled"];
  v13 = &off_100010710;
  v14 = 3;
  do
  {
    v15 = [(HealthSampleUpdate *)self recordForType:v14];
    v52 = v14 - 3;
    if ((v14 - 3) > 2)
    {
      v16 = 0;
    }

    else
    {
      v16 = *v13;
    }

    v17 = [v16 stringByAppendingString:@"Timestamp"];
    v18 = [v16 stringByAppendingString:@"ErrorCode"];
    v50 = [v16 stringByAppendingString:@"ErrorCode"];
    v19 = [v16 stringByAppendingString:@"ErrorDomainHash"];
    currentState = [v15 currentState];
    [v8 setObject:currentState forKeyedSubscript:v16];

    currentStateFirstSample = [v15 currentStateFirstSample];
    timestamp2 = [currentStateFirstSample timestamp];
    [timestamp2 timeIntervalSince1970];
    v23 = [NSNumber numberWithDouble:?];
    [v8 setObject:v23 forKeyedSubscript:v17];

    currentStateError = [v15 currentStateError];
    v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [currentStateError code]);
    v51 = v18;
    v26 = v18;
    v27 = v19;
    [v8 setObject:v25 forKeyedSubscript:v26];

    currentStateError2 = [v15 currentStateError];
    domain = [currentStateError2 domain];
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [domain hash]);
    [v8 setObject:v30 forKeyedSubscript:v19];

    previousState = [v15 previousState];

    if (previousState)
    {
      v47 = [v16 stringByAppendingString:@"_prev"];
      v32 = [v17 stringByAppendingString:@"_prev"];
      v33 = [v50 stringByAppendingString:@"_prev"];
      v34 = [v19 stringByAppendingString:@"_prev"];
      previousState2 = [v15 previousState];
      [v8 setObject:previousState2 forKeyedSubscript:v47];

      [v15 previousStateFirstSample];
      v36 = v49 = v17;
      [v36 timestamp];
      v37 = v48 = v27;
      [v37 timeIntervalSince1970];
      v38 = [NSNumber numberWithDouble:?];
      [v8 setObject:v38 forKeyedSubscript:v32];

      previousStateError = [v15 previousStateError];
      v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [previousStateError code]);
      [v8 setObject:v40 forKeyedSubscript:v33];

      previousStateError2 = [v15 previousStateError];
      domain2 = [previousStateError2 domain];
      v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [domain2 hash]);
      [v8 setObject:v43 forKeyedSubscript:v34];

      v17 = v49;
      v27 = v48;
    }

    ++v13;
    v14 = v52 + 4;
  }

  while (v52 != 2);

  return v8;
}

- (HealthSampleUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v10 count:3];
  v6 = [NSSet setWithArray:v5, v10, v11];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"_storage"];

  v8 = [(HealthSampleUpdate *)self initWithDictionary:v7];
  return v8;
}

@end