@interface VMSignpostInterval
+ (VMSignpostInterval)audioPlayback;
@end

@implementation VMSignpostInterval

+ (VMSignpostInterval)audioPlayback
{
  if (qword_1002D7138 != -1)
  {
    sub_1001BAD68();
  }

  v3 = qword_1002D7130;

  return v3;
}

@end