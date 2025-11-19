@interface NSArray
@end

@implementation NSArray

id __79__NSArray_RecipientUtilities__mf_commaSeparatedRecipientListWithWidth_forFont___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 description];

  return v2;
}

id __90__NSArray_RecipientUtilities__mf_commaSeparatedRecipientListWithWidth_forFont_usingBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) objectAtIndex:a2];
  v4 = (*(v2 + 16))(v2, v3);

  return v4;
}

void __67__NSArray_RecipientUtilities__mf_indexOfRecipientWithEmailAddress___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  v7 = [v10 rangeOfString:*(a1 + 32) options:1];
  if (!v7 || v7 != 0x7FFFFFFFFFFFFFFFLL && ((v8 = [v10 characterAtIndex:v7 - 1], v8 <= 0x3C) ? (v9 = ((1 << v8) & 0x1000100500000200) == 0) : (v9 = 1), !v9))
  {
    *(*(*(a1 + 40) + 8) + 24) = a3;
  }

  if (*(*(*(a1 + 40) + 8) + 24) != 0x7FFFFFFFFFFFFFFFLL)
  {
    *a4 = 1;
  }
}

@end