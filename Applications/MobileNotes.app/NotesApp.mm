@interface NotesApp
+ (id)sharedNotesApp;
- (BOOL)_refreshIsPendingForCollectionWithId:(id)id;
- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options;
- (NoteContext)noteContext;
- (void)_cancelAllPendingRefreshes;
- (void)_markRefreshAsPendingForCollectionWithId:(id)id;
- (void)_performRefreshIfNeededForCollectionWithId:(id)id;
- (void)_performRefreshIfNeededForOrphanedAccounts;
- (void)_performRefreshIfNeededForStoresList;
- (void)_unmarkRefreshAsPendingForCollectionWithId:(id)id;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillTerminate:(id)terminate;
- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath;
- (void)controllerDidChangeContent:(id)content;
- (void)dealloc;
- (void)refreshNotesIfNeededForCollection:(id)collection;
- (void)refreshOrphanedAccountsIfNeeded;
- (void)refreshStoresListIfNeeded;
- (void)setupApplication;
- (void)setupApplicationIfNecessary;
- (void)updateAccountMigrationStates;
@end

@implementation NotesApp

+ (id)sharedNotesApp
{
  if (qword_1006CB458 != -1)
  {
    sub_100004B10();
  }

  v3 = qword_1006CB450;

  return v3;
}

- (void)setupApplicationIfNecessary
{
  if (*(self + 8))
  {

    [(NotesApp *)self setShouldSetupApplicationWhenEnteringForeground:1];
  }

  else if (![(NotesApp *)self didSetupApplication])
  {

    [(NotesApp *)self setupApplication];
  }
}

- (NoteContext)noteContext
{
  [(NotesApp *)self setupApplicationIfNecessary];
  noteContext = self->_noteContext;

  return noteContext;
}

- (void)setupApplication
{
  if (![(NotesApp *)self didSetupApplication])
  {
    self->_didSetupApplication = 1;
    +[UIApplication shouldMakeUIForDefaultPNG];
    v13 = +[NoteContext sharedContext];
    [(NotesApp *)self setNoteContext:?];
    noteContext = [(NotesApp *)self noteContext];
    [noteContext enableChangeLogging:1];

    noteContext2 = [(NotesApp *)self noteContext];
    [noteContext2 setHasPriorityInSaveConflicts:1];

    initWithPrivateQueue = [[NoteContext alloc] initWithPrivateQueue];
    [(NotesApp *)self setBackgroundNoteContext:initWithPrivateQueue];

    backgroundNoteContext = [(NotesApp *)self backgroundNoteContext];
    v7 = [backgroundNoteContext newFRCForAccountsWithDelegate:self];
    [(NotesApp *)self setAccountsFetchedResultsController:v7];

    backgroundNoteContext2 = [(NotesApp *)self backgroundNoteContext];
    v9 = [backgroundNoteContext2 newFRCForStoresWithDelegate:self];
    [(NotesApp *)self setStoresFetchedResultsController:v9];

    v10 = +[AccountUtilities sharedAccountUtilities];
    [v10 startKeepingAccountInfosUpToDate];

    v11 = +[UIApplication sharedApplication];
    applicationState = [v11 applicationState];

    if (applicationState != 2)
    {
      [(NotesApp *)self refreshOrphanedAccountsIfNeeded];
      [(NotesApp *)self refreshStoresListIfNeeded];
    }
  }
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v3.receiver = self;
  v3.super_class = NotesApp;
  [(NotesApp *)&v3 dealloc];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  *(self + 8) &= ~1u;
  if ([(NotesApp *)self shouldSetupApplicationWhenEnteringForeground])
  {
    [(NotesApp *)self setupApplication];
    [(NotesApp *)self setShouldSetupApplicationWhenEnteringForeground:0];
  }

  if ([(NotesApp *)self didSetupApplication])
  {
    [(NotesApp *)self refreshOrphanedAccountsIfNeeded];
    [(NotesApp *)self refreshStoresListIfNeeded];
    noteContext = [(NotesApp *)self noteContext];
    [noteContext resetNotificationCount];

    [(NotesApp *)self updateAccountMigrationStates];
  }
}

- (void)applicationWillTerminate:(id)terminate
{
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];
}

- (BOOL)application:(id)application didFinishLaunchingWithOptions:(id)options
{
  if (([ICNoteContext legacyNotesDisabled:application]& 1) == 0)
  {
    [(NotesApp *)self setupApplication];
  }

  +[UIApplication shouldMakeUIForDefaultPNG];
  return 1;
}

- (void)controller:(id)controller didChangeObject:(id)object atIndexPath:(id)path forChangeType:(unint64_t)type newIndexPath:(id)indexPath
{
  controllerCopy = controller;
  v7 = controllerCopy;
  performBlockOnMainThread();
}

