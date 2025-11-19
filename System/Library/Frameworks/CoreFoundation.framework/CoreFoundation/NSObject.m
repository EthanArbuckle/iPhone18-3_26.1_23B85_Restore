@interface NSObject
@end

@implementation NSObject

uint64_t __26__NSObject_NSObject__load__block_invoke()
{
  result = dyld_program_sdk_at_least();
  if (result)
  {
    objc_lookUpClass("NSIndirectTaggedPointerString");

    return _objc_registerTaggedPointerClass();
  }

  return result;
}

@end