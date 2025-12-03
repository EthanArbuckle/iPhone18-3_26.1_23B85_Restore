@interface EKObjectChangeSummarizer
+ (id)changeSummaryForObject:(id)object;
+ (id)diffSummaryBetweenObject:(id)object andObject:(id)andObject;
@end

@implementation EKObjectChangeSummarizer

+ (id)changeSummaryForObject:(id)object
{
  objectCopy = object;
  v5 = [objectCopy copy];
  [v5 rollback];
  v6 = [self diffSummaryBetweenObject:v5 andObject:objectCopy];

  return v6;
}

+ (id)diffSummaryBetweenObject:(id)object andObject:(id)andObject
{
  v63 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  andObjectCopy = andObject;
  v9 = andObjectCopy;
  v47 = 0;
  v42 = objectCopy;
  if (objectCopy && andObjectCopy)
  {
    v44 = objc_opt_class();
    if (v44 != objc_opt_class())
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"EKObjectChangeSummarizer.m" lineNumber:93 description:@"Diff summary called on objects of different class"];
    }

    v39 = v9;
    v11 = [objectCopy diffWithObject:v9];
    summaryDictionary = [v11 summaryDictionary];

    v47 = objc_opt_new();
    [v44 EKObjectChangeSummarizer_singleValueDiffKeys];
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v41 = v59 = 0u;
    allKeys = [v41 allKeys];
    v14 = [allKeys countByEnumeratingWithState:&v56 objects:v62 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v57;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v57 != v16)
          {
            objc_enumerationMutation(allKeys);
          }

          v18 = *(*(&v56 + 1) + 8 * i);
          v19 = [summaryDictionary objectForKey:v18];

          if (v19)
          {
            v20 = [v42 valueForKeyPath:v18];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              null = v20;
            }

            else
            {
              null = [MEMORY[0x1E695DFB0] null];
            }

            v22 = null;
            v23 = [v41 objectForKeyedSubscript:v18];
            [v47 setObject:v22 forKeyedSubscript:v23];
          }
        }

        v15 = [allKeys countByEnumeratingWithState:&v56 objects:v62 count:16];
      }

      while (v15);
    }

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [v44 EKObjectChangeSummarizer_multiValueDiffKeys];
    v45 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
    if (v45)
    {
      v43 = *v53;
      do
      {
        v24 = 0;
        do
        {
          if (*v53 != v43)
          {
            objc_enumerationMutation(obj);
          }

          v46 = v24;
          v25 = *(*(&v52 + 1) + 8 * v24);
          eKObjectChangeSummarizer_multiValueDiffKeys = [v44 EKObjectChangeSummarizer_multiValueDiffKeys];
          v27 = [eKObjectChangeSummarizer_multiValueDiffKeys objectForKeyedSubscript:v25];

          v50 = 0u;
          v51 = 0u;
          v48 = 0u;
          v49 = 0u;
          v28 = [&unk_1F1B6B1E8 countByEnumeratingWithState:&v48 objects:v60 count:16];
          if (v28)
          {
            v29 = v28;
            v30 = *v49;
            do
            {
              for (j = 0; j != v29; ++j)
              {
                if (*v49 != v30)
                {
                  objc_enumerationMutation(&unk_1F1B6B1E8);
                }

                v32 = *(*(&v48 + 1) + 8 * j);
                v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@.%@", v25, v32];
                v34 = [summaryDictionary objectForKey:v33];

                if (v34)
                {
                  v35 = [v27 objectForKeyedSubscript:v32];
                  if (v35)
                  {
                    v36 = [summaryDictionary objectForKeyedSubscript:v33];
                    [v47 setObject:v36 forKeyedSubscript:v35];
                  }
                }
              }

              v29 = [&unk_1F1B6B1E8 countByEnumeratingWithState:&v48 objects:v60 count:16];
            }

            while (v29);
          }

          v24 = v46 + 1;
        }

        while (v46 + 1 != v45);
        v45 = [obj countByEnumeratingWithState:&v52 objects:v61 count:16];
      }

      while (v45);
    }

    v9 = v39;
  }

  v37 = *MEMORY[0x1E69E9840];

  return v47;
}

@end