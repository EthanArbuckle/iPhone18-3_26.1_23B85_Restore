@interface SpringFactory
+ (id)sharedFactory;
@end

@implementation SpringFactory

+ (id)sharedFactory
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __30__SpringFactory_sharedFactory__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedFactory_onceToken != -1)
  {
    dispatch_once(&sharedFactory_onceToken, block);
  }

  v2 = sharedFactory___sharedFactory;

  return v2;
}

void __30__SpringFactory_sharedFactory__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedFactory___sharedFactory;
  sharedFactory___sharedFactory = v1;
}

@end