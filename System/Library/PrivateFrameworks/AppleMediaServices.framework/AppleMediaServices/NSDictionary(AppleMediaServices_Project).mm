@interface NSDictionary(AppleMediaServices_Project)
- (id)ams_keysForChangedValuesComparedToDictionary:()AppleMediaServices_Project;
- (id)ams_valuesForKeys:()AppleMediaServices_Project;
@end

@implementation NSDictionary(AppleMediaServices_Project)

- (id)ams_keysForChangedValuesComparedToDictionary:()AppleMediaServices_Project
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [self count];
    v7 = MEMORY[0x1E695DFD8];
    if (v6)
    {
      allKeys = [self allKeys];
      v9 = [v7 setWithArray:allKeys];
      allKeys2 = [v5 allKeys];
      v11 = [v9 setByAddingObjectsFromArray:allKeys2];

      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __89__NSDictionary_AppleMediaServices_Project__ams_keysForChangedValuesComparedToDictionary___block_invoke;
      v16[3] = &unk_1E73BE298;
      v16[4] = self;
      v17 = v5;
      v12 = [v11 ams_filterUsingTest:v16];

      goto LABEL_7;
    }

    selfCopy = v5;
  }

  else
  {
    v7 = MEMORY[0x1E695DFD8];
    selfCopy = self;
  }

  allKeys3 = [selfCopy allKeys];
  v12 = [v7 setWithArray:allKeys3];

LABEL_7:

  return v12;
}

- (id)ams_valuesForKeys:()AppleMediaServices_Project
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __62__NSDictionary_AppleMediaServices_Project__ams_valuesForKeys___block_invoke;
  v8[3] = &unk_1E73B7268;
  v9 = v4;
  v5 = v4;
  v6 = [self ams_filterUsingTest:v8];

  return v6;
}

@end