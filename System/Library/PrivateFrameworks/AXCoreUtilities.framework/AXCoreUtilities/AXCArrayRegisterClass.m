@interface AXCArrayRegisterClass
@end

@implementation AXCArrayRegisterClass

uint64_t ___AXCArrayRegisterClass_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  _AXCArrayTypeID = result;
  return result;
}

@end