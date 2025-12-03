@interface NSArray(AXExtensions)
+ (id)axArrayByIgnoringNilElementsWithCount:()AXExtensions;
+ (id)axArrayWithPossiblyNilArrays:()AXExtensions;
- (id)axFilterObjectsUsingBlock:()AXExtensions;
- (id)axFirstObjectsUsingBlock:()AXExtensions;
- (id)axMapObjectsUsingBlock:()AXExtensions;
- (id)axSafeObjectAtIndex:()AXExtensions;
- (id)axUniqueArrayWithPredicate:()AXExtensions;
- (uint64_t)axIsEqualToOrderedArray:()AXExtensions withPredicate:;
@end

@implementation NSArray(AXExtensions)

+ (id)axArrayWithPossiblyNilArrays:()AXExtensions
{
  v14 = &a9;
  if (a3)
  {
    v9 = a3;
    array = 0;
    do
    {
      v11 = v14++;
      v12 = *v11;
      if ([v12 count])
      {
        if (!array)
        {
          array = [MEMORY[0x1E695DF70] array];
        }

        [array addObjectsFromArray:v12];
      }

      --v9;
    }

    while (v9);
  }

  else
  {
    array = 0;
  }

  return array;
}

+ (id)axArrayByIgnoringNilElementsWithCount:()AXExtensions
{
  array = [MEMORY[0x1E695DF70] array];
  for (i = &a9; a3; --a3)
  {
    v11 = i++;
    if (*v11)
    {
      [array addObject:?];
    }
  }

  return array;
}

- (id)axUniqueArrayWithPredicate:()AXExtensions
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DFA8] set];
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  selfCopy = self;
  v8 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(selfCopy);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = v4[2](v4, v12);
        if (v13 && ([v5 containsObject:{v13, v16}] & 1) == 0)
        {
          [v5 addObject:v13];
          [array addObject:v12];
        }
      }

      v9 = [selfCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  v14 = *MEMORY[0x1E69E9840];

  return array;
}

- (uint64_t)axIsEqualToOrderedArray:()AXExtensions withPredicate:
{
  v6 = a3;
  v7 = a4;
  v8 = [self count];
  v9 = [v6 count];
  v10 = 0;
  if (v6 && v8 == v9)
  {
    if (v8)
    {
      v11 = 0;
      v12 = v8 - 1;
      do
      {
        v13 = [self objectAtIndex:v11];
        v14 = [v6 objectAtIndex:v11];
        v10 = v7[2](v7, v13, v14);

        if (v10)
        {
          v15 = v12 == v11;
        }

        else
        {
          v15 = 1;
        }

        ++v11;
      }

      while (!v15);
    }

    else
    {
      v10 = 1;
    }
  }

  return v10;
}

- (id)axMapObjectsUsingBlock:()AXExtensions
{
  v4 = a3;
  if (v4)
  {
    v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __48__NSArray_AXExtensions__axMapObjectsUsingBlock___block_invoke;
    v10[3] = &unk_1E735B5C0;
    v12 = v4;
    v6 = v5;
    v11 = v6;
    [self enumerateObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = [self copy];
  }

  return v8;
}

- (id)axFilterObjectsUsingBlock:()AXExtensions
{
  v4 = a3;
  if (v4)
  {
    array = [MEMORY[0x1E695DF70] array];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__NSArray_AXExtensions__axFilterObjectsUsingBlock___block_invoke;
    v10[3] = &unk_1E735B5C0;
    v12 = v4;
    v6 = array;
    v11 = v6;
    [self enumerateObjectsUsingBlock:v10];
    v7 = v11;
    v8 = v6;
  }

  else
  {
    v8 = [self copy];
  }

  return v8;
}

- (id)axFirstObjectsUsingBlock:()AXExtensions
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__0;
    v15 = __Block_byref_object_dispose__0;
    v16 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__NSArray_AXExtensions__axFirstObjectsUsingBlock___block_invoke;
    v8[3] = &unk_1E735B5E8;
    v9 = v4;
    v10 = &v11;
    [self enumerateObjectsUsingBlock:v8];
    firstObject = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    firstObject = [self firstObject];
  }

  return firstObject;
}

- (id)axSafeObjectAtIndex:()AXExtensions
{
  if ([self count] <= a3)
  {
    v5 = 0;
  }

  else
  {
    v5 = [self objectAtIndex:a3];
  }

  return v5;
}

@end