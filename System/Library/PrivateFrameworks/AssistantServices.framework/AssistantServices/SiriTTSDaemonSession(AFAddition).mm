@interface SiriTTSDaemonSession(AFAddition)
+ (id)afSharedSession;
@end

@implementation SiriTTSDaemonSession(AFAddition)

+ (id)afSharedSession
{
  if (afSharedSession_onceToken != -1)
  {
    dispatch_once(&afSharedSession_onceToken, &__block_literal_global_5702);
  }

  v1 = afSharedSession_session;

  return v1;
}

@end