@interface AMSFailingMockBagBuilder
- (id)createMockBag;
@end

@implementation AMSFailingMockBagBuilder

- (id)createMockBag
{
  v3 = [AMSBagFailingDataSource alloc];
  v4 = [(AMSMockBagBuilder *)self profile];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = @"AMSFailingMockBag";
  }

  v7 = [(AMSMockBagBuilder *)self profileVersion];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"@";
  }

  v10 = [(AMSFailingMockBagBuilder *)self error];
  [(AMSFailingMockBagBuilder *)self delay];
  v11 = [(AMSBagFailingDataSource *)v3 initWithProfile:v6 profileVersion:v9 error:v10 delay:?];

  v12 = [[AMSBag alloc] initWithDataSource:v11];

  return v12;
}

@end