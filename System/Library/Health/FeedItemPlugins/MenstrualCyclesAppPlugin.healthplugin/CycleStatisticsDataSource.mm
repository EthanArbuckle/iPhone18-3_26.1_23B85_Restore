@interface CycleStatisticsDataSource
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
@end

@implementation CycleStatisticsDataSource

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v5 = *&self->analysis[7];
  *&self->analysis[7] = a4;
  v6 = a4;

  if (self->sectionStyle[0])
  {
    sub_29E2AB8D0(v6);
  }

  else
  {
    sub_29E2AB468(v6);
  }
}

@end