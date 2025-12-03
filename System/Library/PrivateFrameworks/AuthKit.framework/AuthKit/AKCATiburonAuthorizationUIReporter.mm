@interface AKCATiburonAuthorizationUIReporter
- (AKCATiburonAuthorizationUIReporter)initWithRequestID:(id)d;
- (void)didSelectAnonymousEmail:(BOOL)email didCancel:(BOOL)cancel;
@end

@implementation AKCATiburonAuthorizationUIReporter

- (AKCATiburonAuthorizationUIReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v7.receiver = v3;
  v7.super_class = AKCATiburonAuthorizationUIReporter;
  v6 = [(AKCAReporter *)&v7 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  selfCopy = v6;
  objc_storeStrong(&selfCopy, v6);
  if (v6)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)selfCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"modifiedName"];
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)didSelectAnonymousEmail:(BOOL)email didCancel:(BOOL)cancel
{
  v4 = [NSNumber numberWithBool:email];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v4);
  v5 = [NSNumber numberWithBool:cancel];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v5);
}

@end