@interface AXRemoveNotificationObserver
@end

@implementation AXRemoveNotificationObserver

void ___AXRemoveNotificationObserver_block_invoke(uint64_t a1)
{
  v2 = CFDictionaryGetValue(ObserverDictionary, *(a1 + 40));
  if (v2)
  {
    v4 = v2;
    v3 = [objc_allocWithZone(AXObserverElementPair) initWithObserver:*(a1 + 32)];
    [v4 removeObject:v3];

    v2 = v4;
  }
}

@end