@interface RCFoldersFetchedResultsController
- (NSArray)builtinFolders;
- (NSArray)userFolders;
- (NSDiffableDataSourceSnapshot)currentSnapshot;
- (NSMutableDictionary)builtInContentControllers;
- (NSMutableDictionary)userContentControllers;
- (RCFoldersFetchedResultsController)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (id)_contentControllerForId:(id)a3;
- (id)folderAtIndexPath:(id)a3;
- (id)folderWithIdentifier:(id)a3;
- (id)indexPathForFolder:(id)a3;
- (id)playableRecordingsInFolder:(id)a3;
- (unint64_t)playableCountForFolder:(id)a3;
- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7;
- (void)controllerDidChangeContent:(id)a3;
- (void)reloadBuiltinFolder:(id)a3;
- (void)reloadUserFolder:(id)a3;
@end

@implementation RCFoldersFetchedResultsController

- (NSMutableDictionary)builtInContentControllers
{
  builtInContentControllers = self->_builtInContentControllers;
  if (!builtInContentControllers)
  {
    v4 = +[RCApplicationModel sharedApplicationModel];
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = +[RCBuiltinRecordingsFolder allBuiltInFolders];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [v4 recordingsControllerWithFolder:v11];
          v13 = [v11 folderControllerID];
          [(NSDictionary *)v5 setObject:v12 forKeyedSubscript:v13];

          [v12 setDelegate:self->_folderContentsDelegate];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    v14 = self->_builtInContentControllers;
    self->_builtInContentControllers = v5;

    builtInContentControllers = self->_builtInContentControllers;
  }

  return builtInContentControllers;
}

- (RCFoldersFetchedResultsController)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = RCFoldersFetchedResultsController;
  v8 = [(RCFoldersFetchedResultsController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a4);
    v10 = [[NSFetchedResultsController alloc] initWithFetchRequest:v6 managedObjectContext:v7 sectionNameKeyPath:0 cacheName:0];
    userFoldersController = v9->_userFoldersController;
    v9->_userFoldersController = v10;

    [(NSFetchedResultsController *)v9->_userFoldersController setDelegate:v9];
    v12 = objc_opt_new();
    pendingUpdates = v9->_pendingUpdates;
    v9->_pendingUpdates = v12;

    v14 = objc_opt_new();
    folderContentsDelegate = v9->_folderContentsDelegate;
    v9->_folderContentsDelegate = v14;

    [(__RCFolderContentsDelegate *)v9->_folderContentsDelegate setFoldersController:v9];
    v16 = +[NSHashTable weakObjectsHashTable];
    observers = v9->_observers;
    v9->_observers = v16;
  }

  return v9;
}

- (NSMutableDictionary)userContentControllers
{
  userContentControllers = self->_userContentControllers;
  if (!userContentControllers)
  {
    v4 = objc_opt_new();
    v5 = self->_userContentControllers;
    self->_userContentControllers = v4;

    v6 = +[RCApplicationModel sharedApplicationModel];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v7 = [(RCFoldersFetchedResultsController *)self userFolders];
    v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v18;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v18 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v6 recordingsControllerWithFolder:v12];
          v14 = self->_userContentControllers;
          v15 = [v12 folderControllerID];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:v15];

          [v13 setDelegate:self->_folderContentsDelegate];
        }

        v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    userContentControllers = self->_userContentControllers;
  }

  return userContentControllers;
}

- (id)_contentControllerForId:(id)a3
{
  v4 = a3;
  if ([v4 __rc_folderType] == 4)
  {
    [(RCFoldersFetchedResultsController *)self userContentControllers];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)self builtInContentControllers];
  }
  v5 = ;
  v6 = [v5 objectForKeyedSubscript:v4];

  return v6;
}

- (id)playableRecordingsInFolder:(id)a3
{
  v4 = [a3 folderControllerID];
  v5 = [(RCFoldersFetchedResultsController *)self _contentControllerForId:v4];

  v6 = [v5 fetchedRecordings];

  return v6;
}

- (void)controller:(id)a3 didChangeObject:(id)a4 atIndexPath:(id)a5 forChangeType:(unint64_t)a6 newIndexPath:(id)a7
{
  v24 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 - 3 < 2)
  {
    [(NSMutableArray *)self->_pendingUpdates addObject:v12];
  }

  else if (a6 == 1)
  {
    v20 = +[RCApplicationModel sharedApplicationModel];
    v21 = [v20 recordingsControllerWithFolder:v12];

    userContentControllers = self->_userContentControllers;
    v23 = [v12 folderControllerID];
    [(NSMutableDictionary *)userContentControllers setObject:v21 forKeyedSubscript:v23];

    [v21 setDelegate:self->_folderContentsDelegate];
  }

  else if (a6 == 2)
  {
    v15 = self->_userContentControllers;
    v16 = [v12 folderControllerID];
    v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:v16];

    [v17 setDelegate:0];
    v18 = self->_userContentControllers;
    v19 = [v12 folderControllerID];
    [(NSMutableDictionary *)v18 setObject:0 forKeyedSubscript:v19];
  }
}

