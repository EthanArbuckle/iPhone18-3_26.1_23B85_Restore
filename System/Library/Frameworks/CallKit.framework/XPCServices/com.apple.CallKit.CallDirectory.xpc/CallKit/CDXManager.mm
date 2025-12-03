@interface CDXManager
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (CDXManager)init;
- (id)_loadExtensionDataOperationWithStore:(id)store extension:(id)extension;
- (void)_setUpTemporaryDirectory;
- (void)callDirectoryHost:(id)host requestedEnabledForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedEnabledStatusForExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedExtensionsWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedFirstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedLastUpdatedInfoWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedLiveBlockingInfoFor:(id)for completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedRefreshExtensionContextForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedRefreshPIRParametersForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedReloadForExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedResetForLiveLookupExtension:(id)extension completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToCompactStoreWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToLaunchCallDirectorySettingsWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToPrepareStoreWithCompletionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToSetPrioritizedExtensionIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)callDirectoryHost:(id)host requestedToSynchronizeExtensionsWithCompletionHandler:(id)handler;
- (void)callDirectoryHostRequestedToCleanupLiveLookupData:(id)data;
- (void)fetchLiveIdentityInfoFor:(id)for cacheOnly:(BOOL)only completionHandler:(id)handler;
- (void)fetchLiveInfoFor:(id)for with:(id)with blockingCompletion:(id)completion identityCompletion:(id)identityCompletion;
- (void)writeImageIfNecessary:(id)necessary extensionIdentifier:(id)identifier handle:(id)handle completionHandler:(id)handler;
@end

@implementation CDXManager

- (CDXManager)init
{
  v25.receiver = self;
  v25.super_class = CDXManager;
  v2 = [(CDXManager *)&v25 init];
  v3 = v2;
  if (v2)
  {
    [(CDXManager *)v2 _setUpTemporaryDirectory];
    v4 = +[FTServerBag sharedInstance];
    serverBag = v3->_serverBag;
    v3->_serverBag = v4;

    v6 = objc_alloc_init(_TtC31com_apple_CallKit_CallDirectory20LiveLookupStoreProxy);
    liveLookupStore = v3->_liveLookupStore;
    v3->_liveLookupStore = v6;

    v8 = objc_alloc_init(_TtC31com_apple_CallKit_CallDirectory21SecureImageTranscoder);
    imageTranscoder = v3->_imageTranscoder;
    v3->_imageTranscoder = v8;

    v10 = dispatch_group_create();
    liveLookupGroup = v3->_liveLookupGroup;
    v3->_liveLookupGroup = v10;

    v12 = objc_alloc_init(_TtC31com_apple_CallKit_CallDirectory21CoreAnalyticsReporter);
    analyticsReporter = v3->_analyticsReporter;
    v3->_analyticsReporter = v12;

    v14 = objc_alloc_init(CXCallDirectoryHost);
    host = v3->_host;
    v3->_host = v14;

    [(CXCallDirectoryHost *)v3->_host setDelegate:v3 queue:0];
    v16 = objc_alloc_init(CUSystemMonitor);
    systemMonitor = v3->_systemMonitor;
    v3->_systemMonitor = v16;

    objc_initWeak(&location, v3);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100009B58;
    v22[3] = &unk_100034DA0;
    objc_copyWeak(&v23, &location);
    [(CUSystemMonitor *)v3->_systemMonitor setFirstUnlockHandler:v22];
    v18 = v3->_systemMonitor;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100009BE8;
    v20[3] = &unk_100034DA0;
    objc_copyWeak(&v21, &location);
    [(CUSystemMonitor *)v18 activateWithCompletion:v20];
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v3;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[NSBundle mainBundle];
  bundleIdentifier = [v6 bundleIdentifier];

  if ([bundleIdentifier isEqualToString:CXCallDirectoryDefaultHostBundleIdentifier])
  {
    v8 = +[NSXPCInterface cx_callDirectoryManagerDefaultHostInterface];
  }

  else
  {
    if (![bundleIdentifier isEqualToString:CXCallDirectoryMaintenanceHostBundleIdentifier])
    {
      goto LABEL_7;
    }

    v8 = +[NSXPCInterface cx_callDirectoryManagerMaintenanceHostInterface];
  }

  v9 = v8;
  if (v8)
  {
    host = [(CDXManager *)self host];
    [connectionCopy setExportedObject:host];

    [connectionCopy setExportedInterface:v9];
    [connectionCopy resume];
    v11 = 1;
    goto LABEL_10;
  }

LABEL_7:
  v9 = sub_100001C1C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    sub_100021B60();
  }

  v11 = 0;
LABEL_10:

  return v11;
}

