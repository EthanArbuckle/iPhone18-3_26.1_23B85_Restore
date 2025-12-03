@interface RCFoldersFetchedResultsController
- (NSArray)builtinFolders;
- (NSArray)userFolders;
- (NSDiffableDataSourceSnapshot)currentSnapshot;
- (NSMutableDictionary)builtInContentControllers;
- (NSMutableDictionary)userContentControllers;
- (RCFoldersFetchedResultsController)initWithFetchRequest:(id)request managedObjectContext:(id)context;
- (id)_contentControllerForId:(id)id;
- (id)folderAtIndexPath:(id)path;
- (id)folderWithIdentifier:(id)identifier;
- (id)indexPathForFolder:(id)folder;
- (id)playableRecordingsInFolder:(id)folder;
- (unint64_t)playableCountForFolder:(id)folder;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)reloadBuiltinFolder:(id)folder;
- (void)reloadUserFolder:(id)folder;
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
          folderControllerID = [v11 folderControllerID];
          [(NSDictionary *)v5 setObject:v12 forKeyedSubscript:folderControllerID];

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

- (RCFoldersFetchedResultsController)initWithFetchRequest:(id)request managedObjectContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  v19.receiver = self;
  v19.super_class = RCFoldersFetchedResultsController;
  v8 = [(RCFoldersFetchedResultsController *)&v19 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, context);
    v10 = [[NSFetchedResultsController alloc] initWithFetchRequest:requestCopy managedObjectContext:contextCopy sectionNameKeyPath:0 cacheName:0];
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
    userFolders = [(RCFoldersFetchedResultsController *)self userFolders];
    v8 = [userFolders countByEnumeratingWithState:&v17 objects:v21 count:16];
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
            objc_enumerationMutation(userFolders);
          }

          v12 = *(*(&v17 + 1) + 8 * i);
          v13 = [v6 recordingsControllerWithFolder:v12];
          v14 = self->_userContentControllers;
          folderControllerID = [v12 folderControllerID];
          [(NSMutableDictionary *)v14 setObject:v13 forKeyedSubscript:folderControllerID];

          [v13 setDelegate:self->_folderContentsDelegate];
        }

        v9 = [userFolders countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v9);
    }

    userContentControllers = self->_userContentControllers;
  }

  return userContentControllers;
}

- (id)_contentControllerForId:(id)id
{
  idCopy = id;
  if ([idCopy __rc_folderType] == 4)
  {
    [(RCFoldersFetchedResultsController *)self userContentControllers];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)self builtInContentControllers];
  }
  v5 = ;
  v6 = [v5 objectForKeyedSubscript:idCopy];

  return v6;
}

- (id)playableRecordingsInFolder:(id)folder
{
  folderControllerID = [folder folderControllerID];
  v5 = [(RCFoldersFetchedResultsController *)self _contentControllerForId:folderControllerID];

  fetchedRecordings = [v5 fetchedRecordings];

  return fetchedRecordings;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  objectCopy = object;
  pathCopy = path;
  indexPathCopy = indexPath;
  if (type - 3 < 2)
  {
    [(NSMutableArray *)self->_pendingUpdates addObject:objectCopy];
  }

  else if (type == 1)
  {
    v20 = +[RCApplicationModel sharedApplicationModel];
    v21 = [v20 recordingsControllerWithFolder:objectCopy];

    userContentControllers = self->_userContentControllers;
    folderControllerID = [objectCopy folderControllerID];
    [(NSMutableDictionary *)userContentControllers setObject:v21 forKeyedSubscript:folderControllerID];

    [v21 setDelegate:self->_folderContentsDelegate];
  }

  else if (type == 2)
  {
    v15 = self->_userContentControllers;
    folderControllerID2 = [objectCopy folderControllerID];
    v17 = [(NSMutableDictionary *)v15 objectForKeyedSubscript:folderControllerID2];

    [v17 setDelegate:0];
    v18 = self->_userContentControllers;
    folderControllerID3 = [objectCopy folderControllerID];
    [(NSMutableDictionary *)v18 setObject:0 forKeyedSubscript:folderControllerID3];
  }
}

