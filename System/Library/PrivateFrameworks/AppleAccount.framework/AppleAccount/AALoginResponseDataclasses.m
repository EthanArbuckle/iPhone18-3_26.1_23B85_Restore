@interface AALoginResponseDataclasses
- (AALoginResponseDataclasses)initWithiCloudServiceData:(id)a3;
@end

@implementation AALoginResponseDataclasses

- (AALoginResponseDataclasses)initWithiCloudServiceData:(id)a3
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v23.receiver = self;
  v23.super_class = AALoginResponseDataclasses;
  v5 = [(AALoginResponseDataclasses *)&v23 init];
  if (v5)
  {
    v6 = [v4 objectForKey:@"availableFeatures"];
    provisionedDataclasses = v5->_provisionedDataclasses;
    v5->_provisionedDataclasses = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = [v4 allKeys];
    v10 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          if ([v14 hasPrefix:@"com.apple.Dataclass"])
          {
            v15 = [v4 objectForKey:v14];
            if (v15)
            {
              [(NSDictionary *)v8 setObject:v15 forKey:v14];
            }
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      }

      while (v11);
    }

    dataclassProperties = v5->_dataclassProperties;
    v5->_dataclassProperties = v8;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v5;
}

@end