@interface NSPointerArray
- (unint64_t)crl_indexOfPointer:(void *)a3;
- (void)crl_enumerateNonNullPointersUsingBlock:(id)a3;
@end

@implementation NSPointerArray

- (void)crl_enumerateNonNullPointersUsingBlock:(id)a3
{
  v4 = a3;
  v9 = 0;
  v5 = [(NSPointerArray *)self count];
  if (v5)
  {
    v6 = v5;
    v7 = 1;
    do
    {
      v8 = [(NSPointerArray *)self pointerAtIndex:v7 - 1];
      if (v8)
      {
        v4[2](v4, v8, v7 - 1, &v9);
      }

      if (v7 >= v6)
      {
        break;
      }

      ++v7;
    }

    while ((v9 & 1) == 0);
  }
}

- (unint64_t)crl_indexOfPointer:(void *)a3
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001CABBC;
  v5[3] = &unk_101846258;
  v5[4] = &v6;
  v5[5] = a3;
  [(NSPointerArray *)self crl_enumerateNonNullPointersUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end