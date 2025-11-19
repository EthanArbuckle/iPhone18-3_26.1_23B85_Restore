@interface LSEnumerateTypesInBindingList
@end

@implementation LSEnumerateTypesInBindingList

void ___LSEnumerateTypesInBindingList_block_invoke(void *a1)
{
  v2 = a1[6];
  *(*(a1[5] + 8) + 24) = 1;
  [(_LSDatabase *)*v2 store];
  v3 = _CSStringCopyCFString();
  if (v3)
  {
    (*(a1[4] + 16))();
  }
}

@end