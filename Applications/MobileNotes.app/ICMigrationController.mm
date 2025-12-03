@interface ICMigrationController
+ (BOOL)didChooseToMigrateLocalAccount;
+ (BOOL)didMigrateLocalAccount;
+ (BOOL)shouldHideICloudIMAPAccount;
+ (id)cloudKitAccountForIdentifier:(id)identifier;
+ (id)ensureLegacyAccountIsValid:(id)valid;
+ (id)legacyAccountContext;
+ (id)legacyAccountForAccountIdentifier:(id)identifier;
+ (id)legacyAccountForICloudACAccount:(id)account;
+ (id)legacyAccountForPrimaryICloudAccount;
+ (id)legacyAccountNameForPrimaryICloudAccount;
+ (id)legacyAccountsBeingCopied;
+ (id)legacyLocalAccount;
+ (id)sharedController;
+ (signed)currentMigrationStateForAccountID:(id)d;
+ (void)continueMigrationIfNecessary;
+ (void)initialize;
+ (void)migrateLocalAccountIfNecessary;
+ (void)pushMigrationStateToCloudForAccountID:(id)d;
+ (void)setCurrentMigrationState:(signed __int16)state forAccountID:(id)d;
+ (void)setDidChooseToMigrateLocalAccount:(BOOL)account;
+ (void)setDidMigrateLocalAccount:(BOOL)account;
+ (void)upgradeEmptyLocalLegacyAccountIfNecessary;
- (BOOL)isInternetReachable;
- (ICMigrationController)init;
- (id)importLegacyNotesForICloudAccountID:(id)d withCompletionHandler:(id)handler;
- (id)importNotesFromLegacyAccount:(id)account toAccount:(id)toAccount renameFolders:(BOOL)folders isPrimaryAccount:(BOOL)primaryAccount withCompletionHandler:(id)handler;
- (id)legacyAccountObjectIDsBeingCopied;
- (signed)currentMigrationStateForAccountID:(id)d;
- (unint64_t)numberOfRetriesForSelector:(SEL)selector accountID:(id)d;
- (void)accountsDidChange:(id)change;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)cancelAllOperationsWithCompletionHandler:(id)handler;
- (void)clearRetryCountForSelector:(SEL)selector accountID:(id)d;
- (void)continueMigrationForICloudAccountID:(id)d;
- (void)copyNotesFromLegacyAccount:(id)account toAccount:(id)toAccount;
- (void)dealloc;
- (void)disableLegacyAccount:(id)account;
- (void)disableNotesForACAccount:(id)account inStore:(id)store;
- (void)handleDarwinNotificationName:(id)name;
- (void)migrationStateDidChange:(id)change;
- (void)performFinalImportForICloudAccountID:(id)d;
- (void)performFinalPushToCloudKitForAccountID:(id)d;
- (void)performFinalRefreshForICloudAccountID:(id)d;
- (void)reachabilityChanged:(id)changed;
- (void)refreshFolderContentsForICloudAccountID:(id)d;
- (void)refreshFolderListForICloudAccountID:(id)d;
- (void)resetNotificationObservers;
- (void)resetRetryCounts;
- (void)retrySelector:(SEL)selector accountID:(id)d;
- (void)setCurrentMigrationState:(signed __int16)state forAccountID:(id)d;
- (void)setNumberOfRetries:(unint64_t)retries forSelector:(SEL)selector accountID:(id)d;
- (void)startICloudImportOperationIfNecessary;
- (void)startMigrationForICloudAccountID:(id)d;
- (void)startRepeatingImportTimer;
- (void)stopRepeatingImportTimer;
@end

@implementation ICMigrationController

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v2 = +[NSUserDefaults standardUserDefaults];
    v4 = kICDefaultsKeyDidMigrateLocalAccount;
    v5 = &__kCFBooleanFalse;
    v3 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
    [v2 registerDefaults:v3];
  }
}

+ (void)continueMigrationIfNecessary
{
  v3 = dispatch_get_global_queue(-32768, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C2058;
  block[3] = &unk_100648758;
  block[4] = self;
  dispatch_async(v3, block);
}

+ (id)sharedController
{
  if (qword_1006CB2F0 != -1)
  {
    sub_1004DDC6C();
  }

  v3 = qword_1006CB2E8;

  return v3;
}

- (ICMigrationController)init
{
  v7.receiver = self;
  v7.super_class = ICMigrationController;
  v2 = [(ICMigrationController *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    [(ICMigrationController *)v2 setOperationQueue:v3];

    operationQueue = [(ICMigrationController *)v2 operationQueue];
    [operationQueue setName:@"com.apple.notes.migration-queue"];

    v5 = objc_alloc_init(NSMutableDictionary);
    [(ICMigrationController *)v2 setCurrentMigrationStateByAccountID:v5];

    [(ICMigrationController *)v2 resetRetryCounts];
    [(ICMigrationController *)v2 resetNotificationObservers];
  }

  return v2;
}

- (void)dealloc
{
  [(ICMigrationController *)self stopRepeatingImportTimer];
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  v5.receiver = self;
  v5.super_class = ICMigrationController;
  [(ICMigrationController *)&v5 dealloc];
}

+ (BOOL)didMigrateLocalAccount
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:kICDefaultsKeyDidMigrateLocalAccount];

  return v3;
}

+ (void)setDidMigrateLocalAccount:(BOOL)account
{
  accountCopy = account;
  if ([self didMigrateLocalAccount] != account)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = ICMigrationStateWillChangeNotification;
    v13 = @"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey";
    v14 = &__kCFBooleanTrue;
    v6 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [v4 postNotificationName:v5 object:0 userInfo:v6];

    v7 = +[NSUserDefaults standardUserDefaults];
    [v7 setBool:accountCopy forKey:kICDefaultsKeyDidMigrateLocalAccount];

    v8 = +[NSNotificationCenter defaultCenter];
    v9 = ICMigrationStateDidChangeNotification;
    v11 = @"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey";
    v12 = &__kCFBooleanTrue;
    v10 = [NSDictionary dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    [v8 postNotificationName:v9 object:0 userInfo:v10];
  }
}

+ (BOOL)didChooseToMigrateLocalAccount
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:kICDefaultsKeyDidChooseToMigrateLocalAccount];

  return v3;
}

+ (void)setDidChooseToMigrateLocalAccount:(BOOL)account
{
  accountCopy = account;
  if ([self didChooseToMigrateLocalAccount] != account)
  {
    v5 = +[NSUserDefaults standardUserDefaults];
    [v5 setBool:accountCopy forKey:kICDefaultsKeyDidChooseToMigrateLocalAccount];

    v14 = ICLocalAccountDidChooseToMigrateKey;
    v6 = [NSNumber numberWithBool:accountCopy];
    v15 = v6;
    v7 = [NSDictionary dictionaryWithObjects:&v15 forKeys:&v14 count:1];

    v8 = +[NSNotificationCenter defaultCenter];
    [v8 postNotificationName:ICLocalAccountDidChooseToMigrateNotification object:self userInfo:v7];

    v9 = +[ICNoteContext sharedContext];
    managedObjectContext = [v9 managedObjectContext];

    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000C2930;
    v12[3] = &unk_100645E30;
    v13 = managedObjectContext;
    v11 = managedObjectContext;
    [v11 performBlockAndWait:v12];
  }
}