- (void)callDirectoryHost:(id)host requestedReloadForExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v9 = sub_100001C1C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = extensionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "extension %@", buf, 0xCu);
  }

  v18 = 0;
  v10 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v18];
  v11 = v18;
  if (v10)
  {
    v12 = [(CDXManager *)self _loadExtensionDataOperationWithStore:v10 extension:extensionCopy];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10000A070;
    v14[3] = &unk_100034DC8;
    v15 = extensionCopy;
    v16 = v10;
    v17 = handlerCopy;
    [v12 performWithCompletionHandler:v14];
  }

  else
  {
    v13 = sub_100001C1C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_100021BC8();
    }

    v12 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v12);
  }
}

- (void)callDirectoryHost:(id)host requestedEnabledStatusForExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v8 = sub_100001C1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = extensionCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "extension %@", buf, 0xCu);
  }

  v19 = 0;
  v9 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v19];
  v10 = v19;
  if (v9)
  {
    v11 = [CDXRetrieveExtensionEnabledStatusOperation alloc];
    identifier = [extensionCopy identifier];
    v13 = [(CDXRetrieveExtensionEnabledStatusOperation *)v11 initWithExtensionIdentifier:identifier store:v9];

    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000A308;
    v15[3] = &unk_100034DF0;
    v16 = extensionCopy;
    v17 = v9;
    v18 = handlerCopy;
    [(CDXRetrieveExtensionEnabledStatusOperation *)v13 performWithCompletionHandler:v15];
  }

  else
  {
    v14 = sub_100001C1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_100021CB0();
    }

    v13 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v13);
  }
}

- (void)callDirectoryHost:(id)host requestedFirstIdentificationEntriesForEnabledExtensionsWithPhoneNumbers:(id)numbers cacheOnly:(BOOL)only completionHandler:(id)handler
{
  numbersCopy = numbers;
  handlerCopy = handler;
  v11 = sub_100001C1C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = numbersCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "phoneNumbers %@", buf, 0xCu);
  }

  v21 = 0;
  v12 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v21];
  v13 = v21;
  if (v12)
  {
    v14 = [[CDXRetrieveFirstIdentificationEntriesOperation alloc] initWithPhoneNumbers:numbersCopy store:v12];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10000A868;
    v16[3] = &unk_100034E68;
    v17 = numbersCopy;
    selfCopy = self;
    onlyCopy = only;
    v19 = handlerCopy;
    [(CDXRetrieveFirstIdentificationEntriesOperation *)v14 performWithCompletionHandler:v16];
  }

  else
  {
    v15 = sub_100001C1C();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_100021CB0();
    }

    v14 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v14);
  }
}

- (void)writeImageIfNecessary:(id)necessary extensionIdentifier:(id)identifier handle:(id)handle completionHandler:(id)handler
{
  necessaryCopy = necessary;
  identifierCopy = identifier;
  handleCopy = handle;
  handlerCopy = handler;
  if (![necessaryCopy hasIcon])
  {
    goto LABEL_6;
  }

  icon = [necessaryCopy icon];
  if (([icon hasImage] & 1) == 0)
  {

    goto LABEL_6;
  }

  icon2 = [necessaryCopy icon];
  image = [icon2 image];
  v17 = [image length];

  if (!v17)
  {
LABEL_6:
    handlerCopy[2](handlerCopy, 0);
    goto LABEL_7;
  }

  v18 = +[NSDate date];
  imageTranscoder = [(CDXManager *)self imageTranscoder];
  icon3 = [necessaryCopy icon];
  image2 = [icon3 image];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_10000AD94;
  v23[3] = &unk_100034E90;
  v24 = v18;
  selfCopy = self;
  v26 = identifierCopy;
  v27 = handleCopy;
  v28 = handlerCopy;
  v22 = v18;
  [imageTranscoder generatePreviewImageFrom:image2 completionHandler:v23];

LABEL_7:
}

