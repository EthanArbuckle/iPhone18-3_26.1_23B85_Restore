@interface _LAMKBLog
+ (id)log;
@end

@implementation _LAMKBLog

+ (id)log
{
  if (log_onceToken != -1)
  {
    +[_LAMKBLog log];
  }

  v3 = log_log;

  return v3;
}

@end