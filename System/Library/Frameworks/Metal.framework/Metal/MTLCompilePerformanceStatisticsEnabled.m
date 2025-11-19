@interface MTLCompilePerformanceStatisticsEnabled
@end

@implementation MTLCompilePerformanceStatisticsEnabled

void ___MTLCompilePerformanceStatisticsEnabled_block_invoke()
{
  getCompileStatsJSONPath();
  if (logCompileTimeStatsMode(void)::onceToken != -1)
  {
    logCompileTimeStatsMode();
  }
}

@end