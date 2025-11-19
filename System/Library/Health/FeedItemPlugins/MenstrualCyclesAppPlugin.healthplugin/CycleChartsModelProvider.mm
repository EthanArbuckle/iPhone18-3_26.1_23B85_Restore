@interface CycleChartsModelProvider
- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4;
- (void)significantTimeChangeDidOccur;
@end

@implementation CycleChartsModelProvider

- (void)significantTimeChangeDidOccur
{

  sub_29DF13808();
}

- (void)analysisProvider:(id)a3 didUpdateAnalysis:(id)a4
{
  v5 = a3;
  v6 = a4;

  sub_29DF14890(v6);
}

@end