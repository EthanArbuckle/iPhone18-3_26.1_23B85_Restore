@interface LSIsDictionaryWithKeysAndValuesOfClasses
@end

@implementation LSIsDictionaryWithKeysAndValuesOfClasses

void ___LSIsDictionaryWithKeysAndValuesOfClasses_block_invoke(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v12 = a2;
  v7 = a3;
  v8 = a1[4];
  if (v8)
  {
    v9 = _LSIsKindOfClasses(v12, v8) ^ 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  if (v10)
  {
    v11 = _LSIsKindOfClasses(v7, v10) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if ((v9 | v11))
  {
    *(*(a1[6] + 8) + 24) = 0;
    *a4 = 1;
  }
}

@end