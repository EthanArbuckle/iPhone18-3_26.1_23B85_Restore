@interface AKCATiburonInputUIReporter
- (AKCATiburonInputUIReporter)initWithRequestID:(id)a3;
- (void)_clearMutuallyExclusiveProperties:(BOOL)a3;
- (void)didComplete:(BOOL)a3;
- (void)didModifyName:(BOOL)a3;
- (void)didSelectAnonymousEmail:(BOOL)a3;
- (void)didSelectAppleID:(BOOL)a3;
- (void)didSelectPasswordCredential:(BOOL)a3;
- (void)didShowAppleID:(BOOL)a3;
- (void)setPasswordCredentialCount:(unint64_t)a3;
@end

@implementation AKCATiburonInputUIReporter

- (AKCATiburonInputUIReporter)initWithRequestID:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = AKCATiburonInputUIReporter;
  v8 = [(AKCAReporter *)&v6 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  objc_storeStrong(&v8, v8);
  if (v8)
  {
    [(AKCAReporter *)v8 setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)v8 setObject:&off_100338F68 forKeyedSubscript:@"passwordCredentialCount"];
    [AKCAReporter setObject:v8 forKeyedSubscript:"setObject:forKeyedSubscript:"];
    [(AKCAReporter *)v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useAnonymous"];
    [(AKCAReporter *)v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"useAppleID"];
    [(AKCAReporter *)v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"usePasswordCredential"];
    [(AKCAReporter *)v8 setObject:&__kCFBooleanFalse forKeyedSubscript:@"modifiedName"];
    [(AKCAReporter *)v8 setObject:&__kCFBooleanTrue forKeyedSubscript:@"didCancel"];
  }

  v5 = _objc_retain(v8);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v5;
}

- (void)setPasswordCredentialCount:(unint64_t)a3
{
  v3 = [NSNumber numberWithUnsignedInteger:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didShowAppleID:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didSelectAnonymousEmail:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didSelectAppleID:(BOOL)a3
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:a3];
  v3 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didSelectPasswordCredential:(BOOL)a3
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:a3];
  v3 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didModifyName:(BOOL)a3
{
  v3 = [NSNumber numberWithBool:a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didComplete:(BOOL)a3
{
  v3 = [NSNumber numberWithInt:!a3];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)_clearMutuallyExclusiveProperties:(BOOL)a3
{
  if (a3)
  {
    [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    [(AKCAReporter *)self setObject:&__kCFBooleanFalse forKeyedSubscript:@"usePasswordCredential"];
  }
}

@end