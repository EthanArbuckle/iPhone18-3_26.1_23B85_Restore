@interface FPRenameOperation
- (FPRenameOperation)initWithItem:(id)item newDisplayName:(id)name;
- (FPRenameOperation)initWithItem:(id)item newFileName:(id)name;
- (FPRenameOperation)initWithItem:(id)item newNameInternal:(id)internal;
- (id)fp_prettyDescription;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
@end

@implementation FPRenameOperation

- (FPRenameOperation)initWithItem:(id)item newFileName:(id)name
{
  itemCopy = item;
  v7 = [name fp_filenameFromDisplayNameWithExtension:0];
  v8 = [(FPRenameOperation *)self initWithItem:itemCopy newNameInternal:v7];

  return v8;
}

- (FPRenameOperation)initWithItem:(id)item newDisplayName:(id)name
{
  itemCopy = item;
  nameCopy = name;
  if ([itemCopy isFolder])
  {
    pathExtension = 0;
  }

  else
  {
    filename = [itemCopy filename];
    pathExtension = [filename pathExtension];
  }

  v10 = [nameCopy fp_filenameFromDisplayNameWithExtension:pathExtension];
  v11 = [(FPRenameOperation *)self initWithItem:itemCopy newNameInternal:v10];

  return v11;
}

- (FPRenameOperation)initWithItem:(id)item newNameInternal:(id)internal
{
  v21[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  internalCopy = internal;
  providerDomainID = [itemCopy providerDomainID];
  v20.receiver = self;
  v20.super_class = FPRenameOperation;
  v10 = [(FPActionOperation *)&v20 initWithProvider:providerDomainID action:@"Rename"];

  if (v10)
  {
    objc_storeStrong(&v10->_item, item);
    objc_storeStrong(&v10->_newName, internal);
    v21[0] = itemCopy;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(FPActionOperation *)v10 setSourceItemsToPreflight:v11];

    [(FPActionOperation *)v10 setSetupRemoteOperationService:1];
    v12 = *MEMORY[0x1E6982D60];
    v13 = [FPItem alloc];
    providerDomainID2 = [itemCopy providerDomainID];
    parentItemIdentifier = [itemCopy parentItemIdentifier];
    v16 = [(FPItem *)v13 initWithProviderDomainID:providerDomainID2 itemIdentifier:@"fakeIdentifier" parentItemIdentifier:parentItemIdentifier filename:internalCopy contentType:v12];

    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1FC9C38];
    [(FPActionOperation *)v10 setDestinationItemKeysAllowList:v17];

    [(FPActionOperation *)v10 setDestinationItemToPreflight:v16];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)actionMain
{
  strippedCopy = [(FPItem *)self->_item strippedCopy];
  [strippedCopy setFilename:self->_newName];
  remoteServiceProxy = [(FPActionOperation *)self remoteServiceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__FPRenameOperation_actionMain__block_invoke;
  v5[3] = &unk_1E793B0E0;
  v5[4] = self;
  [remoteServiceProxy singleItemChange:strippedCopy changedFields:2 bounce:0 completionHandler:v5];
}

void __31__FPRenameOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __31__FPRenameOperation_actionMain__block_invoke_cold_1(a1, v6);
    }

    v8 = v5;
    v5 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v9 = +[FPStitchingManager sharedInstance];
  v10 = [v5 itemID];
  v11 = [*(a1 + 32) stitcher];
  v12 = [v9 cleanStitchedForItemID:v10 ignoreSession:v11];

  if (v12)
  {
    v8 = fp_current_or_default_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      __31__FPRenameOperation_actionMain__block_invoke_cold_2(v5);
    }

    goto LABEL_8;
  }

LABEL_9:
  [*(a1 + 32) completedWithResult:v5 error:v6];
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItem:resultCopy error:errorCopy];

  v9 = [errorCopy fp_annotatedErrorWithItem:self->_item variant:@"Rename"];

  v10.receiver = self;
  v10.super_class = FPRenameOperation;
  [(FPActionOperation *)&v10 finishWithResult:resultCopy error:v9];
}

- (void)presendNotifications
{
  v9[1] = *MEMORY[0x1E69E9840];
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  v9[0] = self->_item;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__FPRenameOperation_presendNotifications__block_invoke;
  v8[3] = &unk_1E793CA10;
  v8[4] = self;
  [stitcher2 transformItems:v5 handler:v8];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];

  v7 = *MEMORY[0x1E69E9840];
}

void __41__FPRenameOperation_presendNotifications__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 456);
  v4 = *(v2 + 448);
  v5 = a2;
  v6 = [v3 fp_displayNameFromFilenameWithHiddenPathExtension:(objc_msgSend(v4 isFolder:{"fileSystemFlags") >> 4) & 1, objc_msgSend(v5, "isFolder")}];
  [v5 setDisplayName:v6];
}

- (id)fp_prettyDescription
{
  v3 = MEMORY[0x1E696AEC0];
  itemIdentifier = [(FPItem *)self->_item itemIdentifier];
  v5 = [v3 stringWithFormat:@"rename %@ to %@", itemIdentifier, self->_newName];

  return v5;
}

void __31__FPRenameOperation_actionMain__block_invoke_cold_1(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 448);
  v4 = *(v2 + 456);
  v5 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v6, v7, v8, v9, v10, 0x20u);

  v11 = *MEMORY[0x1E69E9840];
}

void __31__FPRenameOperation_actionMain__block_invoke_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 itemID];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end