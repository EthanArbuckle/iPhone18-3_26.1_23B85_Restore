@interface ATXCandidateRelevanceModelDatasetGeneratorConfigAction
+ (id)activityPublisherFromStartTime:(double)a3;
+ (id)candidatePublisherFromStartTime:(double)a3;
+ (id)intentPublisherFromStartTime:(double)a3;
@end

@implementation ATXCandidateRelevanceModelDatasetGeneratorConfigAction

+ (id)activityPublisherFromStartTime:(double)a3
{
  v4 = BiomeLibrary();
  v5 = [v4 UniversalRecents];
  v6 = [v5 UserActivity];
  v7 = [v6 Metadata];
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v9 = [v7 atx_publisherFromStartTime:v8];

  return v9;
}

+ (id)intentPublisherFromStartTime:(double)a3
{
  v4 = BiomeLibrary();
  v5 = [v4 App];
  v6 = [v5 Intent];
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
  v8 = [v6 atx_publisherFromStartTime:v7];

  return v8;
}

+ (id)candidatePublisherFromStartTime:(double)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_class() activityPublisherFromStartTime:a3];
  v5 = [v4 flatMapWithTransform:&__block_literal_global_76_1];
  v6 = [objc_opt_class() intentPublisherFromStartTime:a3];
  v7 = [v6 flatMapWithTransform:&__block_literal_global_83_1];
  v12[0] = v5;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v9 = [v7 orderedMergeWithOthers:v8 comparator:&__block_literal_global_88];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

id __90__ATXCandidateRelevanceModelDatasetGeneratorConfigAction_candidatePublisherFromStartTime___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 eventBody];
  v5 = objc_alloc(MEMORY[0x277CC1EF0]);
  v6 = [v4 userActivityData];
  v7 = [v5 _initWithUserActivityData:v6];

  if ([v7 isEligibleForPrediction] && (objc_msgSend(v7, "activityType"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "length"), v8, v9))
  {
    v10 = objc_alloc(MEMORY[0x277CEB2C8]);
    v11 = objc_alloc(MEMORY[0x277CCAD78]);
    v12 = [v4 uuid];
    v13 = [v11 initWithUUIDString:v12];
    v14 = [v4 associatedBundleID];
    LOBYTE(v21) = 0;
    v15 = [v10 initWithNSUserActivity:v7 actionUUID:v13 bundleId:v14 contentAttributeSet:0 itemIdentifier:0 heuristic:0 heuristicMetadata:0 criteria:0 isFutureMedia:v21 title:0 subtitle:0];

    if (v15 && ([v15 hasActionTitle] & 1) != 0)
    {
      v16 = [[ATXCandidateAction alloc] initWithBiomeStoreData:v15];
      v17 = objc_alloc(MEMORY[0x277CEBC00]);
      [v2 timestamp];
      v18 = [v17 initWithEventBody:v16 timestamp:?];
      [v3 addObject:v18];
      v19 = [v3 bpsPublisher];
    }

    else
    {
      v19 = [v3 bpsPublisher];
    }
  }

  else
  {
    v19 = [v3 bpsPublisher];
  }

  return v19;
}

id __90__ATXCandidateRelevanceModelDatasetGeneratorConfigAction_candidatePublisherFromStartTime___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = objc_opt_new();
  v4 = [v2 eventBody];
  v5 = [v4 atxAction];

  if (v5 && ([v5 hasActionTitle] & 1) != 0)
  {
    [_ATXActionUtils slotSetsForAction:v5];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = v22 = 0u;
    v6 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = [*(*(&v19 + 1) + 8 * i) parameters];
          v11 = [v5 copyWithParameterWhitelist:v10];

          v12 = [[ATXCandidateAction alloc] initWithBiomeStoreData:v11];
          v13 = objc_alloc(MEMORY[0x277CEBC00]);
          [v2 timestamp];
          v14 = [v13 initWithEventBody:v12 timestamp:?];
          [v3 addObject:v14];
        }

        v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v15 = [v3 bpsPublisher];
  }

  else
  {
    v15 = [v3 bpsPublisher];
  }

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __90__ATXCandidateRelevanceModelDatasetGeneratorConfigAction_candidatePublisherFromStartTime___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  [a2 timestamp];
  v6 = [v4 numberWithDouble:?];
  v7 = MEMORY[0x277CCABB0];
  [v5 timestamp];
  v9 = v8;

  v10 = [v7 numberWithDouble:v9];
  v11 = [v6 compare:v10];

  return v11;
}

@end