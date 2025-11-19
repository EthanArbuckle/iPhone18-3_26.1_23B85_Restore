@interface LSDatabaseGetStringArrayWithNullValues
@end

@implementation LSDatabaseGetStringArrayWithNullValues

void ___LSDatabaseGetStringArrayWithNullValues_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = v2[5];
  }

  v5 = _CSStringCopyCFString();
  [*(a1 + 32) addPointer:?];
  if (!v5)
  {
    v4 = *(a1 + 48);
    if (v4)
    {
      *v4 = 1;
    }
  }
}

@end