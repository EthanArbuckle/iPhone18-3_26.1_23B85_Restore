@interface THApplePubAssetPlugin
+ (id)sharedPlugin;
- (AEAnnotationProvider)sharedAnnotationProvider;
- (BOOL)helper:(id)helper validateBookAuthorizationWithError:(id *)error needsCoordination:(BOOL)coordination;
- (BOOL)isDeviceSupported;
- (BOOL)supportsAssetAtURL:(id)l quickCheck:(BOOL)check;
- (THApplePubAssetPlugin)init;
- (id)_helper:(id)_helper assetInfo:(id)info viewControllerForBookDescription:(id)description options:(id)options error:(id *)error;
- (id)assetHelperForAsset:(id)asset;
- (id)assetInfoForURL:(id)l;
- (id)coverDescriptionForAsset:(id)asset;
- (id)coverDescriptionForURL:(id)l;
- (id)descriptionForAsset:(id)asset;
- (id)existingBookViewControllerForDocumentRoot:(id)root;
- (id)helper:(id)helper coverImageForURL:(id)l;
- (id)helper:(id)helper metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination;
- (id)helperForURL:(id)l withOptions:(id)options;
- (id)supportedFileExtensions;
- (id)uniqueIdForURL:(id)l;
- (id)viewControllerForAsset:(id)asset bookDescription:(id)description options:(id)options;
- (id)viewControllerForAsset:(id)asset options:(id)options;
- (id)viewControllerForBook:(id)book;
- (void)_helper:(id)_helper canRefetch:(BOOL)refetch viewControllerWithOptions:(id)options completion:(id)completion;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationDidReceiveMemoryWarning:(id)warning;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillResignActive:(id)active;
- (void)dealloc;
- (void)didEnterBackground:(id)background;
- (void)didReceiveMemoryWarning:(id)warning;
- (void)helper:(id)helper deletePersistentCacheForURL:(id)l;
- (void)presentAlertController:(id)controller options:(id)options animated:(BOOL)animated;
- (void)willCloseBook:(id)book;
@end

@implementation THApplePubAssetPlugin

+ (id)sharedPlugin
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_7AB14;
  block[3] = &unk_45C2B8;
  block[4] = self;
  if (qword_5677B0 != -1)
  {
    dispatch_once(&qword_5677B0, block);
  }

  v2 = qword_5677A8;

  return v2;
}

- (THApplePubAssetPlugin)init
{
  v8.receiver = self;
  v8.super_class = THApplePubAssetPlugin;
  v2 = [(THApplicationDelegate *)&v8 init];
  if (v2)
  {
    [TSKApplicationDelegate setSurrogateDelegate:v2];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];

    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:v2 selector:"didEnterBackground:" name:UIApplicationDidEnterBackgroundNotification object:0];

    TSWPForegroundInit();
    v5 = objc_alloc_init(NSMutableSet);
    currentBookViewControllers = v2->_currentBookViewControllers;
    v2->_currentBookViewControllers = v5;
  }

  return v2;
}

- (void)dealloc
{
  if ([(NSMutableSet *)self->_currentBookViewControllers count])
  {
    v3 = +[TSUAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"[THApplePubAssetPlugin dealloc]"];
    v5 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THApplePubAssetPlugin.m"];
    [v3 handleFailureInFunction:v4 file:v5 lineNumber:93 description:@"Current book not closed."];
  }

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 removeObserver:self];

  v7.receiver = self;
  v7.super_class = THApplePubAssetPlugin;
  [(THApplicationDelegate *)&v7 dealloc];
}

- (id)viewControllerForBook:(id)book
{
  bookCopy = book;
  v4 = [[THBookViewController alloc] initWithBookDescription:bookCopy];

  return v4;
}

- (id)existingBookViewControllerForDocumentRoot:(id)root
{
  rootCopy = root;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allObjects = [(NSMutableSet *)self->_currentBookViewControllers allObjects];
  v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allObjects);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        documentViewController = [v9 documentViewController];
        documentRoot = [documentViewController documentRoot];

        if (documentRoot == rootCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)willCloseBook:(id)book
{
  bookCopy = book;
  bookDescription = [bookCopy bookDescription];
  v5 = bookDescription;
  if (bookDescription)
  {
    asset = [bookDescription asset];
    v7 = [asset url];

    if (v7)
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      [(THApplicationDelegate *)selfCopy uncacheBookDescriptionForURL:v7];
      objc_sync_exit(selfCopy);
    }
  }

  [(NSMutableSet *)self->_currentBookViewControllers removeObject:bookCopy];
}

