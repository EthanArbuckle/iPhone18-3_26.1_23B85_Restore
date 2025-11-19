@interface ARSharedGPUDevice
+ (id)sharedInstance;
@end

@implementation ARSharedGPUDevice

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[ARSharedGPUDevice sharedInstance];
  }

  v3 = sharedInstance_sharedInstance;

  return v3;
}

void __35__ARSharedGPUDevice_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(ARSharedGPUDevice);
  v1 = sharedInstance_sharedInstance;
  sharedInstance_sharedInstance = v0;

  v2 = MTLCreateSystemDefaultDevice();
  [sharedInstance_sharedInstance setDevice:v2];
}

@end