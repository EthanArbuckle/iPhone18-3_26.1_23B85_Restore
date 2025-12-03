@interface AKCATiburonRequestAttemptReporter
- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)d;
- (void)didCompleteWithAuthorization:(id)authorization error:(id)error;
@end

@implementation AKCATiburonRequestAttemptReporter

- (AKCATiburonRequestAttemptReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonRequestAttemptReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAttempt"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)didCompleteWithAuthorization:(id)authorization error:(id)error
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, authorization);
  v18 = 0;
  objc_storeStrong(&v18, error);
  authorizedRequest = [location[0] authorizedRequest];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  _objc_release(authorizedRequest);
  v17 = isKindOfClass & 1;
  authorizedRequest2 = [location[0] authorizedRequest];
  objc_opt_class();
  v10 = objc_opt_isKindOfClass();
  _objc_release(authorizedRequest2);
  v16 = v10 & 1;
  v11 = [NSNumber numberWithBool:isKindOfClass & 1];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v11);
  v12 = [NSNumber numberWithBool:v10 & 1];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v12);
  domain = [v18 domain];
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(domain);
  v14 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v18 code]);
  [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
  _objc_release(v14);
  v15 = AKErrorUnderlyingError();
  if (v15)
  {
    domain2 = [v15 domain];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(domain2);
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 code]);
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    _objc_release(v5);
  }

  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

@end