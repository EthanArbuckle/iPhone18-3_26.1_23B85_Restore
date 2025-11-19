@interface BYRBSCPUAssertion
- (BYRBSCPUAssertion)initWithUnderlyingAssertion:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation BYRBSCPUAssertion

- (BYRBSCPUAssertion)initWithUnderlyingAssertion:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v8;
  v8 = 0;
  v6.receiver = v3;
  v6.super_class = BYRBSCPUAssertion;
  v8 = [(BYRBSCPUAssertion *)&v6 init];
  objc_storeStrong(&v8, v8);
  if (v8 && location[0])
  {
    [v8 setUnderlyingAssertion:location[0]];
  }

  v4 = v8;
  objc_storeStrong(location, 0);
  objc_storeStrong(&v8, 0);
  return v4;
}

- (void)invalidate
{
  v9 = self;
  oslog[1] = a2;
  v2 = [(BYRBSCPUAssertion *)self underlyingAssertion];

  if (v2)
  {
    v3 = [(BYRBSCPUAssertion *)v9 underlyingAssertion];
    [(RBSAssertion *)v3 invalidate];

    [(BYRBSCPUAssertion *)v9 setUnderlyingAssertion:0];
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
  v4 = self;
  v3 = a2;
  [(BYRBSCPUAssertion *)self invalidate];
  v2.receiver = v4;
  v2.super_class = BYRBSCPUAssertion;
  [(BYRBSCPUAssertion *)&v2 dealloc];
}

@end