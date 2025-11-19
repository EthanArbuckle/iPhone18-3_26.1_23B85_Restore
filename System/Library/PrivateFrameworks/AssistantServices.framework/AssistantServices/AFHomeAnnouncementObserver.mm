@interface AFHomeAnnouncementObserver
+ (id)sharedObserver;
@end

@implementation AFHomeAnnouncementObserver

+ (id)sharedObserver
{
  if (qword_1005907B8 != -1)
  {
    dispatch_once(&qword_1005907B8, &stru_100519630);
  }

  v3 = qword_1005907C0;

  return v3;
}

@end