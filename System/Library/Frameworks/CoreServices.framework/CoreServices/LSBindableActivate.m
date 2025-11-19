@interface LSBindableActivate
@end

@implementation LSBindableActivate

void ___LSBindableActivate_block_invoke(uint64_t a1, int a2, int a3)
{
  if (*(a1 + 56))
  {
    v6 = *(a1 + 32);
    [(_LSDatabase *)v6 store];
    Generation = CSStoreGetGeneration();
    _LSBindableSetGeneration(v6, a3, Generation + 1);
  }

  v8 = *(*(a1 + 40) + 8);
  if (*(v8 + 24) == -1)
  {
    if (*(a1 + 60) == a3)
    {
LABEL_8:
      *(v8 + 24) = a2;
      return;
    }

    v9 = *(a1 + 48);
    if (v9 && v9(*(a1 + 32)) == 1)
    {
      v8 = *(*(a1 + 40) + 8);
      goto LABEL_8;
    }
  }
}

@end