@interface FPNonEvictableItemsQueryDescriptor
- (id)queryStringForMountPoint:(id)point;
- (unint64_t)desiredCount;
- (void)augmentQueryContext:(id)context;
@end

@implementation FPNonEvictableItemsQueryDescriptor

- (id)queryStringForMountPoint:(id)point
{
  v20[1] = *MEMORY[0x1E69E9840];
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  allowedFileTypes = [settings allowedFileTypes];

  settings2 = [(FPSpotlightQueryDescriptor *)self settings];
  excludedFileTypes = [settings2 excludedFileTypes];
  v8 = excludedFileTypes;
  v9 = MEMORY[0x1E695E0F0];
  if (excludedFileTypes)
  {
    v10 = excludedFileTypes;
  }

  else
  {
    v10 = MEMORY[0x1E695E0F0];
  }

  v11 = v10;

  v12 = MEMORY[0x1E696AEC0];
  v13 = FPContentTypeQueryStringForFileTypes(allowedFileTypes, v11);

  identifier = [*MEMORY[0x1E6982DC8] identifier];
  v20[0] = identifier;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:1];
  v16 = FPContentTypeQueryStringForFileTypes(v9, v15);
  v17 = [v12 stringWithFormat:@"(%@) && ((%@) || ((%@) && (%@)))", v13, @"FPItemIsPinned == 1", v16, @"FPItemIsInPinnedFolder == 0 && FPEvictable == 0 && FPDownloaded == 1"];

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (unint64_t)desiredCount
{
  settings = [(FPSpotlightQueryDescriptor *)self settings];
  desiredNumberOfItems = [settings desiredNumberOfItems];
  v4 = desiredNumberOfItems;
  v5 = &unk_1F1FC9A70;
  if (desiredNumberOfItems)
  {
    v5 = desiredNumberOfItems;
  }

  v6 = v5;

  unsignedIntegerValue = [v6 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)augmentQueryContext:(id)context
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = FPNonEvictableItemsQueryDescriptor;
  contextCopy = context;
  [(FPSpotlightQueryDescriptor *)&v20 augmentQueryContext:?];
  v3 = FPFileSizeAttributes();
  allValues = [v3 allValues];

  v4 = objc_opt_new();
  v5 = 10000000000;
  do
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = allValues;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"InRange(%@, %lu, %lu)", *(*(&v16 + 1) + 8 * i), v5, 10 * v5 - 1];
          [v4 addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v8);
    }

    v12 = v5 > 0x13;
    v5 /= 0xAuLL;
  }

  while (v12);
  [contextCopy setRankingQueries:v4];

  v13 = *MEMORY[0x1E69E9840];
}

@end