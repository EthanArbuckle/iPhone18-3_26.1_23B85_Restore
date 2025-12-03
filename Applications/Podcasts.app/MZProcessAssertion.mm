@interface MZProcessAssertion
- (MZProcessAssertion)initWithExpirationBlock:(id)block debugDescription:(id)description;
- (NSString)description;
- (RBSAssertion)systemAssertion;
- (void)_withLockSetAssertion:(id)assertion;
- (void)assertionWillInvalidate:(id)invalidate;
- (void)dealloc;
- (void)invalidate;
- (void)setSystemAssertion:(id)assertion;
@end

@implementation MZProcessAssertion

- (MZProcessAssertion)initWithExpirationBlock:(id)block debugDescription:(id)description
{
  blockCopy = block;
  descriptionCopy = description;
  v21.receiver = self;
  v21.super_class = MZProcessAssertion;
  v8 = [(MZProcessAssertion *)&v21 init];
  if (v8)
  {
    if (qword_100583BD0 != -1)
    {
      sub_1003B2BFC();
    }

    os_unfair_lock_lock(&dword_100583BC8);
    v9 = ++qword_1005718A0;
    os_unfair_lock_unlock(&dword_100583BC8);
    v8->_identifier = v9;
    v10 = [blockCopy copy];
    expirationBlock = v8->_expirationBlock;
    v8->_expirationBlock = v10;

    if ([descriptionCopy length])
    {
      descriptionCopy = [NSString stringWithFormat:@"-%@", descriptionCopy];
    }

    else
    {
      descriptionCopy = &stru_1004F3018;
    }

    v13 = [NSString stringWithFormat:@"com.apple.podcasts.storebookkeeper-%@", descriptionCopy];
    v14 = [RBSDomainAttribute attributeWithDomain:@"com.apple.common" name:@"FinishTaskInterruptable"];
    v15 = [RBSAssertion alloc];
    v16 = +[RBSTarget currentProcess];
    v22 = v14;
    v17 = [NSArray arrayWithObjects:&v22 count:1];
    v18 = [v15 initWithExplanation:v13 target:v16 attributes:v17];
    systemAssertion = v8->_systemAssertion;
    v8->_systemAssertion = v18;

    [(RBSAssertion *)v8->_systemAssertion addObserver:v8];
    [(RBSAssertion *)v8->_systemAssertion acquireWithInvalidationHandler:&stru_1004DB4F8];
    v8->_lock._os_unfair_lock_opaque = 0;
  }

  return v8;
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = MZProcessAssertion;
  v3 = [(MZProcessAssertion *)&v6 description];
  v4 = [NSString stringWithFormat:@"%@, assertionID = %lu", v3, self->_identifier];

  return v4;
}

- (void)dealloc
{
  [(MZProcessAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = MZProcessAssertion;
  [(MZProcessAssertion *)&v3 dealloc];
}

- (void)_withLockSetAssertion:(id)assertion
{
  assertionCopy = assertion;
  p_systemAssertion = &self->_systemAssertion;
  if (([(RBSAssertion *)self->_systemAssertion isEqual:assertionCopy]& 1) == 0)
  {
    v7 = *p_systemAssertion;
    objc_storeStrong(&self->_systemAssertion, assertion);
    if (*p_systemAssertion)
    {
      [(RBSAssertion *)*p_systemAssertion addObserver:self];
    }

    [(RBSAssertion *)v7 removeObserver:self];
    v8 = dispatch_time(0, 500000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000C65E4;
    block[3] = &unk_1004D8358;
    v11 = v7;
    v9 = v7;
    dispatch_after(v8, &_dispatch_main_q, block);
  }
}

- (void)setSystemAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(MZProcessAssertion *)self _withLockSetAssertion:assertionCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (RBSAssertion)systemAssertion
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_systemAssertion;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)assertionWillInvalidate:(id)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_systemAssertion && ([(MZProcessAssertion *)self expirationBlock], v4 = objc_claimAutoreleasedReturnValue(), v4, v4))
  {
    expirationBlock = [(MZProcessAssertion *)self expirationBlock];
    v6 = [expirationBlock copy];

    [(MZProcessAssertion *)self setExpirationBlock:0];
    os_unfair_lock_unlock(&self->_lock);
    if (v6)
    {
      v6[2](v6);
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)invalidate
{
  os_unfair_lock_lock(&self->_lock);
  if (self->_systemAssertion)
  {
    [(MZProcessAssertion *)self _withLockSetAssertion:0];
  }

  os_unfair_lock_unlock(&self->_lock);
}

@end