- (void)fetchLiveInfoFor:(id)for with:(id)with blockingCompletion:(id)completion identityCompletion:(id)identityCompletion
{
  forCopy = for;
  withCopy = with;
  completionCopy = completion;
  identityCompletionCopy = identityCompletion;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  v14 = [liveLookupStore extensionIdentifierFor:withCopy];

  v15 = [[NSString alloc] initWithFormat:@"%@.block", v14];
  v16 = [[CMLClientConfig alloc] initWithUseCase:v15 sourceApplicationBundleIdentifier:v14];
  v17 = [[CMLKeywordPIRClient alloc] initWithClientConfig:v16];
  v18 = sub_100001C1C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v15;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "requestData useCase: %@", buf, 0xCu);
  }

  v19 = +[NSDate date];
  liveLookupGroup = [(CDXManager *)self liveLookupGroup];
  dispatch_group_enter(liveLookupGroup);

  v49[0] = _NSConcreteStackBlock;
  v49[1] = 3221225472;
  v49[2] = sub_10000B394;
  v49[3] = &unk_100034EB8;
  v39 = v19;
  v50 = v39;
  selfCopy = self;
  v21 = v14;
  v52 = v21;
  v53 = v15;
  v22 = completionCopy;
  v56 = v22;
  v23 = forCopy;
  v54 = v23;
  v24 = withCopy;
  v55 = v24;
  v25 = v15;
  [v17 requestDataByStringKeyword:v23 completionHandler:v49];
  v26 = [NSString alloc];

  v27 = [v26 initWithFormat:@"%@.identity", v21];
  v28 = [[CMLClientConfig alloc] initWithUseCase:v27 sourceApplicationBundleIdentifier:v21];

  v29 = [[CMLKeywordPIRClient alloc] initWithClientConfig:v28];
  v30 = sub_100001C1C();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v58 = v27;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "requestData useCase: %@", buf, 0xCu);
  }

  v31 = +[NSDate date];
  liveLookupGroup2 = [(CDXManager *)self liveLookupGroup];
  dispatch_group_enter(liveLookupGroup2);

  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_10000B6A0;
  v41[3] = &unk_100034EB8;
  v42 = v31;
  selfCopy2 = self;
  v44 = v21;
  v45 = v27;
  v47 = v24;
  v48 = identityCompletionCopy;
  v46 = v23;
  v33 = v24;
  v34 = v23;
  v35 = identityCompletionCopy;
  v36 = v27;
  v37 = v21;
  v38 = v31;
  [v29 requestDataByStringKeyword:v34 completionHandler:v41];
}

