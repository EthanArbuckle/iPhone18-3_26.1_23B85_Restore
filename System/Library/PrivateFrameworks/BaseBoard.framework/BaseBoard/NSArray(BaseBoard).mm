@interface NSArray(BaseBoard)
- (BOOL)bs_containsObjectPassingTest:()BaseBoard;
- (id)bs_array;
- (id)bs_compactMap:()BaseBoard;
- (id)bs_dictionaryByPartitioning:()BaseBoard;
- (id)bs_differenceWithArray:()BaseBoard;
- (id)bs_filter:()BaseBoard;
- (id)bs_firstObjectOfClass:()BaseBoard;
- (id)bs_flatten;
- (id)bs_flattenedDifferenceWithArray:()BaseBoard;
- (id)bs_map:()BaseBoard;
- (id)bs_mapNoNulls:()BaseBoard;
- (id)bs_objectsOfClass:()BaseBoard;
- (id)bs_reverse;
- (uint64_t)bs_first:()BaseBoard;
- (uint64_t)bs_firstObjectOfClassNamed:()BaseBoard;
- (void)bs_each:()BaseBoard;
- (void)bs_enumerateObjectsOfClass:()BaseBoard usingBlock:;
@end

@implementation NSArray(BaseBoard)

- (id)bs_array
{
  v1 = [self copy];

  return v1;
}

- (id)bs_reverse
{
  reverseObjectEnumerator = [self reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  return allObjects;
}

- (id)bs_flatten
{
  v15 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  selfCopy = self;
  v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(selfCopy);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bs_flatten = [v7 bs_flatten];
          [array addObjectsFromArray:bs_flatten];
        }

        else
        {
          [array addObject:{v7, v10}];
        }
      }

      v4 = [selfCopy countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return array;
}

- (BOOL)bs_containsObjectPassingTest:()BaseBoard
{
  v3 = BSCollectionFind(self, a3);
  v4 = v3 != 0;

  return v4;
}

- (void)bs_enumerateObjectsOfClass:()BaseBoard usingBlock:
{
  if (a4)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __60__NSArray_BaseBoard__bs_enumerateObjectsOfClass_usingBlock___block_invoke;
    v4[3] = &unk_1E72CC3E8;
    v4[4] = a4;
    v4[5] = a3;
    return [result enumerateObjectsUsingBlock:v4];
  }

  return result;
}

- (void)bs_each:()BaseBoard
{
  v13 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    selfCopy = self;
    v5 = [selfCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v5)
    {
      v6 = *v9;
      do
      {
        v7 = 0;
        do
        {
          if (*v9 != v6)
          {
            objc_enumerationMutation(selfCopy);
          }

          (*(a3 + 16))(a3, *(*(&v8 + 1) + 8 * v7++));
        }

        while (v5 != v7);
        v5 = [selfCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (uint64_t)bs_first:()BaseBoard
{
  v5 = [self count];
  if (v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v5;
  }

  return [self subarrayWithRange:{0, v6}];
}

- (id)bs_firstObjectOfClass:()BaseBoard
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__NSArray_BaseBoard__bs_firstObjectOfClass___block_invoke;
  v5[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v5[4] = a3;
  v3 = BSCollectionFind(self, v5);

  return v3;
}

- (uint64_t)bs_firstObjectOfClassNamed:()BaseBoard
{
  v4 = NSClassFromString(aClassName);

  return [self bs_firstObjectOfClass:v4];
}

- (id)bs_filter:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionFilter(v5, self, a3);
}

- (id)bs_objectsOfClass:()BaseBoard
{
  v5 = objc_opt_class();
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__NSArray_BaseBoard__bs_objectsOfClass___block_invoke;
  v8[3] = &__block_descriptor_40_e8_B16__0_8lu32l8;
  v8[4] = a3;
  v6 = BSCollectionFilter(v5, self, v8);

  return v6;
}

- (id)bs_map:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionMap(v5, self, a3);
}

- (id)bs_compactMap:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionCompactMap(v5, self, a3);
}

- (id)bs_mapNoNulls:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionCompactMap(v5, self, a3);
}

- (id)bs_dictionaryByPartitioning:()BaseBoard
{
  v5 = objc_opt_class();

  return BSCollectionPartition(v5, self, a3);
}

- (id)bs_differenceWithArray:()BaseBoard
{
  v4 = [MEMORY[0x1E695DF70] arrayWithArray:self];
  [v4 removeObjectsInArray:a3];
  v5 = [MEMORY[0x1E695DEC8] arrayWithArray:v4];

  return v5;
}

- (id)bs_flattenedDifferenceWithArray:()BaseBoard
{
  bs_flatten = [self bs_flatten];
  bs_flatten2 = [a3 bs_flatten];
  v6 = [bs_flatten bs_differenceWithArray:bs_flatten2];

  return v6;
}

@end