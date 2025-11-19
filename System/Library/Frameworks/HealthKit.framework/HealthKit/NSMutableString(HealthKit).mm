@interface NSMutableString(HealthKit)
- (void)hk_appendComponentsJoinedByString:()HealthKit container:componentGenerator:;
@end

@implementation NSMutableString(HealthKit)

- (void)hk_appendComponentsJoinedByString:()HealthKit container:componentGenerator:
{
  v26 = *MEMORY[0x1E69E9840];
  v20 = a3;
  v8 = a4;
  v9 = a5;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = v8;
  v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = 0;
    v14 = *v22;
    do
    {
      v15 = 0;
      do
      {
        if (*v22 != v14)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v21 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        if (v13)
        {
          [a1 appendString:v20];
        }

        v18 = v9[2](v9, v16);
        [a1 appendString:v18];

        objc_autoreleasePoolPop(v17);
        ++v15;
        v13 = 1;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x1E69E9840];
}

@end