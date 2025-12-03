@interface PHMemoryUserFeedbackProperties
+ (id)propertiesToFetch;
+ (id)propertiesToSortBy;
- (PHMemoryUserFeedbackProperties)initWithFetchDictionary:(id)dictionary memory:(id)memory prefetched:(BOOL)prefetched;
@end

@implementation PHMemoryUserFeedbackProperties

- (PHMemoryUserFeedbackProperties)initWithFetchDictionary:(id)dictionary memory:(id)memory prefetched:(BOOL)prefetched
{
  dictionaryCopy = dictionary;
  memoryCopy = memory;
  v23.receiver = self;
  v23.super_class = PHMemoryUserFeedbackProperties;
  v9 = [(PHMemoryUserFeedbackProperties *)&v23 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->super._memory, memoryCopy);
    v11 = [dictionaryCopy objectForKeyedSubscript:@"uuid"];
    if (v11)
    {
      v12 = [dictionaryCopy objectForKeyedSubscript:@"type"];
      integerValue = [v12 integerValue];

      v14 = [dictionaryCopy objectForKeyedSubscript:@"feature"];
      integerValue2 = [v14 integerValue];

      v16 = [dictionaryCopy objectForKeyedSubscript:@"creationType"];
      integerValue3 = [v16 integerValue];

      v18 = [dictionaryCopy objectForKeyedSubscript:@"context"];
      v19 = [dictionaryCopy objectForKeyedSubscript:@"lastModifiedDate"];
      v20 = [[PHUserFeedback alloc] initWithUUID:v11 type:integerValue feature:integerValue2 creationType:integerValue3 context:v18 lastModifiedDate:v19];
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