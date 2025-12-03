@interface CycleStatisticsDataSource
- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis;
@end

@implementation CycleStatisticsDataSource

- (void)analysisProvider:(id)provider didUpdateAnalysis:(id)analysis
{
  v5 = *&self->analysis[7];
  *&self->analysis[7] = analysis;
  analysisCopy = analysis;

  if (self->sectionStyle[0])
  {
    sub_29E2AB8D0(analysisCopy);
  }

  else
  {
    sub_29E2AB468(analysisCopy);
  }
}

@end