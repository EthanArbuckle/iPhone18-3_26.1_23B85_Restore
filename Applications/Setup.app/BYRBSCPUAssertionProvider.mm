@interface BYRBSCPUAssertionProvider
- (id)acquireAssertion;
@end

@implementation BYRBSCPUAssertionProvider

- (id)acquireAssertion
{
  v22[2] = self;
  v22[1] = a2;
  v22[0] = [RBSTarget targetWithPid:getpid()];
  v2 = [RBSDomainAttribute attributeWithDomain:@"com.apple.purplebuddy" name:@"ForegroundRuntime"];
  v24 = v2;
  v21 = [NSArray arrayWithObjects:&v24 count:1];

  v20 = [[RBSAssertion alloc] initWithExplanation:@"Setup launch needs foreground runtime even when backgrounded" target:v22[0] attributes:v21];
  location = 0;
  obj = 0;
  LOBYTE(v2) = [v20 acquireWithError:&obj];
  objc_storeStrong(&location, obj);
  v18 = v2 & 1;
  oslog = _BYLoggingFacility();
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v3 = v18 & 1;
    v13 = 0;
    v11 = 0;
    if (_BYIsInternalInstall())
    {
      v4 = location;
    }

    else if (location)
    {
      v14 = [location domain];
      v13 = 1;
      v4 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"<Error domain: %@, code %ld>", v14, [location code]);
      v12 = v4;
      v11 = 1;
    }

    else
    {
      v4 = 0;
    }

    sub_100097718(buf, v3, v4);
    _os_log_impl(&_mh_execute_header, oslog, v15, "Did acquire cpu assertion with success %d, error %@", buf, 0x12u);
    if (v11)
    {
    }

    if (v13)
    {
    }
  }

  objc_storeStrong(&oslog, 0);
  v10 = 0;
  if (v18)
  {
    v5 = [BYRBSCPUAssertion alloc];
    v6 = [(BYRBSCPUAssertion *)v5 initWithUnderlyingAssertion:v20];
    v7 = v10;
    v10 = v6;
  }

  v8 = v10;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(v22, 0);
  return v8;
}

@end