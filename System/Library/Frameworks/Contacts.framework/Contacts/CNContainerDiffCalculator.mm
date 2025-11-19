@interface CNContainerDiffCalculator
+ (id)diffContainer:(id)a3 to:(id)a4;
@end

@implementation CNContainerDiffCalculator

+ (id)diffContainer:(id)a3 to:(id)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E695DF70] array];
  v8 = +[CN writableContainerProperties];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [v13 CNValueForContainer:v5];
        v15 = [v13 CNValueForContainer:v6];
        if (([v13 isValue:v14 equalToEmptyEquivalentOrValue:v15] & 1) == 0)
        {
          v16 = [CNContainerUpdate updateWithValue:v15 property:v13];
          [v7 addObject:v16];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

@end