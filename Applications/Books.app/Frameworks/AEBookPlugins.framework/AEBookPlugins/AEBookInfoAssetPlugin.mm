@interface AEBookInfoAssetPlugin
- (BOOL)_shouldShowAlertForError:(id)error;
- (BOOL)helper:(id)helper validateBookAuthorizationWithError:(id *)error needsCoordination:(BOOL)coordination;
- (BOOL)isEpubURL:(id)l;
- (id)_bookInfoForAssetAtURL:(id)l withMoc:(id)moc error:(id *)error needsCoordination:(BOOL)coordination updateDate:(id)date;
- (id)helper:(id)helper annotationProviderForURL:(id)l needsCoordination:(BOOL)coordination forAssetID:(id)d;
- (id)helper:(id)helper coverImageForURL:(id)l;
- (id)helper:(id)helper coverImageForURL:(id)l size:(CGSize)size;
- (id)helper:(id)helper metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination;
- (id)helperForURL:(id)l withOptions:(id)options;
- (void)_showAlertForError:(id)error forAssetAtURL:(id)l transaction:(id)transaction;
- (void)helper:(id)helper canRefetch:(BOOL)refetch viewControllerWithOptions:(id)options completion:(id)completion;
- (void)helper:(id)helper deletePersistentCacheForURL:(id)l;
- (void)helper:(id)helper updateCachedURLFrom:(id)from to:(id)to;
@end

@implementation AEBookInfoAssetPlugin

