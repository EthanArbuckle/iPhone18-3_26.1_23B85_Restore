@interface TUIMutableDynamicArray
- (void)_beginBatchUpdatesWithTransaction:(id)a3 generation:(id)a4;
- (void)_endBatchUpdates;
- (void)deleteItemAtIndex:(unint64_t)a3;
- (void)insertItemAtIndex:(unint64_t)a3;
- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)performBatchUpdatesWithGeneration:(id)a3 block:(id)a4;
- (void)performBatchUpdatesWithTransaction:(id)a3 generation:(id)a4 block:(id)a5;
- (void)updateItemAtIndex:(unint64_t)a3;
@end

@implementation TUIMutableDynamicArray

- (void)performBatchUpdatesWithGeneration:(id)a3 block:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[TUITransaction currentOrImplicitTransaction];
  [(TUIMutableDynamicArray *)self performBatchUpdatesWithTransaction:v8 generation:v7 block:v6];
}

- (void)performBatchUpdatesWithTransaction:(id)a3 generation:(id)a4 block:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  v10 = v9;
  if (v9)
  {
    if (self->_updateGroup)
    {
      (*(v9 + 2))(v9, self);
    }

    else
    {
      v11 = v13;
      if (!v13)
      {
        v11 = +[TUITransaction currentOrImplicitTransaction];
      }

      v13 = v11;
      [(TUIMutableDynamicArray *)self _beginBatchUpdatesWithTransaction:v11 generation:v8];
      (v10)[2](v10, self);
      [(TUIMutableDynamicArray *)self _endBatchUpdates];
      v12 = objc_opt_self();
    }
  }
}

- (void)_beginBatchUpdatesWithTransaction:(id)a3 generation:(id)a4
{
  v5 = [(TUIDynamicArray *)self _newUpdateGroupWithGeneration:a4 transaction:a3];
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

- (void)insertItemAtIndex:(unint64_t)a3
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup insertItemAtIndex:a3];
  }
}

- (void)deleteItemAtIndex:(unint64_t)a3
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup deleteItemAtIndex:a3];
  }
}

- (void)updateItemAtIndex:(unint64_t)a3
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup updateItemAtIndex:a3];
  }
}

- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  updateGroup = self->_updateGroup;
  if (updateGroup)
  {
    [(_TUIDynamicArrayUpdateGroup *)updateGroup moveItemFromIndex:a3 toIndex:a4];
  }
}

@end