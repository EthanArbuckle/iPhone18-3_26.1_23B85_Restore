@interface AKPCSAuthContext
+ (id)_contextFromSRPServerResponse:(id)a3 maxTTLInMins:(int64_t)a4;
+ (id)contextFromSRPServerResponse:(id)a3;
+ (id)contextFromSRPServerResponseWithShorterTTL:(id)a3;
+ (int64_t)_timeToLive:(int64_t)a3 maxTTLInMins:(int64_t)a4;
@end

@implementation AKPCSAuthContext

+ (id)contextFromSRPServerResponse:(id)a3
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [v6 _contextFromSRPServerResponse:location[0] maxTTLInMins:-1];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)contextFromSRPServerResponseWithShorterTTL:(id)a3
{
  v6 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [v6 _contextFromSRPServerResponse:location[0] maxTTLInMins:10];
  objc_storeStrong(location, 0);

  return v4;
}

+ (id)_contextFromSRPServerResponse:(id)a3 maxTTLInMins:(int64_t)a4
{
  v24 = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = [location[0] objectForKeyedSubscript:@"srdwa"];
  if (v21)
  {
    v19 = [v21 objectForKeyedSubscript:@"wscUUID"];
    v7 = [v21 objectForKeyedSubscript:@"ts"];
    [v7 doubleValue];
    v18 = [NSDate dateWithTimeIntervalSince1970:?];
    _objc_release(v7);
    v8 = [v21 objectForKeyedSubscript:@"ttlMin"];
    v9 = [v8 integerValue];
    _objc_release(v8);
    v17 = v9;
    v16 = [v24 _timeToLive:v9 maxTTLInMins:v22];
    v15 = (60 * v16);
    v10 = v18;
    v11 = +[NSDate now];
    v14 = [NSDate ak_expiryDateFromServerDate:v10 localDate:v15 ttl:?];
    _objc_release(v11);
    v4 = [AKPCSAuthContext alloc];
    v13 = [v4 initWithWebSessionIdentifier:v19 expiryDate:v14 userInfo:?];
    v25 = _objc_retain(v13);
    v20 = 1;
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v18, 0);
    objc_storeStrong(&v19, 0);
  }

  else
  {
    v25 = 0;
    v20 = 1;
  }

  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
  v5 = v25;

  return v5;
}

+ (int64_t)_timeToLive:(int64_t)a3 maxTTLInMins:(int64_t)a4
{
  if (a4 <= 0 || a3 <= a4)
  {
    return a3;
  }

  else
  {
    return a4;
  }
}

@end