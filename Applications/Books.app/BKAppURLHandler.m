@interface BKAppURLHandler
- (BKAppURLHandler)initWithLibraryAssetProvider:(id)a3;
- (BKAppURLHandlingDelegate)delegate;
- (BKLibraryAssetProvider)libraryAssetProvider;
- (BOOL)_handleShowAudiobooksMainWithTransaction:(id)a3;
- (BOOL)_handleShowMangaMainWithTransaction:(id)a3;
- (BOOL)_handleShowReadingNowWithTransaction:(id)a3;
- (id)_newShowAssetTransactionFromExistingTransaction:(id)a3 forAssetID:(id)a4 isAudiobook:(BOOL)a5;
- (id)locationFromURLFragment:(id)a3;
- (id)p_libraryAssetFromIbooksSchemeURL:(id)a3 remainingPath:(id *)a4 needsBookID:(id *)a5 transaction:(id)a6;
- (id)p_libraryAssetFromIbooksSchemeURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 remainingPath:(id *)a6 canScheduleOperations:(BOOL)a7 transaction:(id)a8;
- (void)handleURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 isLaunch:(BOOL)a6 transaction:(id)a7 completion:(id)a8;
@end

@implementation BKAppURLHandler

- (BKAppURLHandler)initWithLibraryAssetProvider:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BKAppURLHandler;
  v5 = [(BKAppURLHandler *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_libraryAssetProvider, v4);
  }

  return v6;
}

- (id)locationFromURLFragment:(id)a3
{
  v3 = a3;
  v4 = CFURLCopyFragment(v3, &stru_100A30A68);
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
    v7 = [(__CFURL *)v3 fragment];
    v5 = [v13 initWithOrdinal:-1 anchor:v7 andPath:0];
    goto LABEL_15;
  }

  v7 = [(__CFString *)v4 substringWithRange:13, [(__CFString *)v4 length]- 14];
  v8 = +[AEAnnotationProvider sharedInstance];
  v9 = [v8 uiManagedObjectContext];
  v10 = [AEAnnotation annotationIncludingDeletedWithUUID:v7 assetID:0 inManagedObjectContext:v9];
  v11 = v10;
  if (!v10)
  {
    goto LABEL_13;
  }

  v12 = [v10 location];
  if (!v12)
  {
    v14 = [v11 annotationLocation];

    if (v14)
    {
      v15 = [v11 annotationLocation];
      v16 = [v15 rangeOfString:@"#"];
      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
      }

      else
      {
        [v15 substringFromIndex:v16 + 1];
        v17 = v27 = 0;
        v5 = [BKEpubCFILocation locationForCFI:v17 error:&v27];

        if (v5)
        {
          goto LABEL_14;
        }
      }
    }

    v18 = [v11 plAbsolutePhysicalLocation];
    v19 = [v18 unsignedIntegerValue];

    if (v19 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = [BKPageLocation alloc];
      v26 = [v11 plAbsolutePhysicalLocation];
      v5 = [v25 initWithOrdinal:0 andOffset:{objc_msgSend(v26, "unsignedIntegerValue")}];

      goto LABEL_14;
    }

LABEL_13:
    v5 = 0;
    goto LABEL_14;
  }

  v5 = v12;
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
      v22 = [(__CFURL *)v3 absoluteString];
      v23 = [v6 localizedDescription];
      *buf = 138412546;
      v30 = v22;
      v31 = 2112;
      v32 = v23;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_INFO, "@Error parsing CFI from URL %@: %@", buf, 0x16u);
    }

    v5 = 0;
  }

LABEL_21:

  return v5;
}