- (BOOL)isEpubURL:(id)l
{
  lCopy = l;
  if ([lCopy isFileURL])
  {
    pathExtension = [lCopy pathExtension];
    v5 = [pathExtension caseInsensitiveCompare:@"epub"] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_bookInfoForAssetAtURL:(id)l withMoc:(id)moc error:(id *)error needsCoordination:(BOOL)coordination updateDate:(id)date
{
  coordinationCopy = coordination;
  lCopy = l;
  mocCopy = moc;
  dateCopy = date;
  v14 = +[AEEpubInfoSource sharedInstance];
  v15 = [v14 bookInfoForURL:lCopy fromManagedObjectContext:mocCopy error:error needsCoordination:coordinationCopy updateDate:dateCopy];

  return v15;
}

- (id)helper:(id)helper metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  keyCopy = key;
  lCopy = l;
  if ([(AEBookInfoAssetPlugin *)self isEpubURL:lCopy])
  {
    v11 = +[AEEpubInfoSource sharedInstance];
    v12 = [v11 metadataForKey:keyCopy forURL:lCopy needsCoordination:coordinationCopy];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)helper:(id)helper deletePersistentCacheForURL:(id)l
{
  lCopy = l;
  v4 = +[AEEpubInfoSource sharedInstance];
  [v4 resetBookForURL:lCopy];
}

- (void)helper:(id)helper updateCachedURLFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  v7 = +[AEEpubInfoSource sharedInstance];
  [v7 updateCachedURLFrom:fromCopy to:toCopy];
}

- (void)helper:(id)helper canRefetch:(BOOL)refetch viewControllerWithOptions:(id)options completion:(id)completion
{
  helperCopy = helper;
  optionsCopy = options;
  completionCopy = completion;
  v29 = helperCopy;
  v28 = [v29 url];
  v13 = [optionsCopy objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_3CD04;
  v45[4] = sub_3CD14;
  selfCopy = self;
  v46 = selfCopy;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_3CD1C;
  v41[3] = &unk_1E39A0;
  v44 = v45;
  v27 = v13;
  v42 = v27;
  v15 = completionCopy;
  v43 = v15;
  v16 = objc_retainBlock(v41);
  v17 = [optionsCopy objectForKey:AEHelperNumberIsApplePubKey];
  bOOLValue = [v17 BOOLValue];

  if (bOOLValue)
  {
    v19 = [NSError errorWithDomain:AssetEngineErrorDomain code:1004 userInfo:0];
    if (v19)
    {
      (v16[2])(v16, 0, 0, v19);
    }
  }

  else
  {
    v26 = [optionsCopy valueForKey:@"assetID"];
    v20 = [NSFileAccessIntent readingIntentWithURL:v28 options:1];
    v21 = objc_opt_new();
    v47 = v20;
    v22 = [NSArray arrayWithObjects:&v47 count:1];
    v23 = objc_opt_new();
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_3CF7C;
    v30[3] = &unk_1E3A90;
    v31 = v28;
    v32 = optionsCopy;
    v38 = v16;
    v24 = v20;
    v33 = v24;
    v34 = selfCopy;
    v25 = v26;
    v35 = v25;
    refetchCopy = refetch;
    v36 = v27;
    v37 = v29;
    v39 = v15;
    [v21 coordinateAccessWithIntents:v22 queue:v23 byAccessor:v30];

    v19 = 0;
  }

  _Block_object_dispose(v45, 8);
}

- (BOOL)helper:(id)helper validateBookAuthorizationWithError:(id *)error needsCoordination:(BOOL)coordination
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  helperCopy = helper;
  v9 = [helperCopy url];
  v10 = +[AEEpubInfoSource sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3EA4C;
  v13[3] = &unk_1E3AB8;
  v13[4] = self;
  v11 = v9;
  coordinationCopy = coordination;
  v14 = v11;
  v15 = &v18;
  errorCopy = error;
  [v10 performBackgroundTaskAndWait:v13];

  LOBYTE(v9) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (id)helper:(id)helper coverImageForURL:(id)l size:(CGSize)size
{
  v5 = [(AEBookInfoAssetPlugin *)self helper:helper coverImageForURL:l, size.width, size.height];

  return v5;
}

- (id)helper:(id)helper coverImageForURL:(id)l
{
  lCopy = l;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_3CD04;
  v18 = sub_3CD14;
  v19 = 0;
  if ([(AEBookInfoAssetPlugin *)self isEpubURL:lCopy])
  {
    +[AEEpubInfoSource sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_3ED9C;
    v10 = v9[3] = &unk_1E3AE0;
    v11 = lCopy;
    selfCopy = self;
    v13 = &v14;
    v6 = v10;
    [v6 performBackgroundTaskAndWait:v9];
  }

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (id)helper:(id)helper annotationProviderForURL:(id)l needsCoordination:(BOOL)coordination forAssetID:(id)d
{
  coordinationCopy = coordination;
  helperCopy = helper;
  lCopy = l;
  dCopy = d;
  sharedAnnotationProvider = [(AEBookInfoAssetPlugin *)self sharedAnnotationProvider];
  if (dCopy)
  {
    v14 = dCopy;
  }

  else
  {
    v14 = [helperCopy helperMetadataForKey:AEHelperStringMetadataAssetIDKey needsCoordination:coordinationCopy];
  }

  v15 = v14;
  v16 = [UIApplication contextDirectoryForAssetWithID:v14];
  v17 = [IMLibraryPlist isManagedBookFromURL:lCopy];
  bOOLValue = [v17 BOOLValue];

  v19 = [AEAnnotationSerializationManager annotationSerializationManagerWithAssetID:v15 assetURL:lCopy bookVersionString:0 pathToAssetContextDirectory:v16 isManagedBook:bOOLValue];
  if (([v19 isAssetOfflineWithAssetID:v15] & 1) != 0 || objc_msgSend(v19, "takeBookOfflineIfManagedWithAnnotationProvider:assetID:", sharedAnnotationProvider, v15))
  {
    v20 = [v19 annotationProviderForOfflineDBWithAssetID:v15];

    sharedAnnotationProvider = v20;
  }

  return sharedAnnotationProvider;
}

- (id)helperForURL:(id)l withOptions:(id)options
{
  lCopy = l;
  v6 = [[AEPluginDelegateInstance alloc] initWithDelegate:self forURL:lCopy];

  return v6;
}

- (BOOL)_shouldShowAlertForError:(id)error
{
  errorCopy = error;
  code = [errorCopy code];
  domain = [errorCopy domain];
  v6 = domain;
  if (code == -996)
  {
    v7 = [domain isEqualToString:fd45c988dd8cc08fce2e58d17f4ed2];
  }

  else
  {
    if (code != &stru_3D8.segname[4])
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = [domain isEqualToString:AssetEngineErrorDomain];
  }

  v8 = v7 ^ 1;
LABEL_7:

  return v8;
}

- (void)_showAlertForError:(id)error forAssetAtURL:(id)l transaction:(id)transaction
{
  errorCopy = error;
  lCopy = l;
  transactionCopy = transaction;
  if (!transactionCopy)
  {
    BCReportAssertionFailureWithMessage();
  }

  v9 = &_s13BookAnalytics13SkipDirectionO7forwardyA2CmFWC_ptr;
  v10 = +[AEAssetEngine libraryMgr];
  v11 = [v10 metadataForAssetAtURL:lCopy needsCoordination:1];

  v12 = [IMLibraryPlist titleFromPlistEntry:v11];
  v13 = AEBundle();
  v14 = [v13 localizedStringForKey:@"OK" value:&stru_1E7188 table:0];

  if ([v12 length])
  {
    v15 = AEBundle();
    v16 = [v15 localizedStringForKey:@"Cannot Open “%@”" value:&stru_1E7188 table:0];
    v17 = [NSString stringWithFormat:v16, v12];
  }

  else
  {
    v15 = AEBundle();
    v17 = [v15 localizedStringForKey:@"Cannot Open Book" value:&stru_1E7188 table:0];
  }

  code = [errorCopy code];
  if (code > 1999)
  {
    if (code == &stru_798.reloff)
    {
      v19 = AEBundle();
      v20 = [v19 localizedStringForKey:@"This book is protected by an incompatible technology." value:&stru_1E7188 table:0];
      goto LABEL_26;
    }

    if (code == (&stru_798.reloff + 2))
    {
LABEL_22:
      v19 = AEBundle();
      v20 = [v19 localizedStringForKey:@"This book cannot be opened because required software cannot be downloaded." value:&stru_1E7188 table:0];
      goto LABEL_26;
    }

    if (code == &stru_798.nreloc)
    {
      objc_opt_class();
      userInfo = [errorCopy userInfo];
      v22 = [userInfo objectForKeyedSubscript:NSUnderlyingErrorKey];
      v19 = BUDynamicCast();

      localizedDescription = [v19 localizedDescription];
      if ([localizedDescription length])
      {
        v24 = localizedDescription;
      }

      else
      {
        v28 = AEBundle();
        v24 = [v28 localizedStringForKey:@"This book can’t be downloaded. Check your internet connection value:then try again." table:{&stru_1E7188, 0}];
      }

      v9 = &_s13BookAnalytics13SkipDirectionO7forwardyA2CmFWC_ptr;
      goto LABEL_27;
    }

    goto LABEL_18;
  }

  if ((code - 250) < 2)
  {
    goto LABEL_25;
  }

  if (code != &stru_20.flags && code != (&stru_108.size + 1))
  {
LABEL_18:
    domain = [errorCopy domain];
    if ([domain isEqualToString:AMSErrorDomain])
    {

      goto LABEL_22;
    }

    domain2 = [errorCopy domain];
    v27 = [domain2 isEqualToString:AKAppleIDAuthenticationErrorDomain];

    if (v27)
    {
      goto LABEL_22;
    }

LABEL_25:
    v19 = AEBundle();
    v20 = [v19 localizedStringForKey:@"It is formatted incorrectly value:or is not a format that Apple Books can open." table:{&stru_1E7188, 0}];
    goto LABEL_26;
  }

  v19 = AEBundle();
  v20 = [v19 localizedStringForKey:@"You must authorize this computer from the Account menu." value:&stru_1E7188 table:0];
LABEL_26:
  v24 = v20;
LABEL_27:

  v29 = [UIAlertController alertControllerWithTitle:v17 message:v24 preferredStyle:1];
  v30 = [UIAlertAction actionWithTitle:v14 style:1 handler:0];
  [v29 addAction:v30];

  appInfoMgr = [v9[137] appInfoMgr];
  [appInfoMgr presentViewController:v29 transaction:transactionCopy animated:1 completion:0];
}

@end