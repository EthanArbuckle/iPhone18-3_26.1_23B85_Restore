@interface ProxCardTranslationAssets
- (BOOL)_isLanguageSuggested:(id)suggested;
- (ProxCardTranslationAssets)init;
- (void)getTranslationAssets;
- (void)getTranslationAssets:(id)assets error:(id)error;
@end

@implementation ProxCardTranslationAssets

- (ProxCardTranslationAssets)init
{
  v9.receiver = self;
  v9.super_class = ProxCardTranslationAssets;
  v2 = [(ProxCardTranslationAssets *)&v9 init];
  v3 = v2;
  if (v2)
  {
    languageStatus = v2->_languageStatus;
    v2->_languageStatus = 0;

    v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v6 = dispatch_queue_create("com.apple.proxcard.asset", v5);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v6;
  }

  return v3;
}

- (BOOL)_isLanguageSuggested:(id)suggested
{
  v3 = [suggested stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
  +[NSLocale preferredLanguages];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v12 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = *v10;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v4);
        }

        if ([v3 isEqualToString:{*(*(&v9 + 1) + 8 * i), v9}])
        {
          LOBYTE(v5) = 1;
          goto LABEL_11;
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)getTranslationAssets
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100005BC4;
  block[3] = &unk_100102868;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)getTranslationAssets:(id)assets error:(id)error
{
  assetsCopy = assets;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  objc_storeStrong(&selfCopy->_translationAssets, assets);
  objc_sync_exit(selfCopy);

  translationAssetsInfoHandler = selfCopy->_translationAssetsInfoHandler;
  if (translationAssetsInfoHandler)
  {
    translationAssetsInfoHandler[2](translationAssetsInfoHandler, selfCopy->_translationAssets, errorCopy);
  }

  [assetsCopy enumerateObjectsUsingBlock:&stru_1001028A8];
}

@end