@interface ICNotesBaseCloudContextDelegate
- (BOOL)cloudContext:(id)context hasContextOptions:(unint64_t)options;
- (BOOL)deleteCloudObjectIfFullyPushed:(id)pushed;
- (BOOL)hasExceededQuota;
- (ICNotesBaseCloudContextDelegate)init;
- (id)accountIDsForCloudContext:(id)context managedObjectContext:(id)objectContext;
- (id)backgroundContextForCloudContext:(id)context;
- (id)persistentStoreCoordinatorForCloudContext:(id)context;
- (id)viewContextForCloudContext:(id)context;
- (void)accountsDidChange:(id)change;
- (void)cloudContext:(id)context didExceedQuotaForRecordID:(id)d accountID:(id)iD;
- (void)cloudContext:(id)context didFetchShare:(id)share accountID:(id)d;
- (void)cloudContext:(id)context didFetchUserRecord:(id)record accountID:(id)d;
- (void)cloudContext:(id)context didPushRecordID:(id)d accountID:(id)iD;
- (void)cloudContext:(id)context receivedZoneNotFound:(id)found accountID:(id)d;
- (void)cloudContext:(id)context sharedZoneWasDeleted:(id)deleted accountID:(id)d;
- (void)cloudContext:(id)context userDidDeleteRecordZoneWithID:(id)d accountID:(id)iD;
- (void)dealloc;
- (void)fixGallerySubAttachments;
- (void)fixGallerySubAttachmentsIfNecessary;
- (void)syncPasswordProtectedNotesIfNecessary;
- (void)updateAppleAccountBags;
- (void)updateLastOSVersion;
@end

@implementation ICNotesBaseCloudContextDelegate

- (ICNotesBaseCloudContextDelegate)init
{
  v7.receiver = self;
  v7.super_class = ICNotesBaseCloudContextDelegate;
  v2 = [(ICNotesBaseCloudContextDelegate *)&v7 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    quotaExceededRecordIDs = v2->_quotaExceededRecordIDs;
    v2->_quotaExceededRecordIDs = v3;

    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v2 selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = ICNotesBaseCloudContextDelegate;
  [(ICNotesBaseCloudContextDelegate *)&v4 dealloc];
}

- (void)cloudContext:(id)context didExceedQuotaForRecordID:(id)d accountID:(id)iD
{
  dCopy = d;
  quotaExceededRecordIDs = [(ICNotesBaseCloudContextDelegate *)self quotaExceededRecordIDs];
  [quotaExceededRecordIDs addObject:dCopy];
}

- (void)cloudContext:(id)context didPushRecordID:(id)d accountID:(id)iD
{
  dCopy = d;
  quotaExceededRecordIDs = [(ICNotesBaseCloudContextDelegate *)self quotaExceededRecordIDs];
  [quotaExceededRecordIDs removeObject:dCopy];
}

- (BOOL)hasExceededQuota
{
  quotaExceededRecordIDs = [(ICNotesBaseCloudContextDelegate *)self quotaExceededRecordIDs];
  v3 = [quotaExceededRecordIDs ic_containsObjectPassingTest:&stru_100646A88];

  return v3;
}

- (void)cloudContext:(id)context userDidDeleteRecordZoneWithID:(id)d accountID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v9 = +[ICCloudContext notesZoneID];
  v10 = [dCopy isEqual:v9];

  if (v10)
  {
    v11 = +[ICNoteContext sharedContext];
    snapshotManagedObjectContext = [v11 snapshotManagedObjectContext];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10006A08C;
    v23[3] = &unk_100645D40;
    v13 = &v24;
    v14 = v25;
    v24 = iDCopy;
    v25[0] = snapshotManagedObjectContext;
    v25[1] = self;
    v15 = snapshotManagedObjectContext;
    [v15 performBlockAndWait:v23];
LABEL_5:

    goto LABEL_6;
  }

  v16 = +[ICCloudContext metadataZoneID];
  v17 = [dCopy isEqual:v16];

  if (v17)
  {
    v18 = +[ICNoteContext sharedContext];
    managedObjectContext = [v18 managedObjectContext];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10006A2AC;
    v20[3] = &unk_100645BA0;
    v13 = &v21;
    v14 = &v22;
    v21 = iDCopy;
    v22 = v18;
    v15 = v18;
    [managedObjectContext performBlock:v20];

    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)deleteCloudObjectIfFullyPushed:(id)pushed
{
  pushedCopy = pushed;
  if ([pushedCopy isDeleted])
  {
LABEL_13:
    v10 = 1;
    goto LABEL_19;
  }

  if ([pushedCopy hasSuccessfullyPushedLatestVersionToCloud] & 1) != 0 || (objc_msgSend(pushedCopy, "markedForDeletion"))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    objectsToBeDeletedBeforeThisObject = [pushedCopy objectsToBeDeletedBeforeThisObject];
    v6 = [objectsToBeDeletedBeforeThisObject countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(objectsToBeDeletedBeforeThisObject);
          }

          if (![(ICNotesBaseCloudContextDelegate *)self deleteCloudObjectIfFullyPushed:*(*(&v13 + 1) + 8 * i)])
          {

            goto LABEL_18;
          }
        }

        v7 = [objectsToBeDeletedBeforeThisObject countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [pushedCopy deleteFromLocalDatabase];
    goto LABEL_13;
  }

  v11 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9184(pushedCopy);
  }

