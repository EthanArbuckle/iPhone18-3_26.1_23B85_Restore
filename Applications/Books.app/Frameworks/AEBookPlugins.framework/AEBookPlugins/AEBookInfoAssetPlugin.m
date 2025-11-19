@interface AEBookInfoAssetPlugin
- (BOOL)_shouldShowAlertForError:(id)a3;
- (BOOL)helper:(id)a3 validateBookAuthorizationWithError:(id *)a4 needsCoordination:(BOOL)a5;
- (BOOL)isEpubURL:(id)a3;
- (id)_bookInfoForAssetAtURL:(id)a3 withMoc:(id)a4 error:(id *)a5 needsCoordination:(BOOL)a6 updateDate:(id)a7;
- (id)helper:(id)a3 annotationProviderForURL:(id)a4 needsCoordination:(BOOL)a5 forAssetID:(id)a6;
- (id)helper:(id)a3 coverImageForURL:(id)a4;
- (id)helper:(id)a3 coverImageForURL:(id)a4 size:(CGSize)a5;
- (id)helper:(id)a3 metadataForKey:(id)a4 forURL:(id)a5 needsCoordination:(BOOL)a6;
- (id)helperForURL:(id)a3 withOptions:(id)a4;
- (void)_showAlertForError:(id)a3 forAssetAtURL:(id)a4 transaction:(id)a5;
- (void)helper:(id)a3 canRefetch:(BOOL)a4 viewControllerWithOptions:(id)a5 completion:(id)a6;
- (void)helper:(id)a3 deletePersistentCacheForURL:(id)a4;
- (void)helper:(id)a3 updateCachedURLFrom:(id)a4 to:(id)a5;
@end

@implementation AEBookInfoAssetPlugin

- (BOOL)isEpubURL:(id)a3
{
  v3 = a3;
  if ([v3 isFileURL])
  {
    v4 = [v3 pathExtension];
    v5 = [v4 caseInsensitiveCompare:@"epub"] == 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_bookInfoForAssetAtURL:(id)a3 withMoc:(id)a4 error:(id *)a5 needsCoordination:(BOOL)a6 updateDate:(id)a7
{
  v8 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a7;
  v14 = +[AEEpubInfoSource sharedInstance];
  v15 = [v14 bookInfoForURL:v11 fromManagedObjectContext:v12 error:a5 needsCoordination:v8 updateDate:v13];

  return v15;
}

- (id)helper:(id)a3 metadataForKey:(id)a4 forURL:(id)a5 needsCoordination:(BOOL)a6
{
  v6 = a6;
  v9 = a4;
  v10 = a5;
  if ([(AEBookInfoAssetPlugin *)self isEpubURL:v10])
  {
    v11 = +[AEEpubInfoSource sharedInstance];
    v12 = [v11 metadataForKey:v9 forURL:v10 needsCoordination:v6];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)helper:(id)a3 deletePersistentCacheForURL:(id)a4
{
  v5 = a4;
  v4 = +[AEEpubInfoSource sharedInstance];
  [v4 resetBookForURL:v5];
}

- (void)helper:(id)a3 updateCachedURLFrom:(id)a4 to:(id)a5
{
  v8 = a4;
  v6 = a5;
  v7 = +[AEEpubInfoSource sharedInstance];
  [v7 updateCachedURLFrom:v8 to:v6];
}

- (void)helper:(id)a3 canRefetch:(BOOL)a4 viewControllerWithOptions:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v29 = v10;
  v28 = [v29 url];
  v13 = [v11 objectForKeyedSubscript:BCTransactionOptionsTransactionKey];
  v45[0] = 0;
  v45[1] = v45;
  v45[2] = 0x3032000000;
  v45[3] = sub_3CD04;
  v45[4] = sub_3CD14;
  v14 = self;
  v46 = v14;
  v41[0] = _NSConcreteStackBlock;
  v41[1] = 3221225472;
  v41[2] = sub_3CD1C;
  v41[3] = &unk_1E39A0;
  v44 = v45;
  v27 = v13;
  v42 = v27;
  v15 = v12;
  v43 = v15;
  v16 = objc_retainBlock(v41);
  v17 = [v11 objectForKey:AEHelperNumberIsApplePubKey];
  v18 = [v17 BOOLValue];

  if (v18)
  {
    v19 = [NSError errorWithDomain:AssetEngineErrorDomain code:1004 userInfo:0];
    if (v19)
    {
      (v16[2])(v16, 0, 0, v19);
    }
  }

  else
  {
    v26 = [v11 valueForKey:@"assetID"];
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
    v32 = v11;
    v38 = v16;
    v24 = v20;
    v33 = v24;
    v34 = v14;
    v25 = v26;
    v35 = v25;
    v40 = a4;
    v36 = v27;
    v37 = v29;
    v39 = v15;
    [v21 coordinateAccessWithIntents:v22 queue:v23 byAccessor:v30];

    v19 = 0;
  }

  _Block_object_dispose(v45, 8);
}

- (BOOL)helper:(id)a3 validateBookAuthorizationWithError:(id *)a4 needsCoordination:(BOOL)a5
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x2020000000;
  v21 = 0;
  v8 = a3;
  v9 = [v8 url];
  v10 = +[AEEpubInfoSource sharedInstance];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_3EA4C;
  v13[3] = &unk_1E3AB8;
  v13[4] = self;
  v11 = v9;
  v17 = a5;
  v14 = v11;
  v15 = &v18;
  v16 = a4;
  [v10 performBackgroundTaskAndWait:v13];

  LOBYTE(v9) = *(v19 + 24);
  _Block_object_dispose(&v18, 8);

  return v9;
}

- (id)helper:(id)a3 coverImageForURL:(id)a4 size:(CGSize)a5
{
  v5 = [(AEBookInfoAssetPlugin *)self helper:a3 coverImageForURL:a4, a5.width, a5.height];

  return v5;
}

- (id)helper:(id)a3 coverImageForURL:(id)a4
{
  v5 = a4;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_3CD04;
  v18 = sub_3CD14;
  v19 = 0;
  if ([(AEBookInfoAssetPlugin *)self isEpubURL:v5])
  {
    +[AEEpubInfoSource sharedInstance];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_3ED9C;
    v10 = v9[3] = &unk_1E3AE0;
    v11 = v5;
    v12 = self;
    v13 = &v14;
    v6 = v10;
    [v6 performBackgroundTaskAndWait:v9];
  }

  v7 = v15[5];
  _Block_object_dispose(&v14, 8);

  return v7;
}

- (id)helper:(id)a3 annotationProviderForURL:(id)a4 needsCoordination:(BOOL)a5 forAssetID:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [(AEBookInfoAssetPlugin *)self sharedAnnotationProvider];
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = [v10 helperMetadataForKey:AEHelperStringMetadataAssetIDKey needsCoordination:v7];
  }

  v15 = v14;
  v16 = [UIApplication contextDirectoryForAssetWithID:v14];
  v17 = [IMLibraryPlist isManagedBookFromURL:v11];
  v18 = [v17 BOOLValue];

  v19 = [AEAnnotationSerializationManager annotationSerializationManagerWithAssetID:v15 assetURL:v11 bookVersionString:0 pathToAssetContextDirectory:v16 isManagedBook:v18];
  if (([v19 isAssetOfflineWithAssetID:v15] & 1) != 0 || objc_msgSend(v19, "takeBookOfflineIfManagedWithAnnotationProvider:assetID:", v13, v15))
  {
    v20 = [v19 annotationProviderForOfflineDBWithAssetID:v15];

    v13 = v20;
  }

  return v13;
}

