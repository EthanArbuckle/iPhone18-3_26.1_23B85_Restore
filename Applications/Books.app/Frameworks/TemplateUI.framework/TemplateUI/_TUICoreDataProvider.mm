@interface _TUICoreDataProvider
- (TUIDynamicArray)limitedArray;
- (TUIMutableDynamicArray)rootArray;
- (_TUICoreDataProvider)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (id)_startObserving;
- (void)_contextDidMergeChanges:(id)a3;
- (void)_contextDidSave:(id)a3;
- (void)_updatePredicate:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerWillChangeContent:(id)a3;
- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5;
- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5;
@end

@implementation _TUICoreDataProvider

- (_TUICoreDataProvider)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = _TUICoreDataProvider;
  v8 = [(_TUICoreDataProvider *)&v18 init];
  if (v8)
  {
    v9 = [v6 copy];

    v10 = [v9 fetchLimit];
    v8->_fetchLimit = v10;
    if (v10)
    {
      [v9 setFetchLimit:0];
      [v9 setFetchBatchSize:v8->_fetchLimit];
    }

    v11 = [[NSFetchedResultsController alloc] initWithFetchRequest:v9 managedObjectContext:v7 sectionNameKeyPath:0 cacheName:0];
    controller = v8->_controller;
    v8->_controller = v11;

    [(NSFetchedResultsController *)v8->_controller setDelegate:v8];
    v13 = +[NSNotificationCenter defaultCenter];
    v14 = [(NSFetchedResultsController *)v8->_controller managedObjectContext];
    [v13 addObserver:v8 selector:"_contextDidSave:" name:NSManagedObjectContextDidSaveNotification object:v14];

    v15 = +[NSNotificationCenter defaultCenter];
    v16 = [(NSFetchedResultsController *)v8->_controller managedObjectContext];
    [v15 addObserver:v8 selector:"_contextDidMergeChanges:" name:NSManagedObjectContextDidMergeChangesObjectIDsNotification object:v16];
  }

  else
  {
    v9 = v6;
  }

  return v8;
}

- (void)fetchDataForRange:(_NSRange)a3 generation:(id)a4 block:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_32A04;
  v9[3] = &unk_25EAC8;
  v10 = a5;
  v11 = location;
  v12 = length;
  v8 = v10;
  [a4 performBlockAndWait:v9];
}

- (void)fetchDataForIndexes:(id)a3 generation:(id)a4 block:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_32BF8;
  v9[3] = &unk_25EAF0;
  v10 = a3;
  v11 = a5;
  v7 = v10;
  v8 = v11;
  [a4 performBlockAndWait:v9];
}

- (id)_startObserving
{
  [(NSFetchedResultsController *)self->_controller managedObjectContext];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_32E40;
  v13 = sub_32E50;
  v14 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_32E58;
  v6[3] = &unk_25DC78;
  v3 = v6[4] = self;
  v7 = v3;
  v8 = &v9;
  [v3 performBlockAndWait:v6];
  v4 = v10[5];

  _Block_object_dispose(&v9, 8);

  return v4;
}

- (void)_updatePredicate:(id)a3
{
  v4 = a3;
  v5 = [(NSFetchedResultsController *)self->_controller fetchRequest];
  v6 = [v5 copy];

  [v6 setFetchBatchSize:0];
  [v6 setFetchLimit:self->_fetchLimit];
  [v6 setResultType:1];
  v7 = [v6 copy];
  [v7 setPredicate:v4];
  v8 = [(NSFetchedResultsController *)self->_controller managedObjectContext];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_33120;
  v12[3] = &unk_25EB18;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v15 = v4;
  v9 = v4;
  v10 = v7;
  v11 = v6;
  [v8 performBlockAndWait:v12];
}

- (void)controllerWillChangeContent:(id)a3
{
  v4 = [_TUICoreDataGeneration alloc];
  v5 = [(NSFetchedResultsController *)self->_controller managedObjectContext];
  v6 = [(NSFetchedResultsController *)self->_controller fetchRequest];
  v7 = [(_TUICoreDataGeneration *)v4 initWithContext:v5 fetchRequest:v6];
  captureGeneration = self->_captureGeneration;
  self->_captureGeneration = v7;

  v9 = +[TUITransactionOptions defaultImplicitOptions];
  v10 = [TUITransaction transactionWithOptions:v9];
  transaction = self->_transaction;
  self->_transaction = v10;

  WeakRetained = objc_loadWeakRetained(&self->_rootArray);
  [WeakRetained _beginBatchUpdatesWithTransaction:self->_transaction generation:self->_captureGeneration];
}

- (void)_contextDidSave:(id)a3
{
  captureGeneration = self->_captureGeneration;
  if (captureGeneration)
  {
    v5 = [(NSFetchedResultsController *)self->_controller fetchedObjects];
    -[_TUICoreDataGeneration updateCount:](captureGeneration, "updateCount:", [v5 count]);

    v6 = self->_captureGeneration;
    v7 = [(NSFetchedResultsController *)self->_controller managedObjectContext];
    [(_TUICoreDataGeneration *)v6 captureTokenFromContext:v7];

    v8 = self->_captureGeneration;
    self->_captureGeneration = 0;

    WeakRetained = objc_loadWeakRetained(&self->_rootArray);
    [WeakRetained _endBatchUpdates];

    [(TUITransaction *)self->_transaction commit];
    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)_contextDidMergeChanges:(id)a3
{
  captureGeneration = self->_captureGeneration;
  if (captureGeneration)
  {
    v5 = [(NSFetchedResultsController *)self->_controller fetchedObjects];
    -[_TUICoreDataGeneration updateCount:](captureGeneration, "updateCount:", [v5 count]);

    v6 = self->_captureGeneration;
    v7 = [(NSFetchedResultsController *)self->_controller managedObjectContext];
    [(_TUICoreDataGeneration *)v6 captureTokenFromContext:v7];

    v8 = self->_captureGeneration;
    self->_captureGeneration = 0;

    WeakRetained = objc_loadWeakRetained(&self->_rootArray);
    [WeakRetained _endBatchUpdates];

    [(TUITransaction *)self->_transaction commit];
    transaction = self->_transaction;
    self->_transaction = 0;
  }
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v16 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 > 2)
  {
    if (a6 == 3)
    {
      WeakRetained = objc_loadWeakRetained(&self->_rootArray);
      [WeakRetained moveItemFromIndex:objc_msgSend(v13 toIndex:{"tui_row"), objc_msgSend(v14, "tui_row")}];
    }

    else
    {
      if (a6 != 4)
      {
        goto LABEL_11;
      }

      WeakRetained = objc_loadWeakRetained(&self->_rootArray);
      [WeakRetained updateItemAtIndex:{objc_msgSend(v13, "tui_row")}];
    }
  }

  else if (a6 == 1)
  {
    WeakRetained = objc_loadWeakRetained(&self->_rootArray);
    [WeakRetained insertItemAtIndex:{objc_msgSend(v14, "tui_row")}];
  }

  else
  {
    if (a6 != 2)
    {
      goto LABEL_11;
    }

    WeakRetained = objc_loadWeakRetained(&self->_rootArray);
    [WeakRetained deleteItemAtIndex:{objc_msgSend(v13, "tui_row")}];
  }

LABEL_11:
}

- (TUIMutableDynamicArray)rootArray
{
  WeakRetained = objc_loadWeakRetained(&self->_rootArray);

  return WeakRetained;
}

- (TUIDynamicArray)limitedArray
{
  WeakRetained = objc_loadWeakRetained(&self->_limitedArray);

  return WeakRetained;
}

@end