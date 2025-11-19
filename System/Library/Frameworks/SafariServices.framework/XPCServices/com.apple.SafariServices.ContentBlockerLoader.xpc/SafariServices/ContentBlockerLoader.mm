@interface ContentBlockerLoader
+ (id)_sharedProfileDelegate;
+ (id)_tabCollection;
+ (id)_tabGroupManager;
+ (id)defaultContentBlockerManager;
+ (id)defaultWebExtensionsController;
- (BOOL)_extensionIsEnabledInAnyProfile:(id)a3;
- (BOOL)extensionIsEnabled:(id)a3 inProfileWithServerID:(id)a4;
- (id)_contentBlockerStateURLForProfileServerID:(id)a3;
- (id)_extensionWithIdentifier:(id)a3 inAppWithDisplayIdentifier:(id)a4;
- (id)applicationStateMonitor;
- (void)_fetchDisplayIdentifierOfCallingAppWithCompletion:(id)a3;
- (void)_loadContentBlockerExtension:(id)a3 reply:(id)a4;
- (void)dealloc;
- (void)getStateOfContentBlockerWithIdentifier:(id)a3 reply:(id)a4;
- (void)loadContentBlockerWithIdentifier:(id)a3 reply:(id)a4;
- (void)removeContentBlockerWithIdentifierIfNecessary:(id)a3;
@end

@implementation ContentBlockerLoader

+ (id)_tabCollection
{
  if (qword_10000CA88 != -1)
  {
    sub_100004404();
  }

  v3 = qword_10000CA80;

  return v3;
}

+ (id)_tabGroupManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001508;
  block[3] = &unk_100008390;
  block[4] = a1;
  if (qword_10000CA98 != -1)
  {
    dispatch_once(&qword_10000CA98, block);
  }

  v2 = qword_10000CA90;

  return v2;
}

+ (id)_sharedProfileDelegate
{
  if (qword_10000CAA8 != -1)
  {
    sub_100004418();
  }

  v3 = qword_10000CAA0;

  return v3;
}

+ (id)defaultWebExtensionsController
{
  if (qword_10000CAB8 != -1)
  {
    sub_10000442C();
  }

  v3 = qword_10000CAB0;

  return v3;
}

+ (id)defaultContentBlockerManager
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100001798;
  block[3] = &unk_100008390;
  block[4] = a1;
  if (qword_10000CAC8 != -1)
  {
    dispatch_once(&qword_10000CAC8, block);
  }

  v2 = qword_10000CAC0;

  return v2;
}

- (id)applicationStateMonitor
{
  applicationStateMonitor = self->_applicationStateMonitor;
  if (!applicationStateMonitor)
  {
    v4 = [[BKSApplicationStateMonitor alloc] initWithBundleIDs:0 states:0];
    v5 = self->_applicationStateMonitor;
    self->_applicationStateMonitor = v4;

    applicationStateMonitor = self->_applicationStateMonitor;
  }

  return applicationStateMonitor;
}

- (void)dealloc
{
  [(BKSApplicationStateMonitor *)self->_applicationStateMonitor invalidate];
  v3.receiver = self;
  v3.super_class = ContentBlockerLoader;
  [(ContentBlockerLoader *)&v3 dealloc];
}

- (id)_extensionWithIdentifier:(id)a3 inAppWithDisplayIdentifier:(id)a4
{
  v5 = a3;
  v6 = a4;
  v28 = 0;
  v7 = [LSBundleRecord bundleRecordWithApplicationIdentifier:v6 error:&v28];
  v8 = v28;
  if (v7)
  {
    v9 = [NSString alloc];
    v10 = [v7 URL];
    v11 = [v9 initWithUTF8String:{objc_msgSend(v10, "fileSystemRepresentation")}];

    if (v11)
    {
      v12 = [_EXQuery alloc];
      v13 = [v12 initWithExtensionPointIdentifier:SFContentBlockerExtensionPointIdentifier];
      v14 = [_EXQueryController executeQuery:v13];
      v15 = [v14 safari_mapObjectsUsingBlock:&stru_100008410];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100001BD4;
      v25[3] = &unk_100008438;
      v26 = v5;
      v27 = v11;
      v16 = [v15 safari_firstObjectPassingTest:v25];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    if (qword_10000CA78 != -1)
    {
      sub_100004440();
    }

    v17 = qword_10000CA70;
    if (os_log_type_enabled(qword_10000CA70, OS_LOG_TYPE_ERROR))
    {
      sub_100004468(v6, v17, v18, v19, v20, v21, v22, v23);
    }

    v16 = 0;
  }

  return v16;
}

- (void)_fetchDisplayIdentifierOfCallingAppWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[NSXPCConnection currentConnection];
  v6 = [v5 processIdentifier];

  v7 = +[PKManager defaultManager];
  v8 = [v7 containingAppForPlugInWithPid:v6];

  if (v8)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100001E74;
    block[3] = &unk_100008460;
    v9 = &v15;
    v15 = v4;
    v14 = v8;
    dispatch_async(&_dispatch_main_q, block);
    v10 = v14;
  }

  else
  {
    v10 = [(ContentBlockerLoader *)self applicationStateMonitor];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100001E88;
    v11[3] = &unk_100008488;
    v12 = v4;
    [v10 applicationInfoForPID:v6 completion:v11];
    v9 = &v12;
  }
}

