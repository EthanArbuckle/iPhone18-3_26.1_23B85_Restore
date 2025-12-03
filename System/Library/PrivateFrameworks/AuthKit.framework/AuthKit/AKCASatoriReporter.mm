@interface AKCASatoriReporter
- (AKCASatoriReporter)initWithRequestID:(id)d;
- (void)didCompleteVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration;
- (void)didCompleteWithSuccess:(BOOL)success authorizationAlreadyComplete:(BOOL)complete;
- (void)didPerformVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration;
@end

@implementation AKCASatoriReporter

- (AKCASatoriReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCASatoriReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonSatori"];
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

- (void)didCompleteWithSuccess:(BOOL)success authorizationAlreadyComplete:(BOOL)complete
{
  v4 = [NSNumber numberWithBool:complete];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v4);
  v5 = [NSNumber numberWithBool:success];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
}

- (void)didPerformVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration
{
  v5 = [NSNumber numberWithBool:success];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:duration];
  v6 = [NSNumber numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v6);
}

- (void)didCompleteVerificationWithSuccess:(BOOL)success duration:(unint64_t)duration
{
  v5 = [NSNumber numberWithBool:success];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:duration];
  v6 = [NSNumber numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v6);
}

@end