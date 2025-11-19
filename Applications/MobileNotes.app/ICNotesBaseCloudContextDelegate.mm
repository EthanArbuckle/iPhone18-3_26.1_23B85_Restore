@interface ICNotesBaseCloudContextDelegate
- (BOOL)cloudContext:(id)a3 hasContextOptions:(unint64_t)a4;
- (BOOL)deleteCloudObjectIfFullyPushed:(id)a3;
- (BOOL)hasExceededQuota;
- (ICNotesBaseCloudContextDelegate)init;
- (id)accountIDsForCloudContext:(id)a3 managedObjectContext:(id)a4;
- (id)backgroundContextForCloudContext:(id)a3;
- (id)persistentStoreCoordinatorForCloudContext:(id)a3;
- (id)viewContextForCloudContext:(id)a3;
- (void)accountsDidChange:(id)a3;
- (void)cloudContext:(id)a3 didExceedQuotaForRecordID:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 didFetchShare:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 didFetchUserRecord:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 didPushRecordID:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 receivedZoneNotFound:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5;
- (void)cloudContext:(id)a3 userDidDeleteRecordZoneWithID:(id)a4 accountID:(id)a5;
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

- (void)cloudContext:(id)a3 didExceedQuotaForRecordID:(id)a4 accountID:(id)a5
{
  v6 = a4;
  v7 = [(ICNotesBaseCloudContextDelegate *)self quotaExceededRecordIDs];
  [v7 addObject:v6];
}

- (void)cloudContext:(id)a3 didPushRecordID:(id)a4 accountID:(id)a5
{
  v6 = a4;
  v7 = [(ICNotesBaseCloudContextDelegate *)self quotaExceededRecordIDs];
  [v7 removeObject:v6];
}

- (BOOL)hasExceededQuota
{
  v2 = [(ICNotesBaseCloudContextDelegate *)self quotaExceededRecordIDs];
  v3 = [v2 ic_containsObjectPassingTest:&stru_100646A88];

  return v3;
}

- (void)cloudContext:(id)a3 userDidDeleteRecordZoneWithID:(id)a4 accountID:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = +[ICCloudContext notesZoneID];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    v11 = +[ICNoteContext sharedContext];
    v12 = [v11 snapshotManagedObjectContext];

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_10006A08C;
    v23[3] = &unk_100645D40;
    v13 = &v24;
    v14 = v25;
    v24 = v8;
    v25[0] = v12;
    v25[1] = self;
    v15 = v12;
    [v15 performBlockAndWait:v23];
LABEL_5:

    goto LABEL_6;
  }

  v16 = +[ICCloudContext metadataZoneID];
  v17 = [v7 isEqual:v16];

  if (v17)
  {
    v18 = +[ICNoteContext sharedContext];
    v19 = [v18 managedObjectContext];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_10006A2AC;
    v20[3] = &unk_100645BA0;
    v13 = &v21;
    v14 = &v22;
    v21 = v8;
    v22 = v18;
    v15 = v18;
    [v19 performBlock:v20];

    goto LABEL_5;
  }

LABEL_6:
}

- (BOOL)deleteCloudObjectIfFullyPushed:(id)a3
{
  v4 = a3;
  if ([v4 isDeleted])
  {
LABEL_13:
    v10 = 1;
    goto LABEL_19;
  }

  if ([v4 hasSuccessfullyPushedLatestVersionToCloud] & 1) != 0 || (objc_msgSend(v4, "markedForDeletion"))
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [v4 objectsToBeDeletedBeforeThisObject];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v5);
          }

          if (![(ICNotesBaseCloudContextDelegate *)self deleteCloudObjectIfFullyPushed:*(*(&v13 + 1) + 8 * i)])
          {

            goto LABEL_18;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    [v4 deleteFromLocalDatabase];
    goto LABEL_13;
  }

  v11 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9184(v4);
  }

LABEL_18:
  v10 = 0;
LABEL_19:

  return v10;
}

