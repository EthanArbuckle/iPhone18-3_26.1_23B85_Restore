@interface UTTypeGetPedigreeInternal
@end

@implementation UTTypeGetPedigreeInternal

void ___UTTypeGetPedigreeInternal_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 12);
  [(_LSDatabase *)**(a1 + 40) store];
  v5 = _CSStringCopyCFString();
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
  }
}

@end