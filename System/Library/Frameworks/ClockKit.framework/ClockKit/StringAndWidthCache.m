@interface StringAndWidthCache
@end

@implementation StringAndWidthCache

void __60___StringAndWidthCache_attributedStringAndSize_forMaxWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  [a2 CGSizeValue];
  v9 = v8;
  if (v8 <= *(a1 + 48))
  {
    v10 = v7;
    v11 = [*(*(a1 + 32) + 8) objectAtIndex:a3];
    v12 = *(*(a1 + 40) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = *(a1 + 56);
    if (v14)
    {
      *v14 = v9;
      *(v14 + 1) = v10;
    }

    *a4 = 1;
  }
}

uint64_t __56___StringAndWidthCache_smallestAttributedStringAndSize___block_invoke(void *a1, void *a2, uint64_t a3)
{
  result = [a2 CGSizeValue];
  v8 = *(a1[5] + 8);
  if (v6 <= *(v8 + 32))
  {
    *(v8 + 32) = v6;
    *(v8 + 40) = v7;
    v9 = [*(a1[4] + 8) objectAtIndexedSubscript:a3];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    return MEMORY[0x2821F96F8](v9, v11);
  }

  return result;
}

@end