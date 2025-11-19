@interface GCDevicePhysicalInputComponent
@end

@implementation GCDevicePhysicalInputComponent

void __65___GCDevicePhysicalInputComponent_PubSub__setGamepadEventSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleGamepadEvent:v3];
}

void __68___GCDevicePhysicalInputComponent_PubSub__setCollectionEventSource___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained handleCollectionEvent:v3];
}

@end