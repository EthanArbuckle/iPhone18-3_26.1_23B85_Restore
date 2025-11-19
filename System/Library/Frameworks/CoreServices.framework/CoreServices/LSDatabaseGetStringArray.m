@interface LSDatabaseGetStringArray
@end

@implementation LSDatabaseGetStringArray

void ___LSDatabaseGetStringArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = v2[5];
  }

  v4 = _CSStringCopyCFString();
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }
}

@end