- (void)resetNotificationObservers
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5 = +[NSNotificationCenter defaultCenter];
  v6 = kReachabilityChangedNotification;
  v7 = +[ICReachability sharedReachabilityForInternetConnection];
  [v5 addObserver:self selector:"reachabilityChanged:" name:v6 object:v7];

  v8 = +[NSNotificationCenter defaultCenter];
  [v8 addObserver:self selector:"migrationStateDidChange:" name:ICMigrationStateDidChangeNotification object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 addObserver:self selector:"accountsDidChange:" name:ICAccountsDidChangeNotification object:0];

  v10 = +[NSNotificationCenter defaultCenter];
  [v10 addObserver:self selector:"applicationDidEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"applicationWillEnterForeground:" name:UIApplicationWillEnterForegroundNotification object:0];
}

- (void)migrationStateDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = [userInfo objectForKeyedSubscript:ICMigrationStateChangeAccountID];

  v6 = [v5 length];
  v7 = +[ICNoteContext sharedContext];
  managedObjectContext = [v7 managedObjectContext];
  if (v6)
  {
    v9 = [ICAccount accountWithIdentifier:v5 context:managedObjectContext];
  }

  else
  {
    v9 = [ICAccount cloudKitAccountInContext:managedObjectContext];

    [v9 identifier];
    v5 = v7 = v5;
  }

  if ([v9 didChooseToMigrate] && objc_msgSend(objc_opt_class(), "currentMigrationStateForAccountID:", v5) <= 1)
  {
    v10 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DDC80();
    }

    [(ICMigrationController *)self startMigrationForICloudAccountID:v5];
  }
}

- (void)accountsDidChange:(id)change
{
  v4 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DDCB4();
  }

  [(ICMigrationController *)self cancelAllOperationsWithCompletionHandler:0];
}

+ (signed)currentMigrationStateForAccountID:(id)d
{
  dCopy = d;
  v4 = +[ICMigrationController sharedController];
  v5 = [v4 currentMigrationStateForAccountID:dCopy];

  return v5;
}

+ (void)setCurrentMigrationState:(signed __int16)state forAccountID:(id)d
{
  stateCopy = state;
  dCopy = d;
  v6 = +[ICMigrationController sharedController];
  [v6 setCurrentMigrationState:stateCopy forAccountID:dCopy];
}

- (signed)currentMigrationStateForAccountID:(id)d
{
  dCopy = d;
  v5 = +[ICNoteContext sharedContext];
  managedObjectContext = [v5 managedObjectContext];
  v7 = [ICDeviceMigrationState deviceMigrationStateWithDeviceIdentifier:dCopy context:managedObjectContext];

  if (v7 && [v7 state])
  {
    state = [v7 state];
  }

  else
  {
    currentMigrationStateByAccountID = [(ICMigrationController *)self currentMigrationStateByAccountID];
    v10 = [currentMigrationStateByAccountID objectForKeyedSubscript:dCopy];

    if (v10)
    {
      currentMigrationStateByAccountID2 = [(ICMigrationController *)self currentMigrationStateByAccountID];
      v12 = [currentMigrationStateByAccountID2 objectForKeyedSubscript:dCopy];
      state = [v12 shortValue];
    }

    else
    {
      state = 0;
    }
  }

  return state;
}

- (void)setCurrentMigrationState:(signed __int16)state forAccountID:(id)d
{
  stateCopy = state;
  dCopy = d;
  v7 = +[ICNoteContext sharedContext];
  managedObjectContext = [v7 managedObjectContext];

  v9 = [ICAccount accountWithIdentifier:dCopy context:managedObjectContext];
  v10 = [ICDeviceMigrationState deviceMigrationStateWithDeviceIdentifier:dCopy context:managedObjectContext];
  if ([v10 state] == stateCopy)
  {
    currentMigrationStateByAccountID = [(ICMigrationController *)self currentMigrationStateByAccountID];
    [currentMigrationStateByAccountID removeObjectForKey:dCopy];

    goto LABEL_26;
  }

  v12 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [objc_opt_class() stringFromMigrationState:stateCopy];
    *buf = 138412290;
    v41 = v13;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Setting current migration state: %@", buf, 0xCu);
  }

  if (!v10 && v9)
  {
    v10 = [ICDeviceMigrationState newDeviceMigrationStateWithDeviceIdentifier:dCopy account:v9];
  }

  if (v10)
  {
    [v10 setState:stateCopy];
    v14 = +[NSDate date];
    [v10 setStateModificationDate:v14];

    [v10 updateChangeCountWithReason:@"Set migration state"];
  }

  else
  {
    v15 = [NSNumber numberWithShort:stateCopy];
    currentMigrationStateByAccountID2 = [(ICMigrationController *)self currentMigrationStateByAccountID];
    [currentMigrationStateByAccountID2 setObject:v15 forKeyedSubscript:dCopy];
  }

  [ICNoteContext setLegacyNotesDisabled:0];
  if (stateCopy == 7)
  {
    if ([v9 didFinishMigration])
    {
      v17 = 0;
    }

    else
    {
      v17 = 1;
      [v9 setDidFinishMigration:1];
      [v9 updateChangeCountWithReason:@"Set migration state"];
    }
  }

  else
  {
    v17 = 0;
    if (stateCopy < 2)
    {
      goto LABEL_18;
    }
  }

  if ([v9 didChooseToMigrate])
  {
LABEL_18:
    v18 = +[ICNoteContext sharedContext];
    [v18 addOrDeleteLocalAccountIfNecessary];

    v19 = +[ICNoteContext sharedContext];
    [v19 save];
    goto LABEL_20;
  }

  v20 = +[NSNotificationCenter defaultCenter];
  v21 = ICMigrationStateWillChangeNotification;
  v22 = ICMigrationStateChangeUserInitiated;
  v38 = ICMigrationStateChangeUserInitiated;
  v39 = &__kCFBooleanTrue;
  v17 = 1;
  v23 = [NSDictionary dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  [v20 postNotificationName:v21 object:0 userInfo:v23];

  [v9 setDidChooseToMigrate:1];
  [v9 updateChangeCountWithReason:@"Set migration state"];
  v24 = +[ICNoteContext sharedContext];
  [v24 addOrDeleteLocalAccountIfNecessary];

  v25 = +[ICNoteContext sharedContext];
  [v25 save];

  v19 = +[NSNotificationCenter defaultCenter];
  v26 = ICMigrationStateDidChangeNotification;
  v36 = v22;
  v37 = &__kCFBooleanTrue;
  v27 = [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
  [v19 postNotificationName:v26 object:0 userInfo:v27];

LABEL_20:
  v28 = +[ICNoteContext sharedContext];
  primaryICloudACAccount = [v28 primaryICloudACAccount];

  if (v17 && primaryICloudACAccount)
  {
    v30 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DDCE8();
    }

    didChooseToMigrate = [v9 didChooseToMigrate];
    didFinishMigration = [v9 didFinishMigration];
    didMigrateOnMac = [v9 didMigrateOnMac];
    accountStore = [primaryICloudACAccount accountStore];
    [ICMigrationUtilities saveDidChooseToMigrate:didChooseToMigrate didFinishMigration:didFinishMigration didMigrateOnMac:didMigrateOnMac toACAccount:primaryICloudACAccount inStore:accountStore completionHandler:0];
  }

  [objc_opt_class() pushMigrationStateToCloudForAccountID:dCopy];
  v35 = +[NSNotificationCenter defaultCenter];
  [v35 postNotificationName:@"ICCurrentDeviceMigrationStateDidChange" object:v10];

LABEL_26:
}

