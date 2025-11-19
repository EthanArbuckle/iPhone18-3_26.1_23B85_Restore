@interface THApplicationDelegate
+ (id)cacheDirectoryForAsset:(id)a3;
+ (id)contextDirectoryForAsset:(id)a3;
+ (void)ensureCacheDirectory:(id)a3;
+ (void)ensureContextDirectoryExists:(id)a3;
+ (void)p_upgradeContextDirectoryForAsset:(id)a3 newPath:(id)a4;
+ (void)setupSurrogateDelegate;
- (BCExternalURLOpenPrompter)externalURLLoadPrompter;
- (BCExternalURLOpenPrompter)externalURLOpenPrompter;
- (BOOL)_maybeOpenExternalURL:(id)a3 sourceDocumentRoot:(id)a4;
- (BOOL)openURL:(id)a3 sourceDocumentRoot:(id)a4;
- (BOOL)shouldAuthorizeURLToLoad:(id)a3 loadContext:(id)a4 completion:(id)a5;
- (THApplicationDelegate)init;
- (id)cachedBookDescriptionForURL:(id)a3;
- (id)descriptionForURL:(id)a3;
- (id)urlSchemesNotRequiringUserPrompt;
- (id)validStoreURLSchemes;
- (id)validURLSchemes;
- (void)cacheBookDescription:(id)a3 forURL:(id)a4;
- (void)clearBookDescriptionCache;
- (void)dealloc;
- (void)presentAlertController:(id)a3 promptContext:(id)a4;
- (void)uncacheBookDescriptionForURL:(id)a3;
@end

@implementation THApplicationDelegate

+ (void)setupSurrogateDelegate
{
  if (qword_5678E8 != -1)
  {
    sub_29D3E8();
  }
}

+ (id)contextDirectoryForAsset:(id)a3
{
  v5 = +[UIApplication contextDirectoryForAssetWithID:](UIApplication, "contextDirectoryForAssetWithID:", [a3 assetID]);
  [a1 p_upgradeContextDirectoryForAsset:a3 newPath:v5];
  return v5;
}

+ (void)ensureContextDirectoryExists:(id)a3
{
  v3 = [a1 contextDirectoryForAsset:a3];
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

+ (id)cacheDirectoryForAsset:(id)a3
{
  v4 = +[UIApplication applicationCacheDirectory];
  v5 = [a3 assetID];

  return [v4 stringByAppendingPathComponent:v5];
}

+ (void)ensureCacheDirectory:(id)a3
{
  v3 = [a1 cacheDirectoryForAsset:a3];
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

+ (void)p_upgradeContextDirectoryForAsset:(id)a3 newPath:(id)a4
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1A4E84;
  v4[3] = &unk_45AE58;
  v4[4] = a3;
  v4[5] = a4;
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
  v4 = [(THApplicationDelegate *)self validStoreURLSchemes];

  return [v3 setByAddingObjectsFromSet:v4];
}

- (id)validStoreURLSchemes
{
  if (qword_567910 != -1)
  {
    sub_29D410();
  }

  return qword_567908;
}

- (BOOL)openURL:(id)a3 sourceDocumentRoot:(id)a4
{
  v5 = a3;
  if (![+[UIApplication canOpenURL:"canOpenURL:"]
  {
    v5 = [NSURL URLWithString:[NSString stringWithFormat:@"http:%@", [(NSURL *)v5 resourceSpecifier]]];
  }

  return [(THApplicationDelegate *)self _maybeOpenExternalURL:v5 sourceDocumentRoot:a4];
}

- (id)descriptionForURL:(id)a3
{
  objc_sync_enter(self);
  objc_opt_class();
  [(NSMutableDictionary *)[(THApplicationDelegate *)self bookDescriptionCache] objectForKey:a3];
  v5 = TSUDynamicCast();
  if (!v5)
  {
    if (THIsApplePubAtPath([a3 path]))
    {
      [(THApplicationDelegate *)self clearBookDescriptionCache];
      v5 = [THBookDescription descriptionWithURL:a3];
      if (v5)
      {
        [(THApplicationDelegate *)self cacheBookDescription:v5 forURL:a3];
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

- (id)cachedBookDescriptionForURL:(id)a3
{
  v4 = [(THApplicationDelegate *)self bookDescriptionCache];

  return [(NSMutableDictionary *)v4 objectForKey:a3];
}

- (void)cacheBookDescription:(id)a3 forURL:(id)a4
{
  v6 = [(THApplicationDelegate *)self bookDescriptionCache];

  [(NSMutableDictionary *)v6 setObject:a3 forKey:a4];
}

- (void)uncacheBookDescriptionForURL:(id)a3
{
  v4 = [(THApplicationDelegate *)self bookDescriptionCache];

  [(NSMutableDictionary *)v4 removeObjectForKey:a3];
}

- (void)clearBookDescriptionCache
{
  v2 = [(THApplicationDelegate *)self bookDescriptionCache];

  [(NSMutableDictionary *)v2 removeAllObjects];
}

- (BOOL)_maybeOpenExternalURL:(id)a3 sourceDocumentRoot:(id)a4
{
  if ([-[THApplicationDelegate urlSchemesNotRequiringUserPrompt](self "urlSchemesNotRequiringUserPrompt")])
  {
    v11.receiver = self;
    v11.super_class = THApplicationDelegate;
    return [(THApplicationDelegate *)&v11 openURL:a3 sourceDocumentRoot:a4];
  }

  else
  {
    v8 = [a4 viewController];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1A5560;
    v10[3] = &unk_45E798;
    v10[4] = a3;
    v10[5] = a4;
    v10[6] = self;
    v7 = 1;
    [(BCExternalURLOpenPrompter *)[(THApplicationDelegate *)self externalURLOpenPrompter] maybePromptUserBeforeOpeningExternalURL:a3 shouldThrottle:1 promptContext:v8 completion:v10];
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

- (BOOL)shouldAuthorizeURLToLoad:(id)a3 loadContext:(id)a4 completion:(id)a5
{
  if ([-[THApplicationDelegate urlSchemesNotRequiringUserPrompt](self "urlSchemesNotRequiringUserPrompt")])
  {
    return 1;
  }

  v10 = [(THApplicationDelegate *)self externalURLLoadPrompter];

  return [(BCExternalURLOpenPrompter *)v10 maybePromptUserBeforeOpeningExternalURL:a3 shouldThrottle:0 promptContext:a4 completion:a5];
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

- (void)presentAlertController:(id)a3 promptContext:(id)a4
{
  v5 = +[UIView areAnimationsEnabled];
  objc_opt_class();
  v6 = TSUDynamicCast();
  if (v6)
  {

    [v6 presentViewController:a3 animated:v5 completion:0];
  }

  else
  {
    v7 = +[AEAssetEngine appInfoMgr];

    [v7 presentViewControllerOverMainCanvas:a3 animated:v5 completion:0];
  }
}

@end