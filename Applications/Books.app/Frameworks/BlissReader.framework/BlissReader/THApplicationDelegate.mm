@interface THApplicationDelegate
+ (id)cacheDirectoryForAsset:(id)asset;
+ (id)contextDirectoryForAsset:(id)asset;
+ (void)ensureCacheDirectory:(id)directory;
+ (void)ensureContextDirectoryExists:(id)exists;
+ (void)p_upgradeContextDirectoryForAsset:(id)asset newPath:(id)path;
+ (void)setupSurrogateDelegate;
- (BCExternalURLOpenPrompter)externalURLLoadPrompter;
- (BCExternalURLOpenPrompter)externalURLOpenPrompter;
- (BOOL)_maybeOpenExternalURL:(id)l sourceDocumentRoot:(id)root;
- (BOOL)openURL:(id)l sourceDocumentRoot:(id)root;
- (BOOL)shouldAuthorizeURLToLoad:(id)load loadContext:(id)context completion:(id)completion;
- (THApplicationDelegate)init;
- (id)cachedBookDescriptionForURL:(id)l;
- (id)descriptionForURL:(id)l;
- (id)urlSchemesNotRequiringUserPrompt;
- (id)validStoreURLSchemes;
- (id)validURLSchemes;
- (void)cacheBookDescription:(id)description forURL:(id)l;
- (void)clearBookDescriptionCache;
- (void)dealloc;
- (void)presentAlertController:(id)controller promptContext:(id)context;
- (void)uncacheBookDescriptionForURL:(id)l;
@end

@implementation THApplicationDelegate

+ (void)setupSurrogateDelegate
{
  if (qword_5678E8 != -1)
  {
    sub_29D3E8();
  }
}

+ (id)contextDirectoryForAsset:(id)asset
{
  v5 = +[UIApplication contextDirectoryForAssetWithID:](UIApplication, "contextDirectoryForAssetWithID:", [asset assetID]);
  [self p_upgradeContextDirectoryForAsset:asset newPath:v5];
  return v5;
}

+ (void)ensureContextDirectoryExists:(id)exists
{
  v3 = [self contextDirectoryForAsset:exists];
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:v3])
  {
    v8 = 0;
    if (![(NSFileManager *)v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v8])
    {
      v5 = +[TSUAssertionHandler currentHandler];
      v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[THApplicationDelegate ensureContextDirectoryExists:]");
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THApplicationDelegate.m"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:88 description:{@"ensureContextDirectoryExists error: %@", objc_msgSend(v8, "description")}];
    }
  }
}

+ (id)cacheDirectoryForAsset:(id)asset
{
  v4 = +[UIApplication applicationCacheDirectory];
  assetID = [asset assetID];

  return [v4 stringByAppendingPathComponent:assetID];
}

+ (void)ensureCacheDirectory:(id)directory
{
  v3 = [self cacheDirectoryForAsset:directory];
  v4 = +[NSFileManager defaultManager];
  if (![(NSFileManager *)v4 fileExistsAtPath:v3])
  {
    v8 = 0;
    if (![(NSFileManager *)v4 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v8])
    {
      v5 = +[TSUAssertionHandler currentHandler];
      v6 = +[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", "+[THApplicationDelegate ensureCacheDirectory:]");
      v7 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Alder/bliss/Classes/THApplicationDelegate.m"];
      [v5 handleFailureInFunction:v6 file:v7 lineNumber:107 description:{@"ensureCacheDirectory error: %@", objc_msgSend(v8, "description")}];
    }
  }
}

+ (void)p_upgradeContextDirectoryForAsset:(id)asset newPath:(id)path
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1A4E84;
  v4[3] = &unk_45AE58;
  v4[4] = asset;
  v4[5] = path;
  if (qword_5678F0 != -1)
  {
    dispatch_once(&qword_5678F0, v4);
  }
}

