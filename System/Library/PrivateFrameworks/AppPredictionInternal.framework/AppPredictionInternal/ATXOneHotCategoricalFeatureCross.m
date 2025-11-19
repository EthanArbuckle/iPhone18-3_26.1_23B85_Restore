@interface ATXOneHotCategoricalFeatureCross
- (ATXOneHotCategoricalFeatureCross)initWithFeatures:(id)a3;
- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4;
@end

@implementation ATXOneHotCategoricalFeatureCross

- (ATXOneHotCategoricalFeatureCross)initWithFeatures:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ATXOneHotCategoricalFeatureCross;
  v6 = [(ATXCandidateRelevanceModelMultiHotCategoricalFeaturizer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_features, a3);
  }

  return v7;
}

- (id)categoricalFeatureValueForContext:(id)a3 candidate:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v9 = self->_features;
  v10 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) categoricalFeatureValueForContext:v6 candidate:{v7, v18}];
        [v8 addObject:v14];
      }

      v11 = [(NSArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [v8 componentsJoinedByString:@"_"];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

@end