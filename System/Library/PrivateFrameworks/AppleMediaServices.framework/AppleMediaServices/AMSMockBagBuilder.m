@interface AMSMockBagBuilder
- (AMSMockBagBuilder)initWithData:(id)a3;
- (id)createMockBag;
- (void)addBagKey:(id)a3 value:(id)a4 valueType:(unint64_t)a5;
@end

@implementation AMSMockBagBuilder

- (AMSMockBagBuilder)initWithData:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMSMockBagBuilder;
  v5 = [(AMSMockBagBuilder *)&v9 init];
  if (v5)
  {
    v6 = [v4 mutableCopy];
    data = v5->_data;
    v5->_data = v6;
  }

  return v5;
}

- (void)addBagKey:(id)a3 value:(id)a4 valueType:(unint64_t)a5
{
  if (a4)
  {
    v7 = a4;
    v8 = a3;
    v9 = [(AMSMockBagBuilder *)self data];
    [v9 setObject:v7 forKeyedSubscript:v8];
  }
}

- (id)createMockBag
{
  v3 = objc_alloc_init(AMSBagFrozenDataSourceBuilder);
  v4 = [(AMSMockBagBuilder *)self data];
  [(AMSBagFrozenDataSourceBuilder *)v3 setData:v4];

  v5 = [(AMSMockBagBuilder *)self expirationDate];
  if (v5)
  {
    [(AMSBagFrozenDataSourceBuilder *)v3 setExpirationDate:v5];
  }

  else
  {
    v6 = [MEMORY[0x1E695DF00] distantFuture];
    [(AMSBagFrozenDataSourceBuilder *)v3 setExpirationDate:v6];
  }

  v7 = [(AMSMockBagBuilder *)self profile];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"AMSMockBag";
  }

  [(AMSBagFrozenDataSourceBuilder *)v3 setProfile:v9];

  v10 = [(AMSMockBagBuilder *)self profileVersion];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = @"1";
  }

  [(AMSBagFrozenDataSourceBuilder *)v3 setProfileVersion:v12];

  v13 = [AMSBag alloc];
  v14 = [(AMSBagFrozenDataSourceBuilder *)v3 createFrozenDataSource];
  v15 = [(AMSBag *)v13 initWithDataSource:v14];

  return v15;
}

@end