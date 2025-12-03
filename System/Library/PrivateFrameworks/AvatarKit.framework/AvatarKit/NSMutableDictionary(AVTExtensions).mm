@interface NSMutableDictionary(AVTExtensions)
- (void)avt_applyPoseRoundingBehaviour;
@end

@implementation NSMutableDictionary(AVTExtensions)

- (void)avt_applyPoseRoundingBehaviour
{
  v17 = *MEMORY[0x1E69E9840];
  v11 = _AVTPoseRoundingBehaviour();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [self allKeys];
  v3 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(allKeys);
        }

        v7 = *(*(&v12 + 1) + 8 * i);
        v8 = [self objectForKeyedSubscript:v7];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [v8 avt_numberByRoundingWithBehavior:v11];
          [self setObject:v9 forKeyedSubscript:v7];
        }

        else if (objc_opt_respondsToSelector())
        {
          [v8 avt_applyPoseRoundingBehaviour];
        }
      }

      v4 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v10 = *MEMORY[0x1E69E9840];
}

@end