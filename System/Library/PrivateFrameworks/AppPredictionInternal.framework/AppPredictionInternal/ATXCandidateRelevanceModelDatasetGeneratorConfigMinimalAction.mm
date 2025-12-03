@interface ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction
+ (id)candidatePublisherFromStartTime:(double)time;
+ (id)candidatePublisherFromStartTime:(double)time datastore:(id)datastore;
+ (id)candidatePublisherFromStartTime:(id)time endTime:(id)endTime datastore:(id)datastore;
+ (id)candidatePublisherWithStartTime:(id)time endTime:(id)endTime;
@end

@implementation ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction

+ (id)candidatePublisherFromStartTime:(double)time
{
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSinceReferenceDate];
  v6 = v5;

  v7 = objc_opt_class();
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v6];
  v10 = [v7 candidatePublisherWithStartTime:v8 endTime:v9];

  return v10;
}

+ (id)candidatePublisherWithStartTime:(id)time endTime:(id)endTime
{
  endTimeCopy = endTime;
  timeCopy = time;
  v7 = objc_opt_class();
  v8 = +[_ATXDataStore sharedInstance];
  v9 = [v7 candidatePublisherFromStartTime:timeCopy endTime:endTimeCopy datastore:v8];

  return v9;
}

+ (id)candidatePublisherFromStartTime:(double)time datastore:(id)datastore
{
  v5 = MEMORY[0x277CBEAA8];
  datastoreCopy = datastore;
  date = [v5 date];
  [date timeIntervalSinceReferenceDate];
  v9 = v8;

  v10 = objc_opt_class();
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:time];
  v12 = [MEMORY[0x277CCABB0] numberWithDouble:v9];
  v13 = [v10 candidatePublisherFromStartTime:v11 endTime:v12 datastore:datastoreCopy];

  return v13;
}

+ (id)candidatePublisherFromStartTime:(id)time endTime:(id)endTime datastore:(id)datastore
{
  timeCopy = time;
  endTimeCopy = endTime;
  datastoreCopy = datastore;
  v10 = objc_opt_new();
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke;
  v20 = &unk_2785978C0;
  v21 = datastoreCopy;
  v22 = timeCopy;
  v23 = endTimeCopy;
  v24 = v10;
  v11 = v10;
  v12 = endTimeCopy;
  v13 = timeCopy;
  v14 = datastoreCopy;
  [v14 _doSync:&v17];
  bpsPublisher = [v11 bpsPublisher];

  return bpsPublisher;
}

void __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke(id *a1)
{
  v2 = [a1[4] db];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_2;
  v5[3] = &unk_278598718;
  v6 = a1[5];
  v7 = a1[6];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_3;
  v3[3] = &unk_278599FC8;
  v4 = a1[7];
  [v2 prepAndRunQuery:@"SELECT alogBundleId.bundleId onPrep:alogAction.actionType onRow:slotSetKey.paramHash onError:{alog.date FROM alog, slotSetKey, alogBundleId, alogAction WHERE alog.id=slotSetKey.alogId AND alog.bundleId=alogBundleId.id AND alog.actionType=alogAction.id AND alog.date >= ? AND alog.date <= ? ORDER BY alog.date ASC", v5, v3, &__block_literal_global_105_0}];
}

void __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 bindParam:1 toInt64:{objc_msgSend(v3, "integerValue")}];
  [v4 bindParam:2 toInt64:{objc_msgSend(*(a1 + 40), "integerValue")}];
}

uint64_t __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 getNSStringForColumn:0];
  v5 = [v3 getNSStringForColumn:1];
  v6 = -[ATXMinimalAction initWithBundleId:actionType:paramHash:]([ATXMinimalAction alloc], "initWithBundleId:actionType:paramHash:", v4, v5, [v3 getInt64ForColumn:2]);
  v7 = [[ATXCandidateMinimalAction alloc] initWithBiomeStoreData:v6];
  v8 = [v3 getInt64ForColumn:3];

  v9 = [objc_alloc(MEMORY[0x277CEBC00]) initWithEventBody:v7 timestamp:v8];
  [*(a1 + 32) addObject:v9];
  v10 = MEMORY[0x277D42690];

  return *v10;
}

uint64_t __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = __atxlog_handle_relevance_model();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_4_cold_1(v2, v3);
  }

  v4 = MEMORY[0x277D42698];
  return *v4;
}

void __115__ATXCandidateRelevanceModelDatasetGeneratorConfigMinimalAction_candidatePublisherFromStartTime_endTime_datastore___block_invoke_4_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_2263AA000, a2, OS_LOG_TYPE_FAULT, "Unable to produce minimalActionCandidateEvents from alog. Error: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end