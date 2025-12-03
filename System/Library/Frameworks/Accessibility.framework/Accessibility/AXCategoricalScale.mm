@interface AXCategoricalScale
- (AXCategoricalScale)init;
- (AXCategoricalScale)initWithDomain:(id)domain;
@end

@implementation AXCategoricalScale

- (AXCategoricalScale)init
{
  v3 = AXAudioGraphLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [(AXCategoricalScale *)v3 init];
  }

  return [(AXCategoricalScale *)self initWithDomain:MEMORY[0x1E695E0F0]];
}

- (AXCategoricalScale)initWithDomain:(id)domain
{
  v22 = *MEMORY[0x1E69E9840];
  domainCopy = domain;
  v20.receiver = self;
  v20.super_class = AXCategoricalScale;
  v5 = [(AXCategoricalScale *)&v20 init];
  if (v5)
  {
    array = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = domainCopy;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [AXDataPointValue valueWithCategory:*(*(&v16 + 1) + 8 * v11), v16];
          [array addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [array copy];
    [(AXScale *)v5 setDomain:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end