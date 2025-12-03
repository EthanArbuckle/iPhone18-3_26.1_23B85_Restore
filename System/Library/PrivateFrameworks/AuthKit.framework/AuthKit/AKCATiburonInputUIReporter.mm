@interface AKCATiburonInputUIReporter
- (AKCATiburonInputUIReporter)initWithRequestID:(id)d;
- (void)_clearMutuallyExclusiveProperties:(BOOL)properties;
- (void)didComplete:(BOOL)complete;
- (void)didModifyName:(BOOL)name;
- (void)didSelectAnonymousEmail:(BOOL)email;
- (void)didSelectAppleID:(BOOL)d;
- (void)didSelectPasswordCredential:(BOOL)credential;
- (void)didShowAppleID:(BOOL)d;
- (void)setPasswordCredentialCount:(unint64_t)count;
@end

@implementation AKCATiburonInputUIReporter

- (AKCATiburonInputUIReporter)initWithRequestID:(id)d
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = AKCATiburonInputUIReporter;
  selfCopy = [(AKCAReporter *)&v6 initWithEvent:@"com.apple.AuthKit.TiburonAuthorizationUI"];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    [(AKCAReporter *)selfCopy setObject:location[0] forKeyedSubscript:@"requestID"];
    [(AKCAReporter *)selfCopy setObject:&off_100338F68 forKeyedSubscript:@"passwordCredentialCount"];
    [AKCAReporter setObject:selfCopy forKeyedSubscript:"setObject:forKeyedSubscript:"];
    [(AKCAReporter *)selfCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"useAnonymous"];
    [(AKCAReporter *)selfCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"useAppleID"];
    [(AKCAReporter *)selfCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"usePasswordCredential"];
    [(AKCAReporter *)selfCopy setObject:&__kCFBooleanFalse forKeyedSubscript:@"modifiedName"];
    [(AKCAReporter *)selfCopy setObject:&__kCFBooleanTrue forKeyedSubscript:@"didCancel"];
  }

  v5 = _objc_retain(selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v5;
}

- (void)setPasswordCredentialCount:(unint64_t)count
{
  v3 = [NSNumber numberWithUnsignedInteger:count];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didShowAppleID:(BOOL)d
{
  v3 = [NSNumber numberWithBool:d];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didSelectAnonymousEmail:(BOOL)email
{
  v3 = [NSNumber numberWithBool:email];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didSelectAppleID:(BOOL)d
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:d];
  v3 = [NSNumber numberWithBool:d];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didSelectPasswordCredential:(BOOL)credential
{
  [(AKCATiburonInputUIReporter *)self _clearMutuallyExclusiveProperties:credential];
  v3 = [NSNumber numberWithBool:credential];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didModifyName:(BOOL)name
{
  v3 = [NSNumber numberWithBool:name];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)didComplete:(BOOL)complete
{
  v3 = [NSNumber numberWithInt:!complete];
  [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
  _objc_release(v3);
}

- (void)_clearMutuallyExclusiveProperties:(BOOL)properties
{
  if (properties)
  {
    [AKCAReporter setObject:"setObject:forKeyedSubscript:" forKeyedSubscript:?];
    [(AKCAReporter *)self setObject:&__kCFBooleanFalse forKeyedSubscript:@"usePasswordCredential"];
  }
}

@end