- (void)handleURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 isLaunch:(BOOL)a6 transaction:(id)a7 completion:(id)a8
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = a8;
  v17 = [[NSURLComponents alloc] initWithURL:v12 resolvingAgainstBaseURL:0];
  v18 = [v17 path];
  v39 = [v18 hasPrefix:@"/assetid"];

  v38 = [v13 isEqualToString:@"__self__"];
  v19 = [v12 scheme];
  v42 = v14;
  if ([v19 length])
  {
    v20 = [v12 scheme];
    if ([v20 caseInsensitiveCompare:@"itms-bookss"])
    {
      v21 = [v12 scheme];
      v22 = [v21 caseInsensitiveCompare:@"itms-books"] == 0;
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

  v23 = [v12 scheme];
  if ([v23 length])
  {
    v24 = [v12 scheme];
    v25 = [v24 caseInsensitiveCompare:@"ibooks"] == 0;
  }

  else
  {
    v25 = 0;
  }

  if (v22 && (+[BSUIURL URLWithURL:](BSUIURL, "URLWithURL:", v12), v26 = objc_claimAutoreleasedReturnValue(), [v26 actionString], v27 = objc_claimAutoreleasedReturnValue(), v28 = objc_msgSend(v27, "length"), v27, v26, v28))
  {
    v29 = [(BKAppURLHandler *)self delegate];
    v30 = [v29 storePresenter];
    v31 = v42;
    [v30 showStore:v12 sourceApplication:v13 annotation:v42 transaction:v15];

    v32 = objc_retainBlock(v16);
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
    [v12 bc_isStoreProductURLWithCompletion:v74];
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
    [v12 bc_isBookStoreURLWithCompletion:v69];
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
    [v12 bc_isBookStoreProductURLWithCompletion:v64];
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
    [v12 bc_isStoreURLWithCompletion:v59];
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
    v44 = v12;
    v45 = self;
    v46 = v15;
    v47 = v13;
    v31 = v42;
    v48 = v42;
    v57 = a6;
    v58 = v25;
    v49 = v17;
    v50 = v16;
    dispatch_group_notify(v33, &_dispatch_main_q, block);

    _Block_object_dispose(v62, 8);
    _Block_object_dispose(v67, 8);

    _Block_object_dispose(v72, 8);
    _Block_object_dispose(v77, 8);
  }
}

- (id)p_libraryAssetFromIbooksSchemeURL:(id)a3 remainingPath:(id *)a4 needsBookID:(id *)a5 transaction:(id)a6
{
  v9 = a3;
  v10 = [v9 host];
  v11 = [NSURL assetIDFromURL:v9];
  v12 = [v9 absoluteURL];

  v13 = CFURLCopyPath(v12);
  if ([(__CFString *)v13 hasPrefix:@"/"])
  {
    v14 = [(__CFString *)v13 substringFromIndex:1];

    v13 = v14;
  }

  v15 = [(__CFString *)v13 componentsSeparatedByString:@"/"];
  v16 = [v15 objectAtIndex:0];
  v17 = CFURLCreateStringByReplacingPercentEscapes(0, v16, &stru_100A30A68);

  if (a4)
  {
    v18 = [v15 subarrayWithRange:{1, objc_msgSend(v15, "count") - 1}];
    *a4 = [v18 componentsJoinedByString:@"/"];
  }

  if ([v10 isEqualToString:@"storeid"])
  {
    v19 = [(BKAppURLHandler *)self libraryAssetProvider];
    v20 = [v19 libraryAssetOnMainQueueWithStoreID:v17];
    v21 = 0;
    goto LABEL_11;
  }

  if ([v10 isEqualToString:@"bookid"])
  {
    v22 = v17;
    v21 = v22;
    if (a5)
    {
      v23 = v22;
      *a5 = v21;
    }

    v19 = [(BKAppURLHandler *)self libraryAssetProvider];
    v20 = [v19 libraryAssetOnMainQueueWithEpubID:v21];
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
    v24 = [(BKAppURLHandler *)self libraryAssetProvider];
    v20 = [v24 libraryAssetOnMainQueueWithAssetID:v11];
    goto LABEL_19;
  }

  v20 = 0;
LABEL_17:
  if (![v10 isEqualToString:@"filename"])
  {
    goto LABEL_20;
  }

  v25 = v17;
  v24 = [(BKAppURLHandler *)self libraryAssetProvider];
  v26 = [v24 libraryAssetOnMainQueueWithFilename:v25];

  v20 = v26;
LABEL_19:

LABEL_20:

  return v20;
}

- (id)p_libraryAssetFromIbooksSchemeURL:(id)a3 sourceApplication:(id)a4 annotation:(id)a5 remainingPath:(id *)a6 canScheduleOperations:(BOOL)a7 transaction:(id)a8
{
  v9 = a7;
  v14 = a3;
  v29 = a4;
  v28 = a5;
  v15 = a8;
  v40[0] = 0;
  v16 = [(BKAppURLHandler *)self p_libraryAssetFromIbooksSchemeURL:v14 remainingPath:a6 needsBookID:v40 transaction:v15];
  v17 = v40[0];
  objc_opt_class();
  v18 = +[BKLibraryManager defaultManager];
  v19 = [v18 dataSourceWithIdentifier:@"com.apple.ibooks.plist.untethered"];
  v20 = BUDynamicCast();

  v21 = [v16 canOpen];
  if (v9 && ((v16 != 0) & v21) == 0)
  {
    v22 = v21 & 1;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_100121868;
    v34[3] = &unk_100A07E98;
    v34[4] = self;
    v23 = v14;
    v35 = v23;
    v36 = v29;
    v37 = v28;
    v24 = v15;
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

- (id)_newShowAssetTransactionFromExistingTransaction:(id)a3 forAssetID:(id)a4 isAudiobook:(BOOL)a5
{
  v6 = a3;
  v7 = [(BKAppURLHandler *)self sceneManager];
  v8 = [v7 defaultSceneControllerForTransaction:v6];

  v9 = [v8 newShowAssetTransaction];
  return v9;
}

- (BOOL)_handleShowReadingNowWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(BKAppURLHandler *)self delegate];
  v6 = [v5 storePresenter];
  [v6 showReadingNowWithTransaction:v4];

  return 1;
}

- (BOOL)_handleShowAudiobooksMainWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(BKAppURLHandler *)self delegate];
  v6 = [v5 storePresenter];
  [v6 showAudiobookStoreWithTransaction:v4];

  return 1;
}

- (BOOL)_handleShowMangaMainWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [(BKAppURLHandler *)self delegate];
  v6 = [v5 storePresenter];
  [v6 showMangaStoreWithTransaction:v4];

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