- (void)controllerDidChangeContent:(id)content
{
  currentSnapshot = [(RCFoldersFetchedResultsController *)self currentSnapshot];
  if (currentSnapshot)
  {
    if ([(NSMutableArray *)self->_pendingUpdates count])
    {
      v5 = sub_100094C4C(self->_pendingUpdates);
      [currentSnapshot reconfigureItemsWithIdentifiers:v5];

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

          [*(*(&v11 + 1) + 8 * v10) controller:self didChangeContentWithSnapshot:{currentSnapshot, v11}];
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
  builtinFoldersSectionIdentifier = [objc_opt_class() builtinFoldersSectionIdentifier];
  userFoldersSectionIdentifier = [objc_opt_class() userFoldersSectionIdentifier];
  if (v3)
  {
    v14 = builtinFoldersSectionIdentifier;
    v6 = [NSArray arrayWithObjects:&v14 count:1];
    [v3 appendSectionsWithIdentifiers:v6];

    builtinFolders = [(RCFoldersFetchedResultsController *)self builtinFolders];
    v8 = sub_100094C4C(builtinFolders);
    [v3 appendItemsWithIdentifiers:v8 intoSectionWithIdentifier:builtinFoldersSectionIdentifier];

    userFolders = [(RCFoldersFetchedResultsController *)self userFolders];
    if ([userFolders count])
    {
      v13 = userFoldersSectionIdentifier;
      v10 = [NSArray arrayWithObjects:&v13 count:1];
      [v3 appendSectionsWithIdentifiers:v10];

      v11 = sub_100094C4C(userFolders);
      [v3 appendItemsWithIdentifiers:v11 intoSectionWithIdentifier:userFoldersSectionIdentifier];
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

- (void)reloadBuiltinFolder:(id)folder
{
  folderCopy = folder;
  v5 = +[RCBuiltinRecordingsFolder allBuiltInFolders];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100095240;
  v20[3] = &unk_10028BEB0;
  v20[4] = self;
  v6 = [v5 na_filter:v20];
  builtinFolders = self->_builtinFolders;
  self->_builtinFolders = v6;

  currentSnapshot = [(RCFoldersFetchedResultsController *)self currentSnapshot];
  if (currentSnapshot)
  {
    if (![folderCopy folderType] || -[RCFoldersFetchedResultsController playableCountForFolder:](self, "playableCountForFolder:", folderCopy))
    {
      folderControllerID = [folderCopy folderControllerID];
      v22 = folderControllerID;
      v10 = [NSArray arrayWithObjects:&v22 count:1];
      [currentSnapshot reconfigureItemsWithIdentifiers:v10];
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

          [*(*(&v16 + 1) + 8 * v15) controller:self didChangeContentWithSnapshot:{currentSnapshot, v16}];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [(NSHashTable *)v11 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v13);
    }
  }
}

- (void)reloadUserFolder:(id)folder
{
  folderCopy = folder;
  currentSnapshot = [(RCFoldersFetchedResultsController *)self currentSnapshot];
  if (currentSnapshot)
  {
    folderControllerID = [folderCopy folderControllerID];
    v18 = folderControllerID;
    v7 = [NSArray arrayWithObjects:&v18 count:1];
    [currentSnapshot reconfigureItemsWithIdentifiers:v7];

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

          [*(*(&v13 + 1) + 8 * v12) controller:self didChangeContentWithSnapshot:{currentSnapshot, v13}];
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

  _fetchedObjects = [(NSFetchedResultsController *)self->_userFoldersController _fetchedObjects];
  v8 = _fetchedObjects;
  if (_fetchedObjects)
  {
    v9 = _fetchedObjects;
  }

  else
  {
    v9 = &__NSArray0__struct;
  }

  v10 = v9;

  return v9;
}

- (id)folderWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  __rc_folderType = [identifierCopy __rc_folderType];
  if (__rc_folderType == 4)
  {
    v6 = [(NSManagedObjectContext *)self->_context existingObjectWithID:identifierCopy error:0];
  }

  else
  {
    v7 = __rc_folderType;
    v8 = +[RCBuiltinRecordingsFolder allBuiltInFolders];
    v6 = [v8 objectAtIndexedSubscript:v7];
  }

  return v6;
}

- (id)folderAtIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    [(RCFoldersFetchedResultsController *)self userFolders];
  }

  else
  {
    [(RCFoldersFetchedResultsController *)self builtinFolders];
  }
  v5 = ;
  v6 = [pathCopy row];

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

- (id)indexPathForFolder:(id)folder
{
  folderCopy = folder;
  v5 = [folderCopy folderType] == 4;
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
  v8 = [v7 indexOfObject:folderCopy];

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

- (unint64_t)playableCountForFolder:(id)folder
{
  folderControllerID = [folder folderControllerID];
  v5 = [(RCFoldersFetchedResultsController *)self _contentControllerForId:folderControllerID];

  fetchedObjects = [v5 fetchedObjects];
  v7 = [fetchedObjects count];

  return v7;
}

@end