@interface NSExtensionContextInternalClass
@end

@implementation NSExtensionContextInternalClass

uint64_t ___NSExtensionContextInternalClass_block_invoke()
{
  if (softLinkEXGetExtensionContextInternalClass)
  {
    result = softLinkEXGetExtensionContextInternalClass();
  }

  else
  {
    result = 0;
  }

  qword_1ED43F760 = result;
  return result;
}

@end