- (void)loadContentBlockerWithIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_10000CA68 != -1)
  {
    sub_1000044D4();
  }

  v8 = qword_10000CA60;
  if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
  {
    *buf = 138477827;
    v25 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "Loading content blocker with identifier %{private}@", buf, 0xCu);
  }

  if (v6)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000022CC;
    v20[3] = &unk_1000084B0;
    v9 = v6;
    v21 = v9;
    v10 = v7;
    v22 = self;
    v23 = v10;
    v11 = objc_retainBlock(v20);
    v12 = +[NSXPCConnection currentConnection];
    v13 = [v12 valueForEntitlement:@"com.apple.private.can-load-any-content-blocker"];
    v14 = [v13 BOOLValue];

    if (v14)
    {
      (v11[2])(v11);
    }

    else
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100002484;
      v17[3] = &unk_1000084D8;
      v17[4] = self;
      v18 = v9;
      v19 = v10;
      [(ContentBlockerLoader *)self _fetchDisplayIdentifierOfCallingAppWithCompletion:v17];
    }

    v16 = v21;
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044E8();
    }

    v15 = qword_10000CA60;
    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_ERROR))
    {
      sub_100004510(v15);
    }

    v16 = [NSError errorWithDomain:SFErrorDomain code:1 userInfo:0];
    (*(v7 + 2))(v7, v16);
  }
}

- (void)_loadContentBlockerExtension:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (([v6 optedIn] & 1) == 0)
  {
    [v6 attemptOptIn:0];
  }

  v8 = [v6 identifier];
  if ([(NSMutableSet *)self->_identifiersOfContentBlockersBeingCompiled containsObject:v8])
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044D4();
    }

    v9 = qword_10000CA60;
    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v42 = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Skipping compilation of %{private}@ because it's already compiling", buf, 0xCu);
    }

    v7[2](v7, 0);
  }

  else
  {
    identifiersOfContentBlockersBeingCompiled = self->_identifiersOfContentBlockersBeingCompiled;
    if (!identifiersOfContentBlockersBeingCompiled)
    {
      v11 = +[NSMutableSet set];
      v12 = self->_identifiersOfContentBlockersBeingCompiled;
      self->_identifiersOfContentBlockersBeingCompiled = v11;

      identifiersOfContentBlockersBeingCompiled = self->_identifiersOfContentBlockersBeingCompiled;
    }

    [(NSMutableSet *)identifiersOfContentBlockersBeingCompiled addObject:v8];
    v38[0] = _NSConcreteStackBlock;
    v38[1] = 3221225472;
    v38[2] = sub_100002AC4;
    v38[3] = &unk_100008500;
    v38[4] = self;
    v13 = v8;
    v39 = v13;
    v40 = v7;
    v14 = objc_retainBlock(v38);
    objc_initWeak(&location, v6);
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100002B3C;
    v34[3] = &unk_1000085A0;
    v15 = v13;
    v35 = v15;
    v16 = v14;
    v36 = v16;
    [v6 setRequestCompletionBlock:v34];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000032DC;
    v31[3] = &unk_1000085C8;
    v17 = v15;
    v32 = v17;
    v18 = v16;
    v33 = v18;
    [v6 setRequestCancellationBlock:v31];
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000033F4;
    v27[3] = &unk_1000085F0;
    v19 = v17;
    v28 = v19;
    v20 = v18;
    v29 = v20;
    objc_copyWeak(&v30, &location);
    [v6 setRequestInterruptionBlock:v27];
    if (qword_10000CA68 != -1)
    {
      sub_1000044E8();
    }

    v21 = qword_10000CA60;
    if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
    {
      *buf = 138477827;
      v42 = v6;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "Calling beginExtensionRequestWithInputItems for content blocker: %{private}@", buf, 0xCu);
    }

    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000034F4;
    v23[3] = &unk_100008618;
    v24 = v19;
    v22 = v20;
    v25 = v22;
    objc_copyWeak(&v26, &location);
    [v6 beginExtensionRequestWithInputItems:0 completion:v23];
    objc_destroyWeak(&v26);

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

