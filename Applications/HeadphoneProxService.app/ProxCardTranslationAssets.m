@interface ProxCardTranslationAssets
- (BOOL)_isLanguageSuggested:(id)a3;
- (ProxCardTranslationAssets)init;
- (void)getTranslationAssets;
- (void)getTranslationAssets:(id)a3 error:(id)a4;
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

- (BOOL)_isLanguageSuggested:(id)a3
{
  v3 = [a3 stringByReplacingOccurrencesOfString:@"_" withString:@"-"];
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

- (void)getTranslationAssets:(id)a3 error:(id)a4
{
  v10 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v8 = self;
  objc_sync_enter(v8);
  objc_storeStrong(&v8->_translationAssets, a3);
  objc_sync_exit(v8);

  translationAssetsInfoHandler = v8->_translationAssetsInfoHandler;
  if (translationAssetsInfoHandler)
  {
    translationAssetsInfoHandler[2](translationAssetsInfoHandler, v8->_translationAssets, v7);
  }

  [v10 enumerateObjectsUsingBlock:&stru_1001028A8];
}

@end