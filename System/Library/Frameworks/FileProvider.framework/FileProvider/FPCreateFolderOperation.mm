@interface FPCreateFolderOperation
- (FPCreateFolderOperation)initWithParentItem:(id)item folderName:(id)name;
- (void)actionMain;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
@end

@implementation FPCreateFolderOperation

- (FPCreateFolderOperation)initWithParentItem:(id)item folderName:(id)name
{
  v23[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  nameCopy = name;
  providerDomainID = [itemCopy providerDomainID];
  v22.receiver = self;
  v22.super_class = FPCreateFolderOperation;
  v10 = [(FPActionOperation *)&v22 initWithProvider:providerDomainID action:@"Create"];

  if (v10)
  {
    objc_storeStrong(&v10->_parentItem, item);
    v11 = [nameCopy fp_filenameFromDisplayNameWithExtension:0];
    folderFilename = v10->_folderFilename;
    v10->_folderFilename = v11;

    [(FPActionOperation *)v10 setDestinationItemToPreflight:itemCopy];
    v13 = *MEMORY[0x1E6982D60];
    v14 = [FPItem alloc];
    providerDomainID2 = [itemCopy providerDomainID];
    itemIdentifier = [itemCopy itemIdentifier];
    v17 = [(FPItem *)v14 initWithProviderDomainID:providerDomainID2 itemIdentifier:@"fakeIdentifier" parentItemIdentifier:itemIdentifier filename:v10->_folderFilename contentType:v13];

    v18 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1F1FC9C50];
    [(FPActionOperation *)v10 setSourceItemKeysAllowList:v18];

    v23[0] = v17;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    [(FPActionOperation *)v10 setSourceItemsToPreflight:v19];

    [(FPActionOperation *)v10 setSetupRemoteOperationService:1];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v10;
}

- (void)actionMain
{
  v3 = [FPItem alloc];
  providerDomainID = [(FPItem *)self->_parentItem providerDomainID];
  itemIdentifier = [(FPItem *)self->_parentItem itemIdentifier];
  v6 = [(FPItem *)v3 initWithProviderDomainID:providerDomainID itemIdentifier:@"__" parentItemIdentifier:itemIdentifier filename:self->_folderFilename isDirectory:1];

  stitcher = [(FPActionOperation *)self stitcher];
  v8 = [stitcher itemWithPlaceholderID:self->_placeholderID];

  contentModificationDate = [v8 contentModificationDate];
  if (contentModificationDate)
  {
    [(FPItem *)v6 setContentModificationDate:contentModificationDate];
  }

  creationDate = [v8 creationDate];
  if (creationDate)
  {
    [(FPItem *)v6 setCreationDate:creationDate];
  }

  v11 = +[FPDaemonConnection sharedConnection];
  shouldBounceOnCollision = self->_shouldBounceOnCollision;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __37__FPCreateFolderOperation_actionMain__block_invoke;
  v13[3] = &unk_1E793B0E0;
  v13[4] = self;
  [v11 createItemBasedOnTemplate:v6 fields:6 urlWrapper:0 options:0x10000 bounceOnCollision:shouldBounceOnCollision completionHandler:v13];
}

void __37__FPCreateFolderOperation_actionMain__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __37__FPCreateFolderOperation_actionMain__block_invoke_cold_1(v6);
    }
  }

  v8 = [*(a1 + 32) stitcher];
  [v8 associateItem:v5 withPlaceholderID:*(*(a1 + 32) + 464)];

  [*(a1 + 32) completedWithResult:v5 error:v6];
}

- (void)finishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher finishWithItem:resultCopy error:errorCopy];

  createFolderCompletionBlock = [(FPCreateFolderOperation *)self createFolderCompletionBlock];
  v10 = createFolderCompletionBlock;
  if (createFolderCompletionBlock)
  {
    (*(createFolderCompletionBlock + 16))(createFolderCompletionBlock, resultCopy, errorCopy);
    [(FPCreateFolderOperation *)self setCreateFolderCompletionBlock:0];
  }

  v11.receiver = self;
  v11.super_class = FPCreateFolderOperation;
  [(FPActionOperation *)&v11 finishWithResult:resultCopy error:errorCopy];
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  folderFilename = self->_folderFilename;
  itemIdentifier = [(FPItem *)self->_parentItem itemIdentifier];
  providerDomainID = [(FPItem *)self->_parentItem providerDomainID];
  v8 = [stitcher2 createPlaceholderWithName:folderFilename isFolder:1 contentAccessDate:0 underParent:itemIdentifier inProviderDomainID:providerDomainID];
  placeholderID = self->_placeholderID;
  self->_placeholderID = v8;

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

void __37__FPCreateFolderOperation_actionMain__block_invoke_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end