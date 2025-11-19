@interface MFAttachment(NSItemProvider)
+ (id)writableTypeIdentifiersForItemProvider;
- (id)writableTypeIdentifiersForItemProvider;
- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:;
@end

@implementation MFAttachment(NSItemProvider)

+ (id)writableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x1E69E9840];
  v0 = [*MEMORY[0x1E6982D50] identifier];
  v3[0] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

- (id)writableTypeIdentifiersForItemProvider
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = [a1 fileUTType];
  v4 = [*MEMORY[0x1E6982D60] identifier];
  v5 = [v3 isEqualToString:v4];

  if (v5)
  {
    v6 = [*MEMORY[0x1E6982D50] identifier];

    if (!v6)
    {
LABEL_3:
      v7 = [objc_opt_class() writableTypeIdentifiersForItemProvider];
      [v2 addObjectsFromArray:v7];

      goto LABEL_6;
    }
  }

  else
  {
    v6 = v3;
    if (!v3)
    {
      goto LABEL_3;
    }
  }

  [v2 addObject:v6];
LABEL_6:

  return v2;
}

- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:
{
  v5 = a4;
  v9 = 0;
  v6 = [a1 fetchDataSynchronously:&v9 stripPrivateMetadata:1];
  v7 = v9;
  v5[2](v5, v6, v7);

  return 0;
}

@end