@interface AMSFailingMockBagBuilder
- (id)createMockBag;
@end

@implementation AMSFailingMockBagBuilder

- (id)createMockBag
{
  v3 = [AMSBagFailingDataSource alloc];
  profile = [(AMSMockBagBuilder *)self profile];
  v5 = profile;
  if (profile)
  {
    v6 = profile;
  }

  else
  {
    v6 = @"AMSFailingMockBag";
  }

  profileVersion = [(AMSMockBagBuilder *)self profileVersion];
  v8 = profileVersion;
  if (profileVersion)
  {
    v9 = profileVersion;
  }

  else
  {
    v9 = @"@";
  }

  error = [(AMSFailingMockBagBuilder *)self error];
  [(AMSFailingMockBagBuilder *)self delay];
  v11 = [(AMSBagFailingDataSource *)v3 initWithProfile:v6 profileVersion:v9 error:error delay:?];

  v12 = [[AMSBag alloc] initWithDataSource:v11];

  return v12;
}

@end