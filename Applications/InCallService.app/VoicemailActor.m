@interface VoicemailActor
+ (OS_dispatch_queue_serial)MPVoicemailSerialDispatchQueue;
@end

@implementation VoicemailActor

+ (OS_dispatch_queue_serial)MPVoicemailSerialDispatchQueue
{
  if (qword_1003AA080 != -1)
  {
    swift_once();
  }

  v3 = qword_1003B8A80;

  return v3;
}

@end