+ (BOOL)shouldHideICloudIMAPAccount
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = [v2 BOOLForKey:kICInternalSettingsShowICloudIMAPAccountDefaultKey];

  if ((v3 & 1) == 0)
  {
    v5 = +[ICNoteContext sharedContext];
    managedObjectContext = [v5 managedObjectContext];
    v7 = [ICAccount cloudKitAccountInContext:managedObjectContext];

    if (([v7 didChooseToMigrate] & 1) == 0)
    {
      if (v7)
      {
        v4 = 0;
LABEL_10:

        return v4;
      }

      v8 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DDD1C();
      }
    }

    v4 = 1;
    goto LABEL_10;
  }

  return 0;
}

- (void)startMigrationForICloudAccountID:(id)d
{
  dCopy = d;
  v5 = [objc_opt_class() currentMigrationStateForAccountID:dCopy];
  v6 = os_log_create("com.apple.notes", "Migration");
  v7 = v6;
  if (v5 < 2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DDD50();
    }
  }

  else
  {
    v8 = v6;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [objc_opt_class() stringFromMigrationState:v5];
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Starting migration for iCloud account, but the current state is (%@)", &v15, 0xCu);
    }
  }

  v10 = +[ICNoteContext sharedContext];
  managedObjectContext = [v10 managedObjectContext];
  v12 = [ICAccount localAccountInContext:managedObjectContext];

  if (v12)
  {
    v13 = 1;
    if (([v12 hasAnyCustomFoldersIncludingSystem:1] & 1) == 0)
    {
      v13 = [v12 visibleNotesIncludingTrashCount] != 0;
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = [NSNumber numberWithBool:v13];
  [ICSettingsUtilities setObject:v14 forKey:@"LocalNotes"];

  [objc_opt_class() setCurrentMigrationState:2 forAccountID:dCopy];
  [(ICMigrationController *)self continueMigrationForICloudAccountID:dCopy];
}

- (void)continueMigrationForICloudAccountID:(id)d
{
  dCopy = d;
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DDD84();
  }

  v6 = +[ICAccountUtilities sharedInstance];
  v7 = [v6 iCloudACAccountWithIdentifier:dCopy];

  if (v7 && [v7 isEnabledForDataclass:ACAccountDataclassNotes] && (objc_msgSend(v7, "ic_hasICloudEmailAddress") & 1) == 0)
  {
    v10 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Trying to continue migration, but there is no iCloud email address. Finishing now.", buf, 2u);
    }

    [objc_opt_class() setCurrentMigrationState:7 forAccountID:dCopy];
  }

  else
  {
    v8 = [objc_opt_class() legacyAccountForICloudACAccount:v7];

    if (!v8)
    {
      v9 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "No legacy account when continuing migration", buf, 2u);
      }
    }
  }

  v11 = [objc_opt_class() currentMigrationStateForAccountID:dCopy];
  if (v11 > 4u)
  {
    if (v11 == 5)
    {
      [(ICMigrationController *)self performFinalImportForICloudAccountID:dCopy];
      goto LABEL_28;
    }

    if (v11 == 6)
    {
      [(ICMigrationController *)self performFinalPushToCloudKitForAccountID:dCopy];
      goto LABEL_28;
    }

    if (v11 != 7)
    {
      goto LABEL_28;
    }
  }

  else
  {
    if (v11 - 2 < 3)
    {
      v12 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DDDB8();
      }

      v13 = +[ICCloudContext sharedContext];
      v14 = +[ICCloudContext notesZoneID];
      v20 = v14;
      v15 = [NSArray arrayWithObjects:&v20 count:1];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000C3A90;
      v18[3] = &unk_1006487A0;
      v18[4] = self;
      v19 = dCopy;
      [v13 fetchRecordZoneChangesForZoneIDs:v15 accountID:v19 reason:@"StartingMigration" completionHandler:v18];

      goto LABEL_28;
    }

    if (v11 >= 2u)
    {
      goto LABEL_28;
    }
  }

  v16 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [objc_opt_class() stringFromMigrationState:v11];
    *buf = 138412290;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No action to perform for migration state (%@)", buf, 0xCu);
  }

LABEL_28:
}

+ (void)migrateLocalAccountIfNecessary
{
  if ([self didChooseToMigrateLocalAccount])
  {
    if ([self didMigrateLocalAccount])
    {
      legacyLocalAccount = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(legacyLocalAccount, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DDF8C();
      }
    }

    else
    {
      legacyLocalAccount = [self legacyLocalAccount];
      v4 = os_log_create("com.apple.notes", "Migration");
      v5 = v4;
      if (legacyLocalAccount)
      {
        v6 = v4;
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DDE54(self, legacyLocalAccount, v6);
        }

        v7 = +[ICNoteContext sharedContext];
        managedObjectContext = [v7 managedObjectContext];
        v9 = [ICAccount localAccountInContext:managedObjectContext];

        if (v9 || (+[NSNotificationCenter defaultCenter](NSNotificationCenter, "defaultCenter"), v10 = objc_claimAutoreleasedReturnValue(), v11 = ICMigrationStateWillChangeNotification, v25 = @"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey", v26 = &__kCFBooleanTrue, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v26, &v25, 1), v12 = objc_claimAutoreleasedReturnValue(), [v10 postNotificationName:v11 object:0 userInfo:v12], v12, v10, +[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v13 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v13, "managedObjectContext"), v14 = objc_claimAutoreleasedReturnValue(), v9 = +[ICAccount newLocalAccountInContext:](ICAccount, "newLocalAccountInContext:", v14), v14, v13, +[ICNoteContext sharedContext](ICNoteContext, "sharedContext"), v15 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v15, "save"), v15, +[NSNotificationCenter defaultCenter](NSNotificationCenter, "defaultCenter"), v16 = objc_claimAutoreleasedReturnValue(), v17 = ICMigrationStateDidChangeNotification, v23 = @"ICCurrentDeviceMigrationStateChangeWasForLocalAccountKey", v24 = &__kCFBooleanTrue, +[NSDictionary dictionaryWithObjects:forKeys:count:](NSDictionary, "dictionaryWithObjects:forKeys:count:", &v24, &v23, 1), v18 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v16, "postNotificationName:object:userInfo:", v17, 0, v18), v18, v16, v9))
        {
          sharedController = [self sharedController];
          v22[0] = _NSConcreteStackBlock;
          v22[1] = 3221225472;
          v22[2] = sub_1000C3F68;
          v22[3] = &unk_1006487C0;
          v22[4] = self;
          v20 = [sharedController importNotesFromLegacyAccount:legacyLocalAccount toAccount:v9 renameFolders:0 isPrimaryAccount:1 withCompletionHandler:v22];
        }

        else
        {
          v9 = os_log_create("com.apple.notes", "Migration");
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *v21 = 0;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Failed to import the local account because we couldn't create a modern local account", v21, 2u);
          }
        }
      }

      else
      {
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DDF58();
        }

        [self setDidMigrateLocalAccount:1];
      }
    }
  }

  else
  {
    legacyLocalAccount = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(legacyLocalAccount, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DDE20();
    }
  }
}

