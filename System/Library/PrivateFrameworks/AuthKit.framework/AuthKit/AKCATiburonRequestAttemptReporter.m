@interface AKCATiburonRequestAttemptReporter
- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)a3;
- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4;
@end

@implementation AKCATiburonRequestAttemptReporter

- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonRequestAttemptReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAttempt"];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(AKCAReporter *)v9 setObject:location[0] forKeyedSubscript:@"requestID"];
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)didCompleteWithAuthorization:(id)a3 error:(id)a4
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = 0;
  objc_storeStrong(&v18, a4);
  v7 = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(v7);
  v17 = isKindOfClass & 1;
  v9 = [location[0] authorizedRequest];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  _objc_release(v9);
  v16 = v10 & 1;
  v11 = [NSNumber numberWithBool:isKindOfClass & 1];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v11);
  v12 = [NSNumber numberWithBool:v10 & 1];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v12);
  v13 = [v18 domain];
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v13);
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 code]);
  [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v14);
  v15 = AKErrorUnderlyingError();
  if (v15)
  {
    v4 = [v15 domain];
    [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v4);
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
    [AKCAReporter setObject:v20 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end