- (void)controllerDidChangeContent:(id)content
{
  contentCopy = content;
  v3 = contentCopy;
  performBlockOnMainThread();
}

- (void)_unmarkRefreshAsPendingForCollectionWithId:(id)id
{
  if (id)
  {
    [(NSMutableSet *)self->_collectionIDsPendingRefresh removeObject:?];
  }

  else
  {
    *(self + 8) &= ~4u;
  }
}

- (void)_performRefreshIfNeededForCollectionWithId:(id)id
{
  idCopy = id;
  [(NotesApp *)self _unmarkRefreshAsPendingForCollectionWithId:idCopy];
  v4 = +[NotesRefreshController sharedInstance];
  v5 = v4;
  if (idCopy)
  {
    if ([v4 notesNeedRefreshForCollectionWithID:idCopy])
    {
      [v5 refreshNotesForCollectionWithID:idCopy];
    }
  }

  else
  {
    [v4 refreshAllNotesIfNeeded];
  }
}

- (BOOL)_refreshIsPendingForCollectionWithId:(id)id
{
  if (id)
  {
    LOBYTE(v3) = [(NSMutableSet *)self->_collectionIDsPendingRefresh containsObject:?];
  }

  else
  {
    return (*(self + 8) >> 2) & 1;
  }

  return v3;
}

- (void)_markRefreshAsPendingForCollectionWithId:(id)id
{
  idCopy = id;
  if (idCopy)
  {
    collectionIDsPendingRefresh = self->_collectionIDsPendingRefresh;
    v8 = idCopy;
    if (!collectionIDsPendingRefresh)
    {
      v6 = objc_alloc_init(NSMutableSet);
      v7 = self->_collectionIDsPendingRefresh;
      self->_collectionIDsPendingRefresh = v6;

      collectionIDsPendingRefresh = self->_collectionIDsPendingRefresh;
    }

    [(NSMutableSet *)collectionIDsPendingRefresh addObject:v8];
    idCopy = v8;
  }

  else
  {
    *(self + 8) |= 4u;
  }
}

- (void)refreshNotesIfNeededForCollection:(id)collection
{
  objectID = [collection objectID];
  if (![(NotesApp *)self _refreshIsPendingForCollectionWithId:?])
  {
    [(NotesApp *)self _markRefreshAsPendingForCollectionWithId:objectID];
    [(NotesApp *)self performSelector:"_performRefreshIfNeededForCollectionWithId:" withObject:objectID afterDelay:3.0];
  }
}

- (void)_performRefreshIfNeededForStoresList
{
  [(NotesApp *)self _unmarkRefreshAsPendingForStoresList];
  v2 = +[NotesRefreshController sharedInstance];
  if ([v2 storesListNeedsRefresh])
  {
    [v2 refreshStoresList];
  }
}

- (void)refreshStoresListIfNeeded
{
  if (![(NotesApp *)self _refreshIsPendingForStoresList])
  {
    [(NotesApp *)self _markRefreshAsPendingForStoresList];

    [(NotesApp *)self performSelector:"_performRefreshIfNeededForStoresList" withObject:0 afterDelay:3.0];
  }
}

- (void)_performRefreshIfNeededForOrphanedAccounts
{
  v2 = +[NotesRefreshController sharedInstance];
  [v2 refreshOrphanedAccounts];
}

- (void)refreshOrphanedAccountsIfNeeded
{
  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_performRefreshIfNeededForOrphanedAccounts" object:0];

  [(NotesApp *)self performSelector:"_performRefreshIfNeededForOrphanedAccounts" withObject:0 afterDelay:3.0];
}

- (void)updateAccountMigrationStates
{
  v2 = dispatch_get_global_queue(0, 0);
  dispatch_async(v2, &stru_10064AF70);
}

- (void)_cancelAllPendingRefreshes
{
  if ([(NotesApp *)self _refreshIsPendingForCollectionWithId:0])
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_performRefreshIfNeededForCollectionWithId:" object:0];
    [(NotesApp *)self _unmarkRefreshAsPendingForCollectionWithId:0];
  }

  v3 = [NSSet setWithSet:self->_collectionIDsPendingRefresh];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_performRefreshIfNeededForCollectionWithId:" object:v8];
        [(NotesApp *)self _unmarkRefreshAsPendingForCollectionWithId:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if ([(NotesApp *)self _refreshIsPendingForStoresList])
  {
    [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_performRefreshIfNeededForStoresList" object:0];
    [(NotesApp *)self _unmarkRefreshAsPendingForStoresList];
  }

  [objc_opt_class() cancelPreviousPerformRequestsWithTarget:self selector:"_performRefreshIfNeededForOrphanedAccounts" object:0];
}

@end