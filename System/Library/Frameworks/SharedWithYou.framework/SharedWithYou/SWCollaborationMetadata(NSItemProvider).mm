@interface SWCollaborationMetadata(NSItemProvider)
+ (id)objectWithItemProviderData:()NSItemProvider typeIdentifier:error:;
+ (id)readableTypeIdentifiersForItemProvider;
+ (id)writableTypeIdentifiersForItemProvider;
- (id)processSigningQueue;
- (id)softSigningController;
- (id)writableTypeIdentifiersForItemProvider;
- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:;
@end

@implementation SWCollaborationMetadata(NSItemProvider)

- (id)processSigningQueue
{
  if (processSigningQueue_onceToken != -1)
  {
    [SWCollaborationMetadata(NSItemProvider) processSigningQueue];
  }

  v1 = processSigningQueue_internalQueue;

  return v1;
}

+ (id)readableTypeIdentifiersForItemProvider
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697B770];
  v4[0] = @"com.apple.SharedWithYou.SWCollaborationMetadata";
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

+ (id)objectWithItemProviderData:()NSItemProvider typeIdentifier:error:
{
  v20[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if ([v8 isEqualToString:@"com.apple.SharedWithYou.SWCollaborationMetadata"])
  {
    v9 = MEMORY[0x1E696ACD0];
    v10 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:2];
    v12 = [v10 setWithArray:v11];
    v19 = 0;
    collaborationMetadata = [v9 unarchivedObjectOfClasses:v12 fromData:v7 error:&v19];
    v14 = v19;

    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (![v8 isEqualToString:*MEMORY[0x1E697B770]])
  {
    v14 = 0;
    collaborationMetadata = 0;
    if (!a5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v15 = [MEMORY[0x1E697B728] objectWithItemProviderData:v7 typeIdentifier:v8 error:a5];
  collaborationMetadata = [v15 collaborationMetadata];

  v14 = 0;
  if (a5)
  {
LABEL_8:
    v16 = v14;
    *a5 = v14;
  }

LABEL_9:

  v17 = *MEMORY[0x1E69E9840];

  return collaborationMetadata;
}

- (id)softSigningController
{
  if (getSLCollaborationSigningControllerClass() && [getSLCollaborationSigningControllerClass() instancesRespondToSelector:sel_initWithTargetSerialQueue_synchronous_])
  {
    v2 = objc_alloc(getSLCollaborationSigningControllerClass());
    processSigningQueue = [self processSigningQueue];
    v4 = [v2 initWithTargetSerialQueue:processSigningQueue synchronous:1];

    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)writableTypeIdentifiersForItemProvider
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697B770];
  v4[0] = @"com.apple.SharedWithYou.SWCollaborationMetadata";
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (id)writableTypeIdentifiersForItemProvider
{
  v4[2] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E697B770];
  v4[0] = @"com.apple.SharedWithYou.SWCollaborationMetadata";
  v4[1] = v0;
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:2];
  v2 = *MEMORY[0x1E69E9840];

  return v1;
}

- (uint64_t)loadDataWithTypeIdentifier:()NSItemProvider forItemProviderCompletionHandler:
{
  v6 = a3;
  v7 = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __103__SWCollaborationMetadata_NSItemProvider__loadDataWithTypeIdentifier_forItemProviderCompletionHandler___block_invoke;
  aBlock[3] = &unk_1E7FDE068;
  aBlock[4] = self;
  v16 = v6;
  v17 = v7;
  v8 = v7;
  v9 = v6;
  v10 = _Block_copy(aBlock);
  sourceProcessData = [self sourceProcessData];

  if (sourceProcessData || ([self softSigningController], (v13 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    sourceProcessData2 = [self sourceProcessData];
    v10[2](v10, sourceProcessData2, 0);
  }

  else
  {
    sourceProcessData2 = v13;
    [v13 signSourceProcessWithMetadata:self timeout:v10 completion:5.0];
  }

  return 0;
}

@end