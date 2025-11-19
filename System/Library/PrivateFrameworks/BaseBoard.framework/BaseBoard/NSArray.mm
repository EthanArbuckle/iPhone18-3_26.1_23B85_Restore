@interface NSArray
@end

@implementation NSArray

uint64_t __60__NSArray_BaseBoard__bs_enumerateObjectsOfClass_usingBlock___block_invoke(uint64_t a1)
{
  result = objc_opt_isKindOfClass();
  if (result)
  {
    v3 = *(*(a1 + 32) + 16);

    return v3();
  }

  return result;
}

@end