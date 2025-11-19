@interface PickableRoutesDidChangeNotification
@end

@implementation PickableRoutesDidChangeNotification

uint64_t __playerceleste_PickableRoutesDidChangeNotification_block_invoke(uint64_t result)
{
  if (*(result + 32))
  {
    CMNotificationCenterGetDefaultLocalCenter();

    return FigDispatchAsyncPostNotification();
  }

  return result;
}

@end