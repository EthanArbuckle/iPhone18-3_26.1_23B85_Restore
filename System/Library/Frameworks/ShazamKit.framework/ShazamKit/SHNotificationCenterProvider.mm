@interface SHNotificationCenterProvider
+ (id)matchResultNotificationCenter;
@end

@implementation SHNotificationCenterProvider

+ (id)matchResultNotificationCenter
{
  if (qword_100098258 != -1)
  {
    sub_1000097F0();
  }

  v3 = qword_100098250;

  return v3;
}

@end