+ (void)upgradeEmptyLocalLegacyAccountIfNecessary
{
  if (([self didChooseToMigrateLocalAccount] & 1) == 0)
  {
    legacyAccountContext = [self legacyAccountContext];
    legacyLocalAccount = [self legacyLocalAccount];
    v4 = ICProtocolCast();

    if (!v4 || ([v4 objectID], v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(legacyAccountContext, "nonEmptyNoteExistsForLegacyAccountWithObjectID:", v5), v5, (v6 & 1) == 0))
    {
      [self setDidChooseToMigrateLocalAccount:1];
      [self migrateLocalAccountIfNecessary];
    }
  }
}

- (void)performFinalImportForICloudAccountID:(id)d
{
  dCopy = d;
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v5 iCloudACAccountWithIdentifier:dCopy];

  v7 = [objc_opt_class() legacyAccountForICloudACAccount:v6];
  v8 = os_log_create("com.apple.notes", "Migration");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      sub_1004DDFF4();
    }

    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C4288;
    v11[3] = &unk_1006487E8;
    v11[4] = self;
    v12 = dCopy;
    v10 = [(ICMigrationController *)self importLegacyNotesForICloudAccountID:v12 withCompletionHandler:v11];
  }

  else
  {
    if (v9)
    {
      sub_1004DE028();
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(ICMigrationController *)self retrySelector:"continueMigrationForICloudAccountID:" accountID:dCopy];
  }
}

- (id)importLegacyNotesForICloudAccountID:(id)d withCompletionHandler:(id)handler
{
  dCopy = d;
  handlerCopy = handler;
  v8 = +[ICAccountUtilities sharedInstance];
  v9 = [v8 iCloudACAccountWithIdentifier:dCopy];

  v10 = [objc_opt_class() legacyAccountForICloudACAccount:v9];
  v11 = os_log_create("com.apple.notes", "Migration");
  v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG);
  if (v10)
  {
    if (v12)
    {
      sub_1004DE0C4();
    }

    v11 = [objc_opt_class() cloudKitAccountForIdentifier:dCopy];
    v13 = [(ICMigrationController *)self importNotesFromLegacyAccount:v10 toAccount:v11 renameFolders:0 isPrimaryAccount:1 withCompletionHandler:handlerCopy];
  }

  else
  {
    if (v12)
    {
      sub_1004DE0F8();
    }

    v13 = 0;
  }

  return v13;
}

- (id)importNotesFromLegacyAccount:(id)account toAccount:(id)toAccount renameFolders:(BOOL)folders isPrimaryAccount:(BOOL)primaryAccount withCompletionHandler:(id)handler
{
  primaryAccountCopy = primaryAccount;
  foldersCopy = folders;
  selfCopy = self;
  accountCopy = account;
  toAccountCopy = toAccount;
  handlerCopy = handler;
  v30 = toAccountCopy;
  v13 = 0;
  v31 = accountCopy;
  if (accountCopy && toAccountCopy)
  {
    v13 = [[ICImportLegacyAccountOperation alloc] initWithLegacyAccount:accountCopy destinationAccount:toAccountCopy renameFolders:foldersCopy];
    [(ICImportLegacyAccountOperation *)v13 setCopyingPrimaryAccount:primaryAccountCopy];
    if (v13)
    {
      objc_initWeak(&location, v13);
      v36[0] = _NSConcreteStackBlock;
      v36[1] = 3221225472;
      v36[2] = sub_1000C4758;
      v36[3] = &unk_100648838;
      objc_copyWeak(&v39, &location);
      v38 = handlerCopy;
      v14 = accountCopy;
      v37 = v14;
      [(ICImportLegacyAccountOperation *)v13 setCompletionBlock:v36];
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      operationQueue = [(ICMigrationController *)selfCopy operationQueue];
      operations = [operationQueue operations];
      v17 = [operations copy];

      v18 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
      if (v18)
      {
        v19 = *v33;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v33 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v32 + 1) + 8 * i);
            legacyAccountObjectID = [v21 legacyAccountObjectID];
            objectID = [v14 objectID];
            v24 = [legacyAccountObjectID isEqual:objectID];

            if (v24)
            {
              [(ICImportLegacyAccountOperation *)v13 addDependency:v21];
              [v21 cancel];
            }
          }

          v18 = [v17 countByEnumeratingWithState:&v32 objects:v41 count:16];
        }

        while (v18);
      }

      operationQueue2 = [(ICMigrationController *)selfCopy operationQueue];
      [operationQueue2 addOperation:v13];

      v26 = v13;
      objc_destroyWeak(&v39);
      objc_destroyWeak(&location);
    }
  }

  return v13;
}

- (void)cancelAllOperationsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DE244();
  }

  [(ICMigrationController *)self resetNotificationObservers];
  [NSObject cancelPreviousPerformRequestsWithTarget:self];
  [NSObject cancelPreviousPerformRequestsWithTarget:objc_opt_class()];
  [(ICMigrationController *)self stopRepeatingImportTimer];
  operationQueue = [(ICMigrationController *)self operationQueue];
  [operationQueue cancelAllOperations];

  v7 = dispatch_get_global_queue(-2, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C49F8;
  v9[3] = &unk_100645E80;
  v9[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(v7, v9);
}

- (void)startRepeatingImportTimer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C4B4C;
  block[3] = &unk_100645E30;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)stopRepeatingImportTimer
{
  repeatingImportTimer = [(ICMigrationController *)self repeatingImportTimer];
  [repeatingImportTimer invalidate];

  [(ICMigrationController *)self setRepeatingImportTimer:0];
}

