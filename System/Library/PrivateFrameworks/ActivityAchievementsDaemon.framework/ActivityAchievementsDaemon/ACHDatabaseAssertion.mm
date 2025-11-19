@interface ACHDatabaseAssertion
+ (id)assertionWithDatabase:(id)a3 identifier:(id)a4 timeout:(double)a5 error:(id *)a6;
- (ACHDatabaseAssertion)initWithHDAssertion:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation ACHDatabaseAssertion

+ (id)assertionWithDatabase:(id)a3 identifier:(id)a4 timeout:(double)a5 error:(id *)a6
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a4;
  v18 = 0;
  v10 = [a3 takeAccessibilityAssertionWithOwnerIdentifier:v9 timeout:&v18 error:a5];
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
      v20 = v9;
      v21 = 2048;
      v22 = a5;
      v23 = 2114;
      v24 = v11;
      _os_log_impl(&dword_221DDC000, v13, OS_LOG_TYPE_DEFAULT, "Failed to get accessibility assertion for %{public}@ with %lf second timeout with error %{public}@", buf, 0x20u);
    }

    v14 = v11;
    if (v14)
    {
      if (a6)
      {
        v15 = v14;
        *a6 = v14;
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

- (ACHDatabaseAssertion)initWithHDAssertion:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ACHDatabaseAssertion;
  v6 = [(ACHDatabaseAssertion *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assertion, a3);
  }

  return v7;
}

- (void)invalidate
{
  v2 = [(ACHDatabaseAssertion *)self assertion];
  [v2 invalidate];
}

- (void)dealloc
{
  [(ACHDatabaseAssertion *)self invalidate];
  v3.receiver = self;
  v3.super_class = ACHDatabaseAssertion;
  [(ACHDatabaseAssertion *)&v3 dealloc];
}

@end