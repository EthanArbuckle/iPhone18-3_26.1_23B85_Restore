@interface AssertionManager
- (AssertionManager)init;
- (id)acquireKeepAliveAssertion;
- (id)createInstance;
- (void)invalidateKeepAliveAssertion;
@end

@implementation AssertionManager

- (AssertionManager)init
{
  v6.receiver = self;
  v6.super_class = AssertionManager;
  v2 = [(AssertionManager *)&v6 init];
  v3 = v2;
  if (v2)
  {
    keepAliveAssertion = v2->_keepAliveAssertion;
    v2->_keepAliveAssertion = 0;

    v3->_assertionLock._os_unfair_lock_opaque = 0;
  }

  return v3;
}

- (id)acquireKeepAliveAssertion
{
  p_keepAliveAssertion = &self->_keepAliveAssertion;
  keepAliveAssertion = self->_keepAliveAssertion;
  if (keepAliveAssertion)
  {
LABEL_6:
    v13 = keepAliveAssertion;
    goto LABEL_7;
  }

  os_unfair_lock_lock(&self->_assertionLock);
  createInstance = [(AssertionManager *)self createInstance];
  v6 = self->_keepAliveAssertion;
  self->_keepAliveAssertion = createInstance;

  os_unfair_lock_unlock(&self->_assertionLock);
  v7 = self->_keepAliveAssertion;
  v15 = 0;
  v8 = [(RBSAssertion *)v7 acquireWithError:&v15];
  v9 = v15;
  v10 = sub_10000A9AC();
  v11 = v10;
  if (v8)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *p_keepAliveAssertion;
      *buf = 134217984;
      v17 = v12;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Acquired render assertion: %p", buf, 0xCu);
    }

    keepAliveAssertion = *p_keepAliveAssertion;
    goto LABEL_6;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100018D44(p_keepAliveAssertion, v9, v11);
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)invalidateKeepAliveAssertion
{
  if (self->_keepAliveAssertion)
  {
    os_unfair_lock_lock(&self->_assertionLock);
    [(RBSAssertion *)self->_keepAliveAssertion invalidate];
    v3 = sub_10000A9AC();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      keepAliveAssertion = self->_keepAliveAssertion;
      v6 = 134217984;
      v7 = keepAliveAssertion;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "Invalidated render assertion: %p", &v6, 0xCu);
    }

    v5 = self->_keepAliveAssertion;
    self->_keepAliveAssertion = 0;

    os_unfair_lock_unlock(&self->_assertionLock);
  }
}

- (id)createInstance
{
  v2 = [RBSDomainAttribute attributeWithDomain:@"com.apple.frontboard" name:@"SystemShell"];
  v3 = [RBSAssertion alloc];
  v4 = +[RBSProcessIdentity identityOfCurrentProcess];
  v5 = [RBSTarget targetWithProcessIdentity:v4];
  v14 = v2;
  v6 = [NSArray arrayWithObjects:&v14 count:1];
  v7 = [v3 initWithExplanation:@"HangHUD is rendering HUD" target:v5 attributes:v6];

  v8 = sub_10000A9AC();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v10 = 134218242;
    v11 = v7;
    v12 = 2112;
    v13 = v2;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Created render assertion: %p withAttributes: %@", &v10, 0x16u);
  }

  return v7;
}

@end