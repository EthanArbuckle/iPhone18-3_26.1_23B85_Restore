@interface MPVoicemailQueueManager
+ (OS_dispatch_queue_serial)serialQueue;
@end

@implementation MPVoicemailQueueManager

+ (OS_dispatch_queue_serial)serialQueue
{
  v2 = sub_1001C9564();

  return v2;
}

@end