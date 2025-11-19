@interface FPTransformOperation
- (FPTransformOperation)initWithItemsOfDifferentProviders:(id)a3 action:(id)a4;
- (id)fp_prettyDescription;
- (unint64_t)transformItem:(id)a3 atIndex:(unint64_t)a4;
- (void)actionMain;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)presendNotifications;
- (void)signalReindexItemsIfNeededForErrorsByItem:(id)a3;
@end

@implementation FPTransformOperation

- (FPTransformOperation)initWithItemsOfDifferentProviders:(id)a3 action:(id)a4
{
  v6 = a3;
  v11.receiver = self;
  v11.super_class = FPTransformOperation;
  v7 = [(FPActionOperation *)&v11 initWithItemsOfDifferentProviders:v6 action:a4];
  if (v7)
  {
    v8 = [v6 copy];
    items = v7->_items;
    v7->_items = v8;
  }

  return v7;
}

- (void)signalReindexItemsIfNeededForErrorsByItem:(id)a3
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_opt_new();
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __66__FPTransformOperation_signalReindexItemsIfNeededForErrorsByItem___block_invoke;
  v34[3] = &unk_1E793E0F8;
  v6 = v5;
  v35 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v34];
  if ([v6 count])
  {
    v27 = v4;
    v7 = fp_current_or_default_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      [FPTransformOperation signalReindexItemsIfNeededForErrorsByItem:];
    }

    v8 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v9 = [(FPTransformOperation *)self items];
    v10 = [v9 copy];

    v11 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v31;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v30 + 1) + 8 * i);
          v16 = [v15 itemIdentifier];
          if ([v6 containsObject:v16])
          {
          }

          else
          {
            v17 = [v15 formerIdentifier];
            v18 = [v6 containsObject:v17];

            if (!v18)
            {
              continue;
            }
          }

          v19 = [v15 providerDomainID];
          v20 = [v8 objectForKeyedSubscript:v19];

          if (!v20)
          {
            v21 = objc_opt_new();
            [v8 setObject:v21 forKeyedSubscript:v19];
          }

          v22 = [v8 objectForKeyedSubscript:v19];
          v23 = [v15 coreSpotlightIdentifier];
          [v22 addObject:v23];
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v12);
    }

    v24 = [objc_opt_class() daemonConnection];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __66__FPTransformOperation_signalReindexItemsIfNeededForErrorsByItem___block_invoke_371;
    v28[3] = &unk_1E7939C00;
    v29 = v8;
    v25 = v8;
    [v24 signalReindexCSIdentifiersByProviderDomainID:v25 indexReason:5 completionHandler:v28];

    v4 = v27;
  }

  v26 = *MEMORY[0x1E69E9840];
}

void __66__FPTransformOperation_signalReindexItemsIfNeededForErrorsByItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if ([a3 fp_isFileProviderError:-1005])
  {
    [*(a1 + 32) addObject:v5];
  }
}

void __66__FPTransformOperation_signalReindexItemsIfNeededForErrorsByItem___block_invoke_371(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = fp_current_or_default_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __66__FPTransformOperation_signalReindexItemsIfNeededForErrorsByItem___block_invoke_371_cold_1(a1, v3);
  }
}

- (void)actionMain
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  items = self->_items;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __34__FPTransformOperation_actionMain__block_invoke;
  v10[3] = &unk_1E793E120;
  v10[4] = self;
  v10[5] = &v11;
  v5 = [(NSArray *)items fp_mapWithIndex:v10];
  if (!v12[3])
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"FPActionOperation.m" lineNumber:1091 description:@"Transform didn't modify any field"];
  }

  v6 = [(FPActionOperation *)self remoteServiceProxy];
  v7 = v12[3];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __34__FPTransformOperation_actionMain__block_invoke_2;
  v9[3] = &unk_1E793C408;
  v9[4] = self;
  [v6 bulkItemChanges:v5 changedFields:v7 completionHandler:v9];

  _Block_object_dispose(&v11, 8);
}

id __34__FPTransformOperation_actionMain__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = [a2 strippedCopy];
  *(*(*(a1 + 40) + 8) + 24) |= [*(a1 + 32) transformItem:v5 atIndex:a3];

  return v5;
}

void __34__FPTransformOperation_actionMain__block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = fp_current_or_default_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __34__FPTransformOperation_actionMain__block_invoke_2_cold_1();
    }
  }

  else if ([v8 count])
  {
    v11 = fp_current_or_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __34__FPTransformOperation_actionMain__block_invoke_2_cold_1();
    }

    [*(a1 + 32) signalReindexItemsIfNeededForErrorsByItem:v8];
  }

  v12 = *(a1 + 32);
  v13 = [v7 allValues];
  if (v9)
  {
    [v12 completedWithResult:v13 error:v9];
  }

  else
  {
    v14 = [v8 allValues];
    v15 = [v14 firstObject];
    [v12 completedWithResult:v13 error:v15];
  }
}

- (void)presendNotifications
{
  v3 = [(FPActionOperation *)self stitcher];
  [v3 start];

  v8[0] = 0;
  v8[1] = v8;
  v8[2] = 0x2020000000;
  v8[3] = 0;
  v4 = [(FPActionOperation *)self stitcher];
  items = self->_items;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__FPTransformOperation_presendNotifications__block_invoke;
  v7[3] = &unk_1E793E148;
  v7[4] = self;
  v7[5] = v8;
  [v4 transformItems:items handler:v7];

  v6 = [(FPActionOperation *)self stitcher];
  [v6 flush];

  _Block_object_dispose(v8, 8);
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(FPTransformOperation *)self finalItemsForStitcherForResult:v6];
  v9 = [(FPActionOperation *)self stitcher];
  [v9 finishWithItems:v8 error:v7];

  [(FPTransformOperation *)self postStitchingFinishWithResult:v6 error:v7];
  v10 = [(FPTransformOperation *)self transformCompletionBlock];
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, v6, v7);
    [(FPTransformOperation *)self setTransformCompletionBlock:0];
  }

  v12.receiver = self;
  v12.super_class = FPTransformOperation;
  [(FPActionOperation *)&v12 finishWithResult:v6 error:v7];
}

- (unint64_t)transformItem:(id)a3 atIndex:(unint64_t)a4
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"FPActionOperation.m" lineNumber:1145 description:@"UNREACHABLE: this should be overriden by the concrete operation"];

  return 0;
}

- (id)fp_prettyDescription
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(FPTransformOperation *)self items];
  v4 = [v3 fp_itemIdentifiers];
  v5 = FPAbbreviatedArrayDescription(v4);
  v6 = [v2 stringWithFormat:@"modify items %@", v5];

  return v6;
}

- (void)signalReindexItemsIfNeededForErrorsByItem:.cold.1()
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2();
  _os_log_fault_impl(&dword_1AAAE1000, v0, OS_LOG_TYPE_FAULT, "[CRIT] Index out of sync. Forcing reindex of %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void __66__FPTransformOperation_signalReindexItemsIfNeededForErrorsByItem___block_invoke_371_cold_1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [a2 fp_prettyDescription];
  OUTLINED_FUNCTION_10_4();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_20();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __34__FPTransformOperation_actionMain__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_14();
  v8 = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + 32) fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3_3();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

@end