- (void)fetchLiveIdentityInfoFor:(id)for cacheOnly:(BOOL)only completionHandler:(id)handler
{
  onlyCopy = only;
  forCopy = for;
  handlerCopy = handler;
  v8 = sub_100001C1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = forCopy;
    *&buf[12] = 1024;
    *&buf[14] = onlyCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "fetchLiveIdentityInfoFor handle=%@ cacheOnly=%d", buf, 0x12u);
  }

  liveLookupGroup = [(CDXManager *)self liveLookupGroup];
  serverBag = [(CDXManager *)self serverBag];
  v11 = dispatch_time(0, 1000000000 * [serverBag identityWaitSeconds]);
  v12 = dispatch_group_wait(liveLookupGroup, v11);

  if (v12)
  {
    v13 = sub_100001C1C();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      serverBag2 = [(CDXManager *)self serverBag];
      identityWaitSeconds = [serverBag2 identityWaitSeconds];
      *buf = 134217984;
      *&buf[4] = identityWaitSeconds;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "not all previous fetches completed within %lu second(s) continuing", buf, 0xCu);
    }
  }

  v90[0] = _NSConcreteStackBlock;
  v90[1] = 3221225472;
  v90[2] = sub_10000C698;
  v90[3] = &unk_100034F08;
  v90[4] = self;
  v61 = handlerCopy;
  v91 = v61;
  v62 = objc_retainBlock(v90);
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  activeExtensions = [liveLookupStore activeExtensions];

  v18 = sub_100001C1C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = [activeExtensions count];
    *buf = 134218242;
    *&buf[4] = v19;
    *&buf[12] = 2112;
    *&buf[14] = forCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "extensions=%lu handle=%@", buf, 0x16u);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = activeExtensions;
  v20 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v20)
  {
    v64 = *v87;
    while (2)
    {
      for (i = 0; i != v20; i = i + 1)
      {
        if (*v87 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v86 + 1) + 8 * i);
        liveLookupStore2 = [(CDXManager *)self liveLookupStore];
        v24 = [liveLookupStore2 extensionIdentifierFor:v22];

        liveLookupStore3 = [(CDXManager *)self liveLookupStore];
        v26 = [liveLookupStore3 fetchIdentityInfoFor:forCopy from:v22];

        if (v26)
        {
          liveLookupStore4 = [(CDXManager *)self liveLookupStore];
          v28 = [liveLookupStore4 nameFor:v26];

          liveLookupStore5 = [(CDXManager *)self liveLookupStore];
          v30 = [liveLookupStore5 iconURLFor:v26];

          liveLookupStore6 = [(CDXManager *)self liveLookupStore];
          v32 = [liveLookupStore6 identityTypeFor:v26];

          v33 = [(CDXManager *)self identificationEntryFrom:v24 withName:v28 withIconURL:v30 withType:v32 fromCache:1];
          v34 = sub_100001C1C();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v26;
            *&buf[12] = 2112;
            *&buf[14] = v24;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "found %@ in cache for %@", buf, 0x16u);
          }

          localizedLabel = [v33 localizedLabel];
          v36 = [localizedLabel length] == 0;

          if (!v36)
          {
            (v62[2])(v62, v33, 0);

            goto LABEL_50;
          }
        }
      }

      v20 = [obj countByEnumeratingWithState:&v86 objects:v100 count:16];
      if (v20)
      {
        continue;
      }

      break;
    }
  }

  if (!onlyCopy)
  {
    v37 = dispatch_group_create();
    v81 = 0;
    v82 = &v81;
    v83 = 0x2810000000;
    v84 = "";
    v85 = 0;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v97 = sub_10000C778;
    v98 = sub_10000C788;
    v99 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(obj, "count")}];
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v80 = 0u;
    v65 = obj;
    v38 = [v65 countByEnumeratingWithState:&v77 objects:v95 count:16];
    if (v38)
    {
      v39 = *v78;
      do
      {
        for (j = 0; j != v38; j = j + 1)
        {
          if (*v78 != v39)
          {
            objc_enumerationMutation(v65);
          }

          v41 = *(*(&v77 + 1) + 8 * j);
          liveLookupStore7 = [(CDXManager *)self liveLookupStore];
          v43 = [liveLookupStore7 extensionIdentifierFor:v41];

          dispatch_group_enter(v37);
          v44 = sub_100001C1C();
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v93 = 138412290;
            v94 = v43;
            _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "fetching identity for %@", v93, 0xCu);
          }

          v71[0] = _NSConcreteStackBlock;
          v71[1] = 3221225472;
          v71[2] = sub_10000C790;
          v71[3] = &unk_100034F30;
          v45 = v43;
          v72 = v45;
          selfCopy = self;
          v75 = &v81;
          v76 = buf;
          v74 = v37;
          [(CDXManager *)self fetchLiveInfoFor:forCopy with:v41 blockingCompletion:0 identityCompletion:v71];
        }

        v38 = [v65 countByEnumeratingWithState:&v77 objects:v95 count:16];
      }

      while (v38);
    }

    serverBag3 = [(CDXManager *)self serverBag];
    v47 = dispatch_time(0, 1000000000 * [serverBag3 identityWaitSeconds]);
    v48 = dispatch_group_wait(v37, v47);

    if (v48)
    {
      v49 = sub_100001C1C();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        serverBag4 = [(CDXManager *)self serverBag];
        identityWaitSeconds2 = [serverBag4 identityWaitSeconds];
        *v93 = 134217984;
        v94 = identityWaitSeconds2;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "not all identity fetches returned within %lu second(s)", v93, 0xCu);
      }
    }

    else
    {
      v49 = sub_100001C1C();
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        *v93 = 0;
        _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "all identity fetches complete", v93, 2u);
      }
    }

    os_unfair_lock_lock(v82 + 8);
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v52 = *(*&buf[8] + 40);
    v53 = [v52 countByEnumeratingWithState:&v67 objects:v92 count:16];
    if (v53)
    {
      v54 = *v68;
      while (2)
      {
        for (k = 0; k != v53; k = k + 1)
        {
          if (*v68 != v54)
          {
            objc_enumerationMutation(v52);
          }

          v56 = *(*(&v67 + 1) + 8 * k);
          localizedLabel2 = [v56 localizedLabel];
          v58 = [localizedLabel2 length] == 0;

          if (!v58)
          {
            (v62[2])(v62, v56, 0);
            os_unfair_lock_unlock(v82 + 8);

            _Block_object_dispose(buf, 8);
            _Block_object_dispose(&v81, 8);

            goto LABEL_50;
          }
        }

        v53 = [v52 countByEnumeratingWithState:&v67 objects:v92 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }
    }

    os_unfair_lock_unlock(v82 + 8);
    _Block_object_dispose(buf, 8);

    _Block_object_dispose(&v81, 8);
  }

  v59 = sub_100001C1C();
  if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_DEFAULT, "No found entries.", buf, 2u);
  }

  (*(v61 + 2))(v61, 0, 0);
