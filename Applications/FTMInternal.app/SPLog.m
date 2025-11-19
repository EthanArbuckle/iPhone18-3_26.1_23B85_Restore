@interface SPLog
+ (BOOL)bootstrap;
@end

@implementation SPLog

+ (BOOL)bootstrap
{
  if (qword_10037A548 != -1)
  {
    sub_100285C5C();
  }

  return 1;
}

@end