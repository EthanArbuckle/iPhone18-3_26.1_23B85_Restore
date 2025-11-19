@interface NSArray
@end

@implementation NSArray

void __50__NSArray_AVTExtension__avt_mutableContainersCopy__block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_opt_respondsToSelector();
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v7 avt_mutableContainersCopy];

    v6 = v5;
  }

  else
  {
    v6 = v7;
  }

  v8 = v6;
  [v4 addObject:v6];
}

@end