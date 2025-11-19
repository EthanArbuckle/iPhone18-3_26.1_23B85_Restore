@interface AMLFeaturesDecoder
+ (id)dataMetricsForFeatureProvider:(id)a3;
+ (id)dictionariesFromBatchProvider:(id)a3;
+ (id)logger;
+ (id)modelArrayForArrayProvider:(id)a3;
+ (id)modelContentForBatchProvider:(id)a3;
+ (id)modelDataFrom:(id)a3;
@end

@implementation AMLFeaturesDecoder

+ (id)logger
{
  if (qword_27CD3DFA0 != -1)
  {
    sub_21AF09178();
  }

  v3 = qword_27CD3DFA8;

  return v3;
}

+ (id)modelDataFrom:(id)a3
{
  v3 = MEMORY[0x277CBEB98];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = [v3 setWithObjects:{v5, v6, v7, v8, objc_opt_class(), 0}];
  v14 = 0;
  v10 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClasses:v9 fromData:v4 error:&v14];

  v11 = v14;
  if (v11)
  {
    v12 = +[AMLFeaturesDecoder logger];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_21AF0918C(v11, v12);
    }
  }

  return v10;
}

+ (id)modelArrayForArrayProvider:(id)a3
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v27 = objc_opt_new();
  v23 = v3;
  v4 = [v3 array];
  v5 = [v4 objectAtIndexedSubscript:0];
  v6 = [v5 featureNames];
  v26 = [v6 allObjects];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v4;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
  if (v28)
  {
    v25 = *v35;
    do
    {
      v7 = 0;
      do
      {
        if (*v35 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v7;
        v8 = *(*(&v34 + 1) + 8 * v7);
        v9 = objc_opt_new();
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v10 = v26;
        v11 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v31;
          do
          {
            v14 = 0;
            do
            {
              if (*v31 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v30 + 1) + 8 * v14);
              v16 = [v8 featureValueForName:v15];
              if ([v16 type] == 1)
              {
                v17 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v16, "int64Value")}];
LABEL_17:
                v19 = v17;
                [v9 setObject:v17 forKeyedSubscript:v15];

                goto LABEL_18;
              }

              if ([v16 type] == 2)
              {
                v18 = MEMORY[0x277CCABB0];
                [v16 doubleValue];
                v17 = [v18 numberWithDouble:?];
                goto LABEL_17;
              }

              if ([v16 type] == 3)
              {
                v17 = [v16 stringValue];
                goto LABEL_17;
              }

              [v9 setObject:0 forKeyedSubscript:v15];
LABEL_18:

              ++v14;
            }

            while (v12 != v14);
            v20 = [v10 countByEnumeratingWithState:&v30 objects:v38 count:16];
            v12 = v20;
          }

          while (v20);
        }

        [v27 addObject:v9];
        v7 = v29 + 1;
      }

      while (v29 + 1 != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
    }

    while (v28);
  }

  v21 = *MEMORY[0x277D85DE8];

  return v27;
}

+ (id)dataMetricsForFeatureProvider:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)dictionariesFromBatchProvider:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v16 = objc_opt_new();
  if ([v3 count])
  {
    v4 = 0;
    do
    {
      v5 = [MEMORY[0x277CBEB38] dictionary];
      v6 = [v3 featuresAtIndex:v4];
      v7 = [v6 featureNames];
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v18;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v18 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v17 + 1) + 8 * i);
            v13 = [v6 featureValueForName:v12];
            [v5 setObject:v13 forKeyedSubscript:v12];
          }

          v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v9);
      }

      [v16 addObject:v5];

      ++v4;
    }

    while (v4 < [v3 count]);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v16;
}

+ (id)modelContentForBatchProvider:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 dictionariesFromBatchProvider:v4];
  }

  else
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  return v5;
}

@end