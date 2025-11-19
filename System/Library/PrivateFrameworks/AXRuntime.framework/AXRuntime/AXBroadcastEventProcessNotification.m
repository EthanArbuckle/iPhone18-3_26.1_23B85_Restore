@interface AXBroadcastEventProcessNotification
@end

@implementation AXBroadcastEventProcessNotification

void ___AXBroadcastEventProcessNotification_block_invoke_2(uint64_t a1)
{
  AXBroadcastNotificationToAllClients(*(a1 + 48), *(a1 + 32), *(a1 + 40));
  v2 = *(a1 + 40);
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = *(a1 + 32);
  if (v3)
  {

    CFRelease(v3);
  }
}

void ___AXBroadcastEventProcessNotification_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
  v0 = dispatch_queue_create("rebroadcast-ax-notify", v2);
  v1 = _AXBroadcastEventProcessNotification_replayQueue;
  _AXBroadcastEventProcessNotification_replayQueue = v0;
}

@end