@interface FPRenameOperation
- (FPRenameOperation)initWithItem:(id)a3 newDisplayName:(id)a4;
- (FPRenameOperation)initWithItem:(id)a3 newFileName:(id)a4;
- (FPRenameOperation)initWithItem:(id)a3 newNameInternal:(id)a4;
- (id)fp_prettyDescription;
- (void)actionMain;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)presendNotifications;
@end

@implementation FPRenameOperation

- (FPRenameOperation)initWithItem:(id)a3 newFileName:(id)a4
{
  v6 = a3;
  v7 = [a4 fp_filenameFromDisplayNameWithExtension:0];
  v8 = [(FPRenameOperation *)self initWithItem:v6 newNameInternal:v7];

  return v8;
}

- (FPRenameOperation)initWithItem:(id)a3 newDisplayName:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 isFolder])
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 filename];
    v8 = [v9 pathExtension];
  }

  v10 = [v7 fp_filenameFromDisplayNameWithExtension:v8];
  v11 = [(FPRenameOperation *)self initWithItem:v6 newNameInternal:v10];

  return v11;
}

- (FPRenameOperation)initWithItem:(id)a3 newNameInternal:(id)a4
{
  v21[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  v9 = [v7 providerDomainID];
  v20.receiver = self;
  v20.super_class = FPRenameOperation;
  v10 = [(FPActionOperation *)&v20 initWithProvider:v9 action:@"Rename"];

  if (v10)
  {
    objc_storeStrong(&v10->_item, a3);
    objc_storeStrong(&v10->_newName, a4);
    v21[0] = v7;
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [(FPActionOperation *)v10 setSourceItemsToPreflight:v11];

    [(FPActionOperation *)v10 setSetupRemoteOperationService:1];
    v12 = *MEMORY[0x1E6982D60];
    v13 = [FPItem alloc];
    v14 = [v7 providerDomainID];
    v15 = [v7 parentItemIdentifier];
    v16 = [(FPItem *)v13 initWithProviderDomainID:v14 itemIdentifier:@"fakeIdentifier" parentItemIdentifier:v15 filename:v8 contentType:v12];

    v17 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1FC9C38];
    [(FPActionOperation *)v10 setDestinationItemKeysAllowList:v17];

    [(FPActionOperation *)v10 setDestinationItemToPreflight:v16];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)actionMain
{
  v3 = [(FPItem *)self->_item strippedCopy];
  [v3 setFilename:self->_newName];
  v4 = [(FPActionOperation *)self remoteServiceProxy];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __31__FPRenameOperation_actionMain__block_invoke;
  v5[3] = &unk_1E793B0E0;
  v5[4] = self;
  [v4 singleItemChange:v3 changedFields:2 bounce:0 completionHandler:v5];
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

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPActionOperation *)self stitcher];
  [v8 finishWithItem:v7 error:v6];

  v9 = [v6 fp_annotatedErrorWithItem:self->_item variant:@"Rename"];

  v10.receiver = self;
  v10.super_class = FPRenameOperation;
  [(FPActionOperation *)&v10 finishWithResult:v7 error:v9];
}

- (void)presendNotifications
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = [(FPActionOperation *)self stitcher];
  [v3 start];

  v4 = [(FPActionOperation *)self stitcher];
  v9[0] = self->_item;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __41__FPRenameOperation_presendNotifications__block_invoke;
  v8[3] = &unk_1E793CA10;
  v8[4] = self;
  [v4 transformItems:v5 handler:v8];

  v6 = [(FPActionOperation *)self stitcher];
  [v6 flush];

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
  v4 = [(FPItem *)self->_item itemIdentifier];
  v5 = [v3 stringWithFormat:@"rename %@ to %@", v4, self->_newName];

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