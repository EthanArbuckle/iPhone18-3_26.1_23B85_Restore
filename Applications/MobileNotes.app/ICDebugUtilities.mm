@interface ICDebugUtilities
+ (id)stateOfTheWorld;
+ (void)deleteEverythingWithCompletionHandler:(id)handler;
+ (void)deleteInvalidObjects;
+ (void)deleteMigratedDuplicatesWithCompletionHandler:(id)handler;
+ (void)deleteZonesWithZoneIDs:(id)ds accountID:(id)d completionHandler:(id)handler;
+ (void)markEverythingNeedToBeFetched;
+ (void)purgeEverythingWithCompletionHandler:(id)handler;
+ (void)pushEverythingToCloud;
+ (void)showAlertForError:(id)error title:(id)title;
+ (void)showAlertWithTitle:(id)title description:(id)description;
+ (void)startFreshWithCompletionHandler:(id)handler;
@end

@implementation ICDebugUtilities

+ (void)purgeEverythingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v4 = +[ICMigrationController sharedController];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C9160;
  v6[3] = &unk_100645CC8;
  v7 = handlerCopy;
  v5 = handlerCopy;
  [v4 cancelAllOperationsWithCompletionHandler:v6];
}

+ (void)deleteEverythingWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = +[ICNoteContext sharedContext];
  managedObjectContext = [v5 managedObjectContext];

  [managedObjectContext performBlockAndWait:&stru_100648950];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  [ICAccount allActiveCloudKitAccountsInContext:managedObjectContext];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C94E0;
  v9[3] = &unk_1006489C0;
  v12 = v14;
  v7 = v13 = self;
  v10 = v7;
  v8 = handlerCopy;
  v11 = v8;
  [v7 enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(v14, 8);
}

+ (void)deleteZonesWithZoneIDs:(id)ds accountID:(id)d completionHandler:(id)handler
{
  dsCopy = ds;
  dCopy = d;
  handlerCopy = handler;
  v11 = +[ICCloudContext sharedContext];
  v12 = +[ICMigrationController sharedController];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000C9894;
  v17[3] = &unk_100648A38;
  v18 = v11;
  v19 = dsCopy;
  v21 = handlerCopy;
  selfCopy = self;
  v20 = dCopy;
  v13 = handlerCopy;
  v14 = dCopy;
  v15 = dsCopy;
  v16 = v11;
  [v12 cancelAllOperationsWithCompletionHandler:v17];
}

+ (void)showAlertForError:(id)error title:(id)title
{
  titleCopy = title;
  localizedDescription = [error localizedDescription];
  [self showAlertWithTitle:titleCopy description:localizedDescription];
}

+ (void)showAlertWithTitle:(id)title description:(id)description
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000C9D7C;
  v7[3] = &unk_100645BA0;
  titleCopy = title;
  descriptionCopy = description;
  v5 = descriptionCopy;
  v6 = titleCopy;
  dispatch_async(&_dispatch_main_q, v7);
}

+ (void)startFreshWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DEAAC(v5);
  }

  v6 = [handlerCopy copy];
  [ICMigrationController setDidChooseToMigrateLocalAccount:0];
  [ICMigrationController setDidMigrateLocalAccount:0];
  v7 = +[NSNotificationCenter defaultCenter];
  [v7 postNotificationName:ICMigrationStateWillChangeNotification object:0];

  [ICStartupController setHasShownWelcomeScreen:0];
  [ICNoteContext setLegacyNotesDisabled:0];
  v8 = +[ICNoteContext sharedContext];
  managedObjectContext = [v8 managedObjectContext];
  v10 = [ICAccount allCloudKitAccountsInContext:managedObjectContext];

  if ([v10 count])
  {
    *buf = 0;
    v20 = buf;
    v21 = 0x2020000000;
    v22 = [v10 count];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CA140;
    v12[3] = &unk_100648B60;
    v17 = buf;
    selfCopy = self;
    v13 = v8;
    v14 = v10;
    v15 = handlerCopy;
    v16 = v6;
    [v14 enumerateObjectsUsingBlock:v12];

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v11 = os_log_create("com.apple.notes", "Internal");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Trying to reset migration without a CloudKit account", buf, 2u);
    }

    [self showAlertWithTitle:@"No CloudKit account to reset" description:@"Cannot reset migration without a CloudKit account."];
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy);
    }
  }
}

+ (void)pushEverythingToCloud
{
  v2 = +[ICNoteContext sharedContext];
  snapshotManagedObjectContext = [v2 snapshotManagedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CABB8;
  v6[3] = &unk_100645E30;
  v7 = snapshotManagedObjectContext;
  v4 = snapshotManagedObjectContext;
  [v4 performBlockAndWait:v6];
  v5 = +[ICCloudContext sharedContext];
  [v5 processAllCloudObjectsWithCompletionHandler:0];
}

+ (void)markEverythingNeedToBeFetched
{
  v2 = +[ICNoteContext sharedContext];
  [v2 performSnapshotBackgroundTask:&stru_100648BC0];
}

+ (id)stateOfTheWorld
{
  v2 = +[ICDatabaseStateHandler stateDictionary];
  v3 = [v2 description];

  return v3;
}

+ (void)deleteInvalidObjects
{
  v2 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Deleting invalid objects", buf, 2u);
  }

  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000CAF24;
  v6[3] = &unk_100645E30;
  v7 = managedObjectContext;
  v5 = managedObjectContext;
  [v5 performBlockAndWait:v6];
}

+ (void)deleteMigratedDuplicatesWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Internal");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Deleting duplicate legacy notes", buf, 2u);
  }

  v6 = +[ICNoteContext sharedContext];
  v7 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CB268;
  block[3] = &unk_100646158;
  v12 = handlerCopy;
  selfCopy = self;
  v11 = v6;
  v8 = handlerCopy;
  v9 = v6;
  dispatch_async(v7, block);
}

@end