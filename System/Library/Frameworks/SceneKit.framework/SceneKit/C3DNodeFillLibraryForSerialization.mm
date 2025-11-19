@interface C3DNodeFillLibraryForSerialization
@end

@implementation C3DNodeFillLibraryForSerialization

void *___C3DNodeFillLibraryForSerialization_block_invoke(uint64_t a1, const void *a2)
{
  C3DLibraryAddEntry(*(a1 + 32), a2);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return C3DFillLibraryForSerialization(a2, v4, v5);
}

@end