@interface BKAppURLHandler
- (BKAppURLHandler)initWithLibraryAssetProvider:(id)provider;
- (BKAppURLHandlingDelegate)delegate;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BOOL)_handleShowAudiobooksMainWithTransaction:(id)transaction;
- (BOOL)_handleShowMangaMainWithTransaction:(id)transaction;
- (BOOL)_handleShowReadingNowWithTransaction:(id)transaction;
- (id)_newShowAssetTransactionFromExistingTransaction:(id)transaction forAssetID:(id)d isAudiobook:(BOOL)audiobook;
- (id)locationFromURLFragment:(id)fragment;
- (id)p_libraryAssetFromIbooksSchemeURL:(id)l remainingPath:(id *)path needsBookID:(id *)d transaction:(id)transaction;
- (id)p_libraryAssetFromIbooksSchemeURL:(id)l sourceApplication:(id)application annotation:(id)annotation remainingPath:(id *)path canScheduleOperations:(BOOL)operations transaction:(id)transaction;
- (void)handleURL:(id)l sourceApplication:(id)application annotation:(id)annotation isLaunch:(BOOL)launch transaction:(id)transaction completion:(id)completion;
@end

@implementation BKAppURLHandler

- (BKAppURLHandler)initWithLibraryAssetProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = BKAppURLHandler;
  v5 = [(BKAppURLHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryAssetProvider, providerCopy);
  }

  return v6;
}

- (id)locationFromURLFragment:(id)fragment
{
  fragmentCopy = fragment;
  v4 = CFURLCopyFragment(fragmentCopy, &stru_100A30A68);
  v28 = 0;
  v5 = [BKEpubCFILocation locationForCFI:v4 error:&v28];
  v6 = v28;
  if (v5)
  {
    goto LABEL_21;
  }

  if (![(__CFString *)v4 hasPrefix:@"annotationID(") || ![(__CFString *)v4 hasSuffix:@""]])
  {
    v13 = [BKAnchorPathLocation alloc];
    fragment = [(__CFURL *)fragmentCopy fragment];
    v5 = [v13 initWithOrdinal:-1 anchor:fragment andPath:0];
    goto LABEL_15;
  }

  fragment = [(__CFString *)v4 substringWithRange:13, [(__CFString *)v4 length]- 14];
  v8 = +[AEAnnotationProvider sharedInstance];
  uiManagedObjectContext = [v8 uiManagedObjectContext];
  v10 = [AEAnnotation annotationIncludingDeletedWithUUID:fragment assetID:0 inManagedObjectContext:uiManagedObjectContext];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  location = [v10 location];
  if (!location)
  {
    annotationLocation = [v11 annotationLocation];

    if (annotationLocation)
    {
      annotationLocation2 = [v11 annotationLocation];
      v16 = [annotationLocation2 rangeOfString:@"#"];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        [annotationLocation2 substringFromIndex:v16 + 1];
        v17 = v27 = 0;
        v5 = [BKEpubCFILocation locationForCFI:v17 error:&v27];

        if (v5)
        {
          goto LABEL_14;
        }
      }
    }

    plAbsolutePhysicalLocation = [v11 plAbsolutePhysicalLocation];
    unsignedIntegerValue = [plAbsolutePhysicalLocation unsignedIntegerValue];

    if (unsignedIntegerValue != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [BKPageLocation alloc];
      plAbsolutePhysicalLocation2 = [v11 plAbsolutePhysicalLocation];
      v5 = [v25 initWithOrdinal:0 andOffset:{objc_msgSend(plAbsolutePhysicalLocation2, "unsignedIntegerValue")}];

      goto LABEL_14;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = location;
LABEL_14:

LABEL_15:
  if (!v5)
  {
    v20 = BCIMLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[BKAppURLHandler locationFromURLFragment:]";
      v31 = 2080;
      v32 = "/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAppURLHandler.m";
      v33 = 1024;
      v34 = 139;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s %s:%d", buf, 0x1Cu);
    }

    v21 = BCIMLog();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      absoluteString = [(__CFURL *)fragmentCopy absoluteString];
      localizedDescription = [v6 localizedDescription];
      *buf = 138412546;
      v30 = absoluteString;
      v31 = 2112;
      v32 = localizedDescription;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "@Error parsing CFI from URL %@: %@", buf, 0x16u);
    }

    v5 = 0;
  }

LABEL_21:

  return v5;
}