LABEL_50:
}

- (void)callDirectoryHost:(id)host requestedLiveBlockingInfoFor:(id)for completionHandler:(id)handler
{
  hostCopy = host;
  forCopy = for;
  handlerCopy = handler;
  v8 = sub_100001C1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = forCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "requestedLiveBlockingInfoFor handle=%@", buf, 0xCu);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  activeExtensions = [liveLookupStore activeExtensions];

  liveLookupStore2 = [(CDXManager *)self liveLookupStore];
  v48 = [liveLookupStore2 getBlockingInfoFor:forCopy];

  if ([v48 count] && ((-[CDXManager liveLookupStore](self, "liveLookupStore", hostCopy), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(v11, "shouldBlockWith:", v48), v11, (v12 & 1) != 0) || (v13 = objc_msgSend(v48, "count"), v13 == objc_msgSend(activeExtensions, "count"))))
  {
    v14 = sub_100001C1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *&buf[4] = v12;
      *&buf[8] = 2112;
      *&buf[10] = forCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "cache says block (%d) for handle=%@", buf, 0x12u);
    }

    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v15 = v48;
    v16 = [v15 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (v16)
    {
      v17 = *v60;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v60 != v17)
          {
            objc_enumerationMutation(v15);
          }

          v19 = *(*(&v59 + 1) + 8 * i);
          analyticsReporter = [(CDXManager *)self analyticsReporter];
          liveLookupStore3 = [(CDXManager *)self liveLookupStore];
          v22 = [liveLookupStore3 extensionIdentifierFrom:v19];
          [analyticsReporter sendBlockingCacheHitFor:v22];
        }

        v16 = [v15 countByEnumeratingWithState:&v59 objects:v68 count:16];
      }

      while (v16);
    }

    handlerCopy[2](handlerCopy, v12, 0);
  }

  else
  {
    v23 = sub_100001C1C();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [activeExtensions count];
      *buf = 134218242;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = forCopy;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "extensions=%lu handle=%@", buf, 0x16u);
    }

    if ([activeExtensions count])
    {
      v25 = dispatch_group_create();
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v67 = 0;
      v55 = 0u;
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v26 = activeExtensions;
      v27 = [v26 countByEnumeratingWithState:&v55 objects:v65 count:16];
      if (v27)
      {
        v28 = *v56;
        do
        {
          for (j = 0; j != v27; j = j + 1)
          {
            if (*v56 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v55 + 1) + 8 * j);
            liveLookupStore4 = [(CDXManager *)self liveLookupStore];
            v32 = [liveLookupStore4 extensionIdentifierFor:v30];

            liveLookupStore5 = [(CDXManager *)self liveLookupStore];
            v34 = [liveLookupStore5 llExtension:v30 containedIn:v48];

            if (v34)
            {
              analyticsReporter2 = [(CDXManager *)self analyticsReporter];
              [analyticsReporter2 sendBlockingCacheHitFor:v32];
            }

            else
            {
              dispatch_group_enter(v25);
              v36 = sub_100001C1C();
              if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
              {
                *v63 = 138412290;
                v64 = v32;
                _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "fetching blocking for %@", v63, 0xCu);
              }

              v49[0] = _NSConcreteStackBlock;
              v49[1] = 3221225472;
              v49[2] = sub_10000CFDC;
              v49[3] = &unk_100034F58;
              v37 = v32;
              v54 = buf;
              v50 = v37;
              selfCopy = self;
              v53 = handlerCopy;
              v52 = v25;
              [(CDXManager *)self fetchLiveInfoFor:forCopy with:v30 blockingCompletion:v49 identityCompletion:0];

              analyticsReporter2 = v50;
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v55 objects:v65 count:16];
        }

        while (v27);
      }

      serverBag = [(CDXManager *)self serverBag];
      v39 = dispatch_time(0, 1000000000 * [serverBag blockingWaitSeconds]);
      v40 = dispatch_group_wait(v25, v39);

      if (v40)
      {
        v41 = sub_100001C1C();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          serverBag2 = [(CDXManager *)self serverBag];
          blockingWaitSeconds = [serverBag2 blockingWaitSeconds];
          *v63 = 134217984;
          v64 = blockingWaitSeconds;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "not all blocking fetches returned within %lu second(s)", v63, 0xCu);
        }
      }

      else
      {
        v41 = sub_100001C1C();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *v63 = 0;
          _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "all blocking fetches complete", v63, 2u);
        }
      }

      if ((*(*&buf[8] + 24) & 1) == 0)
      {
        handlerCopy[2](handlerCopy, 0, 0);
      }

      _Block_object_dispose(buf, 8);
    }

    else
    {
      handlerCopy[2](handlerCopy, 0, 0);
    }
  }
}

