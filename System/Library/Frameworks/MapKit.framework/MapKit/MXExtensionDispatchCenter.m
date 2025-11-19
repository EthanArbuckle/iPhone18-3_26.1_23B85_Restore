@interface MXExtensionDispatchCenter
@end

@implementation MXExtensionDispatchCenter

void __59___MXExtensionDispatchCenter_removeExtensionUpdateHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = MEMORY[0x1A58E9F30](*(a1 + 40));
  [v1 removeObject:v2];
}

void __57___MXExtensionDispatchCenter_addExtensionsUpdateHandler___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 16);
  v2 = MEMORY[0x1A58E9F30](*(a1 + 40));
  [v1 addObject:v2];
}

void __55___MXExtensionDispatchCenter_dispatchExtensions_error___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

@end