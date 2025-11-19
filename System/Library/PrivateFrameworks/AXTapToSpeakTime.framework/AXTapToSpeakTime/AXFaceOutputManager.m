@interface AXFaceOutputManager
+ (id)sharedInstance;
- (void)dealloc;
@end

@implementation AXFaceOutputManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[AXFaceOutputManager sharedInstance];
  }

  v3 = sharedInstance__Shared_0;

  return v3;
}

uint64_t __37__AXFaceOutputManager_sharedInstance__block_invoke()
{
  sharedInstance__Shared_0 = objc_alloc_init(AXFaceOutputManager);

  return MEMORY[0x2821F96F8]();
}

- (void)dealloc
{
  [(AXFaceOutputManager *)self tearDownDrumMachine];
  v3.receiver = self;
  v3.super_class = AXFaceOutputManager;
  [(AXFaceOutputManager *)&v3 dealloc];
}

@end