@interface NSMutableArray(NSMutableArray)
- (uint64_t)initWithContentsOfFile:()NSMutableArray;
- (uint64_t)initWithContentsOfURL:()NSMutableArray;
- (uint64_t)initWithContentsOfURL:()NSMutableArray error:;
- (void)removeObjectsFromIndices:()NSMutableArray numIndices:;
@end

@implementation NSMutableArray(NSMutableArray)

- (void)removeObjectsFromIndices:()NSMutableArray numIndices:
{
  if (*MEMORY[0x1E695E108])
  {
    (*MEMORY[0x1E695E108])(a1, v4, *MEMORY[0x1E695E0C8]);
  }

  if (a4 < 2)
  {
    if (a4)
    {
LABEL_9:
      v10 = (a3 - 1);
      do
      {
        [a1 removeObjectAtIndex:*&v10[8 * a4--]];
      }

      while (a4);
    }
  }

  else
  {
    v8 = 0;
    v9 = a4 - 1;
    while (a3[v8] <= a3[v8 + 1])
    {
      if (v9 == ++v8)
      {
        goto LABEL_9;
      }
    }

    v11 = malloc_type_malloc(8 * a4, 0x100004000313F17uLL);
    memmove(v11, a3, 8 * a4);
    qsort(v11, a4, 8uLL, int_sort);
    do
    {
      [a1 removeObjectAtIndex:*(v11 + v9--)];
    }

    while (v9 != -1);

    free(v11);
  }
}

- (uint64_t)initWithContentsOfFile:()NSMutableArray
{
  v4 = [MEMORY[0x1E695DEC8] newWithContentsOf:a3 immutable:0];

  return v4;
}

- (uint64_t)initWithContentsOfURL:()NSMutableArray
{
  v4 = [MEMORY[0x1E695DEC8] newWithContentsOf:a3 immutable:0];

  return v4;
}

- (uint64_t)initWithContentsOfURL:()NSMutableArray error:
{
  v5 = [MEMORY[0x1E695DEC8] newWithContentsOf:a3 immutable:0 error:a4];

  return v5;
}

@end