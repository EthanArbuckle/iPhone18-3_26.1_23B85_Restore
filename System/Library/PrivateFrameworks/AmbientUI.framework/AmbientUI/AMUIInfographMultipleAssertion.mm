@interface AMUIInfographMultipleAssertion
- (AMUIInfographMultipleAssertion)initWithAssertions:(id)assertions;
- (void)invalidate;
@end

@implementation AMUIInfographMultipleAssertion

- (AMUIInfographMultipleAssertion)initWithAssertions:(id)assertions
{
  assertionsCopy = assertions;
  v9.receiver = self;
  v9.super_class = AMUIInfographMultipleAssertion;
  v5 = [(AMUIInfographMultipleAssertion *)&v9 init];
  if (v5)
  {
    v6 = [assertionsCopy copy];
    assertions = v5->_assertions;
    v5->_assertions = v6;
  }

  return v5;
}

- (void)invalidate
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  assertions = [(AMUIInfographMultipleAssertion *)self assertions];
  v3 = [assertions countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(assertions);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [assertions countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end