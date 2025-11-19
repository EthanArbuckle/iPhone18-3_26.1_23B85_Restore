@interface AMUIInfographMultipleAssertion
- (AMUIInfographMultipleAssertion)initWithAssertions:(id)a3;
- (void)invalidate;
@end

@implementation AMUIInfographMultipleAssertion

- (AMUIInfographMultipleAssertion)initWithAssertions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMUIInfographMultipleAssertion;
  v5 = [(AMUIInfographMultipleAssertion *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
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
  v2 = [(AMUIInfographMultipleAssertion *)self assertions];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(v2);
        }

        [*(*(&v8 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end