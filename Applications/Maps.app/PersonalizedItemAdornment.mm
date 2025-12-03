@interface PersonalizedItemAdornment
+ (id)reduceArrayOfAdornments:(id)adornments;
@end

@implementation PersonalizedItemAdornment

+ (id)reduceArrayOfAdornments:(id)adornments
{
  adornmentsCopy = adornments;
  defaultAdornment = [self defaultAdornment];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = adornmentsCopy;
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      v11 = defaultAdornment;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        defaultAdornment = [v11 combineAdornment:{*(*(&v13 + 1) + 8 * v10), v13}];

        v10 = v10 + 1;
        v11 = defaultAdornment;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return defaultAdornment;
}

@end