- (void)callDirectoryHost:(id)host requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber:(id)number completionHandler:(id)handler
{
  numberCopy = number;
  handlerCopy = handler;
  v9 = sub_100001C1C();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = numberCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "requestedFirstEnabledLiveBlockingExtensionIdentifierForPhoneNumber handle=%@", &v15, 0xCu);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  v11 = [liveLookupStore getBlockingInfoFor:numberCopy];

  if ([v11 count])
  {
    liveLookupStore2 = [(CDXManager *)self liveLookupStore];
    v13 = [liveLookupStore2 firstEnabledBlockedExtensionIdentifierFor:v11];

    v14 = sub_100001C1C();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412546;
      v16 = v13;
      v17 = 2112;
      v18 = numberCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "cache says blocked by (%@) for handle=%@", &v15, 0x16u);
    }

    handlerCopy[2](handlerCopy, v13, 0);
  }

  else
  {
    v13 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (handlerCopy)[2](handlerCopy, 0, v13);
  }
}

- (void)callDirectoryHost:(id)host requestedToSynchronizeExtensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = sub_100001C1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requested to synchronize extensions", buf, 2u);
  }

  v15 = 0;
  v7 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v15];
  v8 = v15;
  if (v7)
  {
    v9 = [CDXSynchronizeExtensionsOperation alloc];
    systemMonitor = [(CDXManager *)self systemMonitor];
    v11 = -[CDXSynchronizeExtensionsOperation initWithStore:firstUnlockStatus:](v9, "initWithStore:firstUnlockStatus:", v7, [systemMonitor firstUnlocked]);

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000D480;
    v13[3] = &unk_100034F80;
    v14 = handlerCopy;
    [(CDXSynchronizeExtensionsOperation *)v11 performWithCompletionHandler:v13];
  }

  else
  {
    v12 = sub_100001C1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100021F78();
    }

    v11 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v11);
  }
}

- (void)callDirectoryHost:(id)host requestedToCompactStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001C1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requested to compact store", buf, 2u);
  }

  v12 = 0;
  v6 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [[CDXCompactStoreOperation alloc] initWithStore:v6];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000D680;
    v10[3] = &unk_100034F80;
    v11 = handlerCopy;
    [(CDXCompactStoreOperation *)v8 performWithCompletionHandler:v10];
  }

  else
  {
    v9 = sub_100001C1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100021F78();
    }

    v8 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, v8);
  }
}

