@interface NSUserDefaults
+ (id)motionTrackingUserDefaults;
@end

@implementation NSUserDefaults

+ (id)motionTrackingUserDefaults
{
  if (qword_100054540 != -1)
  {
    sub_10000F9FC();
  }

  v3 = qword_100054538;

  return v3;
}

@end