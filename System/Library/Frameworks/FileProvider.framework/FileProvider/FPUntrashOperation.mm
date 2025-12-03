@interface FPUntrashOperation
- (FPUntrashOperation)initWithItems:(id)items restoreDirectory:(id)directory;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)items;
- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index;
- (void)postStitchingFinishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
- (void)subclassPreflightWithCompletion:(id)completion;
@end

@implementation FPUntrashOperation

- (id)replicateForItems:(id)items
{
  itemsCopy = items;
  v5 = [[FPUntrashOperation alloc] initWithItems:itemsCopy restoreDirectory:self->_restoreDirectory];

  return v5;
}

- (FPUntrashOperation)initWithItems:(id)items restoreDirectory:(id)directory
{
  directoryCopy = directory;
  v11.receiver = self;
  v11.super_class = FPUntrashOperation;
  v8 = [(FPTransformOperation *)&v11 initWithItemsOfDifferentProviders:items action:0];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_restoreDirectory, directory);
    [(FPActionOperation *)v9 setSetupRemoteOperationService:1];
  }

  return v9;
}

- (void)subclassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  restoreDirectory = self->_restoreDirectory;
  if (restoreDirectory)
  {
    v15 = 0;
    v7 = [FPProviderDomain providerDomainForItem:restoreDirectory cachePolicy:0 error:&v15];
    v8 = v15;
    if (v8)
    {
      v9 = fp_current_or_default_log();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [(FPUntrashOperation *)&self->_restoreDirectory subclassPreflightWithCompletion:v8];
      }

      (v5)[2](v5, 0, v8);
    }

    else
    {
      itemID = [(FPItem *)self->_restoreDirectory itemID];
      itemManager = [(FPActionOperation *)self itemManager];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __54__FPUntrashOperation_subclassPreflightWithCompletion___block_invoke;
      v12[3] = &unk_1E793E170;
      v14 = v5;
      v12[4] = self;
      v13 = v7;
      [itemManager fetchParentsForItemID:itemID recursively:1 completionHandler:v12];
    }
  }

  else
  {
    (*(completionCopy + 2))(completionCopy, 1);
  }
}

void __54__FPUntrashOperation_subclassPreflightWithCompletion___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = v5;
  if (a3)
  {
    v7 = *(*(a1 + 48) + 16);
  }

  else
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v22;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v22 != v11)
          {
            objc_enumerationMutation(v8);
          }

          if ([*(*(&v21 + 1) + 8 * i) isTrashed])
          {

            v13 = [*(a1 + 32) itemManager];
            v14 = *(a1 + 40);
            v17[0] = MEMORY[0x1E69E9820];
            v17[1] = 3221225472;
            v17[2] = __54__FPUntrashOperation_subclassPreflightWithCompletion___block_invoke_2;
            v17[3] = &unk_1E793B640;
            v18 = v14;
            v15 = *(a1 + 48);
            v19 = *(a1 + 32);
            v20 = v15;
            [v13 fetchRootItemForProviderDomain:v18 completionHandler:v17];

            goto LABEL_14;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v7 = *(*(a1 + 48) + 16);
  }

  v7();
LABEL_14:

  v16 = *MEMORY[0x1E69E9840];
}

void __54__FPUntrashOperation_subclassPreflightWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (!v6 || v7)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __54__FPUntrashOperation_subclassPreflightWithCompletion___block_invoke_2_cold_1(a1, v10);
    }

    v9 = *(*(a1 + 48) + 16);
  }

  else
  {
    objc_storeStrong((*(a1 + 40) + 472), a2);
    v9 = *(*(a1 + 48) + 16);
  }

  v9();
}

- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  itemIdentifier = [(FPItem *)self->_restoreDirectory itemIdentifier];
  [itemCopy setTrashed:0];
  rootDirectory = self->_rootDirectory;
  if (rootDirectory)
  {
    itemIdentifier2 = [(FPItem *)rootDirectory itemIdentifier];

    v9 = fp_current_or_default_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [FPUntrashOperation transformItem:atIndex:];
    }

    itemIdentifier = itemIdentifier2;
  }

  if (itemIdentifier)
  {
    [itemCopy setParentItemIdentifier:itemIdentifier];
    v10 = 1073741828;
  }

  else
  {
    v10 = 0x40000000;
  }

  return v10;
}

- (void)postStitchingFinishWithResult:(id)result error:(id)error
{
  resultCopy = result;
  errorCopy = error;
  untrashCompletionBlock = [(FPUntrashOperation *)self untrashCompletionBlock];
  v8 = untrashCompletionBlock;
  if (untrashCompletionBlock)
  {
    (*(untrashCompletionBlock + 16))(untrashCompletionBlock, resultCopy, errorCopy);
    [(FPUntrashOperation *)self setUntrashCompletionBlock:0];
  }
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  items = [(FPTransformOperation *)self items];
  [stitcher2 deleteItems:items];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

- (id)fp_prettyDescription
{
  v2 = MEMORY[0x1E696AEC0];
  items = [(FPTransformOperation *)self items];
  fp_itemIdentifiers = [items fp_itemIdentifiers];
  v5 = FPAbbreviatedArrayDescription(fp_itemIdentifiers);
  v6 = [v2 stringWithFormat:@"untrash %@", v5];

  return v6;
}

- (void)subclassPreflightWithCompletion:(uint64_t *)a1 .cold.1(uint64_t *a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __54__FPUntrashOperation_subclassPreflightWithCompletion___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_1AAAE1000, a2, OS_LOG_TYPE_ERROR, "[ERROR] untrash operation preflight failed because of failed fetch root item for domain %@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

- (void)transformItem:atIndex:.cold.1()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3(&dword_1AAAE1000, v0, v1, "[DEBUG] Untrash moving item %@ to root because restore directory is trashed", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

@end