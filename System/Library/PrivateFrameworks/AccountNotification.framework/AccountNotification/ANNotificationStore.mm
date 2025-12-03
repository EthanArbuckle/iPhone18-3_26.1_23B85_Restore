@interface ANNotificationStore
+ (id)sharedStore;
- (ANNotificationStore)init;
- (BOOL)_unsafe_commitChangesInManagedObjectContext;
- (BOOL)limitPendingNotificationsForAccountTypeID:(id)d toMaximumCount:(unint64_t)count;
- (BOOL)removeAllNotificationsForAccountTypeID:(id)d;
- (BOOL)removeNotificationWithIdentifier:(id)identifier;
- (BOOL)saveNotification:(id)notification;
- (id)_copyPersistentStoreFilePath;
- (id)_managedObjectModel;
- (id)_notificationsMatchingPredicate:(id)predicate limit:(unint64_t)limit;
- (id)notificationWithIdentifier:(id)identifier;
- (id)pendingNotificationsForAccountsWithTypeID:(id)d;
- (id)pendingNotificationsWithEventID:(id)d;
- (id)typeIdentifiersOfAccountsWithPendingNotifications;
- (void)_createManagedObjectContext;
@end

@implementation ANNotificationStore

+ (id)sharedStore
{
  if (qword_100011420 != -1)
  {
    sub_100004F88();
  }

  v3 = qword_100011418;

  return v3;
}

- (ANNotificationStore)init
{
  v5.receiver = self;
  v5.super_class = ANNotificationStore;
  v2 = [(ANNotificationStore *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(ANNotificationStore *)v2 _createManagedObjectContext];
  }

  return v3;
}

- (id)pendingNotificationsForAccountsWithTypeID:(id)d
{
  v4 = [NSPredicate predicateWithFormat:@"accountTypeID = %@", d];
  v5 = [(ANNotificationStore *)self _notificationsMatchingPredicate:v4];

  return v5;
}

- (id)notificationWithIdentifier:(id)identifier
{
  identifier = [NSPredicate predicateWithFormat:@"identifier = %@", identifier];
  v5 = [(ANNotificationStore *)self _notificationsMatchingPredicate:identifier limit:1];
  firstObject = [v5 firstObject];

  return firstObject;
}

- (id)pendingNotificationsWithEventID:(id)d
{
  v4 = [NSPredicate predicateWithFormat:@"eventID = %@", d];
  v5 = [(ANNotificationStore *)self _notificationsMatchingPredicate:v4];

  return v5;
}

- (id)typeIdentifiersOfAccountsWithPendingNotifications
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_1000012BC;
  v15 = sub_1000012CC;
  v16 = objc_alloc_init(NSMutableArray);
  v3 = [NSFetchRequest fetchRequestWithEntityName:@"AccountNotification"];
  [v3 setPropertiesToFetch:&off_10000C7F0];
  [v3 setReturnsDistinctResults:1];
  [v3 setResultType:2];
  managedObjectContext = self->_managedObjectContext;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000012D4;
  v8[3] = &unk_10000C320;
  v8[4] = self;
  v5 = v3;
  v9 = v5;
  v10 = &v11;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v8];
  v6 = v12[5];

  _Block_object_dispose(&v11, 8);

  return v6;
}

- (id)_notificationsMatchingPredicate:(id)predicate limit:(unint64_t)limit
{
  predicateCopy = predicate;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000012BC;
  v19 = sub_1000012CC;
  v20 = objc_alloc_init(NSMutableArray);
  v7 = [NSFetchRequest fetchRequestWithEntityName:@"AccountNotification"];
  [v7 setPredicate:predicateCopy];
  [v7 setReturnsObjectsAsFaults:0];
  if (limit)
  {
    [v7 setFetchLimit:limit];
  }

  managedObjectContext = self->_managedObjectContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000015F0;
  v12[3] = &unk_10000C320;
  v12[4] = self;
  v9 = v7;
  v13 = v9;
  v14 = &v15;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v12];
  v10 = v16[5];

  _Block_object_dispose(&v15, 8);

  return v10;
}