- (void)removeContentBlockerWithIdentifierIfNecessary:(id)a3
{
  v4 = a3;
  v12 = 0;
  v5 = [NSExtension extensionWithIdentifier:v4 error:&v12];
  v6 = v12;
  if (v5)
  {
    if ([(ContentBlockerLoader *)self _extensionIsEnabledInAnyProfile:v5])
    {
      if (qword_10000CA68 != -1)
      {
        sub_1000044E8();
      }

      v7 = qword_10000CA60;
      if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "Skipping removing content blocker %{private}@ because it's still on in one profile", buf, 0xCu);
      }
    }

    else
    {
      if (qword_10000CA68 != -1)
      {
        sub_1000044E8();
      }

      v9 = qword_10000CA60;
      if (os_log_type_enabled(qword_10000CA60, OS_LOG_TYPE_INFO))
      {
        *buf = 138477827;
        v14 = v4;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Removing content blocker %{private}@", buf, 0xCu);
      }

      xpc_transaction_begin();
      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000038AC;
      v10[3] = &unk_100008668;
      v11 = v4;
      dispatch_async(&_dispatch_main_q, v10);
    }
  }

  else
  {
    if (qword_10000CA68 != -1)
    {
      sub_1000044E8();
    }

    v8 = qword_10000CA60;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [v6 safari_privacyPreservingDescription];
      objc_claimAutoreleasedReturnValue();
      sub_1000046F8();
    }
  }
}

- (void)getStateOfContentBlockerWithIdentifier:(id)a3 reply:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100003B40;
  v7[3] = &unk_1000084D8;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(ContentBlockerLoader *)v8 _fetchDisplayIdentifierOfCallingAppWithCompletion:v7];
}

- (BOOL)_extensionIsEnabledInAnyProfile:(id)a3
{
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = +[ContentBlockerLoader _tabGroupManager];
  v6 = [v5 profiles];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = [*(*(&v14 + 1) + 8 * i) identifierForExtensions];
        v11 = [(ContentBlockerLoader *)self extensionIsEnabled:v4 inProfileWithServerID:v10];

        if (v11)
        {
          v12 = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_contentBlockerStateURLForProfileServerID:(id)a3
{
  v3 = a3;
  v4 = _SFSafariGroupContainerURL();
  if ([WBSWebExtensionUtilities isProfileServerIDForDefaultProfile:v3])
  {
    v5 = [v4 URLByAppendingPathComponent:@"Library/Safari" isDirectory:1];
  }

  else
  {
    v6 = +[NSFileManager defaultManager];
    v7 = [v6 safari_profileDirectoryURLWithID:v3 createIfNeeded:0];

    if (!v7)
    {
      goto LABEL_6;
    }

    v5 = [v7 URLByAppendingPathComponent:@"ContentBlockers" isDirectory:1];
    v8 = +[NSFileManager defaultManager];
    v9 = [v8 safari_ensureDirectoryExists:v5];
  }

  v7 = [v5 URLByAppendingPathComponent:@"ContentBlockers.plist" isDirectory:0];

LABEL_6:

  return v7;
}

- (BOOL)extensionIsEnabled:(id)a3 inProfileWithServerID:(id)a4
{
  v6 = a3;
  v7 = [(ContentBlockerLoader *)self _contentBlockerStateURLForProfileServerID:a4];
  v8 = [[WBSPersistentPropertyListStore alloc] initWithBackingStoreURL:v7];
  v9 = +[ContentBlockerLoader defaultWebExtensionsController];
  v10 = [v9 composedIdentifierForExtensionStateForExtension:v6];

  v11 = [v8 dictionaryForKey:v10];
  v12 = [v11 safari_BOOLForKey:WBSSafariExtensionStateEnabledKey];

  [v8 saveAndCloseStoreSynchronously];
  return v12;
}

@end