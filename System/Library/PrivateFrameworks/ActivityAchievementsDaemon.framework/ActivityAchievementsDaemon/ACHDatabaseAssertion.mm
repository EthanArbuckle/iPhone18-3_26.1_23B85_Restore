@interface ACHDatabaseAssertion
+ (id)assertionWithDatabase:(id)database identifier:(id)identifier timeout:(double)timeout error:(id *)error;
- (ACHDatabaseAssertion)initWithHDAssertion:(id)assertion;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ACHDatabaseAssertion

+ (id)assertionWithDatabase:(id)database identifier:(id)identifier timeout:(double)timeout error:(id *)error
{
  v25 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v18 = 0;
  v10 = [database takeAccessibilityAssertionWithOwnerIdentifier:identifierCopy timeout:&v18 error:timeout];
  v11 = v18;
  if (v10)
  {
    v12 = [[ACHDatabaseAssertion alloc] initWithHDAssertion:v10];
  }

  else
  {
    v13 = ACHLogDatabase();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v20 = identifierCopy;
      v21 = 2048;
      timeoutCopy = timeout;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Failed to get accessibility assertion for %{public}@ with %lf second timeout with error %{public}@", buf, 0x20u);
    }

    v14 = v11;
    if (v14)
    {
      if (error)
      {
        v15 = v14;
        *error = v14;
      }

      else
      {
        _HKLogDroppedError();
      }
    }

    v12 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v12;
}

- (ACHDatabaseAssertion)initWithHDAssertion:(id)assertion
{
  assertionCopy = assertion;
  v9.receiver = self;
  v9.super_class = ACHDatabaseAssertion;
  v6 = [(ACHDatabaseAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertion, assertion);
  }

  return v7;
}

- (void)invalidate
{
  assertion = [(ACHDatabaseAssertion *)self assertion];
  [assertion invalidate];
}

- (void)dealloc
{
  [(ACHDatabaseAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = ACHDatabaseAssertion;
  [(ACHDatabaseAssertion *)&v3 dealloc];
}

@end