@interface NSMutableArray(ImageCaptureCoreAdditions)
- (void)addItemsMatchingType:()ImageCaptureCoreAdditions fromFolder:;
- (void)addItemsMatchingTypes:()ImageCaptureCoreAdditions fromFolder:;
- (void)addTruth:()ImageCaptureCoreAdditions code:;
@end

@implementation NSMutableArray(ImageCaptureCoreAdditions)

- (void)addTruth:()ImageCaptureCoreAdditions code:
{
  if (a3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithLong:a4];
    [self addObject:v5];
  }
}

- (void)addItemsMatchingType:()ImageCaptureCoreAdditions fromFolder:
{
  v37 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = v7;
  if (v6)
  {
    v9 = [MEMORY[0x1E6982C40] typeWithIdentifier:v6];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v26 = v8;
    files = [v8 files];
    v11 = [files countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v32;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v32 != v13)
          {
            objc_enumerationMutation(files);
          }

          v15 = *(*(&v31 + 1) + 8 * i);
          v16 = MEMORY[0x1E6982C40];
          v17 = [v15 UTI];
          v18 = [v16 typeWithIdentifier:v17];

          if ([v18 conformsToType:v9])
          {
            [self addObject:v15];
          }
        }

        v12 = [files countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v12);
    }

    v8 = v26;
  }

  else
  {
    files2 = [v7 files];
    [self addObjectsFromArray:files2];
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  folders = [v8 folders];
  v21 = [folders countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v28;
    do
    {
      for (j = 0; j != v22; ++j)
      {
        if (*v28 != v23)
        {
          objc_enumerationMutation(folders);
        }

        [self addItemsMatchingType:v6 fromFolder:*(*(&v27 + 1) + 8 * j)];
      }

      v22 = [folders countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v22);
  }

  v25 = *MEMORY[0x1E69E9840];
}

- (void)addItemsMatchingTypes:()ImageCaptureCoreAdditions fromFolder:
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v6);
        }

        [self addItemsMatchingType:*(*(&v13 + 1) + 8 * v11++) fromFolder:v7];
      }

      while (v9 != v11);
      v9 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  v12 = *MEMORY[0x1E69E9840];
}

@end