- (void)startICloudImportOperationIfNecessary
{
  v3 = +[ICNoteContext sharedContext];
  workerManagedObjectContext = [v3 workerManagedObjectContext];

  v5 = [ICDeviceMigrationState deviceMigrationStatesByAccountIDInContext:workerManagedObjectContext];
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  allKeys = [v5 allKeys];
  v39 = [allKeys countByEnumeratingWithState:&v46 objects:v53 count:16];
  if (!v39)
  {

LABEL_29:
    [(ICMigrationController *)self stopRepeatingImportTimer];
    goto LABEL_30;
  }

  v32 = workerManagedObjectContext;
  v7 = 0;
  v38 = *v47;
  v34 = v5;
  selfCopy = self;
  v33 = allKeys;
  do
  {
    for (i = 0; i != v39; i = i + 1)
    {
      if (*v47 != v38)
      {
        objc_enumerationMutation(allKeys);
      }

      v9 = *(*(&v46 + 1) + 8 * i);
      v10 = [v5 objectForKeyedSubscript:v9];
      shortValue = [v10 shortValue];

      if ((shortValue - 3) > 1u)
      {
        v14 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v26 = objc_opt_class();
          v27 = [v26 stringFromMigrationState:{objc_msgSend(objc_opt_class(), "currentMigrationStateForAccountID:", v9)}];
          *buf = 138412290;
          v51 = v27;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "The timer fired to start another iCloud import operation, but we're not in the right state (%@)", buf, 0xCu);
        }

        v28 = v14;
      }

      else
      {
        v12 = +[ICAccountUtilities sharedInstance];
        v36 = v9;
        v13 = [v12 iCloudACAccountWithIdentifier:v9];

        v37 = v13;
        v14 = [objc_opt_class() legacyAccountForICloudACAccount:v13];
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        operationQueue = [(ICMigrationController *)self operationQueue];
        operations = [operationQueue operations];
        v17 = [operations copy];

        v18 = [v17 countByEnumeratingWithState:&v42 objects:v52 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v43;
LABEL_9:
          v21 = 0;
          while (1)
          {
            if (*v43 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v42 + 1) + 8 * v21);
            legacyAccountObjectID = [v22 legacyAccountObjectID];
            objectID = [v14 objectID];
            v25 = [legacyAccountObjectID isEqual:objectID];

            if (v25)
            {
              break;
            }

            if (v19 == ++v21)
            {
              v19 = [v17 countByEnumeratingWithState:&v42 objects:v52 count:16];
              if (v19)
              {
                goto LABEL_9;
              }

              goto LABEL_15;
            }
          }

          v29 = v22;

          self = selfCopy;
          allKeys = v33;
          if (v29)
          {
            goto LABEL_23;
          }
        }

        else
        {
LABEL_15:

          self = selfCopy;
          allKeys = v33;
        }

        v30 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DE278(&v40, v41, v30);
        }

        v31 = [(ICMigrationController *)self importLegacyNotesForICloudAccountID:v36 withCompletionHandler:0];
        [v31 setRandomizeImportOrder:1];

        v29 = 0;
LABEL_23:

        v7 = 1;
        v5 = v34;
        v28 = v37;
      }
    }

    v39 = [allKeys countByEnumeratingWithState:&v46 objects:v53 count:16];
  }

  while (v39);

  workerManagedObjectContext = v32;
  if ((v7 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_30:
}

- (void)performFinalPushToCloudKitForAccountID:(id)d
{
  dCopy = d;
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v5 iCloudACAccountWithIdentifier:dCopy];

  v7 = [objc_opt_class() legacyAccountForICloudACAccount:v6];
  v8 = os_log_create("com.apple.notes", "Migration");
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
  if (v7)
  {
    if (v9)
    {
      sub_1004DE2B8();
    }

    v10 = +[ICCloudContext sharedContext];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000C51E0;
    v11[3] = &unk_1006487A0;
    v11[4] = self;
    v12 = dCopy;
    [v10 syncWithReason:@"FinishingMigration" completionHandler:v11];
  }

  else
  {
    if (v9)
    {
      sub_1004DE2EC();
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(ICMigrationController *)self retrySelector:"continueMigrationForICloudAccountID:" accountID:dCopy];
  }
}

+ (void)pushMigrationStateToCloudForAccountID:(id)d
{
  dCopy = d;
  v4 = +[ICNoteContext sharedContext];
  managedObjectContext = [v4 managedObjectContext];
  v6 = [ICAccount cloudKitAccountWithIdentifier:dCopy context:managedObjectContext];

  if (!v6)
  {
    v11 = os_log_create("com.apple.notes", "Migration");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Trying to push migration state, but we don't have a CloudKit ICAccount";
LABEL_9:
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
    goto LABEL_14;
  }

  v7 = [ICDeviceMigrationState currentDeviceMigrationStateForAccount:v6];
  if (!v7)
  {
    v11 = os_log_create("com.apple.notes", "Migration");
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Trying to push migration state, but we don't have a device migration state";
    goto LABEL_9;
  }

  v8 = v7;
  v9 = +[ICCloudContext sharedContext];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000C5638;
  v21[3] = &unk_100645D40;
  v10 = v6;
  v22 = v10;
  v11 = v8;
  v23 = v11;
  v12 = v9;
  v24 = v12;
  v13 = objc_retainBlock(v21);
  userRecordName = [v10 userRecordName];

  if (userRecordName)
  {
    (v13[2])(v13);
  }

  else
  {
    v16 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "No user record name when changing migration state. Fetching now.", buf, 2u);
    }

    identifier = [v10 identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000C5A38;
    v18[3] = &unk_100648880;
    v19 = v10;
    v20 = v13;
    [v12 fetchUserRecordWithAccountID:identifier completionHandler:v18];
  }

LABEL_14:
}

