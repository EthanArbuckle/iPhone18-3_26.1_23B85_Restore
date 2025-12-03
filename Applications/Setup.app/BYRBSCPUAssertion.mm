@interface BYRBSCPUAssertion
- (BYRBSCPUAssertion)initWithUnderlyingAssertion:(id)assertion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BYRBSCPUAssertion

- (BYRBSCPUAssertion)initWithUnderlyingAssertion:(id)assertion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, assertion);
  v3 = selfCopy;
  selfCopy = 0;
  v6.receiver = v3;
  v6.super_class = BYRBSCPUAssertion;
  selfCopy = [(BYRBSCPUAssertion *)&v6 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy && location[0])
  {
    [selfCopy setUnderlyingAssertion:location[0]];
  }

  v4 = selfCopy;
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v4;
}

- (void)invalidate
{
  selfCopy = self;
  oslog[1] = a2;
  underlyingAssertion = [(BYRBSCPUAssertion *)self underlyingAssertion];

  if (underlyingAssertion)
  {
    underlyingAssertion2 = [(BYRBSCPUAssertion *)selfCopy underlyingAssertion];
    [(RBSAssertion *)underlyingAssertion2 invalidate];

    [(BYRBSCPUAssertion *)selfCopy setUnderlyingAssertion:0];
    oslog[0] = _BYLoggingFacility();
    v7 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      v4 = oslog[0];
      v5 = v7;
      sub_10006AA68(v6);
      _os_log_impl(&_mh_execute_header, v4, v5, "Did invalidate cpu assertion", v6, 2u);
    }

    objc_storeStrong(oslog, 0);
  }
}

- (void)dealloc
{
  selfCopy = self;
  v3 = a2;
  [(BYRBSCPUAssertion *)self invalidate];
  v2.receiver = selfCopy;
  v2.super_class = BYRBSCPUAssertion;
  [(BYRBSCPUAssertion *)&v2 dealloc];
}

@end