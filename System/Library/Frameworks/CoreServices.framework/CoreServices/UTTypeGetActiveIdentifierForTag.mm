@interface UTTypeGetActiveIdentifierForTag
@end

@implementation UTTypeGetActiveIdentifierForTag

uint64_t ___UTTypeGetActiveIdentifierForTag_block_invoke(uint64_t result, uint64_t a2, int a3, uint64_t a4, _BYTE *a5)
{
  v8 = result;
  v9 = *(result + 56);
  if (!v9 || (result = _UTTypeConformsTo(*(result + 32), a3, v9), result))
  {
    if (*(a4 + 8))
    {
      v10 = *(v8 + 48);
      if (v10)
      {
        *v10 = a3;
      }

      *(*(*(v8 + 40) + 8) + 24) = a4;
      *a5 = 1;
    }
  }

  return result;
}

@end