@interface PHPersonUserFeedbackProperties
+ (id)propertiesToFetch;
+ (id)propertiesToSortBy;
- (PHPersonUserFeedbackProperties)initWithFetchDictionary:(id)dictionary person:(id)person prefetched:(BOOL)prefetched;
@end

@implementation PHPersonUserFeedbackProperties

- (PHPersonUserFeedbackProperties)initWithFetchDictionary:(id)dictionary person:(id)person prefetched:(BOOL)prefetched
{
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  personCopy = person;
  v39.receiver = self;
  v39.super_class = PHPersonUserFeedbackProperties;
  v33 = [(PHPersonUserFeedbackProperties *)&v39 init];
  if (v33)
  {
    objc_storeWeak(&v33->super._person, personCopy);
    if (dictionaryCopy)
    {
      v9 = [dictionaryCopy objectForKeyedSubscript:@"fetchedResults"];
      if ([v9 count])
      {
        v31 = personCopy;
        v32 = dictionaryCopy;
        v10 = [objc_alloc(MEMORY[0x1E695DFA0]) initWithCapacity:{objc_msgSend(v9, "count")}];
        v35 = 0u;
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v30 = v9;
        obj = v9;
        v11 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v36;
          do
          {
            v14 = 0;
            do
            {
              if (*v36 != v13)
              {
                objc_enumerationMutation(obj);
              }

              v15 = *(*(&v35 + 1) + 8 * v14);
              v16 = [v15 objectForKeyedSubscript:@"uuid"];
              v17 = [v15 objectForKeyedSubscript:@"type"];
              integerValue = [v17 integerValue];

              v19 = [v15 objectForKeyedSubscript:@"feature"];
              integerValue2 = [v19 integerValue];

              v21 = [v15 objectForKeyedSubscript:@"creationType"];
              integerValue3 = [v21 integerValue];

              v23 = [v15 objectForKeyedSubscript:@"context"];
              v24 = [v15 objectForKeyedSubscript:@"lastModifiedDate"];
              v25 = [[PHUserFeedback alloc] initWithUUID:v16 type:integerValue feature:integerValue2 creationType:integerValue3 context:v23 lastModifiedDate:v24];
              if ([(PHUserFeedback *)v25 feature]|| v33->_userFeedback)
              {
                if ([(PHUserFeedback *)v25 feature]== 1 || [(PHUserFeedback *)v25 feature]== 2)
                {
                  [v10 addObject:v25];
                }
              }

              else
              {
                objc_storeStrong(&v33->_userFeedback, v25);
              }

              ++v14;
            }

            while (v12 != v14);
            v26 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
            v12 = v26;
          }

          while (v26);
        }

        if ([v10 count])
        {
          v27 = [v10 copy];
          autonamingUserFeedbacks = v33->_autonamingUserFeedbacks;
          v33->_autonamingUserFeedbacks = v27;
        }

        personCopy = v31;
        dictionaryCopy = v32;
        v9 = v30;
      }
    }
  }

  return v33;
}

+ (id)propertiesToFetch
{
  pl_dispatch_once();
  v2 = propertiesToFetch_pl_once_object_24;

  return v2;
}

void __51__PHPersonUserFeedbackProperties_propertiesToFetch__block_invoke()
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
  v2 = propertiesToFetch_pl_once_object_24;
  propertiesToFetch_pl_once_object_24 = v1;
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