@interface NSArray(AXExtras)
- (BOOL)ax_containsObjectUsingBlock:()AXExtras;
- (id)ax_arrayByRemovingDuplicates;
- (id)ax_filteredArrayUsingBlock:()AXExtras;
- (id)ax_firstObjectUsingBlock:()AXExtras;
- (id)ax_flatMappedArrayUsingBlock:()AXExtras;
- (id)ax_mappedArrayUsingBlock:()AXExtras;
@end

@implementation NSArray(AXExtras)

- (id)ax_firstObjectUsingBlock:()AXExtras
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (v4[2](v4, v9))
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v10 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ax_filteredArrayUsingBlock:()AXExtras
{
  v2 = [a1 indexesOfObjectsPassingTest:?];
  if (v2)
  {
    v3 = [a1 objectsAtIndexes:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)ax_containsObjectUsingBlock:()AXExtras
{
  v1 = [a1 ax_firstObjectUsingBlock:?];
  v2 = v1 != 0;

  return v2;
}

- (id)ax_mappedArrayUsingBlock:()AXExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
          [v6 addObject:{v12, v15}];
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = a1;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ax_flatMappedArrayUsingBlock:()AXExtras
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [a1 count];
  if (v5)
  {
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:v5];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = a1;
    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = v4[2](v4, *(*(&v15 + 1) + 8 * i));
          if (v12)
          {
            [v6 addObject:{v12, v15}];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }
  }

  else
  {
    v6 = a1;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v6;
}

- (id)ax_arrayByRemovingDuplicates
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:v2];
  v4 = [MEMORY[0x1E695DFA8] setWithCapacity:v2];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = a1;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if (([v4 containsObject:{v10, v14}] & 1) == 0)
        {
          [v4 addObject:v10];
          [v3 addObject:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

@end