- (void)cloudContext:(id)a3 receivedZoneNotFound:(id)a4 accountID:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    sub_1004D9240(v6);
  }

  v9 = +[ICNoteContext sharedContext];
  v10 = [v9 managedObjectContext];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_10006A774;
  v14[3] = &unk_100645D40;
  v15 = v7;
  v16 = v9;
  v17 = v6;
  v11 = v6;
  v12 = v9;
  v13 = v7;
  [v10 performBlock:v14];
}

- (void)cloudContext:(id)a3 sharedZoneWasDeleted:(id)a4 accountID:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = os_log_create("com.apple.notes", "Cloud");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 ic_loggingDescription];
    *buf = 138412546;
    v20 = v7;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Shared zone was deleted for account ID %@: %@", buf, 0x16u);
  }

  v10 = +[ICNoteContext sharedContext];
  v11 = [v10 snapshotManagedObjectContext];

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10006AD04;
  v15[3] = &unk_100645D40;
  v16 = v6;
  v17 = v11;
  v18 = v7;
  v12 = v7;
  v13 = v11;
  v14 = v6;
  [v13 performBlockAndWait:v15];
}

- (void)cloudContext:(id)a3 didFetchUserRecord:(id)a4 accountID:(id)a5
{
  v6 = a4;
  v7 = a5;
  v8 = +[ICNoteContext sharedContext];
  v9 = [v8 snapshotManagedObjectContext];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10006B0FC;
  v13[3] = &unk_100645D40;
  v14 = v7;
  v15 = v9;
  v16 = v6;
  v10 = v6;
  v11 = v9;
  v12 = v7;
  [v11 performBlockAndWait:v13];
}

- (void)cloudContext:(id)a3 didFetchShare:(id)a4 accountID:(id)a5
{
  if (a4)
  {
    v7 = a5;
    v8 = a4;
    v12 = +[NSMutableDictionary dictionary];
    [v12 ic_setNonNilObject:v8 forNonNilKey:ICNotesCloudContextDidFetchShareNotificationShareKey];

    [v12 ic_setNonNilObject:v7 forNonNilKey:ICNotesCloudContextDidFetchShareNotificationAccountIDKey];
    v9 = +[NSNotificationCenter defaultCenter];
    v10 = ICNotesCloudContextDidFetchShareNotification;
    v11 = [v12 copy];
    [v9 postNotificationName:v10 object:self userInfo:v11];
  }
}

- (id)accountIDsForCloudContext:(id)a3 managedObjectContext:(id)a4
{
  v5 = a3;
  v6 = a4;
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
  v7 = v6;
  v14 = v7;
  v15 = &v16;
  [v7 performBlockAndWait:&v10];
  v8 = [v17[5] copy];

  _Block_object_dispose(&v16, 8);

  return v8;
}

- (id)persistentStoreCoordinatorForCloudContext:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 persistentStoreCoordinator];

  return v4;
}

- (id)viewContextForCloudContext:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 managedObjectContext];

  return v4;
}

- (id)backgroundContextForCloudContext:(id)a3
{
  v3 = +[ICNoteContext sharedContext];
  v4 = [v3 workerManagedObjectContext];

  return v4;
}

- (BOOL)cloudContext:(id)a3 hasContextOptions:(unint64_t)a4
{
  v5 = +[ICNoteContext sharedContext];
  LOBYTE(a4) = [v5 hasContextOptions:a4];

  return a4;
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
    v8 = [v7 managedObjectContext];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10006BB10;
    v15[3] = &unk_100646A18;
    v15[4] = buf;
    [v8 performBlockAndWait:v15];
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

      v11 = [ICAccount cloudKitAccountInContext:v8];
      v12 = +[ICCloudContext sharedContext];
      v13 = [v11 identifier];
      [v12 fetchUserRecordWithAccountID:v13 completionHandler:&stru_100646AC8];
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
  v4 = [v3 workerManagedObjectContext];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C4D4;
  v6[3] = &unk_100645E30;
  v7 = v4;
  v5 = v4;
  [v5 performBlockAndWait:v6];
}

- (void)accountsDidChange:(id)a3
{
  v3 = +[ICCloudContext sharedContext];
  [v3 clearContainers];
  [v3 setNeedsToUpdateSubscriptions:1];
  [v3 clearSubscribedSubscriptionIDs];
  v4 = [v3 operationQueue];
  if (![v4 operationCount])
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