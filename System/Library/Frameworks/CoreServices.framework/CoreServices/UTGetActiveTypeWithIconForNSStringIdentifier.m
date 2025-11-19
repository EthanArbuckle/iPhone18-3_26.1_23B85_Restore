@interface UTGetActiveTypeWithIconForNSStringIdentifier
@end

@implementation UTGetActiveTypeWithIconForNSStringIdentifier

void ___UTGetActiveTypeWithIconForNSStringIdentifier_block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = a2;
  *(*(*(a1 + 40) + 8) + 24) = _UTGetActiveTypeForCFStringIdentifier(*(a1 + 32), v6, (*(*(a1 + 48) + 8) + 24));
  v5 = *(*(*(a1 + 40) + 8) + 24);
  if (v5)
  {
    if (*(v5 + 28) || (*(*(*(a1 + 40) + 8) + 24) = _UTTypeSearchConformsToTypesCommon(*(a1 + 32), *(*(*(a1 + 48) + 8) + 24), 32, typeHasIconFile, 0, (*(*(a1 + 48) + 8) + 24)), (v5 = *(*(*(a1 + 40) + 8) + 24)) != 0))
    {
      if (*(v5 + 28))
      {
        *a3 = 1;
      }
    }
  }
}

@end