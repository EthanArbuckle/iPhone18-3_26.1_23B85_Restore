@interface REEpubPlugin
- (REEpubPlugin)initWithStoreController:(id)controller engagementManager:(id)manager;
- (id)helperForURL:(id)l withOptions:(id)options;
- (id)newViewControllerForAEBookInfo:(id)info storeID:(id)d;
- (void)prewarmSharedResourcesWithCompletion:(id)completion;
@end

@implementation REEpubPlugin

- (REEpubPlugin)initWithStoreController:(id)controller engagementManager:(id)manager
{
  controllerCopy = controller;
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = REEpubPlugin;
  v8 = [(REEpubPlugin *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(REEpubPlugin *)v8 setStoreController:controllerCopy];
    [(REEpubPlugin *)v9 setEngagementManager:managerCopy];
  }

  return v9;
}

- (id)newViewControllerForAEBookInfo:(id)info storeID:(id)d
{
  infoCopy = info;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"REI.EnableFixedLayout"];

  if (infoCopy && (![infoCopy isFixedLayout] || v7 && objc_msgSend(infoCopy, "isFixedLayout")) && (objc_msgSend(infoCopy, "dcTermsContributor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"iBooks Author"), v8, (v9 & 1) == 0))
  {
    v12 = +[BKAppDelegate sceneManager];
    currentSceneController = [v12 currentSceneController];

    _mainViewControllerForModalPresenting = [currentSceneController _mainViewControllerForModalPresenting];
    if (_mainViewControllerForModalPresenting)
    {
      v15 = [[REBookReaderHostLayoutController alloc] initWithViewController:_mainViewControllerForModalPresenting];
      v16 = [REBookReaderModuleHost alloc];
      v17 = +[AEAnnotationProvider sharedInstance];
      storeController = [(REEpubPlugin *)self storeController];
      styleManager = [infoCopy styleManager];
      engagementManager = [(REEpubPlugin *)self engagementManager];
      v10 = [(REBookReaderModuleHost *)v16 initWithHostEnvironmentProvider:v15 book:infoCopy annotationProvider:v17 storeController:storeController styleManager:styleManager engagementManager:engagementManager];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)prewarmSharedResourcesWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[NSLocale preferredLanguages];
  v9 = [v4 objectAtIndexedSubscript:0];

  if (v9 && ([NSLocale localeWithLocaleIdentifier:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    languageCode = [v5 languageCode];
  }

  else
  {
    languageCode = @"en";
  }

  v8 = +[BKFontCache sharedInstance];
  [v8 prewarmFontsForLanguage:languageCode completion:completionCopy];
}

- (id)helperForURL:(id)l withOptions:(id)options
{
  lCopy = l;
  v6 = [[AEEPubBookHelper alloc] initWithDelegate:self forURL:lCopy];

  return v6;
}

@end