+ (id)legacyAccountsBeingCopied
{
  if ([self sharedControllerExists])
  {
    v3 = +[NSMutableArray array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    sharedController = [self sharedController];
    legacyAccountObjectIDsBeingCopied = [sharedController legacyAccountObjectIDsBeingCopied];

    v6 = [legacyAccountObjectIDsBeingCopied countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v20;
      *&v7 = 138412546;
      v17 = v7;
      do
      {
        v10 = 0;
        do
        {
          if (*v20 != v9)
          {
            objc_enumerationMutation(legacyAccountObjectIDsBeingCopied);
          }

          v11 = *(*(&v19 + 1) + 8 * v10);
          legacyAccountContext = [self legacyAccountContext];
          v18 = 0;
          v13 = [legacyAccountContext existingObjectWithID:v11 error:&v18];
          v14 = v18;

          if (v14)
          {
            v15 = os_log_create("com.apple.notes", "Migration");
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              *buf = v17;
              v24 = v11;
              v25 = 2112;
              v26 = v14;
              _os_log_error_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "Error fetching account being copied (%@): %@", buf, 0x16u);
            }
          }

          if (v13)
          {
            [v3 addObject:v13];
          }

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [legacyAccountObjectIDsBeingCopied countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v3 = &__NSArray0__struct;
  }

  return v3;
}

- (id)legacyAccountObjectIDsBeingCopied
{
  legacyAccountForPrimaryICloudAccount = [objc_opt_class() legacyAccountForPrimaryICloudAccount];
  legacyLocalAccount = [objc_opt_class() legacyLocalAccount];
  v19 = +[NSMutableArray array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  operationQueue = [(ICMigrationController *)self operationQueue];
  operations = [operationQueue operations];
  v6 = [operations copy];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        legacyAccountObjectID = [v11 legacyAccountObjectID];
        objectID = [legacyAccountForPrimaryICloudAccount objectID];
        if ([legacyAccountObjectID isEqual:objectID])
        {
        }

        else
        {
          legacyAccountObjectID2 = [v11 legacyAccountObjectID];
          objectID2 = [legacyLocalAccount objectID];
          v16 = [legacyAccountObjectID2 isEqual:objectID2];

          if (v16)
          {
            continue;
          }

          legacyAccountObjectID = [v11 legacyAccountObjectID];
          [v19 addObject:legacyAccountObjectID];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v8);
  }

  v17 = [v19 copy];

  return v17;
}

- (void)copyNotesFromLegacyAccount:(id)account toAccount:(id)toAccount
{
  accountCopy = account;
  toAccountCopy = toAccount;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_1000C6204;
  v17 = sub_1000C6214;
  v18 = [objc_opt_class() ensureLegacyAccountIsValid:accountCopy];
  v8 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    objectIdentifier = [v14[5] objectIdentifier];
    sub_1004DE43C(objectIdentifier, buf, v8);
  }

  v10 = v14[5];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1000C621C;
  v12[3] = &unk_1006488A8;
  v12[4] = self;
  v12[5] = &v13;
  v11 = [(ICMigrationController *)self importNotesFromLegacyAccount:v10 toAccount:toAccountCopy renameFolders:1 isPrimaryAccount:0 withCompletionHandler:v12];
  _Block_object_dispose(&v13, 8);
}

+ (id)ensureLegacyAccountIsValid:(id)valid
{
  validCopy = valid;
  v4 = validCopy;
  if (validCopy && ([validCopy objectID], (v5 = objc_claimAutoreleasedReturnValue()) != 0) && (v6 = v5, objc_opt_class(), ICCheckedDynamicCast(), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isDeleted"), v7, v6, !v8))
  {
    managedObjectContext = [v4 managedObjectContext];

    if (managedObjectContext)
    {
      v10 = v4;
    }

    else
    {
      v13 = +[NotesApp sharedNotesApp];
      noteContext = [v13 noteContext];
      managedObjectContext2 = [noteContext managedObjectContext];

      objectID = [v4 objectID];
      v10 = [managedObjectContext2 objectWithID:objectID];
    }
  }

  else
  {
    v9 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying to ensure a legacy account is valid, but it's not", v17, 2u);
    }

    v10 = 0;
  }

  return v10;
}

- (void)reachabilityChanged:(id)changed
{
  isInternetReachable = [(ICMigrationController *)self isInternetReachable];
  v5 = os_log_create("com.apple.notes", "Migration");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG);
  if (isInternetReachable)
  {
    if (v6)
    {
      sub_1004DE560();
    }

    [(ICMigrationController *)self resetRetryCounts];
    v7 = +[ICNoteContext sharedContext];
    snapshotManagedObjectContext = [v7 snapshotManagedObjectContext];

    v9 = [ICDeviceMigrationState deviceMigrationStatesByAccountIDInContext:snapshotManagedObjectContext];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    allKeys = [v9 allKeys];
    v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(allKeys);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          v16 = [v9 objectForKeyedSubscript:v15];
          shortValue = [v16 shortValue];

          if (shortValue - 2 <= 4)
          {
            [(ICMigrationController *)self continueMigrationForICloudAccountID:v15];
          }
        }

        v12 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v12);
    }
  }

  else
  {
    if (v6)
    {
      sub_1004DE52C();
    }

    [(ICMigrationController *)self stopRepeatingImportTimer];
  }
}

- (BOOL)isInternetReachable
{
  v2 = +[ICReachability sharedReachabilityForInternetConnection];
  currentReachabilityStatus = [v2 currentReachabilityStatus];

  return currentReachabilityStatus != 0;
}

- (void)retrySelector:(SEL)selector accountID:(id)d
{
  dCopy = d;
  v7 = [(ICMigrationController *)self numberOfRetriesForSelector:selector accountID:dCopy];
  [(ICMigrationController *)self setNumberOfRetries:v7 + 1 forSelector:selector accountID:dCopy];
  v8 = pow(3.0, v7);
  if (v8 <= 300.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 300.0;
  }

  v10 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DE594(selector);
  }

  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:selector object:dCopy];
  [(ICMigrationController *)self performSelector:selector withObject:dCopy afterDelay:v9];
}

- (void)clearRetryCountForSelector:(SEL)selector accountID:(id)d
{
  dCopy = d;
  numberOfRetriesBySelector = [(ICMigrationController *)self numberOfRetriesBySelector];
  v7 = NSStringFromSelector(selector);
  v8 = [numberOfRetriesBySelector objectForKeyedSubscript:v7];
  [v8 removeObjectForKey:dCopy];
}

- (void)resetRetryCounts
{
  v3 = objc_alloc_init(NSMutableDictionary);
  [(ICMigrationController *)self setNumberOfRetriesBySelector:v3];
}

- (unint64_t)numberOfRetriesForSelector:(SEL)selector accountID:(id)d
{
  dCopy = d;
  numberOfRetriesBySelector = [(ICMigrationController *)self numberOfRetriesBySelector];
  v8 = NSStringFromSelector(selector);
  v9 = [numberOfRetriesBySelector objectForKeyedSubscript:v8];
  v10 = [v9 objectForKeyedSubscript:dCopy];

  unsignedIntegerValue = [v10 unsignedIntegerValue];
  return unsignedIntegerValue;
}

- (void)setNumberOfRetries:(unint64_t)retries forSelector:(SEL)selector accountID:(id)d
{
  dCopy = d;
  numberOfRetriesBySelector = [(ICMigrationController *)self numberOfRetriesBySelector];
  v10 = NSStringFromSelector(selector);
  v14 = [numberOfRetriesBySelector objectForKeyedSubscript:v10];

  if (!v14)
  {
    v14 = objc_alloc_init(NSMutableDictionary);
    numberOfRetriesBySelector2 = [(ICMigrationController *)self numberOfRetriesBySelector];
    v12 = NSStringFromSelector(selector);
    [numberOfRetriesBySelector2 setObject:v14 forKeyedSubscript:v12];
  }

  v13 = [NSNumber numberWithUnsignedInteger:retries];
  [v14 setObject:v13 forKeyedSubscript:dCopy];
}