- (void)handleURL:(id)l sourceApplication:(id)application annotation:(id)annotation isLaunch:(BOOL)launch transaction:(id)transaction completion:(id)completion
{
  lCopy = l;
  applicationCopy = application;
  annotationCopy = annotation;
  transactionCopy = transaction;
  completionCopy = completion;
  v17 = [[NSURLComponents alloc] initWithURL:lCopy resolvingAgainstBaseURL:0];
  path = [v17 path];
  v39 = [path hasPrefix:@"/assetid"];

  v38 = [applicationCopy isEqualToString:@"__self__"];
  scheme = [lCopy scheme];
  v42 = annotationCopy;
  if ([scheme length])
  {
    scheme2 = [lCopy scheme];
    if ([scheme2 caseInsensitiveCompare:@"itms-bookss"])
    {
      scheme3 = [lCopy scheme];
      v22 = [scheme3 caseInsensitiveCompare:@"itms-books"] == 0;
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 0;
  }

  scheme4 = [lCopy scheme];
  if ([scheme4 length])
  {
    scheme5 = [lCopy scheme];
    v25 = [scheme5 caseInsensitiveCompare:@"ibooks"] == 0;
  }

  else
  {
    v25 = 0;
  }

  if (v22 && (+[BSUIURL URLWithURL:](BSUIURL, "URLWithURL:", lCopy), v26 = objc_claimAutoreleasedReturnValue(), [v26 actionString], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "length"), v27, v26, v28))
  {
    delegate = [(BKAppURLHandler *)self delegate];
    storePresenter = [delegate storePresenter];
    v31 = v42;
    [storePresenter showStore:lCopy sourceApplication:applicationCopy annotation:v42 transaction:transactionCopy];

    v32 = objc_retainBlock(completionCopy);
    v33 = v32;
    if (v32)
    {
      (v32[2].isa)(v32, 1);
    }
  }

  else
  {
    v34 = dispatch_group_create();
    v77[0] = 0;
    v77[1] = v77;
    v77[2] = 0x2020000000;
    v78 = 0;
    dispatch_group_enter(v34);
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_1001204F8;
    v74[3] = &unk_100A07E20;
    v76 = v77;
    v35 = v34;
    v75 = v35;
    [lCopy bc_isStoreProductURLWithCompletion:v74];
    dispatch_group_enter(v35);
    v72[0] = 0;
    v72[1] = v72;
    v72[2] = 0x2020000000;
    v73 = 0;
    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_10012050C;
    v69[3] = &unk_100A07E20;
    v71 = v72;
    v36 = v35;
    v70 = v36;
    [lCopy bc_isBookStoreURLWithCompletion:v69];
    dispatch_group_enter(v36);
    v67[0] = 0;
    v67[1] = v67;
    v67[2] = 0x2020000000;
    v68 = 0;
    v64[0] = _NSConcreteStackBlock;
    v64[1] = 3221225472;
    v64[2] = sub_100120520;
    v64[3] = &unk_100A07E20;
    v66 = v67;
    v37 = v36;
    v65 = v37;
    [lCopy bc_isBookStoreProductURLWithCompletion:v64];
    dispatch_group_enter(v37);
    v62[0] = 0;
    v62[1] = v62;
    v62[2] = 0x2020000000;
    v63 = 0;
    v59[0] = _NSConcreteStackBlock;
    v59[1] = 3221225472;
    v59[2] = sub_100120534;
    v59[3] = &unk_100A07E20;
    v61 = v62;
    v33 = v37;
    v60 = v33;
    [lCopy bc_isStoreURLWithCompletion:v59];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100120548;
    block[3] = &unk_100A07E48;
    v51 = v72;
    v52 = v77;
    v53 = v67;
    v54 = v62;
    v55 = v38;
    v56 = v39;
    v44 = lCopy;
    selfCopy = self;
    v46 = transactionCopy;
    v47 = applicationCopy;
    v31 = v42;
    v48 = v42;
    launchCopy = launch;
    v58 = v25;
    v49 = v17;
    v50 = completionCopy;
    dispatch_group_notify(v33, &_dispatch_main_q, block);

    _Block_object_dispose(v62, 8);
    _Block_object_dispose(v67, 8);

    _Block_object_dispose(v72, 8);
    _Block_object_dispose(v77, 8);
  }
}

