@interface AXCategoricalScale
- (AXCategoricalScale)init;
- (AXCategoricalScale)initWithDomain:(id)a3;
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

- (AXCategoricalScale)initWithDomain:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v20.receiver = self;
  v20.super_class = AXCategoricalScale;
  v5 = [(AXCategoricalScale *)&v20 init];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v7 = v4;
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
          [v6 addObject:v12];

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v9);
    }

    v13 = [v6 copy];
    [(AXScale *)v5 setDomain:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end