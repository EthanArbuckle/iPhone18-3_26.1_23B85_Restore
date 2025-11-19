@interface AMLArrayBatchProvider
- (AMLArrayBatchProvider)initWithArray:(id)a3;
- (AMLArrayBatchProvider)initWithCoder:(id)a3;
- (AMLArrayBatchProvider)initWithMLArrayBatchProvider:(id)a3;
- (id)featuresAtIndex:(int64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AMLArrayBatchProvider

- (AMLArrayBatchProvider)initWithMLArrayBatchProvider:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = AMLArrayBatchProvider;
  v6 = [(AMLArrayBatchProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_batchProvider, a3);
  }

  return v7;
}

- (AMLArrayBatchProvider)initWithArray:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AMLArrayBatchProvider;
  v5 = [(AMLArrayBatchProvider *)&v9 init];
  if (v5)
  {
    v6 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v4];
    batchProvider = v5->_batchProvider;
    v5->_batchProvider = v6;
  }

  return v5;
}

- (id)featuresAtIndex:(int64_t)a3
{
  v3 = a3;
  if (a3 < 0)
  {
    v3 = [(MLArrayBatchProvider *)self->_batchProvider count]+ a3;
  }

  batchProvider = self->_batchProvider;

  return [(MLArrayBatchProvider *)batchProvider featuresAtIndex:v3];
}

- (AMLArrayBatchProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = MEMORY[0x277CBEB98];
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_self();
  v11 = [v6 setWithObjects:{v7, v8, v9, v10, 0}];

  v12 = [v4 decodeObjectOfClasses:v11 forKey:@"array"];
  v13 = [objc_alloc(MEMORY[0x277CBFEB0]) initWithFeatureProviderArray:v12];
  v14 = [(AMLArrayBatchProvider *)self initWithMLArrayBatchProvider:v13];

  objc_autoreleasePoolPop(v5);
  return v14;
}

- (void)encodeWithCoder:(id)a3
{
  v6 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [(MLArrayBatchProvider *)self->_batchProvider array];
  [v6 encodeObject:v5 forKey:@"array"];

  objc_autoreleasePoolPop(v4);
}

@end