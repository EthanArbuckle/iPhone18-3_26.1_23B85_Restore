@interface BKApplicationShortcutController
+ (void)preWarmWithLibrary:(id)library annotationProvider:(id)provider;
- (AEAnnotationProvider)annotationProvider;
- (BKApplicationShortcutController)initWithLibrary:(id)library;
- (BKLibraryAssetProvider)mainLibrary;
- (void)_performUpdateShortCutsWithCompletion:(id)completion;
- (void)_updateShortcuts;
- (void)dealloc;
- (void)managedObjectContextDidSave:(id)save;
@end

@implementation BKApplicationShortcutController

+ (void)preWarmWithLibrary:(id)library annotationProvider:(id)provider
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1001B8408;
  v8[3] = &unk_100A03440;
  libraryCopy = library;
  providerCopy = provider;
  v5 = qword_100AF7800;
  v6 = providerCopy;
  v7 = libraryCopy;
  if (v5 != -1)
  {
    dispatch_once(&qword_100AF7800, v8);
  }
}

- (BKApplicationShortcutController)initWithLibrary:(id)library
{
  libraryCopy = library;
  v22.receiver = self;
  v22.super_class = BKApplicationShortcutController;
  v5 = [(BKApplicationShortcutController *)&v22 init];
  v6 = v5;
  if (v5)
  {
    [(BKApplicationShortcutController *)v5 setMainLibrary:libraryCopy];
    objc_initWeak(&location, v6);
    v7 = [BUCoalescingCallBlock alloc];
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1001B865C;
    v19 = &unk_100A04820;
    objc_copyWeak(&v20, &location);
    v8 = [v7 initWithNotifyBlock:&v16 blockDescription:@"BKApplicationShortcutController"];
    [(BKApplicationShortcutController *)v6 setCoalescedUpdate:v8, v16, v17, v18, v19];

    coalescedUpdate = [(BKApplicationShortcutController *)v6 coalescedUpdate];
    [coalescedUpdate setCoalescingDelay:1.0];

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create("BKApplicationShortcutController.shortcutIconCreationQueue", v10);
    shortcutIconGenerationSerialQueue = v6->_shortcutIconGenerationSerialQueue;
    v6->_shortcutIconGenerationSerialQueue = v11;

    v13 = +[BURestrictionsProvider sharedInstance];
    [v13 addObserver:v6];

    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v6 selector:"managedObjectContextDidSave:" name:NSManagedObjectContextDidSaveNotification object:0];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4 = +[BURestrictionsProvider sharedInstance];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = BKApplicationShortcutController;
  [(BKApplicationShortcutController *)&v5 dealloc];
}

- (void)_updateShortcuts
{
  coalescedUpdate = [(BKApplicationShortcutController *)self coalescedUpdate];
  [coalescedUpdate signalWithCompletion:&stru_100A0A6D8];
}

- (void)_performUpdateShortCutsWithCompletion:(id)completion
{
  completionCopy = completion;
  mainLibrary = [(BKApplicationShortcutController *)self mainLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001B8A04;
  v7[3] = &unk_100A06678;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  [mainLibrary performBackgroundReadOnlyBlock:v7];
}

- (void)managedObjectContextDidSave:(id)save
{
  userInfo = [save userInfo];
  v4 = [userInfo objectForKey:NSInsertedObjectsKey];
  v5 = [NSPredicate predicateWithFormat:@"SELF isKindOfClass: %@", objc_opt_class()];
  v6 = [v4 filteredSetUsingPredicate:v5];

  v7 = [userInfo objectForKey:NSDeletedObjectsKey];
  v8 = [NSPredicate predicateWithFormat:@"SELF isKindOfClass: %@", objc_opt_class()];
  v9 = [v7 filteredSetUsingPredicate:v8];

  v10 = [userInfo objectForKey:NSUpdatedObjectsKey];
  v11 = [NSPredicate predicateWithFormat:@"SELF isKindOfClass: %@", objc_opt_class()];
  v12 = [v10 filteredSetUsingPredicate:v11];

  if ([v6 count] || objc_msgSend(v9, "count") || objc_msgSend(v12, "count"))
  {
    [(BKApplicationShortcutController *)self _updateShortcuts];
  }
}

- (AEAnnotationProvider)annotationProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_annotationProvider);

  return WeakRetained;
}

- (BKLibraryAssetProvider)mainLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_mainLibrary);

  return WeakRetained;
}

@end