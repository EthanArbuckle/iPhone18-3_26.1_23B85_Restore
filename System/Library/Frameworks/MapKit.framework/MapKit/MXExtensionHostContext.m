@interface MXExtensionHostContext
@end

@implementation MXExtensionHostContext

uint64_t __53___MXExtensionHostContext_openURL_completionHandler___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

@end