- (void)callDirectoryHostRequestedToCleanupLiveLookupData:(id)data
{
  v4 = sub_100001C1C();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "requested to gc livelookupstore", v6, 2u);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  [liveLookupStore cleanup];
}

- (void)callDirectoryHost:(id)host requestedToLaunchCallDirectorySettingsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001C1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requested to launch call directory settings", buf, 2u);
  }

  v6 = [NSURL URLWithString:@"prefs:root=Phone&path=CALL_DIRECTORIES"];
  v7 = +[LSApplicationWorkspace defaultWorkspace];
  v11 = 0;
  v8 = [v7 openSensitiveURL:v6 withOptions:0 error:&v11];
  v9 = v11;

  if ((v8 & 1) != 0 || !v9)
  {
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 0);
    }
  }

  else
  {
    v10 = sub_100001C1C();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000220B0();
    }

    if (handlerCopy)
    {
      (handlerCopy)[2](handlerCopy, v9);
    }
  }
}

- (void)callDirectoryHost:(id)host requestedExtensionsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = sub_100001C1C();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "requested extensions", buf, 2u);
  }

  v12 = 0;
  v6 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v12];
  v7 = v12;
  if (v6)
  {
    v8 = [[CDXRetrieveExtensionsOperation alloc] initWithStore:v6];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000DA54;
    v10[3] = &unk_100034FA8;
    v11 = handlerCopy;
    [(CDXRetrieveExtensionsOperation *)v8 performWithCompletionHandler:v10];
  }

  else
  {
    v9 = sub_100001C1C();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100021CB0();
    }

    v8 = [NSError cx_callDirectoryManagerErrorWithCode:0];
    (*(handlerCopy + 2))(handlerCopy, 0, v8);
  }
}

- (void)callDirectoryHost:(id)host requestedToSetPrioritizedExtensionIdentifiers:(id)identifiers completionHandler:(id)handler
{
  identifiersCopy = identifiers;
  handlerCopy = handler;
  v8 = sub_100001C1C();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = identifiersCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers %@", buf, 0xCu);
  }

  if ([identifiersCopy count] < 2)
  {
    v12 = sub_100001C1C();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [identifiersCopy count];
      *buf = 134217984;
      v19 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "prioritizedExtensionIdentifiers count is %ld, so doing nothing", buf, 0xCu);
    }

    handlerCopy[2](handlerCopy, 0);
  }

  else
  {
    v17 = 0;
    v9 = [[CXCallDirectoryStore alloc] initForReadingAndWritingWithError:&v17];
    v10 = v17;
    if (v9)
    {
      v11 = [[CDXPrioritizeExtensionsOperation alloc] initWithPrioritizedExtensionIdentifiers:identifiersCopy store:v9];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10000DDB4;
      v15[3] = &unk_100034F80;
      v16 = handlerCopy;
      [(CDXPrioritizeExtensionsOperation *)v11 performWithCompletionHandler:v15];
    }

    else
    {
      v14 = sub_100001C1C();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        sub_100021F78();
      }

      v11 = [NSError cx_callDirectoryManagerErrorWithCode:0];
      (handlerCopy)[2](handlerCopy, v11);
    }
  }
}

- (void)callDirectoryHost:(id)host requestedToPrepareStoreWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v6 = sub_100001C1C();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "requested to prepare store", buf, 2u);
  }

  v7 = [CDXPrepareStoreOperation alloc];
  systemMonitor = [(CDXManager *)self systemMonitor];
  v9 = -[CDXPrepareStoreOperation initWithFirstUnlockStatus:](v7, "initWithFirstUnlockStatus:", [systemMonitor firstUnlocked]);

  v15 = 0;
  v10 = [(CDXPrepareStoreOperation *)v9 performWithError:&v15];
  v11 = v15;
  v12 = sub_100001C1C();
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Store prepared successfully", v14, 2u);
    }
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    sub_1000221FC();
  }

  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, v11);
  }
}

