@interface PDPrivateUserNotificationManager
+ (id)notificationCenter;
@end

@implementation PDPrivateUserNotificationManager

+ (id)notificationCenter
{
  if (qword_10024D8D8 != -1)
  {
    dispatch_once(&qword_10024D8D8, &stru_100202EE8);
  }

  v3 = qword_10024D8D0;

  return v3;
}

@end