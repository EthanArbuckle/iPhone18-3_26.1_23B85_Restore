@interface SiriTTSDaemonSession
+ (id)afSharedSession;
@end

@implementation SiriTTSDaemonSession

+ (id)afSharedSession
{
  if (qword_100590438 != -1)
  {
    dispatch_once(&qword_100590438, &stru_100514818);
  }

  v3 = qword_100590430;

  return v3;
}

@end