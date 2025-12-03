@interface MFAttachment(NSItemProvider)
+ (id)writableTypeIdentifiersForItemProvider;
- (id)writableTypeIdentifiersForItemProvider;
- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:;
@end

@implementation MFAttachment(NSItemProvider)

+ (id)writableTypeIdentifiersForItemProvider
{
  v3[1] = *MEMORY[0x1E69E9840];
  identifier = [*MEMORY[0x1E6982D50] identifier];
  v3[0] = identifier;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];

  return v1;
}

- (id)writableTypeIdentifiersForItemProvider
{
  array = [MEMORY[0x1E695DF70] array];
  fileUTType = [self fileUTType];
  identifier = [*MEMORY[0x1E6982D60] identifier];
  v5 = [fileUTType isEqualToString:identifier];

  if (v5)
  {
    identifier2 = [*MEMORY[0x1E6982D50] identifier];

    if (!identifier2)
    {
LABEL_3:
      writableTypeIdentifiersForItemProvider = [objc_opt_class() writableTypeIdentifiersForItemProvider];
      [array addObjectsFromArray:writableTypeIdentifiersForItemProvider];

      goto LABEL_6;
    }
  }

  else
  {
    identifier2 = fileUTType;
    if (!fileUTType)
    {
      goto LABEL_3;
    }
  }

  [array addObject:identifier2];
LABEL_6:

  return array;
}

- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:
{
  v5 = a4;
  v9 = 0;
  v6 = [self fetchDataSynchronously:&v9 stripPrivateMetadata:1];
  v7 = v9;
  v5[2](v5, v6, v7);

  return 0;
}

@end