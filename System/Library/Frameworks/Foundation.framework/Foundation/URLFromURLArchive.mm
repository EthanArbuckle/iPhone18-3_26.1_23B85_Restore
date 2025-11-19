@interface URLFromURLArchive
@end

@implementation URLFromURLArchive

NSError *___URLFromURLArchive_block_invoke(NSError *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a2)
  {
    v8 = result;
    if (result[1].super.isa)
    {
      result = _NSIPCocoaErrorWithCode(4864, a3, 0, @"The URL archive of type “%@” contains invalid data.", a5, a6, a7, a8, result->_userInfo);
      *v8[1].super.isa = result;
    }
  }

  return result;
}

@end