- (void)callDirectoryHost:(id)host requestedEnabledForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  extensionCopy = extension;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier = [extensionCopy identifier];

  (*(handler + 2))(handlerCopy, [liveLookupStore enabledForExtensionWith:identifier], 0);
}

- (void)callDirectoryHost:(id)host requestedResetForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  handlerCopy = handler;
  extensionCopy = extension;
  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier = [extensionCopy identifier];

  [liveLookupStore resetForExtensionWith:identifier];
  handlerCopy[2](handlerCopy, 0);
}

- (void)callDirectoryHost:(id)host requestedRefreshPIRParametersForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  extensionCopy = extension;
  handlerCopy = handler;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = [&off_100035B10 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v22;
    do
    {
      v11 = 0;
      do
      {
        if (*v22 != v10)
        {
          objc_enumerationMutation(&off_100035B10);
        }

        v12 = *(*(&v21 + 1) + 8 * v11);
        v13 = [NSString alloc];
        identifier = [extensionCopy identifier];
        v15 = [v13 initWithFormat:@"%@.%@", identifier, v12];

        v16 = [CMLClientConfig alloc];
        identifier2 = [extensionCopy identifier];
        v18 = [v16 initWithUseCase:v15 sourceApplicationBundleIdentifier:identifier2];

        v19[0] = _NSConcreteStackBlock;
        v19[1] = 3221225472;
        v19[2] = sub_10000E388;
        v19[3] = &unk_100034FD0;
        v20 = handlerCopy;
        [CMLUseCaseStatus requestStatusForClientConfig:v18 options:264 completionHandler:v19];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [&off_100035B10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v9);
  }
}

- (void)callDirectoryHost:(id)host requestedRefreshExtensionContextForLiveLookupExtension:(id)extension completionHandler:(id)handler
{
  hostCopy = host;
  extensionCopy = extension;
  handlerCopy = handler;
  v11 = sub_100001C1C();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    identifier = [extensionCopy identifier];
    *buf = 138412290;
    v23 = identifier;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "requestedRefreshExtensionContextForLiveLookupExtension %@", buf, 0xCu);
  }

  liveLookupStore = [(CDXManager *)self liveLookupStore];
  identifier2 = [extensionCopy identifier];
  v15 = [liveLookupStore enabledForExtensionWith:identifier2];

  if (v15)
  {
    objc_initWeak(buf, self);
    liveLookupStore2 = [(CDXManager *)self liveLookupStore];
    identifier3 = [extensionCopy identifier];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10000E5C8;
    v18[3] = &unk_100035020;
    v19 = extensionCopy;
    v20 = handlerCopy;
    objc_copyWeak(&v21, buf);
    [liveLookupStore2 setEnabled:0 forExtensionWith:identifier3 completionHandler:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
  }
}

- (void)callDirectoryHost:(id)host requestedLastUpdatedInfoWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  (*(handler + 2))(handlerCopy, [(CDXManager *)self lastInformationUpdate], 0);
}

- (void)_setUpTemporaryDirectory
{
  unsetenv("TMPDIR");
  bzero(v4, 0x400uLL);
  if (!_set_user_dir_suffix() || !confstr(65537, v4, 0x400uLL) || mkdir(v4, 0x1C0u) && *__error() != 17)
  {
    v2 = sub_100001C1C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000222EC();
    }

LABEL_11:

    exit(1);
  }

  bzero(v3, 0x400uLL);
  if (!realpath_DARWIN_EXTSN(v4, v3))
  {
    v2 = sub_100001C1C();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_100022264();
    }

    goto LABEL_11;
  }
}

- (id)_loadExtensionDataOperationWithStore:(id)store extension:(id)extension
{
  v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  extensionCopy = extension;
  storeCopy = store;
  v10 = dispatch_queue_create("com.apple.callkit.calldirectory.loadextensiondataoperation", v7);

  v11 = [[CDXExtensionDataRequest alloc] initWithExtension:extensionCopy queue:v10];
  v12 = [CDXLoadExtensionDataOperation alloc];
  identifier = [extensionCopy identifier];

  v14 = [(CDXLoadExtensionDataOperation *)v12 initWithExtensionIdentifier:identifier dataRequest:v11 queue:v10 store:storeCopy lastUpdateDelegate:self];

  return v14;
}

@end