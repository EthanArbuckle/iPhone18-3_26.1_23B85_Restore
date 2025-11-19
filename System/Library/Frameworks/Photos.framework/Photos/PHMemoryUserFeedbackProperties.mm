@interface PHMemoryUserFeedbackProperties
+ (id)propertiesToFetch;
+ (id)propertiesToSortBy;
- (PHMemoryUserFeedbackProperties)initWithFetchDictionary:(id)a3 memory:(id)a4 prefetched:(BOOL)a5;
@end

@implementation PHMemoryUserFeedbackProperties

- (PHMemoryUserFeedbackProperties)initWithFetchDictionary:(id)a3 memory:(id)a4 prefetched:(BOOL)a5
{
  v7 = a3;
  v8 = a4;
  v23.receiver = self;
  v23.super_class = PHMemoryUserFeedbackProperties;
  v9 = [(PHMemoryUserFeedbackProperties *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._memory, v8);
    v11 = [v7 objectForKeyedSubscript:@"uuid"];
    if (v11)
    {
      v12 = [v7 objectForKeyedSubscript:@"type"];
      v13 = [v12 integerValue];

      v14 = [v7 objectForKeyedSubscript:@"feature"];
      v15 = [v14 integerValue];

      v16 = [v7 objectForKeyedSubscript:@"creationType"];
      v17 = [v16 integerValue];

      v18 = [v7 objectForKeyedSubscript:@"context"];
      v19 = [v7 objectForKeyedSubscript:@"lastModifiedDate"];
      v20 = [[PHUserFeedback alloc] initWithUUID:v11 type:v13 feature:v15 creationType:v17 context:v18 lastModifiedDate:v19];
      userFeedback = v10->_userFeedback;
      v10->_userFeedback = v20;
    }
  }

  return v10;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_28;

  return v2;
}

void __51__PHMemoryUserFeedbackProperties_propertiesToFetch__block_invoke()
{
  v3[6] = *MEMORY[0x1E69E9840];
  v3[0] = @"uuid";
  v3[1] = @"type";
  v3[2] = @"feature";
  v3[3] = @"creationType";
  v3[4] = @"context";
  v3[5] = @"lastModifiedDate";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:6];
  v1 = [v0 copy];
  v2 = propertiesToFetch_pl_once_object_28;
  propertiesToFetch_pl_once_object_28 = v1;
}

+ (id)propertiesToSortBy
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"lastModifiedDate" ascending:0];
  v5[0] = v2;
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:1];

  return v3;
}

@end