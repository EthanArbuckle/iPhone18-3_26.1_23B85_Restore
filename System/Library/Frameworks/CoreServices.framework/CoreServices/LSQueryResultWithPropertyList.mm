@interface LSQueryResultWithPropertyList
@end

@implementation LSQueryResultWithPropertyList

void __70___LSQueryResultWithPropertyList_propertyListWithClass_valuesOfClass___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v11 = a2;
  v7 = a3;
  if (!_NSIsNSString() || (v8 = *(a1 + 40), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = 0;

    *a4 = 1;
  }
}

@end