- (THApplicationDelegate)init
{
  v4.receiver = self;
  v4.super_class = THApplicationDelegate;
  v2 = [(THApplicationDelegate *)&v4 init];
  if (v2)
  {
    v2->_bookDescriptionCache = objc_alloc_init(NSMutableDictionary);
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THApplicationDelegate;
  [(THApplicationDelegate *)&v3 dealloc];
}

- (id)validURLSchemes
{
  if (qword_567900 != -1)
  {
    sub_29D3FC();
  }

  v3 = qword_5678F8;
  validStoreURLSchemes = [(THApplicationDelegate *)self validStoreURLSchemes];

  return [v3 setByAddingObjectsFromSet:validStoreURLSchemes];
}

- (id)validStoreURLSchemes
{
  if (qword_567910 != -1)
  {
    sub_29D410();
  }

  return qword_567908;
}

- (BOOL)openURL:(id)l sourceDocumentRoot:(id)root
{
  lCopy = l;
  if (![+[UIApplication canOpenURL:"canOpenURL:"]
  {
    lCopy = [NSURL URLWithString:[NSString stringWithFormat:@"http:%@", [(NSURL *)lCopy resourceSpecifier]]];
  }

  return [(THApplicationDelegate *)self _maybeOpenExternalURL:lCopy sourceDocumentRoot:root];
}

- (id)descriptionForURL:(id)l
{
  objc_sync_enter(self);
  objc_opt_class();
  [(NSMutableDictionary *)[(THApplicationDelegate *)self bookDescriptionCache] objectForKey:l];
  v5 = TSUDynamicCast();
  if (!v5)
  {
    if (THIsApplePubAtPath([l path]))
    {
      [(THApplicationDelegate *)self clearBookDescriptionCache];
      v5 = [THBookDescription descriptionWithURL:l];
      if (v5)
      {
        [(THApplicationDelegate *)self cacheBookDescription:v5 forURL:l];
      }
    }

    else
    {
      v5 = 0;
    }
  }

  objc_sync_exit(self);
  return v5;
}

- (id)cachedBookDescriptionForURL:(id)l
{
  bookDescriptionCache = [(THApplicationDelegate *)self bookDescriptionCache];

  return [(NSMutableDictionary *)bookDescriptionCache objectForKey:l];
}

- (void)cacheBookDescription:(id)description forURL:(id)l
{
  bookDescriptionCache = [(THApplicationDelegate *)self bookDescriptionCache];

  [(NSMutableDictionary *)bookDescriptionCache setObject:description forKey:l];
}

- (void)uncacheBookDescriptionForURL:(id)l
{
  bookDescriptionCache = [(THApplicationDelegate *)self bookDescriptionCache];

  [(NSMutableDictionary *)bookDescriptionCache removeObjectForKey:l];
}

- (void)clearBookDescriptionCache
{
  bookDescriptionCache = [(THApplicationDelegate *)self bookDescriptionCache];

  [(NSMutableDictionary *)bookDescriptionCache removeAllObjects];
}

- (BOOL)_maybeOpenExternalURL:(id)l sourceDocumentRoot:(id)root
{
  if ([-[THApplicationDelegate urlSchemesNotRequiringUserPrompt](self "urlSchemesNotRequiringUserPrompt")])
  {
    v11.receiver = self;
    v11.super_class = THApplicationDelegate;
    return [(THApplicationDelegate *)&v11 openURL:l sourceDocumentRoot:root];
  }

  else
  {
    viewController = [root viewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1A5560;
    v10[3] = &unk_45E798;
    v10[4] = l;
    v10[5] = root;
    v10[6] = self;
    v7 = 1;
    [(BCExternalURLOpenPrompter *)[(THApplicationDelegate *)self externalURLOpenPrompter] maybePromptUserBeforeOpeningExternalURL:l shouldThrottle:1 promptContext:viewController completion:v10];
  }

  return v7;
}

- (id)urlSchemesNotRequiringUserPrompt
{
  if (qword_567920 != -1)
  {
    sub_29D424();
  }

  return qword_567918;
}

- (BOOL)shouldAuthorizeURLToLoad:(id)load loadContext:(id)context completion:(id)completion
{
  if ([-[THApplicationDelegate urlSchemesNotRequiringUserPrompt](self "urlSchemesNotRequiringUserPrompt")])
  {
    return 1;
  }

  externalURLLoadPrompter = [(THApplicationDelegate *)self externalURLLoadPrompter];

  return [(BCExternalURLOpenPrompter *)externalURLLoadPrompter maybePromptUserBeforeOpeningExternalURL:load shouldThrottle:0 promptContext:context completion:completion];
}

- (BCExternalURLOpenPrompter)externalURLOpenPrompter
{
  result = self->_externalURLOpenPrompter;
  if (!result)
  {
    self->_externalURLOpenPrompter = objc_alloc_init(BCExternalURLOpenPrompter);
    -[BCExternalURLOpenPrompter setPromptTitle:](self->_externalURLOpenPrompter, "setPromptTitle:", [THBundle() localizedStringForKey:@"Leave Books and open this link?" value:&stru_471858 table:0]);
    -[BCExternalURLOpenPrompter setCancelButtonTitle:](self->_externalURLOpenPrompter, "setCancelButtonTitle:", [THBundle() localizedStringForKey:@"Cancel" value:&stru_471858 table:0]);
    -[BCExternalURLOpenPrompter setOkButtonTitle:](self->_externalURLOpenPrompter, "setOkButtonTitle:", [THBundle() localizedStringForKey:@"Open" value:&stru_471858 table:0]);
    [(BCExternalURLOpenPrompter *)self->_externalURLOpenPrompter setDelegate:self];
    return self->_externalURLOpenPrompter;
  }

  return result;
}

- (BCExternalURLOpenPrompter)externalURLLoadPrompter
{
  result = self->_externalURLLoadPrompter;
  if (!result)
  {
    self->_externalURLLoadPrompter = objc_alloc_init(BCExternalURLOpenPrompter);
    -[BCExternalURLOpenPrompter setPromptTitle:](self->_externalURLLoadPrompter, "setPromptTitle:", [THBundle() localizedStringForKey:@"Allow Online Content?" value:&stru_471858 table:0]);
    -[BCExternalURLOpenPrompter setPromptMessage:](self->_externalURLLoadPrompter, "setPromptMessage:", [THBundle() localizedStringForKey:@"This book needs to access online content value:or it may not display as the publisher intended." table:{&stru_471858, 0}]);
    -[BCExternalURLOpenPrompter setCancelButtonTitle:](self->_externalURLLoadPrompter, "setCancelButtonTitle:", [THBundle() localizedStringForKey:@"Don\\U2019t Allow" value:&stru_471858 table:0]);
    -[BCExternalURLOpenPrompter setOkButtonTitle:](self->_externalURLLoadPrompter, "setOkButtonTitle:", [THBundle() localizedStringForKey:@"Allow" value:&stru_471858 table:0]);
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setCacheResponses:0];
    [(BCExternalURLOpenPrompter *)self->_externalURLLoadPrompter setDelegate:self];
    return self->_externalURLLoadPrompter;
  }

  return result;
}

- (void)presentAlertController:(id)controller promptContext:(id)context
{
  v5 = +[UIView areAnimationsEnabled];
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {

    [v6 presentViewController:controller animated:v5 completion:0];
  }

  else
  {
    v7 = +[AEAssetEngine appInfoMgr];

    [v7 presentViewControllerOverMainCanvas:controller animated:v5 completion:0];
  }
}

@end