LABEL_18:
  v10 = 0;
LABEL_19:

  return v10;
}

- (void)cloudContext:(id)context receivedZoneNotFound:(id)found accountID:(id)d
{
  foundCopy = found;
  dCopy = d;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9240(foundCopy);
  }

  v9 = +[ICNoteContext sharedContext];
  managedObjectContext = [v9 managedObjectContext];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006A774;
  v14[3] = &unk_100645D40;
  v15 = dCopy;
  v16 = v9;
  v17 = foundCopy;
  v11 = foundCopy;
  v12 = v9;
  v13 = dCopy;
  [managedObjectContext performBlock:v14];
}

- (void)cloudContext:(id)context sharedZoneWasDeleted:(id)deleted accountID:(id)d
{
  deletedCopy = deleted;
  dCopy = d;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    ic_loggingDescription = [deletedCopy ic_loggingDescription];
    *buf = 138412546;
    v20 = dCopy;
    v21 = 2112;
    v22 = ic_loggingDescription;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Shared zone was deleted for account ID %@: %@", buf, 0x16u);
  }

  v10 = +[ICNoteContext sharedContext];
  snapshotManagedObjectContext = [v10 snapshotManagedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006AD04;
  v15[3] = &unk_100645D40;
  v16 = deletedCopy;
  v17 = snapshotManagedObjectContext;
  v18 = dCopy;
  v12 = dCopy;
  v13 = snapshotManagedObjectContext;
  v14 = deletedCopy;
  [v13 performBlockAndWait:v15];
}

- (void)cloudContext:(id)context didFetchUserRecord:(id)record accountID:(id)d
{
  recordCopy = record;
  dCopy = d;
  v8 = +[ICNoteContext sharedContext];
  snapshotManagedObjectContext = [v8 snapshotManagedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006B0FC;
  v13[3] = &unk_100645D40;
  v14 = dCopy;
  v15 = snapshotManagedObjectContext;
  v16 = recordCopy;
  v10 = recordCopy;
  v11 = snapshotManagedObjectContext;
  v12 = dCopy;
  [v11 performBlockAndWait:v13];
}

- (void)cloudContext:(id)context didFetchShare:(id)share accountID:(id)d
{
  if (share)
  {
    dCopy = d;
    shareCopy = share;
    v12 = +[NSMutableDictionary dictionary];
    [v12 ic_setNonNilObject:shareCopy forNonNilKey:ICNotesCloudContextDidFetchShareNotificationShareKey];

    [v12 ic_setNonNilObject:dCopy forNonNilKey:ICNotesCloudContextDidFetchShareNotificationAccountIDKey];
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = ICNotesCloudContextDidFetchShareNotification;
    v11 = [v12 copy];
    [v9 postNotificationName:v10 object:self userInfo:v11];
  }
}

- (id)accountIDsForCloudContext:(id)context managedObjectContext:(id)objectContext
{
  contextCopy = context;
  objectContextCopy = objectContext;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = sub_10006B5C4;
  v20 = sub_10006B5D4;
  v21 = +[NSMutableArray array];
  v10 = _NSConcreteStackBlock;
  v11 = 3221225472;
  v12 = sub_10006B5DC;
  v13 = &unk_100645FE0;
  v7 = objectContextCopy;
  v14 = v7;
  v15 = &v16;
  [v7 performBlockAndWait:&v10];
  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)persistentStoreCoordinatorForCloudContext:(id)context
{
  v3 = +[ICNoteContext sharedContext];
  persistentStoreCoordinator = [v3 persistentStoreCoordinator];

  return persistentStoreCoordinator;
}

- (id)viewContextForCloudContext:(id)context
{
  v3 = +[ICNoteContext sharedContext];
  managedObjectContext = [v3 managedObjectContext];

  return managedObjectContext;
}

- (id)backgroundContextForCloudContext:(id)context
{
  v3 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v3 workerManagedObjectContext];

  return workerManagedObjectContext;
}

- (BOOL)cloudContext:(id)context hasContextOptions:(unint64_t)options
{
  v5 = +[ICNoteContext sharedContext];
  LOBYTE(options) = [v5 hasContextOptions:options];

  return options;
}

