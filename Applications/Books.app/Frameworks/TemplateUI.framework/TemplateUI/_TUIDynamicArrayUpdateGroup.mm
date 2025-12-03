@interface _TUIDynamicArrayUpdateGroup
- (_TUIDynamicArrayUpdateGroup)initWithGeneration:(id)generation count:(unint64_t)count transaction:(id)transaction;
- (id)trimWithStart:(int64_t)start end:(int64_t)end;
- (void)dealloc;
- (void)deleteItemAtIndex:(unint64_t)index;
- (void)finalizeUpdates;
- (void)insertItemAtIndex:(unint64_t)index;
- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex;
- (void)updateItemAtIndex:(unint64_t)index;
@end

@implementation _TUIDynamicArrayUpdateGroup

- (_TUIDynamicArrayUpdateGroup)initWithGeneration:(id)generation count:(unint64_t)count transaction:(id)transaction
{
  generationCopy = generation;
  transactionCopy = transaction;
  v14.receiver = self;
  v14.super_class = _TUIDynamicArrayUpdateGroup;
  v11 = [(_TUIDynamicArrayUpdateGroup *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_generation, generation);
    v12->_count = count;
    v12->_oldCount = count;
    objc_storeStrong(&v12->_transaction, transaction);
    [(_TUITransaction *)v12->_transaction addCompletionDeferral];
  }

  return v12;
}

- (void)dealloc
{
  [(_TUITransaction *)self->_transaction removeCompletionDeferral];
  v3.receiver = self;
  v3.super_class = _TUIDynamicArrayUpdateGroup;
  [(_TUIDynamicArrayUpdateGroup *)&v3 dealloc];
}

- (void)insertItemAtIndex:(unint64_t)index
{
  v8 = objc_opt_new();
  [v8 setNewIndex:index];
  [v8 setOldIndex:0x7FFFFFFFFFFFFFFFLL];
  [v8 setKind:0];
  ++self->_count;
  inserts = self->_inserts;
  if (!inserts)
  {
    v6 = objc_opt_new();
    v7 = self->_inserts;
    self->_inserts = v6;

    inserts = self->_inserts;
  }

  [(NSMutableArray *)inserts addObject:v8];
}

- (void)deleteItemAtIndex:(unint64_t)index
{
  v8 = objc_opt_new();
  [v8 setNewIndex:0x7FFFFFFFFFFFFFFFLL];
  [v8 setOldIndex:index];
  [v8 setKind:1];
  --self->_count;
  deletes = self->_deletes;
  if (!deletes)
  {
    v6 = objc_opt_new();
    v7 = self->_deletes;
    self->_deletes = v6;

    deletes = self->_deletes;
  }

  [(NSMutableArray *)deletes addObject:v8];
}

- (void)updateItemAtIndex:(unint64_t)index
{
  v8 = objc_opt_new();
  [v8 setOldIndex:index];
  [v8 setNewIndex:0x7FFFFFFFFFFFFFFFLL];
  [v8 setKind:2];
  updatesOrMoves = self->_updatesOrMoves;
  if (!updatesOrMoves)
  {
    v6 = objc_opt_new();
    v7 = self->_updatesOrMoves;
    self->_updatesOrMoves = v6;

    updatesOrMoves = self->_updatesOrMoves;
  }

  [(NSMutableArray *)updatesOrMoves addObject:v8];
}

- (void)moveItemFromIndex:(unint64_t)index toIndex:(unint64_t)toIndex
{
  v10 = objc_opt_new();
  [v10 setNewIndex:toIndex];
  [v10 setOldIndex:index];
  [v10 setKind:3];
  updatesOrMoves = self->_updatesOrMoves;
  if (!updatesOrMoves)
  {
    v8 = objc_opt_new();
    v9 = self->_updatesOrMoves;
    self->_updatesOrMoves = v8;

    updatesOrMoves = self->_updatesOrMoves;
  }

  [(NSMutableArray *)updatesOrMoves addObject:v10];
}

- (void)finalizeUpdates
{
  [(_TUIDynamicArrayUpdateGroup *)self _validateInserts];
  v3 = objc_opt_new();
  updates = self->_updates;
  self->_updates = v3;

  [(NSMutableArray *)self->_updates addObjectsFromArray:self->_deletes];
  [(NSMutableArray *)self->_updates addObjectsFromArray:self->_inserts];
  v5 = self->_updates;
  updatesOrMoves = self->_updatesOrMoves;

  [(NSMutableArray *)v5 addObjectsFromArray:updatesOrMoves];
}

- (id)trimWithStart:(int64_t)start end:(int64_t)end
{
  v7 = [[TUIIndexMapper alloc] initWithCount:self->_oldCount];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = self->_updates;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        kind = [v13 kind];
        if (kind > 1)
        {
          if (kind == &dword_0 + 2)
          {
            -[TUIIndexMapper updateAtIndex:](v7, "updateAtIndex:", [v13 oldIndex]);
          }

          else if (kind == &dword_0 + 3)
          {
            -[TUIIndexMapper moveFromIndex:toIndex:](v7, "moveFromIndex:toIndex:", [v13 oldIndex], objc_msgSend(v13, "newIndex"));
          }
        }

        else if (kind)
        {
          if (kind == &dword_0 + 1)
          {
            -[TUIIndexMapper deleteAtIndex:](v7, "deleteAtIndex:", [v13 oldIndex]);
          }
        }

        else
        {
          -[TUIIndexMapper insertAtIndex:](v7, "insertAtIndex:", [v13 newIndex]);
        }
      }

      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [(TUIIndexMapper *)v7 trimWithStart:start end:end];
  v15 = [objc_alloc(objc_opt_class()) initWithGeneration:self->_generation count:-[TUIIndexMapper oldCount](v7 transaction:{"oldCount"), self->_transaction}];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_DC094;
  v18[3] = &unk_261728;
  v16 = v15;
  v19 = v16;
  [(TUIIndexMapper *)v7 computeUpdatesWithBlock:v18];
  [v16 finalizeUpdates];

  return v16;
}

@end