@interface ATXCandidateRelevanceModelDatasetGeneratorConfig
+ (id)candidatePublisher;
+ (id)candidatePublisherWithStartTime:(id)a3 endTime:(id)a4;
@end

@implementation ATXCandidateRelevanceModelDatasetGeneratorConfig

+ (id)candidatePublisher
{
  v2 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceNow:-2592000.0];
  v3 = objc_opt_class();
  [v2 timeIntervalSinceReferenceDate];
  v4 = [v3 candidatePublisherFromStartTime:?];

  return v4;
}

+ (id)candidatePublisherWithStartTime:(id)a3 endTime:(id)a4
{
  v5 = a3;
  result = a4;
  __break(1u);
  return result;
}

@end