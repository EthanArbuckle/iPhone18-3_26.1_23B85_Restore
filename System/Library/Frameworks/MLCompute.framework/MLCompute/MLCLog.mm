@interface MLCLog
+ (id)execution;
+ (id)framework;
+ (id)test;
@end

@implementation MLCLog

+ (id)framework
{
  if (framework_onceToken != -1)
  {
    +[MLCLog framework];
  }

  v3 = framework__framework;

  return v3;
}

uint64_t __19__MLCLog_framework__block_invoke()
{
  framework__framework = os_log_create("com.apple.mlcompute", "framework");

  return MEMORY[0x2821F96F8]();
}

+ (id)execution
{
  if (execution_onceToken != -1)
  {
    +[MLCLog execution];
  }

  v3 = execution__execution;

  return v3;
}

uint64_t __19__MLCLog_execution__block_invoke()
{
  execution__execution = os_log_create("com.apple.mlcompute", "PointsOfInterest");

  return MEMORY[0x2821F96F8]();
}

+ (id)test
{
  if (test_onceToken != -1)
  {
    +[MLCLog test];
  }

  v3 = test__test;

  return v3;
}

uint64_t __14__MLCLog_test__block_invoke()
{
  test__test = os_log_create("com.apple.mlcompute", "test");

  return MEMORY[0x2821F96F8]();
}

@end