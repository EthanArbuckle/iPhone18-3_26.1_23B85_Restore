@interface AKCATiburonAuthorizationUIReporter
- (AKCATiburonAuthorizationUIReporter)initWithRequestID:(id)a3;
- (void)didSelectAnonymousEmail:(BOOL)a3 didCancel:(BOOL)a4;
@end

@implementation AKCATiburonAuthorizationUIReporter

- (AKCATiburonAuthorizationUIReporter)initWithRequestID:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v9;
  v9 = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonAuthorizationUIReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  v9 = v6;
  objc_storeStrong(&v9, v6);
  if (v6)
  {
    [(AKCAReporter *)v9 setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)v9 setObject:&__kCFBooleanFalse forKeyedSubscript:@"modifiedName"];
  }

  v5 = _objc_retain(v9);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v9, 0);
  return v5;
}

- (void)didSelectAnonymousEmail:(BOOL)a3 didCancel:(BOOL)a4
{
  v4 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v4);
  v5 = [NSNumber numberWithBool:a4];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
}

@end