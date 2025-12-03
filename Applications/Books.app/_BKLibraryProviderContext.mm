@interface _BKLibraryProviderContext
+ (id)sharedInstance;
- (id)initSingleton;
- (void)_mocDidSaveNotification:(id)notification;
- (void)dealloc;
@end

@implementation _BKLibraryProviderContext

+ (id)sharedInstance
{
  if (qword_100AF75F0 != -1)
  {
    sub_10078EFB4();
  }

  v3 = qword_100AF75E8;

  return v3;
}

- (id)initSingleton
{
  v10.receiver = self;
  v10.super_class = _BKLibraryProviderContext;
  v2 = [(_BKLibraryProviderContext *)&v10 init];
  if (v2)
  {
    v3 = +[BKLibraryManager defaultManager];
    v4 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
    moc = v2->_moc;
    v2->_moc = v4;

    v6 = v2->_moc;
    persistentStoreCoordinator = [v3 persistentStoreCoordinator];
    [(NSManagedObjectContext *)v6 setPersistentStoreCoordinator:persistentStoreCoordinator];

    [(NSManagedObjectContext *)v2->_moc setUndoManager:0];
    v8 = +[NSNotificationCenter defaultCenter];
    [v8 addObserver:v2 selector:"_mocDidSaveNotification:" name:NSManagedObjectContextDidSaveNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSManagedObjectContextDidSaveNotification object:0];

  v4.receiver = self;
  v4.super_class = _BKLibraryProviderContext;
  [(_BKLibraryProviderContext *)&v4 dealloc];
}

- (void)_mocDidSaveNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  moc = self->_moc;
  if (moc != object)
  {
    persistentStoreCoordinator = [(NSManagedObjectContext *)moc persistentStoreCoordinator];
    persistentStoreCoordinator2 = [(NSManagedObjectContext *)object persistentStoreCoordinator];
    v9 = persistentStoreCoordinator2;
    if (persistentStoreCoordinator == persistentStoreCoordinator2)
    {
    }

    else
    {
      persistentStoreCoordinator3 = [(NSManagedObjectContext *)self->_moc persistentStoreCoordinator];
      persistentStoreCoordinator4 = [(NSManagedObjectContext *)object persistentStoreCoordinator];
      v12 = [persistentStoreCoordinator3 hasStoreInCommonWith:persistentStoreCoordinator4];

      if (!v12)
      {
        goto LABEL_7;
      }
    }

    v13 = [(_BKLibraryProviderContext *)self moc];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000F287C;
    v14[3] = &unk_100A03440;
    v14[4] = self;
    v15 = notificationCopy;
    [v13 performBlock:v14];
  }

LABEL_7:
}

@end