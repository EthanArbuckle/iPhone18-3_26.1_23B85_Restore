@interface TUIMutableDynamicArray
- (void)_beginBatchUpdatesWithTransaction:(id)transaction generation:(id)generation;
- (void)_endBatchUpdates;
- (void)deleteItemAtIndex:(unint64_t)index;
- (void)insertItemAtIndex:(unint64_t)index;
- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)performBatchUpdatesWithGeneration:(id)generation block:(id)block;
- (void)performBatchUpdatesWithTransaction:(id)transaction generation:(id)generation block:(id)block;
- (void)updateItemAtIndex:(unint64_t)index;
@end

@implementation TUIMutableDynamicArray

- (void)performBatchUpdatesWithGeneration:(id)generation block:(id)block
{
  blockCopy = block;
  generationCopy = generation;
  v8 = +[TUITransaction currentOrImplicitTransaction];
  [(TUIMutableDynamicArray *)self performBatchUpdatesWithTransaction:v8 generation:generationCopy block:blockCopy];
}

- (void)performBatchUpdatesWithTransaction:(id)transaction generation:(id)generation block:(id)block
{
  transactionCopy = transaction;
  generationCopy = generation;
  blockCopy = block;
  v10 = blockCopy;
  if (blockCopy)
  {
    if (self->_updateGroup)
    {
      (*(blockCopy + 2))(blockCopy, self);
    }

    else
    {
      v11 = transactionCopy;
      if (!transactionCopy)
      {
        v11 = +[TUITransaction currentOrImplicitTransaction];
      }

      transactionCopy = v11;
      [(TUIMutableDynamicArray *)self _beginBatchUpdatesWithTransaction:v11 generation:generationCopy];
      (v10)[2](v10, self);
      [(TUIMutableDynamicArray *)self _endBatchUpdates];
      v12 = objc_opt_self();
    }
  }
}

- (void)_beginBatchUpdatesWithTransaction:(id)transaction generation:(id)generation
{
  v5 = [(TUIDynamicArray *)self _newUpdateGroupWithGeneration:generation transaction:transaction];
  updateGroup = self->_updateGroup;
  self->_updateGroup = v5;
}

- (void)_endBatchUpdates
{
  [(_TUIDynamicArrayUpdateGroup *)self->_updateGroup finalizeUpdates];
  [(TUIDynamicArray *)self _enqueueUpdate:self->_updateGroup];
  updateGroup = self->_updateGroup;
  self->_updateGroup = 0;
}

- (void)insertItemAtIndex:(unint64_t)index
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup insertItemAtIndex:index];
  }
}

- (void)deleteItemAtIndex:(unint64_t)index
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup deleteItemAtIndex:index];
  }
}

- (void)updateItemAtIndex:(unint64_t)index
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup updateItemAtIndex:index];
  }
}

- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup moveItemFromIndex:index toIndex:toIndex];
  }
}

@end