- (id)helperForURL:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = [[AEPluginDelegateInstance alloc] initWithDelegate:self forURL:v5];

  return v6;
}

- (BOOL)_shouldShowAlertForError:(id)a3
{
  v3 = a3;
  v4 = [v3 code];
  v5 = [v3 domain];
  v6 = v5;
  if (v4 == -996)
  {
    v7 = [v5 isEqualToString:fd45c988dd8cc08fce2e58d17f4ed2];
  }

  else
  {
    if (v4 != &stru_3D8.segname[4])
    {
      v8 = 1;
      goto LABEL_7;
    }

    v7 = [v5 isEqualToString:AssetEngineErrorDomain];
  }

  v8 = v7 ^ 1;
LABEL_7:

  return v8;
}

- (void)_showAlertForError:(id)a3 forAssetAtURL:(id)a4 transaction:(id)a5
{
  v32 = a3;
  v7 = a4;
  v8 = a5;
  if (!v8)
  {
    BCReportAssertionFailureWithMessage();
  }

  v9 = &_s13BookAnalytics13SkipDirectionO7forwardyA2CmFWC_ptr;
  v10 = +[AEAssetEngine libraryMgr];
  v11 = [v10 metadataForAssetAtURL:v7 needsCoordination:1];

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

  v18 = [v32 code];
  if (v18 > 1999)
  {
    if (v18 == &stru_798.reloff)
    {
      v19 = AEBundle();
      v20 = [v19 localizedStringForKey:@"This book is protected by an incompatible technology." value:&stru_1E7188 table:0];
      goto LABEL_26;
    }

    if (v18 == (&stru_798.reloff + 2))
    {
LABEL_22:
      v19 = AEBundle();
      v20 = [v19 localizedStringForKey:@"This book cannot be opened because required software cannot be downloaded." value:&stru_1E7188 table:0];
      goto LABEL_26;
    }

    if (v18 == &stru_798.nreloc)
    {
      objc_opt_class();
      v21 = [v32 userInfo];
      v22 = [v21 objectForKeyedSubscript:NSUnderlyingErrorKey];
      v19 = BUDynamicCast();

      v23 = [v19 localizedDescription];
      if ([v23 length])
      {
        v24 = v23;
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

  if ((v18 - 250) < 2)
  {
    goto LABEL_25;
  }

  if (v18 != &stru_20.flags && v18 != (&stru_108.size + 1))
  {
LABEL_18:
    v25 = [v32 domain];
    if ([v25 isEqualToString:AMSErrorDomain])
    {

      goto LABEL_22;
    }

    v26 = [v32 domain];
    v27 = [v26 isEqualToString:AKAppleIDAuthenticationErrorDomain];

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

  v31 = [v9[137] appInfoMgr];
  [v31 presentViewController:v29 transaction:v8 animated:1 completion:0];
}

@end