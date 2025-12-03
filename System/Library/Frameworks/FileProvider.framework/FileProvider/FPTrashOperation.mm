@interface FPTrashOperation
- (FPTrashOperation)initWithItems:(id)items;
- (id)fp_prettyDescription;
- (id)replicateForItems:(id)items;
- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index;
- (void)finishWithResult:(id)result error:(id)error;
- (void)presendNotifications;
- (void)subclassPreflightWithCompletion:(id)completion;
@end

@implementation FPTrashOperation

- (id)replicateForItems:(id)items
{
  itemsCopy = items;
  v4 = [[FPTrashOperation alloc] initWithItems:itemsCopy];

  return v4;
}

- (FPTrashOperation)initWithItems:(id)items
{
  v6.receiver = self;
  v6.super_class = FPTrashOperation;
  v3 = [(FPTransformOperation *)&v6 initWithItemsOfDifferentProviders:items action:@"Trash"];
  v4 = v3;
  if (v3)
  {
    [(FPActionOperation *)v3 setSetupRemoteOperationService:1];
  }

  return v4;
}

- (void)subclassPreflightWithCompletion:(id)completion
{
  completionCopy = completion;
  remoteServiceProxy = [(FPActionOperation *)self remoteServiceProxy];
  items = [(FPTransformOperation *)self items];
  fp_itemIDs = [items fp_itemIDs];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__FPTrashOperation_subclassPreflightWithCompletion___block_invoke;
  v10[3] = &unk_1E793DEF8;
  v11 = completionCopy;
  v12 = a2;
  v10[4] = self;
  v9 = completionCopy;
  [remoteServiceProxy preflightTrashItemIDs:fp_itemIDs completionHandler:v10];
}

uint64_t __52__FPTrashOperation_subclassPreflightWithCompletion___block_invoke(void *a1, uint64_t a2)
{
  v3 = a1[4];
  v2 = a1[5];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__FPTrashOperation_subclassPreflightWithCompletion___block_invoke_2;
  v6[3] = &unk_1E793CB78;
  v4 = a1[6];
  v6[4] = v3;
  v6[5] = v4;
  return [v3 tryRecoveringFromPreflightErrors:a2 recoveryHandler:v6 completion:v2];
}

uint64_t __52__FPTrashOperation_subclassPreflightWithCompletion___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (!a3)
  {
    goto LABEL_5;
  }

  if (a3 != 1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:*(a1 + 40) object:*(a1 + 32) file:@"FPActionOperation.m" lineNumber:1219 description:{@"UNREACHABLE: invalid index for error: %@", v5}];

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = 1;
LABEL_6:

  return v6;
}

- (unint64_t)transformItem:(id)item atIndex:(unint64_t)index
{
  itemCopy = item;
  [itemCopy setTrashed:1];
  [itemCopy setParentItemIdentifier:@"NSFileProviderTrashContainerItemIdentifier"];

  return 1073741828;
}

- (void)finishWithResult:(id)result error:(id)error
{
  errorCopy = error;
  resultCopy = result;
  items = [(FPTransformOperation *)self items];
  v9 = [errorCopy fp_annotatedErrorWithItems:items variant:@"Remove"];

  v10.receiver = self;
  v10.super_class = FPTrashOperation;
  [(FPTransformOperation *)&v10 finishWithResult:resultCopy error:v9];
}

- (id)fp_prettyDescription
{
  v2 = MEMORY[0x1E696AEC0];
  items = [(FPTransformOperation *)self items];
  fp_itemIdentifiers = [items fp_itemIdentifiers];
  v5 = FPAbbreviatedArrayDescription(fp_itemIdentifiers);
  v6 = [v2 stringWithFormat:@"trash items %@", v5];

  return v6;
}

- (void)presendNotifications
{
  stitcher = [(FPActionOperation *)self stitcher];
  [stitcher start];

  stitcher2 = [(FPActionOperation *)self stitcher];
  items = [(FPTransformOperation *)self items];
  [stitcher2 trashItems:items];

  stitcher3 = [(FPActionOperation *)self stitcher];
  [stitcher3 flush];
}

@end