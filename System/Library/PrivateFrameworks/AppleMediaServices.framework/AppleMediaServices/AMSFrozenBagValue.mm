@interface AMSFrozenBagValue
- (AMSFrozenBagValue)initWithKey:(id)key value:(id)value valueType:(unint64_t)type;
@end

@implementation AMSFrozenBagValue

- (AMSFrozenBagValue)initWithKey:(id)key value:(id)value valueType:(unint64_t)type
{
  keyCopy = key;
  valueCopy = value;
  v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if (valueCopy)
  {
    selfCopy = self;
    typeCopy = type;
    v12 = [keyCopy componentsSeparatedByString:@"/"];
    v13 = v10;
    if ([v12 count])
    {
      v14 = 0;
      do
      {
        v15 = [v12 objectAtIndexedSubscript:v14];
        if (v14 == [v12 count] - 1)
        {
          [v13 setObject:valueCopy forKeyedSubscript:v15];
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

    type = typeCopy;
    self = selfCopy;
  }

  v17 = objc_alloc_init(AMSBagFrozenDataSourceBuilder);
  distantFuture = [MEMORY[0x1E695DF00] distantFuture];
  [(AMSBagFrozenDataSourceBuilder *)v17 setExpirationDate:distantFuture];

  [(AMSBagFrozenDataSourceBuilder *)v17 setData:MEMORY[0x1E695E0F8]];
  [(AMSBagFrozenDataSourceBuilder *)v17 setProfile:@"AMSFrozenBagValue"];
  [(AMSBagFrozenDataSourceBuilder *)v17 setProfileVersion:@"1"];
  if (valueCopy)
  {
    [(AMSBagFrozenDataSourceBuilder *)v17 setData:v10];
  }

  createFrozenDataSource = [(AMSBagFrozenDataSourceBuilder *)v17 createFrozenDataSource];
  v20 = [(AMSBagValue *)self initWithDataSource:createFrozenDataSource key:keyCopy valueType:type];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dataSource, createFrozenDataSource);
  }

  return v21;
}

@end