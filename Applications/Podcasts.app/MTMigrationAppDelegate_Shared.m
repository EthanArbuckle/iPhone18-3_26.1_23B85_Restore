@interface MTMigrationAppDelegate_Shared
+ (void)destroyAndRebuildDatabase;
+ (void)moveSourceFile:(id)a3 toPath:(id)a4;
- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4;
- (BOOL)conformsToProtocol:(id)a3;
- (BOOL)isKindOfClass:(Class)a3;
- (BOOL)respondsToSelector:(SEL)a3;
- (MTAppDelegateProtocol)appDelegate;
- (MTMigrationAppDelegate_Shared)init;
- (id)createWindowWithScene:(id)a3;
- (id)methodSignatureForSelector:(SEL)a3;
- (void)applicationDidBecomeActive:(id)a3;
- (void)finishMigration;
- (void)flushInvocations;
- (void)forwardInvocation:(id)a3;
- (void)performIncompatibleDBDialogAction;
- (void)showIncompatibleDBDialog;
- (void)willConnectScene;
@end

@implementation MTMigrationAppDelegate_Shared

- (MTMigrationAppDelegate_Shared)init
{
  if (self)
  {
    v3 = objc_alloc_init(NSMutableArray);
    [(MTMigrationAppDelegate_Shared *)self setQueuedInvocations:v3];
  }

  return self;
}

- (MTAppDelegateProtocol)appDelegate
{
  appDelegate = self->_appDelegate;
  if (!appDelegate)
  {
    v4 = objc_alloc_init([objc_opt_class() appDelegateClass]);
    v5 = self->_appDelegate;
    self->_appDelegate = v4;

    appDelegate = self->_appDelegate;
  }

  return appDelegate;
}

- (void)applicationDidBecomeActive:(id)a3
{
  v6 = a3;
  [(MTMigrationAppDelegate_Shared *)self setDidBecomeActiveWhileMigrating:1];
  v4 = [(MTMigrationAppDelegate_Shared *)self methodSignatureForSelector:"applicationDidBecomeActive:"];
  v5 = [NSInvocation invocationWithMethodSignature:v4];
  [v5 setSelector:"applicationDidBecomeActive:"];
  [v5 setArgument:&v6 atIndex:2];
  [(MTMigrationAppDelegate_Shared *)self forwardInvocation:v5];
}

