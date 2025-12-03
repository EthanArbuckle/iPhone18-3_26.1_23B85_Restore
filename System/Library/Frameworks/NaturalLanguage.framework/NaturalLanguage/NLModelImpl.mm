@interface NLModelImpl
- (NSDictionary)trainingInfo;
- (id)predictedLabelArraysForTokenArrays:(id)arrays;
@end

@implementation NLModelImpl

- (NSDictionary)trainingInfo
{
  v7[1] = *MEMORY[0x1E69E9840];
  v6 = @"NumberOfTrainingInstances";
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[NLModelImpl numberOfTrainingInstances](self, "numberOfTrainingInstances")}];
  v7[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v7 forKeys:&v6 count:1];

  v4 = *MEMORY[0x1E69E9840];

  return v3;
}

- (id)predictedLabelArraysForTokenArrays:(id)arrays
{
  v19 = *MEMORY[0x1E69E9840];
  arraysCopy = arrays;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = arraysCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(NLModelImpl *)self predictedLabelsForTokens:*(*(&v14 + 1) + 8 * i), v14];
        [array addObject:v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = *MEMORY[0x1E69E9840];

  return array;
}

@end