@interface FPDeleteOperation
- (FPDeleteOperation)initWithItems:(id)a3;
- (id)replicateForItems:(id)a3;
- (void)actionMain;
- (void)finishWithResult:(id)a3 error:(id)a4;
- (void)presendNotifications;
@end

@implementation FPDeleteOperation

- (id)replicateForItems:(id)a3
{
  v3 = a3;
  v4 = [[FPDeleteOperation alloc] initWithItems:v3];

  return v4;
}

- (FPDeleteOperation)initWithItems:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = FPDeleteOperation;
  v6 = [(FPActionOperation *)&v9 initWithItemsOfDifferentProviders:v5 action:@"Delete"];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, a3);
    [(FPActionOperation *)v7 setSetupRemoteOperationService:1];
  }

  return v7;
}

- (void)actionMain
{
  v3 = [(NSArray *)self->_items fp_map:&__block_literal_global_316];
  v4 = [(NSArray *)self->_items fp_itemIDs];
  v5 = [(FPActionOperation *)self remoteServiceProxy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__FPDeleteOperation_actionMain__block_invoke_2;
  v6[3] = &unk_1E7939C00;
  v6[4] = self;
  [v5 deleteItemsWithIDs:v4 baseVersions:v3 options:-2147483647 reply:v6];
}

void __31__FPDeleteOperation_actionMain__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = fp_current_or_default_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __31__FPDeleteOperation_actionMain__block_invoke_2_cold_1(v3);
    }

    v5 = *(a1 + 32);
    v6 = v3;
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = 0;
  }

  [v5 completedWithResult:0 error:v6];
}

- (void)presendNotifications
{
  v3 = [(FPActionOperation *)self stitcher];
  [v3 start];

  v4 = [(FPActionOperation *)self stitcher];
  [v4 deleteItems:self->_items];

  v5 = [(FPActionOperation *)self stitcher];
  [v5 flush];
}

- (void)finishWithResult:(id)a3 error:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(FPActionOperation *)self stitcher];
  [v8 finishWithItem:v7 error:v6];

  v9 = [v6 fp_annotatedErrorWithItems:self->_items variant:@"Remove"];

  v10.receiver = self;
  v10.super_class = FPDeleteOperation;
  [(FPActionOperation *)&v10 finishWithResult:v7 error:v9];
}

void __31__FPDeleteOperation_actionMain__block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 fp_prettyDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end