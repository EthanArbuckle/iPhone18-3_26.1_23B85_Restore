@interface NSExtensionContextVendorClass
@end

@implementation NSExtensionContextVendorClass

uint64_t ___NSExtensionContextVendorClass_block_invoke()
{
  if (softLinkEXGetExtensionContextVendorClass)
  {
    result = softLinkEXGetExtensionContextVendorClass();
  }

  else
  {
    result = 0;
  }

  _MergedGlobals_105 = result;
  return result;
}

@end