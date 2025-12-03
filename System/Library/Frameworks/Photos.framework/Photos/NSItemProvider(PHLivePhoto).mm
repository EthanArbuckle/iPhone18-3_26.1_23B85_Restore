@interface NSItemProvider(PHLivePhoto)
- (void)initWithLivePhoto:()PHLivePhoto;
@end

@implementation NSItemProvider(PHLivePhoto)

- (void)initWithLivePhoto:()PHLivePhoto
{
  v4 = a3;
  v5 = [self init];
  if (v5)
  {
    identifier = [*MEMORY[0x1E6982E30] identifier];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke;
    v13[3] = &unk_1E75A80B8;
    v7 = v4;
    v14 = v7;
    v15 = 1;
    [v5 registerItemForTypeIdentifier:identifier loadHandler:v13];

    identifier2 = [*MEMORY[0x1E6982E80] identifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __49__NSItemProvider_PHLivePhoto__initWithLivePhoto___block_invoke_3;
    v10[3] = &unk_1E75A80B8;
    v11 = v7;
    v12 = 1;
    [v5 registerItemForTypeIdentifier:identifier2 loadHandler:v10];
  }

  return v5;
}

@end