@interface AKCASatoriReporter
- (AKCASatoriReporter)initWithRequestID:(id)a3;
- (void)didCompleteVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4;
- (void)didCompleteWithSuccess:(BOOL)a3 authorizationAlreadyComplete:(BOOL)a4;
- (void)didPerformVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4;
@end

@implementation AKCASatoriReporter

- (AKCASatoriReporter)initWithRequestID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKCASatoriReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonSatori"];
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

- (void)didCompleteWithSuccess:(BOOL)a3 authorizationAlreadyComplete:(BOOL)a4
{
  v4 = [NSNumber numberWithBool:a4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v4);
  v5 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
}

- (void)didPerformVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4
{
  v5 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:a4];
  v6 = [NSNumber numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v6);
}

- (void)didCompleteVerificationWithSuccess:(BOOL)a3 duration:(unint64_t)a4
{
  v5 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
  [(AKCAReporter *)self machAbsoluteTimeToTimeInterval:a4];
  v6 = [NSNumber numberWithDouble:v4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v6);
}

@end