- (id)uniqueIdForURL:(id)l
{
  path = [l path];
  v4 = THUniqueIdForPath(path);

  return v4;
}

- (id)descriptionForAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  v6 = [assetCopy url];
  v7 = [(THApplicationDelegate *)selfCopy cachedBookDescriptionForURL:v6];
  v8 = TSUDynamicCast();

  if (v8)
  {
    asset = [v8 asset];
    assetID = [asset assetID];
    assetID2 = [assetCopy assetID];
    v12 = [assetID isEqual:assetID2];

    if (v12)
    {
      goto LABEL_9;
    }

    v13 = [assetCopy url];
    [(THApplicationDelegate *)selfCopy uncacheBookDescriptionForURL:v13];
  }

  v14 = [assetCopy url];
  path = [v14 path];
  v16 = THIsApplePubAtPath(path);

  if (v16)
  {
    [(THApplicationDelegate *)selfCopy clearBookDescriptionCache];
    objc_opt_class();
    v17 = TSUDynamicCast();
    v8 = [THBookDescription descriptionWithAsset:v17];
    if (v8)
    {
      v18 = [assetCopy url];
      [(THApplicationDelegate *)selfCopy cacheBookDescription:v8 forURL:v18];
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_9:
  objc_sync_exit(selfCopy);

  return v8;
}

- (id)coverDescriptionForURL:(id)l
{
  lCopy = l;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  v6 = [(NSMutableDictionary *)selfCopy->mBookCoverDescriptionCache objectForKey:lCopy];
  v7 = TSUDynamicCast();

  if (!v7)
  {
    path = [lCopy path];
    v9 = THIsApplePubAtPath(path);

    if (v9)
    {
      [(NSMutableDictionary *)selfCopy->mBookCoverDescriptionCache removeAllObjects];
      v7 = [THBookCoverDescription descriptionWithURL:lCopy];
      if (v7)
      {
        [(NSMutableDictionary *)selfCopy->mBookCoverDescriptionCache setObject:v7 forKey:lCopy];
      }
    }

    else
    {
      v7 = 0;
    }
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)coverDescriptionForAsset:(id)asset
{
  assetCopy = asset;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_opt_class();
  mBookCoverDescriptionCache = selfCopy->mBookCoverDescriptionCache;
  v7 = [assetCopy url];
  v8 = [(NSMutableDictionary *)mBookCoverDescriptionCache objectForKey:v7];
  v9 = TSUDynamicCast();

  if (v9)
  {
    asset = [v9 asset];
    assetID = [asset assetID];
    assetID2 = [assetCopy assetID];
    v13 = [assetID isEqual:assetID2];

    if (v13)
    {
      goto LABEL_8;
    }

    v14 = [assetCopy url];
    [(THApplicationDelegate *)selfCopy uncacheBookDescriptionForURL:v14];
  }

  v15 = [assetCopy url];
  path = [v15 path];
  v17 = THIsApplePubAtPath(path);

  if (v17)
  {
    [(THApplicationDelegate *)selfCopy clearBookDescriptionCache];
    v18 = [assetCopy url];
    assetID3 = [assetCopy assetID];
    v9 = [THBookCoverDescription descriptionWithURL:v18 assetID:assetID3];

    if (v9)
    {
      v20 = selfCopy->mBookCoverDescriptionCache;
      v21 = [assetCopy url];
      [(NSMutableDictionary *)v20 setObject:v9 forKey:v21];
    }
  }

  else
  {
    v9 = 0;
  }

LABEL_8:
  objc_sync_exit(selfCopy);

  return v9;
}

- (BOOL)supportsAssetAtURL:(id)l quickCheck:(BOOL)check
{
  checkCopy = check;
  lCopy = l;
  v7 = lCopy;
  if (lCopy)
  {
    if (checkCopy)
    {
      pathExtension = [lCopy pathExtension];
      if ([pathExtension caseInsensitiveCompare:@"ibooks"])
      {
        LOBYTE(v9) = [pathExtension caseInsensitiveCompare:@"epub"] == 0;
      }

      else
      {
        LOBYTE(v9) = 1;
      }
    }

    else
    {
      pathExtension = [(THApplePubAssetPlugin *)self assetInfoForURL:lCopy];
      v9 = pathExtension != 0;
    }
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9;
}

- (id)assetInfoForURL:(id)l
{
  v3 = [(THApplicationDelegate *)self descriptionForURL:l];
  asset = [v3 asset];

  return asset;
}

- (id)assetHelperForAsset:(id)asset
{
  assetCopy = asset;
  v5 = [(THApplePubAssetPlugin *)self descriptionForAsset:assetCopy];
  v6 = [(THApplePubAssetPlugin *)self coverDescriptionForAsset:assetCopy];

  v7 = [[THAssetHelper alloc] initWithBookDescription:v5 bookCoverDescription:v6];

  return v7;
}

- (id)viewControllerForAsset:(id)asset options:(id)options
{
  optionsCopy = options;
  assetCopy = asset;
  v8 = [(THApplePubAssetPlugin *)self descriptionForAsset:assetCopy];
  [v8 loadMetadata];
  v9 = [(THApplePubAssetPlugin *)self viewControllerForAsset:assetCopy bookDescription:v8 options:optionsCopy];

  return v9;
}

- (id)viewControllerForAsset:(id)asset bookDescription:(id)description options:(id)options
{
  assetCopy = asset;
  descriptionCopy = description;
  if ([(THApplePubAssetPlugin *)self isDeviceSupported])
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_7B85C;
    v11[3] = &unk_45C2E0;
    v12 = assetCopy;
    [THPerformanceRegressionLogger logEventWithBlock:v11];
    v9 = [(THApplePubAssetPlugin *)self viewControllerForBook:descriptionCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (AEAnnotationProvider)sharedAnnotationProvider
{
  sharedAnnotationProvider = self->_sharedAnnotationProvider;
  if (!sharedAnnotationProvider)
  {
    v4 = objc_alloc_init(AEAnnotationProvider);
    v5 = self->_sharedAnnotationProvider;
    self->_sharedAnnotationProvider = v4;

    [(AEAnnotationProvider *)self->_sharedAnnotationProvider loadCoreData];
    sharedAnnotationProvider = self->_sharedAnnotationProvider;
  }

  return sharedAnnotationProvider;
}

- (BOOL)isDeviceSupported
{
  if (isPad())
  {
    return 1;
  }

  return isPhone();
}

- (id)helper:(id)helper coverImageForURL:(id)l
{
  lCopy = l;
  helperCopy = helper;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8 || (objc_opt_class(), [(THApplePubAssetPlugin *)self helperForURL:lCopy withOptions:0], v9 = objc_claimAutoreleasedReturnValue(), TSUDynamicCast(), v8 = objc_claimAutoreleasedReturnValue(), v9, v8))
  {
    helperCoverImage = [v8 helperCoverImage];
  }

  else
  {
    helperCoverImage = 0;
  }

  return helperCoverImage;
}

- (id)_helper:(id)_helper assetInfo:(id)info viewControllerForBookDescription:(id)description options:(id)options error:(id *)error
{
  infoCopy = info;
  descriptionCopy = description;
  optionsCopy = options;
  if (![(THApplePubAssetPlugin *)self isDeviceSupported])
  {
    if (![(THApplePubAssetPlugin *)self isDeviceSupported])
    {
      if (error)
      {
        v26 = [infoCopy url];
        v27 = [NSDictionary dictionaryWithObject:v26 forKey:AssetEngineErrorAssetURLUserInfoKey];

        *error = [NSError errorWithDomain:AssetEngineErrorDomain code:1003 userInfo:v27];
      }

      v28 = THBundle();
      v29 = [v28 localizedStringForKey:@"Device not supported" value:&stru_471858 table:0];
      v30 = THBundle();
      v31 = [v30 localizedStringForKey:@"This document can only be experienced on iPad." value:&stru_471858 table:0];
      v14 = [UIAlertController alertControllerWithTitle:v29 message:v31 preferredStyle:1];

      v32 = THBundle();
      v33 = [v32 localizedStringForKey:@"OK" value:&stru_471858 table:0];
      v34 = [UIAlertAction actionWithTitle:v33 style:1 handler:0];
      [v14 addAction:v34];

      [(THApplePubAssetPlugin *)self presentAlertController:v14 options:optionsCopy animated:1];
      v25 = 0;
      goto LABEL_18;
    }

LABEL_8:
    v25 = 0;
    goto LABEL_19;
  }

  if (!descriptionCopy)
  {
    goto LABEL_8;
  }

  v14 = [optionsCopy objectForKey:AEHelperNumberIsPreorderKey];
  [descriptionCopy setIsPreorderBook:{objc_msgSend(v14, "BOOLValue")}];
  requiredVersion = [descriptionCopy requiredVersion];
  v16 = requiredVersion;
  if (!requiredVersion || ([requiredVersion floatValue], v17 <= 2.2))
  {
    if ([descriptionCopy containsUnknownContentVersions])
    {
      v46 = THBundle();
      v35 = [v46 localizedStringForKey:@"New Features" value:&stru_471858 table:0];
      v36 = THBundle();
      [v36 localizedStringForKey:@"This book has new interactive features. For the best reading experience value:you’ll need to update Apple Books." table:{&stru_471858, 0}];
      v37 = v48 = v16;
      v38 = [UIAlertController alertControllerWithTitle:v35 message:v37 preferredStyle:1];

      v39 = THBundle();
      v40 = [v39 localizedStringForKey:@"OK" value:&stru_471858 table:0];
      v41 = [UIAlertAction actionWithTitle:v40 style:1 handler:0];
      [v38 addAction:v41];

      v16 = v48;
      [(THApplePubAssetPlugin *)self presentAlertController:v38 options:optionsCopy animated:1];
    }

    v25 = [(THApplePubAssetPlugin *)self viewControllerForAsset:infoCopy bookDescription:descriptionCopy options:0];
    if (!error)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  v45 = THBundle();
  v18 = [v45 localizedStringForKey:@"New Features" value:&stru_471858 table:0];
  v19 = THBundle();
  [v19 localizedStringForKey:@"This book has new interactive features. To open it value:you’ll need to update Apple Books." table:{&stru_471858, 0}];
  v20 = v47 = v16;
  v21 = [UIAlertController alertControllerWithTitle:v18 message:v20 preferredStyle:1];

  v22 = THBundle();
  v23 = [v22 localizedStringForKey:@"OK" value:&stru_471858 table:0];
  v24 = [UIAlertAction actionWithTitle:v23 style:1 handler:0];
  [v21 addAction:v24];

  v16 = v47;
  [(THApplePubAssetPlugin *)self presentAlertController:v21 options:optionsCopy animated:1];

  v25 = 0;
  if (error)
  {
LABEL_15:
    if (!v25)
    {
      v42 = [infoCopy url];
      v43 = [NSDictionary dictionaryWithObject:v42 forKey:AssetEngineErrorAssetURLUserInfoKey];

      *error = [NSError errorWithDomain:AssetEngineErrorDomain code:1000 userInfo:v43];
    }
  }

LABEL_17:

LABEL_18:
LABEL_19:

  return v25;
}

- (void)presentAlertController:(id)controller options:(id)options animated:(BOOL)animated
{
  v6 = BCTransactionOptionsTransactionKey;
  controllerCopy = controller;
  v9 = [options objectForKeyedSubscript:v6];
  if (!v9)
  {
    sub_29CDD4();
  }

  v8 = +[AEAssetEngine appInfoMgr];
  [v8 presentViewController:controllerCopy transaction:v9 animated:1 completion:0];
}

- (id)helper:(id)helper metadataForKey:(id)key forURL:(id)l needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  keyCopy = key;
  lCopy = l;
  helperCopy = helper;
  objc_opt_class();
  v13 = TSUDynamicCast();

  if (v13)
  {
    v14 = [v13 helperMetadataForKey:keyCopy needsCoordination:coordinationCopy];
    goto LABEL_13;
  }

  v15 = [(THApplicationDelegate *)self descriptionForURL:lCopy];
  if (!v15)
  {
    goto LABEL_11;
  }

  if (![keyCopy isEqual:AEHelperStringMetadataAuthorKey])
  {
    if ([keyCopy isEqual:AEHelperStringMetadataTitleKey])
    {
      bookTitle = [v15 bookTitle];
      goto LABEL_10;
    }

    if ([keyCopy isEqual:AEHelperStringMetadataGenreKey])
    {
      bookTitle = [v15 genre];
      goto LABEL_10;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_12;
  }

  bookTitle = [v15 bookAuthor];
LABEL_10:
  v14 = bookTitle;
LABEL_12:

LABEL_13:

  return v14;
}

- (void)helper:(id)helper deletePersistentCacheForURL:(id)l
{
  helperCopy = helper;
  lCopy = l;
  v8 = [(THApplicationDelegate *)self descriptionForURL:lCopy];
  contextDirectoryPath = [v8 contextDirectoryPath];
  if (contextDirectoryPath)
  {
    v11 = 0;
    v10 = +[NSFileManager defaultManager];
    if ([v10 fileExistsAtPath:contextDirectoryPath isDirectory:&v11] && v11 == 1)
    {
      [v10 removeItemAtPath:contextDirectoryPath error:0];
    }
  }
}

- (void)_helper:(id)_helper canRefetch:(BOOL)refetch viewControllerWithOptions:(id)options completion:(id)completion
{
  _helperCopy = _helper;
  optionsCopy = options;
  completionCopy = completion;
  v13 = _helperCopy;
  v14 = [v13 url];
  v15 = [NSFileAccessIntent readingIntentWithURL:v14 options:1];
  v16 = objc_opt_new();
  v30 = v15;
  v17 = [NSArray arrayWithObjects:&v30 count:1];
  v18 = objc_opt_new();
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_7C544;
  v23[3] = &unk_45C3F8;
  v27 = optionsCopy;
  v28 = completionCopy;
  v24 = v14;
  selfCopy = self;
  v26 = v13;
  refetchCopy = refetch;
  v19 = optionsCopy;
  v20 = v13;
  v21 = completionCopy;
  v22 = v14;
  [v16 coordinateAccessWithIntents:v17 queue:v18 byAccessor:v23];
}

- (BOOL)helper:(id)helper validateBookAuthorizationWithError:(id *)error needsCoordination:(BOOL)coordination
{
  coordinationCopy = coordination;
  helperCopy = helper;
  objc_opt_class();
  v8 = TSUDynamicCast();

  if (v8)
  {
    v9 = [v8 helperValidateBookAuthorizationWithError:error needsCoordination:coordinationCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)applicationWillResignActive:(id)active
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(NSMutableSet *)self->_currentBookViewControllers allObjects:active];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        documentViewController = [*(*(&v12 + 1) + 8 * v7) documentViewController];
        documentRoot = [documentViewController documentRoot];

        userDataManager = [documentRoot userDataManager];
        v11 = [documentRoot moc];
        [userDataManager save:v11];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

- (void)applicationDidEnterBackground:(id)background
{
  v3 = +[TSUFlushingManager sharedManager];
  [v3 didEnterBackground];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v3 = +[TSUFlushingManager sharedManager];
  [v3 willEnterForeground];
}

- (void)didReceiveMemoryWarning:(id)warning
{
  v4 = +[UIApplication sharedApplication];
  [(THApplePubAssetPlugin *)self applicationDidReceiveMemoryWarning:v4];
}

- (void)applicationDidReceiveMemoryWarning:(id)warning
{
  warningCopy = warning;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(THApplicationDelegate *)selfCopy clearBookDescriptionCache];
  objc_sync_exit(selfCopy);
}

- (void)didEnterBackground:(id)background
{
  backgroundCopy = background;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  [(THApplicationDelegate *)selfCopy clearBookDescriptionCache];
  objc_sync_exit(selfCopy);
}

- (id)supportedFileExtensions
{
  v4[0] = @"ibooks";
  v4[1] = @"epub";
  v2 = [NSArray arrayWithObjects:v4 count:2];

  return v2;
}

- (id)helperForURL:(id)l withOptions:(id)options
{
  lCopy = l;
  optionsCopy = options;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_7D744;
  v11[3] = &unk_45C2E0;
  v8 = lCopy;
  v12 = v8;
  [THPerformanceRegressionLogger logEventWithBlock:v11];
  if ([(THApplePubAssetPlugin *)self supportsAssetAtURL:v8 quickCheck:1])
  {
    v9 = [[THAEHelper alloc] initWithURL:v8 withOptions:optionsCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end