- (BOOL)saveNotification:(id)notification
{
  notificationCopy = notification;
  identifier = [notificationCopy identifier];
  if (identifier && (v6 = identifier, [notificationCopy accountTypeID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    managedObjectContext = self->_managedObjectContext;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000018C8;
    v12[3] = &unk_10000C320;
    v13 = notificationCopy;
    selfCopy = self;
    v15 = &v16;
    [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v12];
    v9 = *(v17 + 24);

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v10 = _ANLogSystem();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100005094();
    }

    v9 = 0;
  }

  return v9 & 1;
}

- (BOOL)limitPendingNotificationsForAccountTypeID:(id)d toMaximumCount:(unint64_t)count
{
  dCopy = d;
  v7 = _ANLogSystem();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v39 = "[ANNotificationStore limitPendingNotificationsForAccountTypeID:toMaximumCount:]";
    v40 = 1024;
    v41 = 195;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v8 = [NSFetchRequest fetchRequestWithEntityName:@"AccountNotification"];
  dCopy = [NSPredicate predicateWithFormat:@"accountTypeID = %@", dCopy];
  [v8 setPredicate:dCopy];

  managedObjectContext = self->_managedObjectContext;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_100001F7C;
  v26[3] = &unk_10000C348;
  v28 = &v29;
  v26[4] = self;
  v11 = v8;
  v27 = v11;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v26];
  v12 = v30[3];
  v13 = v12 >= count;
  v14 = v12 - count;
  if (v13)
  {
    v17 = _ANLogSystem();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [NSNumber numberWithUnsignedInteger:v14];
      *buf = 136315906;
      v39 = "[ANNotificationStore limitPendingNotificationsForAccountTypeID:toMaximumCount:]";
      v40 = 1024;
      v41 = 215;
      v42 = 2112;
      v43 = v18;
      v44 = 2112;
      v45 = dCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "%s (%d) We need to remove %@ pending notifications for type %@", buf, 0x26u);
    }

    v19 = [NSSortDescriptor sortDescriptorWithKey:@"date" ascending:1];
    v37 = v19;
    v20 = [NSArray arrayWithObjects:&v37 count:1];
    [v11 setSortDescriptors:v20];

    [v11 setFetchLimit:v14];
    [v11 setReturnsObjectsAsFaults:1];
    v21 = self->_managedObjectContext;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100002010;
    v23[3] = &unk_10000C320;
    v23[4] = self;
    v24 = v11;
    v25 = &v33;
    [(NSManagedObjectContext *)v21 performBlockAndWait:v23];

    v16 = *(v34 + 24);
  }

  else
  {
    v15 = _ANLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v39 = "[ANNotificationStore limitPendingNotificationsForAccountTypeID:toMaximumCount:]";
      v40 = 1024;
      v41 = 211;
      v42 = 2112;
      v43 = dCopy;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%s (%d) No need to limit pending notifications of type %@", buf, 0x1Cu);
    }

    v16 = 1;
    *(v34 + 24) = 1;
  }

  _Block_object_dispose(&v29, 8);
  _Block_object_dispose(&v33, 8);

  return v16 & 1;
}

- (BOOL)removeAllNotificationsForAccountTypeID:(id)d
{
  dCopy = d;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ANNotificationStore removeAllNotificationsForAccountTypeID:]";
    *&buf[12] = 1024;
    *&buf[14] = 242;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v15 = 0;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"AccountNotification"];
  dCopy = [NSPredicate predicateWithFormat:@"accountTypeID = %@", dCopy];
  [v6 setPredicate:dCopy];

  [v6 setReturnsObjectsAsFaults:1];
  managedObjectContext = self->_managedObjectContext;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002370;
  v11[3] = &unk_10000C320;
  v11[4] = self;
  v9 = v6;
  v12 = v9;
  v13 = buf;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v11];
  LOBYTE(v6) = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v6 & 1;
}

