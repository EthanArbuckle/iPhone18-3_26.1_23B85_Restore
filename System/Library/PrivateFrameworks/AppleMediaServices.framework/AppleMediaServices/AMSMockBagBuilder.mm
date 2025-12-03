@interface AMSMockBagBuilder
- (AMSMockBagBuilder)initWithData:(id)data;
- (id)createMockBag;
- (void)addBagKey:(id)key value:(id)value valueType:(unint64_t)type;
@end

@implementation AMSMockBagBuilder

- (AMSMockBagBuilder)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = AMSMockBagBuilder;
  v5 = [(AMSMockBagBuilder *)&v9 init];
  if (v5)
  {
    v6 = [dataCopy mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)addBagKey:(id)key value:(id)value valueType:(unint64_t)type
{
  if (value)
  {
    valueCopy = value;
    keyCopy = key;
    data = [(AMSMockBagBuilder *)self data];
    [data setObject:valueCopy forKeyedSubscript:keyCopy];
  }
}

- (id)createMockBag
{
  v3 = objc_alloc_init(AMSBagFrozenDataSourceBuilder);
  data = [(AMSMockBagBuilder *)self data];
  [(AMSBagFrozenDataSourceBuilder *)v3 setData:data];

  expirationDate = [(AMSMockBagBuilder *)self expirationDate];
  if (expirationDate)
  {
    [(AMSBagFrozenDataSourceBuilder *)v3 setExpirationDate:expirationDate];
  }

  else
  {
    distantFuture = [MEMORY[0x1E695DF00] distantFuture];
    [(AMSBagFrozenDataSourceBuilder *)v3 setExpirationDate:distantFuture];
  }

  profile = [(AMSMockBagBuilder *)self profile];
  v8 = profile;
  if (profile)
  {
    v9 = profile;
  }

  else
  {
    v9 = @"AMSMockBag";
  }

  [(AMSBagFrozenDataSourceBuilder *)v3 setProfile:v9];

  profileVersion = [(AMSMockBagBuilder *)self profileVersion];
  v11 = profileVersion;
  if (profileVersion)
  {
    v12 = profileVersion;
  }

  else
  {
    v12 = @"1";
  }

  [(AMSBagFrozenDataSourceBuilder *)v3 setProfileVersion:v12];

  v13 = [AMSBag alloc];
  createFrozenDataSource = [(AMSBagFrozenDataSourceBuilder *)v3 createFrozenDataSource];
  v15 = [(AMSBag *)v13 initWithDataSource:createFrozenDataSource];

  return v15;
}

@end