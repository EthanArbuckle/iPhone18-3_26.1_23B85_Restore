@interface NSMutableArray(AppleMediaServices)
- (void)ams_addNullableObject:()AppleMediaServices;
- (void)ams_addObjectsFromNullableArray:()AppleMediaServices;
- (void)ams_removeObjectsPassingTest:()AppleMediaServices;
@end

@implementation NSMutableArray(AppleMediaServices)

- (void)ams_addNullableObject:()AppleMediaServices
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)ams_addObjectsFromNullableArray:()AppleMediaServices
{
  if (a3)
  {
    return [a1 addObjectsFromArray:?];
  }

  return a1;
}

- (void)ams_removeObjectsPassingTest:()AppleMediaServices
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [a1 copy];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if (v4[2](v4, v10))
        {
          [a1 removeObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

@end