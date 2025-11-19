@interface BKSWorkspace
+ (id)sharedInstance;
- (BKSWorkspace)init;
@end

@implementation BKSWorkspace

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[BKSWorkspace sharedInstance];
  }

  v3 = sharedInstance_shared;

  return v3;
}

uint64_t __30__BKSWorkspace_sharedInstance__block_invoke()
{
  sharedInstance_shared = objc_alloc_init(BKSWorkspace);

  return MEMORY[0x2821F96F8]();
}

- (BKSWorkspace)init
{
  v5.receiver = self;
  v5.super_class = BKSWorkspace;
  v2 = [(BKSWorkspace *)&v5 init];
  if (v2)
  {
    v3 = RBSServiceInitialize();
  }

  return v2;
}

@end