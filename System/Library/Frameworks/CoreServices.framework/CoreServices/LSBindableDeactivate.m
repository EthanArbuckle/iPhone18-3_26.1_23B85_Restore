@interface LSBindableDeactivate
@end

@implementation LSBindableDeactivate

void ___LSBindableDeactivate_block_invoke(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 48))
  {
    v6 = *(a1 + 32);
    [(_LSDatabase *)v6 store];
    Generation = CSStoreGetGeneration();
    _LSBindableSetGeneration(v6, a3, Generation + 1);
  }

  if (*(a1 + 52) == a3)
  {
    *(*(*(a1 + 40) + 8) + 24) = a2;
  }
}

@end