- (void)syncPasswordProtectedNotesIfNecessary
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9404();
  }

  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"lastKnownOperatingSystemVersion"];

  v5 = os_log_create("com.apple.notes", "Cloud");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9438();
    }
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "No previous OS version dictionary", buf, 2u);
    }

    *buf = 0;
    v17 = buf;
    v18 = 0x2020000000;
    v19 = 0;
    v7 = +[ICNoteContext sharedContext];
    managedObjectContext = [v7 managedObjectContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006BB10;
    v15[3] = &unk_100646A18;
    v15[4] = buf;
    [managedObjectContext performBlockAndWait:v15];
    v9 = v17[24];
    v10 = os_log_create("com.apple.notes", "Cloud");
    v11 = v10;
    if (v9)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "Fetching user record to check if we need to re-sync", v14, 2u);
      }

      v11 = [ICAccount cloudKitAccountInContext:managedObjectContext];
      v12 = +[ICCloudContext sharedContext];
      identifier = [v11 identifier];
      [v12 fetchUserRecordWithAccountID:identifier completionHandler:&stru_100646AC8];
    }

    else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D94AC();
    }

    _Block_object_dispose(buf, 8);
  }
}

- (void)updateAppleAccountBags
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:@"DidUpdateAppleAccountProperties"];

  if (v3)
  {
    v4 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D95BC();
    }
  }

  else
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:1 forKey:@"DidUpdateAppleAccountProperties"];

    v6 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D9588();
    }

    v4 = +[ACAccountStore defaultStore];
    v14 = [v4 accountTypeWithAccountTypeIdentifier:ACAccountTypeIdentifierAppleAccount];
    v7 = [v4 accountsWithAccountType:?];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          if (([v12 ic_isNotesMigrated] & 1) == 0 && (objc_msgSend(v12, "ic_isPrimaryAppleAccount") & 1) == 0)
          {
            v13 = os_log_create("com.apple.notes", "Cloud");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v21 = v12;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "Updating account bag for %@", buf, 0xCu);
            }

            v15[0] = _NSConcreteStackBlock;
            v15[1] = 3221225472;
            v15[2] = sub_10006C20C;
            v15[3] = &unk_100646B50;
            v15[4] = v12;
            [v4 aa_updatePropertiesForAppleAccount:v12 completion:v15];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v16 objects:v22 count:16];
      }

      while (v9);
    }
  }
}

- (void)fixGallerySubAttachmentsIfNecessary
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 BOOLForKey:@"DidFixGallerySubAttachments"];

  if (v4)
  {
    v5 = os_log_create("com.apple.notes", "Cloud");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_1004D966C();
    }
  }

  else
  {
    [(ICNotesBaseCloudContextDelegate *)self fixGallerySubAttachments];
    v6 = +[NSUserDefaults standardUserDefaults];
    [v6 setBool:1 forKey:@"DidFixGallerySubAttachments"];
  }
}

- (void)fixGallerySubAttachments
{
  v2 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D96A0();
  }

  v3 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v3 workerManagedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C4D4;
  v6[3] = &unk_100645E30;
  v7 = workerManagedObjectContext;
  v5 = workerManagedObjectContext;
  [v5 performBlockAndWait:v6];
}

- (void)accountsDidChange:(id)change
{
  v3 = +[ICCloudContext sharedContext];
  [v3 clearContainers];
  [v3 setNeedsToUpdateSubscriptions:1];
  [v3 clearSubscribedSubscriptionIDs];
  operationQueue = [v3 operationQueue];
  if (![operationQueue operationCount])
  {

    goto LABEL_7;
  }

  v5 = +[ICAccount isCloudKitAccountAvailable];

  if (v5)
  {
LABEL_7:
    v8 = dispatch_get_global_queue(-2, 0);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10006C998;
    v10[3] = &unk_100645E30;
    v7 = &v11;
    v11 = v3;
    v9 = v3;
    dispatch_async(v8, v10);

    goto LABEL_8;
  }

  v6 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D980C();
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006C990;
  v12[3] = &unk_100645E30;
  v7 = &v13;
  v13 = v3;
  [v3 cancelEverythingWithCompletionHandler:v12];
LABEL_8:
}

- (void)updateLastOSVersion
{
  v2 = +[NSProcessInfo processInfo];
  v3 = v2;
  if (v2)
  {
    [v2 operatingSystemVersion];
  }

  v4 = [NSNumber numberWithInteger:0];
  v5 = [NSNumber numberWithInteger:0];
  v6 = [NSNumber numberWithInteger:0];
  v10[0] = @"majorVersion";
  v10[1] = @"minorVersion";
  v11[0] = v4;
  v11[1] = v5;
  v10[2] = @"patchVersion";
  v11[2] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v11 forKeys:v10 count:3];
  v8 = +[NSUserDefaults standardUserDefaults];
  [v8 setObject:v7 forKey:@"lastKnownOperatingSystemVersion"];

  v9 = +[NSUserDefaults standardUserDefaults];
  [v9 synchronize];
}

@end