@interface FPEmptyAllTrashedItemsOperation
- (FPEmptyAllTrashedItemsOperation)init;
- (void)actionMain;
- (void)dataForCollectionShouldBeReloaded:(id)reloaded;
@end

@implementation FPEmptyAllTrashedItemsOperation

- (FPEmptyAllTrashedItemsOperation)init
{
  v3.receiver = self;
  v3.super_class = FPEmptyAllTrashedItemsOperation;
  return [(FPActionOperation *)&v3 initWithProvider:0 action:0];
}

- (void)actionMain
{
  v3 = +[FPItemManager defaultManager];
  newTrashCollection = [v3 newTrashCollection];

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("trash enumeration", v5);
  [newTrashCollection setWorkingQueue:v6];

  [newTrashCollection setDelegate:self];
  workingQueue = [newTrashCollection workingQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__FPEmptyAllTrashedItemsOperation_actionMain__block_invoke;
  block[3] = &unk_1E79399B0;
  v10 = newTrashCollection;
  v8 = newTrashCollection;
  dispatch_async(workingQueue, block);
}

- (void)dataForCollectionShouldBeReloaded:(id)reloaded
{
  reloadedCopy = reloaded;
  if (self->_gatheredItems)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"FPEmptyAllTrashedItems.m" lineNumber:68 description:@"received this callback twice"];
  }

  self->_gatheredItems = 1;
  items = [reloadedCopy items];
  [reloadedCopy stopObserving];
  if ([items count])
  {
    v8 = [[FPDeleteOperation alloc] initWithItems:items];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __69__FPEmptyAllTrashedItemsOperation_dataForCollectionShouldBeReloaded___block_invoke;
    v10[3] = &unk_1E7939C00;
    v10[4] = self;
    [(FPActionOperation *)v8 setActionCompletionBlock:v10];
    v9 = +[FPItemManager defaultManager];
    [v9 scheduleAction:v8];
  }

  else
  {
    [(FPOperation *)self completedWithResult:0 error:0];
  }
}

@end