@interface AVTArrayPairClassification
+ (id)clustersForObjectsInArray:(id)a3 withClassifier:(id)a4 likenessThreshold:(id)a5 likenessComparator:(id)a6;
+ (id)countPairTypesInArray:(id)a3 withClassifier:(id)a4;
@end

@implementation AVTArrayPairClassification

+ (id)countPairTypesInArray:(id)a3 withClassifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  if ([v5 count])
  {
    v7 = [MEMORY[0x1E695DF90] dictionary];
    if ([v5 count] != 1)
    {
      v8 = 0;
      do
      {
        v18 = v8 + 1;
        if (v8 + 1 < [v5 count])
        {
          v9 = v8 + 1;
          do
          {
            v10 = [v5 objectAtIndexedSubscript:v8];
            v11 = [v5 objectAtIndexedSubscript:v9];
            v12 = v6[2](v6, v10, v11);

            v13 = MEMORY[0x1E696AD98];
            v14 = [v7 objectForKeyedSubscript:v12];
            v15 = [v13 numberWithInteger:{objc_msgSend(v14, "integerValue") + 1}];

            [v7 setObject:v15 forKeyedSubscript:v12];
            ++v9;
          }

          while (v9 < [v5 count]);
        }

        ++v8;
      }

      while (v18 < [v5 count] - 1);
    }

    v16 = [v7 copy];
  }

  else
  {
    v16 = MEMORY[0x1E695E0F8];
  }

  return v16;
}

+ (id)clustersForObjectsInArray:(id)a3 withClassifier:(id)a4 likenessThreshold:(id)a5 likenessComparator:(id)a6
{
  v38 = *MEMORY[0x1E69E9840];
  v9 = a3;
  v28 = a4;
  v27 = a5;
  v10 = a6;
  v11 = [MEMORY[0x1E695DF90] dictionary];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  obj = v9;
  v12 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v34;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v34 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v33 + 1) + 8 * i);
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __108__AVTArrayPairClassification_clustersForObjectsInArray_withClassifier_likenessThreshold_likenessComparator___block_invoke;
        v29[3] = &unk_1E7F3B988;
        v31 = v28;
        v29[4] = v16;
        v32 = v10;
        v30 = v27;
        v17 = [v11 keysOfEntriesPassingTest:v29];
        v18 = [v17 anyObject];

        if (v18)
        {
          v19 = v18;
        }

        else
        {
          v19 = v16;
        }

        v20 = MEMORY[0x1E696AD98];
        v21 = v19;
        v22 = [v11 objectForKeyedSubscript:v21];
        v23 = [v20 numberWithInteger:{objc_msgSend(v22, "integerValue") + 1}];
        [v11 setObject:v23 forKeyedSubscript:v21];
      }

      v13 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v13);
  }

  v24 = [v11 allValues];

  return v24;
}

BOOL __108__AVTArrayPairClassification_clustersForObjectsInArray_withClassifier_likenessThreshold_likenessComparator___block_invoke(uint64_t a1)
{
  v2 = (*(*(a1 + 48) + 16))();
  v3 = (*(*(a1 + 56) + 16))() != 1;

  return v3;
}

@end