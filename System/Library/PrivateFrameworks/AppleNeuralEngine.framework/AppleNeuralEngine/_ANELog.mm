@interface _ANELog
+ (id)common;
+ (id)compiler;
+ (id)daemon;
+ (id)framework;
+ (id)maintenance;
+ (id)tests;
+ (id)tool;
@end

@implementation _ANELog

+ (id)daemon
{
  if (daemon_onceToken != -1)
  {
    +[_ANELog daemon];
  }

  v3 = daemon__daemon;

  return v3;
}

+ (id)framework
{
  if (framework_onceToken != -1)
  {
    +[_ANELog framework];
  }

  v3 = framework__framework;

  return v3;
}

+ (id)common
{
  if (common_onceToken != -1)
  {
    +[_ANELog common];
  }

  v3 = common__common;

  return v3;
}

+ (id)compiler
{
  if (compiler_onceToken != -1)
  {
    +[_ANELog compiler];
  }

  v3 = compiler__compiler;

  return v3;
}

+ (id)maintenance
{
  if (maintenance_onceToken != -1)
  {
    +[_ANELog maintenance];
  }

  v3 = maintenance__maintenance;

  return v3;
}

+ (id)tool
{
  if (tool_onceToken != -1)
  {
    +[_ANELog tool];
  }

  v3 = tool__tool;

  return v3;
}

+ (id)tests
{
  if (tests_onceToken != -1)
  {
    +[_ANELog tests];
  }

  v3 = tests__tests;

  return v3;
}

@end