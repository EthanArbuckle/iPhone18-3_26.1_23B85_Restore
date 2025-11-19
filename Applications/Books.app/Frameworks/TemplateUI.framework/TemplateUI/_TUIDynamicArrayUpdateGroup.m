@interface _TUIDynamicArrayUpdateGroup
- (_TUIDynamicArrayUpdateGroup)initWithGeneration:(id)a3 count:(unint64_t)a4 transaction:(id)a5;
- (id)trimWithStart:(int64_t)a3 end:(int64_t)a4;
- (void)dealloc;
- (void)deleteItemAtIndex:(unint64_t)a3;
- (void)finalizeUpdates;
- (void)insertItemAtIndex:(unint64_t)a3;
- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4;
- (void)updateItemAtIndex:(unint64_t)a3;
@end

@implementation _TUIDynamicArrayUpdateGroup

- (_TUIDynamicArrayUpdateGroup)initWithGeneration:(id)a3 count:(unint64_t)a4 transaction:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _TUIDynamicArrayUpdateGroup;
  v11 = [(_TUIDynamicArrayUpdateGroup *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_generation, a3);
    v12->_count = a4;
    v12->_oldCount = a4;
    objc_storeStrong(&v12->_transaction, a5);
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

- (void)insertItemAtIndex:(unint64_t)a3
{
  v8 = objc_opt_new();
  [v8 setNewIndex:a3];
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

- (void)deleteItemAtIndex:(unint64_t)a3
{
  v8 = objc_opt_new();
  [v8 setNewIndex:0x7FFFFFFFFFFFFFFFLL];
  [v8 setOldIndex:a3];
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

- (void)updateItemAtIndex:(unint64_t)a3
{
  v8 = objc_opt_new();
  [v8 setOldIndex:a3];
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

- (void)moveItemFromIndex:(unint64_t)a3 toIndex:(unint64_t)a4
{
  v10 = objc_opt_new();
  [v10 setNewIndex:a4];
  [v10 setOldIndex:a3];
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

- (id)trimWithStart:(int64_t)a3 end:(int64_t)a4
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
        v14 = [v13 kind];
        if (v14 > 1)
        {
          if (v14 == &dword_0 + 2)
          {
            -[TUIIndexMapper updateAtIndex:](v7, "updateAtIndex:", [v13 oldIndex]);
          }

          else if (v14 == &dword_0 + 3)
          {
            -[TUIIndexMapper moveFromIndex:toIndex:](v7, "moveFromIndex:toIndex:", [v13 oldIndex], objc_msgSend(v13, "newIndex"));
          }
        }

        else if (v14)
        {
          if (v14 == &dword_0 + 1)
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

  [(TUIIndexMapper *)v7 trimWithStart:a3 end:a4];
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