- (id)p_libraryAssetFromIbooksSchemeURL:(id)l remainingPath:(id *)path needsBookID:(id *)d transaction:(id)transaction
{
  lCopy = l;
  host = [lCopy host];
  v11 = [NSURL assetIDFromURL:lCopy];
  absoluteURL = [lCopy absoluteURL];

  v13 = CFURLCopyPath(absoluteURL);
  if ([(__CFString *)v13 hasPrefix:@"/"])
  {
    v14 = [(__CFString *)v13 substringFromIndex:1];

    v13 = v14;
  }

  v15 = [(__CFString *)v13 componentsSeparatedByString:@"/"];
  v16 = [v15 objectAtIndex:0];
  v17 = CFURLCreateStringByReplacingPercentEscapes(0, v16, &stru_100A30A68);

  if (path)
  {
    v18 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];
    *path = [v18 componentsJoinedByString:@"/"];
  }

  if ([host isEqualToString:@"storeid"])
  {
    libraryAssetProvider = [(BKAppURLHandler *)self libraryAssetProvider];
    v20 = [libraryAssetProvider libraryAssetOnMainQueueWithStoreID:v17];
    v21 = 0;
    goto LABEL_11;
  }

  if ([host isEqualToString:@"bookid"])
  {
    v22 = v17;
    v21 = v22;
    if (d)
    {
      v23 = v22;
      *d = v21;
    }

    libraryAssetProvider = [(BKAppURLHandler *)self libraryAssetProvider];
    v20 = [libraryAssetProvider libraryAssetOnMainQueueWithEpubID:v21];
LABEL_11:

    if (v20)
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  v21 = 0;
LABEL_14:
  if ([v11 length])
  {
    libraryAssetProvider2 = [(BKAppURLHandler *)self libraryAssetProvider];
    v20 = [libraryAssetProvider2 libraryAssetOnMainQueueWithAssetID:v11];
    goto LABEL_19;
  }

  v20 = 0;
LABEL_17:
  if (![host isEqualToString:@"filename"])
  {
    goto LABEL_20;
  }

  v25 = v17;
  libraryAssetProvider2 = [(BKAppURLHandler *)self libraryAssetProvider];
  v26 = [libraryAssetProvider2 libraryAssetOnMainQueueWithFilename:v25];

  v20 = v26;
LABEL_19:

LABEL_20:

  return v20;
}

- (id)p_libraryAssetFromIbooksSchemeURL:(id)l sourceApplication:(id)application annotation:(id)annotation remainingPath:(id *)path canScheduleOperations:(BOOL)operations transaction:(id)transaction
{
  operationsCopy = operations;
  lCopy = l;
  applicationCopy = application;
  annotationCopy = annotation;
  transactionCopy = transaction;
  v40[0] = 0;
  v16 = [(BKAppURLHandler *)self p_libraryAssetFromIbooksSchemeURL:lCopy remainingPath:path needsBookID:v40 transaction:transactionCopy];
  v17 = v40[0];
  objc_opt_class();
  v18 = +[BKLibraryManager defaultManager];
  v19 = [v18 dataSourceWithIdentifier:@"com.apple.ibooks.plist.untethered"];
  v20 = BUDynamicCast();

  canOpen = [v16 canOpen];
  if (operationsCopy && ((v16 != 0) & canOpen) == 0)
  {
    v22 = canOpen & 1;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100121868;
    v34[3] = &unk_100A07E98;
    v34[4] = self;
    v23 = lCopy;
    v35 = v23;
    v36 = applicationCopy;
    v37 = annotationCopy;
    v24 = transactionCopy;
    v38 = v24;
    v39 = v22;
    v25 = objc_retainBlock(v34);
    if ([v20 hasDigestChangedSinceFetch])
    {
      v26 = +[BKLibraryManager defaultManager];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100121E44;
      v30[3] = &unk_100A04FE8;
      v30[4] = self;
      v31 = v23;
      v32 = v24;
      v33 = v25;
      [v26 reloadDataSource:v20 completion:v30];
    }

    else
    {
      (v25[2])(v25, v16, v17);
    }
  }

  return v16;
}

- (id)_newShowAssetTransactionFromExistingTransaction:(id)transaction forAssetID:(id)d isAudiobook:(BOOL)audiobook
{
  transactionCopy = transaction;
  sceneManager = [(BKAppURLHandler *)self sceneManager];
  v8 = [sceneManager defaultSceneControllerForTransaction:transactionCopy];

  newShowAssetTransaction = [v8 newShowAssetTransaction];
  return newShowAssetTransaction;
}

- (BOOL)_handleShowReadingNowWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(BKAppURLHandler *)self delegate];
  storePresenter = [delegate storePresenter];
  [storePresenter showReadingNowWithTransaction:transactionCopy];

  return 1;
}

- (BOOL)_handleShowAudiobooksMainWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(BKAppURLHandler *)self delegate];
  storePresenter = [delegate storePresenter];
  [storePresenter showAudiobookStoreWithTransaction:transactionCopy];

  return 1;
}

- (BOOL)_handleShowMangaMainWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  delegate = [(BKAppURLHandler *)self delegate];
  storePresenter = [delegate storePresenter];
  [storePresenter showMangaStoreWithTransaction:transactionCopy];

  return 1;
}

- (BKAppURLHandlingDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BKLibraryAssetProvider)libraryAssetProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_libraryAssetProvider);

  return WeakRetained;
}

@end