+ (id)legacyAccountForAccountIdentifier:(id)identifier
{
  identifierCopy = identifier;
  legacyAccountContext = [self legacyAccountContext];
  v6 = [ICLegacyAccountUtilities accountForAccountIdentifier:identifierCopy context:legacyAccountContext];

  return v6;
}

+ (id)legacyAccountForICloudACAccount:(id)account
{
  accountCopy = account;
  if (accountCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = sub_1000C6204;
    v16 = sub_1000C6214;
    v17 = 0;
    legacyAccountContext = [self legacyAccountContext];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000C6C74;
    v8[3] = &unk_1006488D0;
    v10 = &v12;
    v9 = accountCopy;
    selfCopy = self;
    [legacyAccountContext performBlockAndWait:v8];

    v6 = v13[5];
    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)legacyAccountForPrimaryICloudAccount
{
  legacyAccountContext = [self legacyAccountContext];
  v3 = [ICLegacyAccountUtilities legacyAccountForPrimaryICloudAccountWithContext:legacyAccountContext];

  return v3;
}

+ (id)legacyAccountNameForPrimaryICloudAccount
{
  v3 = +[ICNoteContext sharedContext];
  primaryICloudACAccount = [v3 primaryICloudACAccount];

  username = [primaryICloudACAccount username];
  if (![(__CFString *)username length])
  {
    legacyAccountForPrimaryICloudAccount = [self legacyAccountForPrimaryICloudAccount];
    emailAddress = [legacyAccountForPrimaryICloudAccount emailAddress];

    username = emailAddress;
  }

  if (username)
  {
    v8 = username;
  }

  else
  {
    v8 = &stru_100661CF0;
  }

  v9 = v8;

  return v8;
}

+ (id)cloudKitAccountForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[ICAccountUtilities sharedInstance];
  accountStore = [v4 accountStore];

  v6 = [accountStore accountWithIdentifier:identifierCopy];
  parentAccountIdentifier = [v6 parentAccountIdentifier];
  v8 = parentAccountIdentifier;
  if (parentAccountIdentifier)
  {
    v9 = parentAccountIdentifier;
  }

  else
  {
    v9 = identifierCopy;
  }

  v10 = v9;

  v11 = +[ICNoteContext sharedContext];
  managedObjectContext = [v11 managedObjectContext];
  v13 = [ICAccount cloudKitAccountWithIdentifier:v10 context:managedObjectContext];

  return v13;
}

- (void)disableNotesForACAccount:(id)account inStore:(id)store
{
  accountCopy = account;
  storeCopy = store;
  v7 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DE638(accountCopy);
  }

  [accountCopy setEnabled:0 forDataclass:ACAccountDataclassNotes];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000C7018;
  v9[3] = &unk_100646B50;
  v10 = accountCopy;
  v8 = accountCopy;
  [storeCopy saveAccount:v8 withCompletionHandler:v9];
}

+ (id)legacyAccountContext
{
  v2 = +[NotesApp sharedNotesApp];
  noteContext = [v2 noteContext];

  return noteContext;
}

- (void)handleDarwinNotificationName:(id)name
{
  nameCopy = name;
  v5 = [(__CFString *)nameCopy rangeOfString:@"-"];
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(__CFString *)nameCopy substringFromIndex:&v5[v6]];
    objc_opt_class();
    v8 = [objc_opt_class() legacyAccountForAccountIdentifier:v7];
    v9 = ICCheckedDynamicCast();

    v10 = +[ICAccountUtilities sharedInstance];
    accountStore = [v10 accountStore];

    v12 = [accountStore accountWithIdentifier:v7];
    parentAccountIdentifier = [v12 parentAccountIdentifier];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, nameCopy, 0);
    if (!v9)
    {
      v20 = os_log_create("com.apple.notes", "Migration");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DE864();
      }

      goto LABEL_22;
    }

    v15 = [@"IMAPNotesAccountFolderHierarchySyncCompleteNotification-" stringByAppendingString:v7];
    v16 = [(__CFString *)nameCopy isEqualToString:v15];

    if (v16)
    {
      isInternetReachable = [(ICMigrationController *)self isInternetReachable];
      v18 = os_log_create("com.apple.notes", "Migration");
      v19 = v18;
      if (isInternetReachable)
      {
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DE830();
        }

        [(ICMigrationController *)self clearRetryCountForSelector:"refreshFolderListForICloudAccountID:" accountID:parentAccountIdentifier];
        [objc_opt_class() setCurrentMigrationState:4 forAccountID:parentAccountIdentifier];
        [(ICMigrationController *)self refreshFolderContentsForICloudAccountID:parentAccountIdentifier];
        goto LABEL_22;
      }

      if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
LABEL_21:

LABEL_22:
        goto LABEL_23;
      }

      *v36 = 0;
      v24 = "Received a legacy folder hierarchy sync complete notification, but we're not connected to the internet.";
      v25 = v36;
    }

    else
    {
      v21 = [@"IMAPNotesAccountFolderHierarchySyncFailedNotification-" stringByAppendingString:v7];
      v22 = [(__CFString *)nameCopy isEqualToString:v21];

      if (v22)
      {
        v23 = os_log_create("com.apple.notes", "Migration");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Failed to refresh legacy folder list for iCloud account", buf, 2u);
        }

        if ([(ICMigrationController *)self isInternetReachable])
        {
          [(ICMigrationController *)self retryRefreshFolderListForICloudAccountID:parentAccountIdentifier];
        }

        goto LABEL_22;
      }

      v26 = [@"IMAPNotesAccountContentSyncCompleteNotification-" stringByAppendingString:v7];
      v27 = [(__CFString *)nameCopy isEqualToString:v26];

      if (!v27)
      {
        v30 = [@"IMAPNotesAccountContentSyncFailedNotification-" stringByAppendingString:v7];
        v31 = [(__CFString *)nameCopy isEqualToString:v30];

        if (v31)
        {
          v32 = os_log_create("com.apple.notes", "Migration");
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v33[0] = 0;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Failed to refresh legacy content for iCloud account", v33, 2u);
          }

          if ([(ICMigrationController *)self isInternetReachable])
          {
            [(ICMigrationController *)self retryRefreshFolderContentsForICloudAccountID:parentAccountIdentifier];
          }
        }

        goto LABEL_22;
      }

      isInternetReachable2 = [(ICMigrationController *)self isInternetReachable];
      v29 = os_log_create("com.apple.notes", "Migration");
      v19 = v29;
      if (isInternetReachable2)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          sub_1004DE7FC();
        }

        [(ICMigrationController *)self clearRetryCountForSelector:"refreshFolderContentsForICloudAccountID:" accountID:parentAccountIdentifier];
        [objc_opt_class() setCurrentMigrationState:5 forAccountID:parentAccountIdentifier];
        [(ICMigrationController *)self stopRepeatingImportTimer];
        [(ICMigrationController *)self performFinalImportForICloudAccountID:parentAccountIdentifier];
        goto LABEL_22;
      }

      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_21;
      }

      v34 = 0;
      v24 = "Received a legacy content sync complete notification, but we're not connected to the internet. Something is wrong.";
      v25 = &v34;
    }

    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v24, v25, 2u);
    goto LABEL_21;
  }

  v7 = os_log_create("com.apple.notes", "Migration");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_1004DE898();
  }