- (void)controllerDidChangeContent:(id)a3
{
  v4 = [(RCFoldersFetchedResultsController *)self currentSnapshot];
  if (v4)
  {
    if ([(NSMutableArray *)self->_pendingUpdates count])
    {
      v5 = sub_100094C4C(self->_pendingUpdates);
      [v4 reconfigureItemsWithIdentifiers:v5];

      [(NSMutableArray *)self->_pendingUpdates removeAllObjects];
    }

    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = self->_observers;
    v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) controller:self didChangeContentWithSnapshot:{v4, v11}];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (NSDiffableDataSourceSnapshot)currentSnapshot
{
  NSClassFromString(@"NSDiffableDataSourceSnapshot");
  v3 = objc_opt_new();
  v4 = [objc_opt_class() builtinFoldersSectionIdentifier];
  v5 = [objc_opt_class() userFoldersSectionIdentifier];
  if (v3)
  {
    v14 = v4;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    [v3 appendSectionsWithIdentifiers:v6];

    v7 = [(RCFoldersFetchedResultsController *)self builtinFolders];
    v8 = sub_100094C4C(v7);
    [v3 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:v4];

    v9 = [(RCFoldersFetchedResultsController *)self userFolders];
    if ([v9 count])
    {
      v13 = v5;
      v10 = [NSArray arrayWithObjects:&v13 count:1];
      [v3 appendSectionsWithIdentifiers:v10];

      v11 = sub_100094C4C(v9);
      [v3 appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:v5];
    }
  }

  return v3;
}

- (NSArray)builtinFolders
{
  builtinFolders = self->_builtinFolders;
  if (!builtinFolders)
  {
    v4 = +[RCBuiltinRecordingsFolder allBuiltInFolders];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100094FF0;
    v8[3] = &unk_10028BEB0;
    v8[4] = self;
    v5 = [v4 na_filter:v8];
    v6 = self->_builtinFolders;
    self->_builtinFolders = v5;

    builtinFolders = self->_builtinFolders;
  }

  return builtinFolders;
}

- (void)reloadBuiltinFolder:(id)a3
{
  v4 = a3;
  v5 = +[RCBuiltinRecordingsFolder allBuiltInFolders];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100095240;
  v20[3] = &unk_10028BEB0;
  v20[4] = self;
  v6 = [v5 na_filter:v20];
  builtinFolders = self->_builtinFolders;
  self->_builtinFolders = v6;

  v8 = [(RCFoldersFetchedResultsController *)self currentSnapshot];
  if (v8)
  {
    if (![v4 folderType] || -[RCFoldersFetchedResultsController playableCountForFolder:](self, "playableCountForFolder:", v4))
    {
      v9 = [v4 folderControllerID];
      v22 = v9;
      v10 = [NSArray arrayWithObjects:&v22 count:1];
      [v8 reconfigureItemsWithIdentifiers:v10];
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v11 = self->_observers;
    v12 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v17;
      do
      {
        v15 = 0;
        do
        {
          if (*v17 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v16 + 1) + 8 * v15) controller:self didChangeContentWithSnapshot:{v8, v16}];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)reloadUserFolder:(id)a3
{
  v4 = a3;
  v5 = [(RCFoldersFetchedResultsController *)self currentSnapshot];
  if (v5)
  {
    v6 = [v4 folderControllerID];
    v18 = v6;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
    [v5 reconfigureItemsWithIdentifiers:v7];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = self->_observers;
    v9 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12) controller:self didChangeContentWithSnapshot:{v5, v13}];
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSHashTable *)v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (NSArray)userFolders
{
  if (!self->_hasPerformedUserControllerFetch)
  {
    userFoldersController = self->_userFoldersController;
    v12 = 0;
    v4 = [(NSFetchedResultsController *)userFoldersController performFetch:&v12];
    v5 = v12;
    self->_hasPerformedUserControllerFetch = v4;
    if ((v4 & 1) == 0)
    {
      v6 = OSLogForCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001BA464(v5, v6);
      }
    }
  }

  v7 = [(NSFetchedResultsController *)self->_userFoldersController _fetchedObjects];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = v9;

  return v9;
}

- (id)folderWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [v4 __rc_folderType];
  if (v5 == 4)
  {
    v6 = [(NSManagedObjectContext *)self->_context existingObjectWithID:v4 error:0];
  }

  else
  {
    v7 = v5;
    v8 = +[RCBuiltinRecordingsFolder allBuiltInFolders];
    v6 = [v8 objectAtIndexedSubscript:v7];
  }

  return v6;
}

- (id)folderAtIndexPath:(id)a3
{
  v4 = a3;
  if ([v4 section])
  {
    [(RCFoldersFetchedResultsController *)self userFolders];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)self builtinFolders];
  }
  v5 = ;
  v6 = [v4 row];

  if (v6 >= [v5 count])
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndexedSubscript:v6];
  }

  return v7;
}

- (id)indexPathForFolder:(id)a3
{
  v4 = a3;
  v5 = [v4 folderType] == 4;
  v6 = v5;
  if (v5)
  {
    [(RCFoldersFetchedResultsController *)self userFolders];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)self builtinFolders];
  }
  v7 = ;
  v8 = [v7 indexOfObject:v4];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v9 = [NSIndexPath indexPathForRow:v8 inSection:v6];
  }

  return v9;
}

- (unint64_t)playableCountForFolder:(id)a3
{
  v4 = [a3 folderControllerID];
  v5 = [(RCFoldersFetchedResultsController *)self _contentControllerForId:v4];

  v6 = [v5 fetchedObjects];
  v7 = [v6 count];

  return v7;
}

@end