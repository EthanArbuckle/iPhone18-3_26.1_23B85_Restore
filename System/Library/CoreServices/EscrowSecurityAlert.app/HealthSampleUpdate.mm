@interface HealthSampleUpdate
- (HealthSampleUpdate)init;
- (HealthSampleUpdate)initWithCoder:(id)a3;
- (HealthSampleUpdate)initWithDictionary:(id)a3;
- (NSDate)lastHealthSampleTimestamp;
- (id)metricsDict;
- (id)recordForType:(unint64_t)a3;
- (id)updatedValueWithHealthSample:(id)a3;
@end

@implementation HealthSampleUpdate

- (HealthSampleUpdate)init
{
  v3 = objc_alloc_init(NSDictionary);
  v4 = [(HealthSampleUpdate *)self initWithDictionary:v3];

  return v4;
}

- (HealthSampleUpdate)initWithDictionary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = HealthSampleUpdate;
  v6 = [(HealthSampleUpdate *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_storage, a3);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100006D08;
    v9[3] = &unk_1000106F0;
    v10 = v7;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
  }

  return v7;
}

- (id)recordForType:(unint64_t)a3
{
  if (a3 - 3 > 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(&off_100010710 + a3 - 3);
  }

  return [(NSDictionary *)self->_storage objectForKey:v3];
}

- (NSDate)lastHealthSampleTimestamp
{
  v2 = [(HealthSampleUpdate *)self lastHealthSample];
  v3 = [v2 timestamp];

  return v3;
}

- (id)updatedValueWithHealthSample:(id)a3
{
  v4 = a3;
  v5 = [(HealthSampleUpdate *)self lastHealthSample];
  v6 = [v4 isNewerThanHealthSample:v5];

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
        v12 = [[HealthSampleUpdateRecord alloc] initWithRecordType:i + 3 initialSample:v4];
      }

      v13 = v12;

      v14 = [(HealthSampleUpdateRecord *)v13 updatedRecordWithHealthSample:v4];
      [v7 setValue:v14 forKey:v9];
    }

    v15 = [[HealthSampleUpdate alloc] initWithDictionary:v7];
  }

  else
  {
    v15 = self;
  }

  return v15;
}

- (id)metricsDict
{
  v2 = [(HealthSampleUpdate *)self lastHealthSample];
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [v2 timestamp];
  [v4 timeIntervalSince1970];
  v5 = [NSNumber numberWithDouble:?];
  [v3 setObject:v5 forKeyedSubscript:@"timestamp"];

  if ([v2 internal])
  {
    v6 = &off_1000115B0;
  }

  else
  {
    v6 = &off_1000115C8;
  }

  [v3 setObject:v6 forKeyedSubscript:@"internal"];
  v7 = [v2 build];
  [v3 setObject:v7 forKeyedSubscript:@"build"];

  v8 = v3;
  v9 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 accountSecurityLevel]);
  [v3 setObject:v9 forKeyedSubscript:@"accountSecurityLevel"];

  if ([v2 testAccount])
  {
    v10 = &off_1000115B0;
  }

  else
  {
    v10 = &off_1000115C8;
  }

  [v3 setObject:v10 forKeyedSubscript:@"testAccount"];
  if ([v2 iCDPEnabledForDSID])
  {
    v11 = &off_1000115B0;
  }

  else
  {
    v11 = &off_1000115C8;
  }

  [v3 setObject:v11 forKeyedSubscript:@"iCDPEnabledForDSID"];
  v45 = v2;
  if ([v2 passcodeEnabled])
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
    v20 = [v15 currentState];
    [v8 setObject:v20 forKeyedSubscript:v16];

    v21 = [v15 currentStateFirstSample];
    v22 = [v21 timestamp];
    [v22 timeIntervalSince1970];
    v23 = [NSNumber numberWithDouble:?];
    [v8 setObject:v23 forKeyedSubscript:v17];

    v24 = [v15 currentStateError];
    v25 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v24 code]);
    v51 = v18;
    v26 = v18;
    v27 = v19;
    [v8 setObject:v25 forKeyedSubscript:v26];

    v28 = [v15 currentStateError];
    v29 = [v28 domain];
    v30 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v29 hash]);
    [v8 setObject:v30 forKeyedSubscript:v19];

    v31 = [v15 previousState];

    if (v31)
    {
      v47 = [v16 stringByAppendingString:@"_prev"];
      v32 = [v17 stringByAppendingString:@"_prev"];
      v33 = [v50 stringByAppendingString:@"_prev"];
      v34 = [v19 stringByAppendingString:@"_prev"];
      v35 = [v15 previousState];
      [v8 setObject:v35 forKeyedSubscript:v47];

      [v15 previousStateFirstSample];
      v36 = v49 = v17;
      [v36 timestamp];
      v37 = v48 = v27;
      [v37 timeIntervalSince1970];
      v38 = [NSNumber numberWithDouble:?];
      [v8 setObject:v38 forKeyedSubscript:v32];

      v39 = [v15 previousStateError];
      v40 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v39 code]);
      [v8 setObject:v40 forKeyedSubscript:v33];

      v41 = [v15 previousStateError];
      v42 = [v41 domain];
      v43 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v42 hash]);
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

- (HealthSampleUpdate)initWithCoder:(id)a3
{
  v4 = a3;
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v5 = [NSArray arrayWithObjects:&v10 count:3];
  v6 = [NSSet setWithArray:v5, v10, v11];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"_storage"];

  v8 = [(HealthSampleUpdate *)self initWithDictionary:v7];
  return v8;
}

@end