@interface NSOrderedChangesCopy
@end

@implementation NSOrderedChangesCopy

id ___NSOrderedChangesCopy_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = *(a1 + 32);
  if (a2 == 5 && a3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void __NSOrderedChangeListAppend(NSOrderedChanges * stringWithUTF8String:NSUInteger, NSUInteger, id)"], @"NSOrderedChanges.m", 187, @"move sources not found"];
  }

  v10 = v9[3];
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = v9[2];
    goto LABEL_16;
  }

  v11 = v9[4];
  if (v11)
  {
    v12 = malloc_good_size(40 * v11 + 40) / 0x28;
    if (v12 <= v9[4])
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSOrderedChanges.m", 154, @"capacity should be larger than previously requested"];
    }
  }

  else
  {
    v12 = 32;
  }

  v14 = v9[2];
  if (!v14)
  {
    v13 = malloc_type_malloc(40 * v12, 0x1080040A84C04D1uLL);
    if (v13)
    {
      goto LABEL_12;
    }

LABEL_22:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"Unable to allocate underlying buffer for change list" userInfo:0]);
  }

  v13 = MEMORY[0x1865CFE30](v14, 40 * v12, 0x1080040A84C04D1, 0);
  if (!v13)
  {
    goto LABEL_22;
  }

LABEL_12:
  v15 = v9[4];
  if (v15 < v12)
  {
    v16 = &v13[40 * v15 + 32];
    v17 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      *(v16 - 1) = 0;
      *v16 = v17;
      v17 = v15++;
      v16 += 5;
    }

    while (v12 != v15);
  }

  v10 = v12 - 1;
  v9[2] = v13;
  v9[3] = v12 - 1;
  v9[4] = v12;
LABEL_16:
  v18 = &v13[40 * v10];
  *(v18 + 1) = a3;
  *(v18 + 2) = a4;
  result = a5;
  *v18 = a2;
  *(v18 + 3) = result;
  *(v18 + 4) = 0x7FFFFFFFFFFFFFFFLL;
  v9[3] = 0x7FFFFFFFFFFFFFFFLL;
  if (v9[5] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9[5] = v10;
  }

  v20 = v9[6];
  if (v20 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(v9[2] + 40 * v20 + 32) = v10;
  }

  v21 = v9[7] + 1;
  v9[6] = v10;
  v9[7] = v21;
  return result;
}

@end