- (BOOL)removeNotificationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = _ANLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    *&buf[4] = "[ANNotificationStore removeNotificationWithIdentifier:]";
    *&buf[12] = 1024;
    *&buf[14] = 269;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%s (%d) called", buf, 0x12u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v17 = 0;
  v6 = [NSFetchRequest fetchRequestWithEntityName:@"AccountNotification"];
  identifierCopy = [NSPredicate predicateWithFormat:@"identifier = %@", identifierCopy];
  [v6 setPredicate:identifierCopy];

  [v6 setReturnsObjectsAsFaults:1];
  [v6 setFetchLimit:1];
  managedObjectContext = self->_managedObjectContext;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000026EC;
  v12[3] = &unk_10000C370;
  v12[4] = self;
  v9 = v6;
  v13 = v9;
  v10 = identifierCopy;
  v14 = v10;
  v15 = buf;
  [(NSManagedObjectContext *)managedObjectContext performBlockAndWait:v12];
  LOBYTE(v6) = *(*&buf[8] + 24);

  _Block_object_dispose(buf, 8);
  return v6 & 1;
}

- (BOOL)_unsafe_commitChangesInManagedObjectContext
{
  managedObjectContext = self->_managedObjectContext;
  v8 = 0;
  v3 = [(NSManagedObjectContext *)managedObjectContext save:&v8];
  v4 = v8;
  v5 = _ANLogSystem();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_1000053AC();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_100005428();
  }

  return v3;
}

- (void)_createManagedObjectContext
{
  v3 = [NSPersistentStoreCoordinator alloc];
  _managedObjectModel = [(ANNotificationStore *)self _managedObjectModel];
  v5 = [v3 initWithManagedObjectModel:_managedObjectModel];
  storeCoordinator = self->_storeCoordinator;
  self->_storeCoordinator = v5;

  if (self->_storeCoordinator)
  {
    _copyPersistentStoreFilePath = [(ANNotificationStore *)self _copyPersistentStoreFilePath];
    v8 = [NSURL fileURLWithPath:_copyPersistentStoreFilePath];

    v19[0] = NSInferMappingModelAutomaticallyOption;
    v19[1] = NSMigratePersistentStoresAutomaticallyOption;
    v20[0] = &__kCFBooleanTrue;
    v20[1] = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:v20 forKeys:v19 count:2];
    v10 = self->_storeCoordinator;
    v18 = 0;
    v11 = [(NSPersistentStoreCoordinator *)v10 addPersistentStoreWithType:NSSQLiteStoreType configuration:0 URL:v8 options:v9 error:&v18];
    v12 = v18;
    if (v12)
    {
      v13 = _ANLogSystem();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_1000054B4();
      }
    }

    else
    {
      v14 = [[NSManagedObjectContext alloc] initWithConcurrencyType:1];
      managedObjectContext = self->_managedObjectContext;
      self->_managedObjectContext = v14;

      v16 = self->_managedObjectContext;
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100002B28;
      v17[3] = &unk_10000C398;
      v17[4] = self;
      [(NSManagedObjectContext *)v16 performBlockAndWait:v17];
    }
  }

  else
  {
    v8 = _ANLogSystem();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_100005530();
    }
  }
}

- (id)_managedObjectModel
{
  if (qword_100011430 != -1)
  {
    sub_1000055BC();
  }

  v3 = qword_100011428;

  return v3;
}

- (id)_copyPersistentStoreFilePath
{
  v2 = CFCopyHomeDirectoryURLForUser();
  if (v2)
  {
    v3 = v2;
    v4 = CFURLCopyFileSystemPath(v2, kCFURLPOSIXPathStyle);
    v5 = [(__CFString *)v4 mutableCopy];
    [v5 appendString:@"/Library/AccountNotifications/"];
    CPFileBuildDirectoriesToPath();
    CFRelease(v3);
  }

  else
  {
    v5 = 0;
  }

  [v5 appendString:@"AccountNotificationStore.sqlite"];
  v6 = [v5 copy];

  return v6;
}

@end