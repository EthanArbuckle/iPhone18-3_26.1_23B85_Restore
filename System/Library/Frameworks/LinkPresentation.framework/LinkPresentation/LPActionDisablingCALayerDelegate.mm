@interface LPActionDisablingCALayerDelegate
+ (id)shared;
- (id)actionForLayer:(id)layer forKey:(id)key;
@end

@implementation LPActionDisablingCALayerDelegate

+ (id)shared
{
  if (shared_onceToken != -1)
  {
    +[LPActionDisablingCALayerDelegate shared];
  }

  v3 = shared_delegate;

  return v3;
}

void __42__LPActionDisablingCALayerDelegate_shared__block_invoke()
{
  v0 = objc_alloc_init(LPActionDisablingCALayerDelegate);
  v1 = shared_delegate;
  shared_delegate = v0;
}

- (id)actionForLayer:(id)layer forKey:(id)key
{
  null = [MEMORY[0x1E695DFB0] null];

  return null;
}

@end