LABEL_23:
}

+ (id)legacyLocalAccount
{
  v2 = +[NotesApp sharedNotesApp];
  noteContext = [v2 noteContext];
  localAccount = [noteContext localAccount];

  return localAccount;
}

- (void)performFinalRefreshForICloudAccountID:(id)d
{
  dCopy = d;
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v5 iCloudACAccountWithIdentifier:dCopy];

  v7 = [objc_opt_class() legacyAccountForICloudACAccount:v6];
  if (!v7)
  {
    v12 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DE974();
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(ICMigrationController *)self retrySelector:"continueMigrationForICloudAccountID:" accountID:dCopy];
    goto LABEL_20;
  }

  isInternetReachable = [(ICMigrationController *)self isInternetReachable];
  v9 = os_log_create("com.apple.notes", "Migration");
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if ((isInternetReachable & 1) == 0)
  {
    if (v10)
    {
      sub_1004DE90C();
    }

    goto LABEL_19;
  }

  if (v10)
  {
    sub_1004DE940();
  }

  v11 = [objc_opt_class() currentMigrationStateForAccountID:dCopy];
  if (v11 > 3u)
  {
    if (v11 - 5 >= 3)
    {
      if (v11 == 4)
      {
        [(ICMigrationController *)self refreshFolderContentsForICloudAccountID:dCopy];
      }

      goto LABEL_20;
    }

    goto LABEL_16;
  }

  if (v11 < 2u)
  {
LABEL_16:
    v9 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [objc_opt_class() stringFromMigrationState:v11];
      v14 = 138412290;
      v15 = v13;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Trying to perform the final refresh for the iCloud account, but our migration state is (%@)", &v14, 0xCu);
    }

LABEL_19:
    goto LABEL_20;
  }

  if (v11 == 2)
  {
    [objc_opt_class() setCurrentMigrationState:3 forAccountID:dCopy];
  }

  else if (v11 != 3)
  {
    goto LABEL_20;
  }

  [(ICMigrationController *)self refreshFolderListForICloudAccountID:dCopy];
LABEL_20:
}

- (void)refreshFolderListForICloudAccountID:(id)d
{
  dCopy = d;
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v5 iCloudACAccountWithIdentifier:dCopy];

  objc_opt_class();
  v7 = [objc_opt_class() legacyAccountForICloudACAccount:v6];
  v8 = ICCheckedDynamicCast();

  accountIdentifier = [v8 accountIdentifier];
  [(ICMigrationController *)self resetNotificationObservers];
  if (accountIdentifier)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = [@"IMAPNotesAccountFolderHierarchySyncCompleteNotification-" stringByAppendingString:accountIdentifier];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000C7AF0, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = [@"IMAPNotesAccountFolderHierarchySyncFailedNotification-" stringByAppendingString:accountIdentifier];
    CFNotificationCenterAddObserver(v12, self, sub_1000C7AF0, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v15 = sub_1004E9EF0(v14);
    sharedConnection = [*(v16 + 4048) sharedConnection];
    LOBYTE(v13) = [sharedConnection updateFolderListForAccountID:accountIdentifier andDataclasses:32 isUserRequested:1];

    v18 = os_log_create("com.apple.notes", "Migration");
    v19 = v18;
    if (v13)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DE9A8();
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to refresh folder list from DataAccess iCloud account. DataAccess returned NO.", v21, 2u);
      }

      [(ICMigrationController *)self retryRefreshFolderListForICloudAccountID:dCopy];
    }
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DE9DC();
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(ICMigrationController *)self retrySelector:"continueMigrationForICloudAccountID:" accountID:dCopy];
  }
}

- (void)refreshFolderContentsForICloudAccountID:(id)d
{
  dCopy = d;
  v5 = +[ICAccountUtilities sharedInstance];
  v6 = [v5 iCloudACAccountWithIdentifier:dCopy];

  objc_opt_class();
  v7 = [objc_opt_class() legacyAccountForICloudACAccount:v6];
  v8 = ICCheckedDynamicCast();

  accountIdentifier = [v8 accountIdentifier];
  [(ICMigrationController *)self resetNotificationObservers];
  if (v8)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    v11 = [@"IMAPNotesAccountContentSyncCompleteNotification-" stringByAppendingString:accountIdentifier];
    CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_1000C7AF0, v11, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v12 = CFNotificationCenterGetDarwinNotifyCenter();
    v13 = [@"IMAPNotesAccountContentSyncFailedNotification-" stringByAppendingString:accountIdentifier];
    CFNotificationCenterAddObserver(v12, self, sub_1000C7AF0, v13, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

    v15 = sub_1004E9EF0(v14);
    sharedConnection = [*(v16 + 4048) sharedConnection];
    LOBYTE(v13) = [sharedConnection updateContentsOfAllFoldersForAccountID:accountIdentifier andDataclasses:32 isUserRequested:1];

    v18 = os_log_create("com.apple.notes", "Migration");
    v19 = v18;
    if (v13)
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
      {
        sub_1004DEA10();
      }
    }

    else
    {
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v21 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Failed to refresh folder contents from DataAccess iCloud account. DataAccess returned NO.", v21, 2u);
      }

      [(ICMigrationController *)self retryRefreshFolderContentsForICloudAccountID:dCopy];
    }
  }

  else
  {
    v20 = os_log_create("com.apple.notes", "Migration");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      sub_1004DEA44();
    }

    [NSObject cancelPreviousPerformRequestsWithTarget:self];
    [(ICMigrationController *)self retrySelector:"continueMigrationForICloudAccountID:" accountID:dCopy];
  }
}

- (void)disableLegacyAccount:(id)account
{
  accountCopy = account;
  v11 = +[ACAccountStore defaultStore];
  accountIdentifier = [accountCopy accountIdentifier];

  v6 = [v11 accountWithIdentifier:accountIdentifier];

  displayAccount = [v6 displayAccount];
  v8 = displayAccount;
  if (displayAccount)
  {
    v9 = displayAccount;
  }

  else
  {
    v9 = v6;
  }

  v10 = v9;

  if (v10)
  {
    [(ICMigrationController *)self disableNotesForACAccount:v10 inStore:v11];
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v4 = +[UIApplication sharedApplication];
  v5 = [v4 beginBackgroundTaskWithName:@"Cancel Migration" expirationHandler:&stru_1006488F0];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000C7F84;
  v6[3] = &unk_100648758;
  v6[4] = v5;
  [(ICMigrationController *)self cancelAllOperationsWithCompletionHandler:v6];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v3 = objc_opt_class();

  [v3 performSelector:"continueMigrationIfNecessary" withObject:0 afterDelay:3.0];
}

@end