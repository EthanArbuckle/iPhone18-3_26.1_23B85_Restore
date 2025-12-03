@interface AMLArrayBatchProvider
- (AMLArrayBatchProvider)initWithArray:(id)array;
- (AMLArrayBatchProvider)initWithCoder:(id)coder;
- (AMLArrayBatchProvider)initWithMLArrayBatchProvider:(id)provider;
- (id)featuresAtIndex:(int64_t)index;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AMLArrayBatchProvider

- (AMLArrayBatchProvider)initWithMLArrayBatchProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = AMLArrayBatchProvider;
  v6 = [(AMLArrayBatchProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_batchProvider, provider);
  }

  return v7;
}

- (AMLArrayBatchProvider)initWithArray:(id)array
{
  arrayCopy = array;
  v9.receiver = self;
  v9.super_class = AMLArrayBatchProvider;
  v5 = [(AMLArrayBatchProvider *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:arrayCopy];
    batchProvider = v5->_batchProvider;
    v5->_batchProvider = v6;
  }

  return v5;
}

- (id)featuresAtIndex:(int64_t)index
{
  indexCopy = index;
  if (index < 0)
  {
    indexCopy = [(MLArrayBatchProvider *)self->_batchProvider count]+ index;
  }

  batchProvider = self->_batchProvider;

  return [(MLArrayBatchProvider *)batchProvider featuresAtIndex:indexCopy];
}

- (AMLArrayBatchProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_self();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, 0}];

  v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"array"];
  v13 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v12];
  v14 = [(AMLArrayBatchProvider *)self initWithMLArrayBatchProvider:v13];

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  array = [(MLArrayBatchProvider *)self->_batchProvider array];
  [coderCopy encodeObject:array forKey:@"array"];

  objc_autoreleasePoolPop(v4);
}

@end