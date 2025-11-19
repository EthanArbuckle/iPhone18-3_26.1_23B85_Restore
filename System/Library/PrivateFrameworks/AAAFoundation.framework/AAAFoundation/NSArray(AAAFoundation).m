@interface NSArray(AAAFoundation)
- (id)aaf_arrayByRemovingObject:()AAAFoundation;
- (id)aaf_filter:()AAAFoundation;
- (id)aaf_firstObjectPassingTest:()AAAFoundation;
- (id)aaf_map:()AAAFoundation;
- (id)aaf_mapStoppable:()AAAFoundation;
- (uint64_t)aaf_isSubsetOfArray:()AAAFoundation;
@end

@implementation NSArray(AAAFoundation)

- (id)aaf_filter:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __37__NSArray_AAAFoundation__aaf_filter___block_invoke;
    v12 = &unk_1E831BE10;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [a1 enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] aaf_empty];
  }

  return v7;
}

- (id)aaf_map:()AAAFoundation
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __34__NSArray_AAAFoundation__aaf_map___block_invoke;
  v8[3] = &unk_1E831BE38;
  v9 = v4;
  v5 = v4;
  v6 = [a1 aaf_mapStoppable:v8];

  return v6;
}

- (id)aaf_mapStoppable:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(a1, "count")}];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __43__NSArray_AAAFoundation__aaf_mapStoppable___block_invoke;
    v12 = &unk_1E831BE10;
    v13 = v5;
    v14 = v4;
    v6 = v5;
    [a1 enumerateObjectsUsingBlock:&v9];
    v7 = [v6 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] aaf_empty];
  }

  return v7;
}

- (id)aaf_arrayByRemovingObject:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    if (v4 && ([a1 containsObject:v4] & 1) != 0)
    {
      v5 = [a1 mutableCopy];
      [v5 removeObject:v4];
      v6 = [v5 copy];

      goto LABEL_8;
    }

    v7 = [a1 copy];
  }

  else
  {
    v7 = [MEMORY[0x1E695DEC8] aaf_empty];
  }

  v6 = v7;
LABEL_8:

  return v6;
}

- (id)aaf_firstObjectPassingTest:()AAAFoundation
{
  v4 = a3;
  if ([a1 count])
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __53__NSArray_AAAFoundation__aaf_firstObjectPassingTest___block_invoke;
    v8[3] = &unk_1E831BE60;
    v9 = v4;
    v5 = [a1 indexOfObjectPassingTest:v8];
    if (v5 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = 0;
    }

    else
    {
      v6 = [a1 objectAtIndex:v5];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (uint64_t)aaf_isSubsetOfArray:()AAAFoundation
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:a1];
    v6 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v4];
    v7 = [v5 isSubsetOfSet:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end