- (BOOL)application:(id)a3 willFinishLaunchingWithOptions:(id)a4
{
  v41 = a3;
  v54 = v41;
  v53 = a4;
  v55[0] = @"current_data_version";
  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", +[MTDB libraryDataVersion]);
  v56[0] = v6;
  v55[1] = @"current_core_data_version";
  v7 = +[MTDB coreDataChecksum];
  v8 = v7;
  v9 = &stru_1004F3018;
  if (v7)
  {
    v9 = v7;
  }

  v56[1] = v9;
  v56[2] = &off_100500DC0;
  v55[2] = @"new_data_version";
  v55[3] = @"new_core_data_version";
  v10 = +[MTDB managedObjectModel];
  v11 = [v10 versionChecksum];
  v56[3] = v11;
  v55[4] = @"has_corrupt_db";
  v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[MTDB isCorrupt]);
  v56[4] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:5];
  [IMMetrics recordUserAction:@"migration" dataSource:0 withData:v13];

  [IMMetrics startTimer:@"migration"];
  v14 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v15 = +[MTDB libraryDataVersion];
  v16 = +[MTDB coreDataChecksum];
  v17 = v16;
  v18 = &stru_1004F3018;
  if (v16)
  {
    v18 = v16;
  }

  v19 = v18;

  v20 = +[MTDB managedObjectModel];
  v21 = [v20 versionChecksum];

  v22 = +[MTDB isCorrupt];
  v23 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  v24 = [v23 integerForKey:@"migrationAttemptCount"];

  v25 = +[NSUserDefaults _applePodcastsFoundationSharedUserDefaults];
  [v25 setInteger:v24 + 1 forKey:@"migrationAttemptCount"];

  v50[0] = _NSConcreteStackBlock;
  v50[1] = 3221225472;
  v50[2] = sub_1000C11A4;
  v50[3] = &unk_1004D8798;
  v51 = v42;
  v52 = self;
  -[MTMigrationAppDelegate_Shared setProcessAssertion:](self, "setProcessAssertion:", [v51 beginBackgroundTaskWithName:@"Database migration" expirationHandler:v50]);
  [(MTMigrationAppDelegate_Shared *)self setIsMigrating:1];
  v26 = +[MTCarPlayMigrationBridge sharedInstance];
  [v26 setIsMigrating:1];

  [MTBackgroundTaskScheduler registerBackgroundTaskClass:objc_opt_class()];
  v27 = objc_alloc_init(MTBackgroundTaskScheduler);
  v28 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  [v28 setBackgroundTaskScheduler:v27];

  v29 = [(MTMigrationAppDelegate_Shared *)self methodSignatureForSelector:"application:willFinishLaunchingWithOptions:"];
  v30 = [NSInvocation invocationWithMethodSignature:v29];
  [v30 setSelector:"application:willFinishLaunchingWithOptions:"];
  [v30 setArgument:&v54 atIndex:2];
  [v30 setArgument:&v53 atIndex:3];
  [(MTMigrationAppDelegate_Shared *)self forwardInvocation:v30];
  v31 = dispatch_get_global_queue(2, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000C1224;
  block[3] = &unk_1004DB3F8;
  block[4] = self;
  v46 = v14;
  v47 = v15;
  v48 = 70;
  v32 = v19;
  v44 = v32;
  v33 = v21;
  v45 = v33;
  v49 = v22;
  dispatch_async(v31, block);

  v34 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v35 = objc_opt_respondsToSelector();
  if (v35)
  {
    v21 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
    if (objc_opt_respondsToSelector())
    {

LABEL_12:
      goto LABEL_13;
    }
  }

  v36 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v37 = objc_opt_respondsToSelector();

  if (v35)
  {
  }

  if (v37)
  {
    v38 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
    v39 = [v38 createWindowForApplication:v54];
    [(MTMigrationAppDelegate_Shared *)self setWindow:v39];

    [(MTMigrationAppDelegate_Shared *)self willConnectScene];
    v34 = [(MTMigrationAppDelegate_Shared *)self window];
    [v34 makeKeyAndVisible];
    goto LABEL_12;
  }

LABEL_13:

  return 1;
}

- (void)willConnectScene
{
  v4 = [(MTMigrationAppDelegate_Shared *)self window];
  v5 = objc_opt_new();
  [v4 setRootViewController:v5];

  v6 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  LOBYTE(v5) = objc_opt_respondsToSelector();

  if (v5)
  {
    v8 = [(MTMigrationAppDelegate_Shared *)self methodSignatureForSelector:a2];
    v7 = [NSInvocation invocationWithMethodSignature:v8];
    [v7 setSelector:a2];
    [(MTMigrationAppDelegate_Shared *)self forwardInvocation:v7];
  }
}

- (id)createWindowWithScene:(id)a3
{
  v4 = a3;
  v5 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v6 = [v5 createWindowWithScene:v4];

  v7 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  [v7 setWindow:v6];

  return v6;
}

- (void)showIncompatibleDBDialog
{
  v3 = +[_TtC18PodcastsFoundation18SyncKeysRepository shared];
  v4 = [v3 isLibrarySyncEnabled];

  v5 = @"INCOMPATIBLE_DB_BUTTON_WITHOUT_SYNC";
  if (v4)
  {
    v5 = @"INCOMPATIBLE_DB_BUTTON_WITH_SYNC";
    v6 = @"INCOMPATIBLE_DB_MESSAGE_WITH_SYNC";
  }

  else
  {
    v6 = @"INCOMPATIBLE_DB_MESSAGE_WITHOUT_SYNC";
  }

  v7 = [(MTMigrationAppDelegate_Shared *)self alertControllerStyleForInterfaceIdiom];
  v8 = +[NSBundle mainBundle];
  v9 = [v8 localizedStringForKey:@"INCOMPATIBLE_DB_TITLE" value:&stru_1004F3018 table:0];
  v10 = +[NSBundle mainBundle];
  v11 = [v10 localizedStringForKey:v6 value:&stru_1004F3018 table:0];
  v12 = [UIAlertController alertControllerWithTitle:v9 message:v11 preferredStyle:v7];

  v13 = +[NSBundle mainBundle];
  v14 = [v13 localizedStringForKey:v17 value:&stru_1004F3018 table:0];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000C1A9C;
  v18[3] = &unk_1004DB420;
  v18[4] = self;
  v15 = [UIAlertAction actionWithTitle:v14 style:0 handler:v18];
  [v12 addAction:v15];

  v16 = +[UIViewController mt_rootViewController];
  [v16 presentViewController:v12 animated:1 completion:0];
}

