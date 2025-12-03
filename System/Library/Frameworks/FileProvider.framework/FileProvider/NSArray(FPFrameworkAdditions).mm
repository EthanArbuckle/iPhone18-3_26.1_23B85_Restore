@interface NSArray(FPFrameworkAdditions)
+ (id)fp_sortDescriptorByDisplayName;
+ (id)fp_sortDescriptorByDocumentSize;
+ (id)fp_sortDescriptorByLastUsedDate;
+ (id)fp_sortDescriptorByModifiedDateDescending;
- (id)fp_categorize:()FPFrameworkAdditions;
- (id)fp_filter:()FPFrameworkAdditions;
- (id)fp_map:()FPFrameworkAdditions;
- (id)fp_mapWithIndex:()FPFrameworkAdditions;
- (id)fp_pickItemsFromArray:()FPFrameworkAdditions correspondingToIndexesOfItemsInArray:;
- (id)fp_removingObjectsNotKindOfClasses:()FPFrameworkAdditions;
@end

@implementation NSArray(FPFrameworkAdditions)

+ (id)fp_sortDescriptorByDisplayName
{
  if (fp_sortDescriptorByDisplayName_onceToken != -1)
  {
    +[NSArray(FPFrameworkAdditions) fp_sortDescriptorByDisplayName];
  }

  v1 = fp_sortDescriptorByDisplayName_sortDescriptors;

  return v1;
}

+ (id)fp_sortDescriptorByLastUsedDate
{
  if (fp_sortDescriptorByLastUsedDate_onceToken != -1)
  {
    +[NSArray(FPFrameworkAdditions) fp_sortDescriptorByLastUsedDate];
  }

  v1 = fp_sortDescriptorByLastUsedDate_sortDescriptors;

  return v1;
}

+ (id)fp_sortDescriptorByModifiedDateDescending
{
  if (fp_sortDescriptorByModifiedDateDescending_onceToken != -1)
  {
    +[NSArray(FPFrameworkAdditions) fp_sortDescriptorByModifiedDateDescending];
  }

  v1 = fp_sortDescriptorByModifiedDateDescending_sortDescriptors;

  return v1;
}

+ (id)fp_sortDescriptorByDocumentSize
{
  if (fp_sortDescriptorByDocumentSize_onceToken != -1)
  {
    +[NSArray(FPFrameworkAdditions) fp_sortDescriptorByDocumentSize];
  }

  v1 = fp_sortDescriptorByDocumentSize_sortDescriptors;

  return v1;
}

- (id)fp_mapWithIndex:()FPFrameworkAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __49__NSArray_FPFrameworkAdditions__fp_mapWithIndex___block_invoke;
  v11[3] = &unk_1E793BA20;
  v13 = v4;
  v6 = v5;
  v12 = v6;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fp_map:()FPFrameworkAdditions
{
  v4 = a3;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __40__NSArray_FPFrameworkAdditions__fp_map___block_invoke;
  v8[3] = &unk_1E793BA48;
  v9 = v4;
  v5 = v4;
  v6 = [self fp_mapWithIndex:v8];

  return v6;
}

- (id)fp_filter:()FPFrameworkAdditions
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  selfCopy = self;
  v7 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(selfCopy);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        if (v4[2](v4, v11))
        {
          [v5 addObject:{v11, v15}];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [selfCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)fp_categorize:()FPFrameworkAdditions
{
  v4 = a3;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __47__NSArray_FPFrameworkAdditions__fp_categorize___block_invoke;
  v11[3] = &unk_1E793BA20;
  v13 = v4;
  v6 = dictionary;
  v12 = v6;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v12;
  v9 = v6;

  return v6;
}

- (id)fp_pickItemsFromArray:()FPFrameworkAdditions correspondingToIndexesOfItemsInArray:
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [self count];
  if (v8 != [v6 count])
  {
    v9 = [self count];
    if (v9 != [v6 count])
    {
      [NSArray(FPFrameworkAdditions) fp_pickItemsFromArray:a2 correspondingToIndexesOfItemsInArray:self];
    }
  }

  v10 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v7, "count")}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v23 + 1) + 8 * i);
        v16 = [self indexOfObject:v15];
        if (v16 == 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"NSArray+FPFrameworkAdditions.m" lineNumber:126 description:{@"Object %@ not found", v15}];
        }

        v18 = [v6 objectAtIndexedSubscript:v16];
        [v10 addObject:v18];
      }

      v12 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v12);
  }

  v19 = *MEMORY[0x1E69E9840];

  return v10;
}

- (id)fp_removingObjectsNotKindOfClasses:()FPFrameworkAdditions
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(self, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __68__NSArray_FPFrameworkAdditions__fp_removingObjectsNotKindOfClasses___block_invoke;
  v11[3] = &unk_1E793BA70;
  v12 = v4;
  v6 = v5;
  v13 = v6;
  v7 = v4;
  [self enumerateObjectsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

- (void)fp_pickItemsFromArray:()FPFrameworkAdditions correspondingToIndexesOfItemsInArray:.cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"NSArray+FPFrameworkAdditions.m" lineNumber:121 description:@"Count of pickable items must match count of own items"];
}

@end