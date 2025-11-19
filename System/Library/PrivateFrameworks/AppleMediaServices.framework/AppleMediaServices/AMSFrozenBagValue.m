@interface AMSFrozenBagValue
- (AMSFrozenBagValue)initWithKey:(id)a3 value:(id)a4 valueType:(unint64_t)a5;
@end

@implementation AMSFrozenBagValue

- (AMSFrozenBagValue)initWithKey:(id)a3 value:(id)a4 valueType:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (v9)
  {
    v23 = self;
    v11 = a5;
    v12 = [v8 componentsSeparatedByString:@"/"];
    v13 = v10;
    if ([v12 count])
    {
      v14 = 0;
      do
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        if (v14 == [v12 count] - 1)
        {
          [v13 setObject:v9 forKeyedSubscript:v15];
        }

        else
        {
          v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
          [v13 setObject:v16 forKeyedSubscript:v15];

          v13 = v16;
        }

        ++v14;
      }

      while (v14 < [v12 count]);
    }

    a5 = v11;
    self = v23;
  }

  v17 = objc_alloc_init(AMSBagFrozenDataSourceBuilder);
  v18 = [MEMORY[0x1E695DF00] distantFuture];
  [(AMSBagFrozenDataSourceBuilder *)v17 setExpirationDate:v18];

  [(AMSBagFrozenDataSourceBuilder *)v17 setData:MEMORY[0x1E695E0F8]];
  [(AMSBagFrozenDataSourceBuilder *)v17 setProfile:@"AMSFrozenBagValue"];
  [(AMSBagFrozenDataSourceBuilder *)v17 setProfileVersion:@"1"];
  if (v9)
  {
    [(AMSBagFrozenDataSourceBuilder *)v17 setData:v10];
  }

  v19 = [(AMSBagFrozenDataSourceBuilder *)v17 createFrozenDataSource];
  v20 = [(AMSBagValue *)self initWithDataSource:v19 key:v8 valueType:a5];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dataSource, v19);
  }

  return v21;
}

@end