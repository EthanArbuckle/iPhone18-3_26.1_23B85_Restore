@interface ATXCandidateRelevanceModelDatasetGeneratorConfigApp
+ (id)candidatePublisherFromStartTime:(double)time;
+ (id)candidatePublisherWithStartTime:(id)time endTime:(id)endTime;
@end

@implementation ATXCandidateRelevanceModelDatasetGeneratorConfigApp

+ (id)candidatePublisherFromStartTime:(double)time
{
  v4 = objc_opt_class();
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v6 = [v4 candidatePublisherWithStartTime:v5 endTime:0];

  return v6;
}

+ (id)candidatePublisherWithStartTime:(id)time endTime:(id)endTime
{
  v5 = MEMORY[0x277CBEB98];
  endTimeCopy = endTime;
  timeCopy = time;
  v8 = +[_ATXAppIconState sharedInstance];
  allInstalledAppsKnownToSpringBoard = [v8 allInstalledAppsKnownToSpringBoard];
  v10 = [v5 setWithArray:allInstalledAppsKnownToSpringBoard];

  v11 = BiomeLibrary();
  v12 = [v11 App];
  inFocus = [v12 InFocus];
  v14 = [inFocus atx_publisherWithStartTime:timeCopy endTime:endTimeCopy maxEvents:0 lastN:0 reversed:0];

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __95__ATXCandidateRelevanceModelDatasetGeneratorConfigApp_candidatePublisherWithStartTime_endTime___block_invoke;
  v19[3] = &unk_27859A798;
  v20 = v10;
  v15 = v10;
  v16 = [v14 filterWithIsIncluded:v19];
  v17 = [v16 mapWithTransform:&__block_literal_global_134];

  return v17;
}

uint64_t __95__ATXCandidateRelevanceModelDatasetGeneratorConfigApp_candidatePublisherWithStartTime_endTime___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 eventBody];
  v5 = [v4 bundleID];

  if (v5 && ([v5 isEqualToString:@"unknown"] & 1) == 0 && (objc_msgSend(v5, "hasPrefix:", @"com.apple.springboard.") & 1) == 0 && objc_msgSend(v5, "length") && (objc_msgSend(v3, "eventBody"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "starting"), v6, v7))
  {
    v8 = [*(a1 + 32) containsObject:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id __95__ATXCandidateRelevanceModelDatasetGeneratorConfigApp_candidatePublisherWithStartTime_endTime___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [ATXCandidateApp alloc];
  v4 = [v2 eventBody];
  v5 = [(ATXCandidate *)v3 initWithBiomeStoreData:v4];

  v6 = objc_alloc(MEMORY[0x277CEBC00]);
  [v2 timestamp];
  v8 = v7;

  v9 = [v6 initWithEventBody:v5 timestamp:v8];

  return v9;
}

@end