- (void)performIncompatibleDBDialogAction
{
  [objc_opt_class() destroyAndRebuildDatabase];

  [(MTMigrationAppDelegate_Shared *)self finishMigration];
}

- (void)finishMigration
{
  [(MTMigrationAppDelegate_Shared *)self setIsMigrating:0];
  v3 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v4 = +[UIApplication sharedApplication];
  [v4 setDelegate:v3];

  [(MTMigrationAppDelegate_Shared *)self flushInvocations];
  v5 = +[MTCarPlayMigrationBridge sharedInstance];
  [v5 setIsMigrating:0];

  if ([(MTMigrationAppDelegate_Shared *)self processAssertion])
  {
    v6 = +[UIApplication sharedApplication];
    [v6 endBackgroundTask:{-[MTMigrationAppDelegate_Shared processAssertion](self, "processAssertion")}];
  }
}

- (void)forwardInvocation:(id)a3
{
  v6 = a3;
  if ([(MTMigrationAppDelegate_Shared *)self isMigrating])
  {
    v4 = [(MTMigrationAppDelegate_Shared *)self queuedInvocations];
    objc_sync_enter(v4);
    [v6 retainArguments];
    v5 = [(MTMigrationAppDelegate_Shared *)self queuedInvocations];
    [v5 addObject:v6];

    objc_sync_exit(v4);
  }

  else
  {
    v4 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
    [v6 invokeWithTarget:v4];
  }
}

- (id)methodSignatureForSelector:(SEL)a3
{
  v4 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v5 = [v4 methodSignatureForSelector:a3];

  return v5;
}

- (void)flushInvocations
{
  v3 = [(MTMigrationAppDelegate_Shared *)self queuedInvocations];
  objc_sync_enter(v3);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [(MTMigrationAppDelegate_Shared *)self queuedInvocations];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    do
    {
      v7 = 0;
      do
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v10 + 1) + 8 * v7);
        v9 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
        [v8 invokeWithTarget:v9];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  objc_sync_exit(v3);
}

- (BOOL)isKindOfClass:(Class)a3
{
  v3 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)respondsToSelector:(SEL)a3
{
  v3 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v4 = objc_opt_respondsToSelector();

  return v4 & 1;
}

- (BOOL)conformsToProtocol:(id)a3
{
  v4 = a3;
  v5 = [(MTMigrationAppDelegate_Shared *)self appDelegate];
  v6 = [v5 conformsToProtocol:v4];

  return v6;
}

+ (void)destroyAndRebuildDatabase
{
  v3 = _MTLogCategoryDatabase();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "Rebuilding library database", buf, 2u);
  }

  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"yyyy-MM-dd-hh:mm:ss"];
  v5 = +[NSDate date];
  v6 = [v4 stringFromDate:v5];
  v7 = [NSString stringWithFormat:@"backup_%@", v6];

  v8 = +[MTConstants sharedDocumentsDirectory];
  v9 = [v8 URLByAppendingPathComponent:v7];

  v10 = +[NSFileManager defaultManager];
  [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:0];

  v11 = +[MTDB libraryPath];
  [a1 moveSourceFile:v11 toPath:v9];

  v12 = +[MTDB libraryShmPath];
  [a1 moveSourceFile:v12 toPath:v9];

  v13 = +[MTDB libraryWalPath];
  [a1 moveSourceFile:v13 toPath:v9];

  [(objc_class *)+[SyncControllerFactory resolvedSyncClass](_TtC8Podcasts21SyncControllerFactory resetMetadataToInitialState];
  [MTDB setCorrupt:0];
  +[MTLibraryMigrator needsMigration];
}

+ (void)moveSourceFile:(id)a3 toPath:(id)a4
{
  v5 = a4;
  v6 = a3;
  v9 = [v6 lastPathComponent];
  v7 = [v5 URLByAppendingPathComponent:v9];

  v8 = +[NSFileManager defaultManager];
  [v8 moveItemAtURL:v6 toURL:v7 error:0];
}

@end