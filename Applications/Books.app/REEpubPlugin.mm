@interface REEpubPlugin
- (REEpubPlugin)initWithStoreController:(id)a3 engagementManager:(id)a4;
- (id)helperForURL:(id)a3 withOptions:(id)a4;
- (id)newViewControllerForAEBookInfo:(id)a3 storeID:(id)a4;
- (void)prewarmSharedResourcesWithCompletion:(id)a3;
@end

@implementation REEpubPlugin

- (REEpubPlugin)initWithStoreController:(id)a3 engagementManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = REEpubPlugin;
  v8 = [(REEpubPlugin *)&v11 init];
  v9 = v8;
  if (v8)
  {
    [(REEpubPlugin *)v8 setStoreController:v6];
    [(REEpubPlugin *)v9 setEngagementManager:v7];
  }

  return v9;
}

- (id)newViewControllerForAEBookInfo:(id)a3 storeID:(id)a4
{
  v5 = a3;
  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 BOOLForKey:@"REI.EnableFixedLayout"];

  if (v5 && (![v5 isFixedLayout] || v7 && objc_msgSend(v5, "isFixedLayout")) && (objc_msgSend(v5, "dcTermsContributor"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"iBooks Author"), v8, (v9 & 1) == 0))
  {
    v12 = +[BKAppDelegate sceneManager];
    v13 = [v12 currentSceneController];

    v14 = [v13 _mainViewControllerForModalPresenting];
    if (v14)
    {
      v15 = [[REBookReaderHostLayoutController alloc] initWithViewController:v14];
      v16 = [REBookReaderModuleHost alloc];
      v17 = +[AEAnnotationProvider sharedInstance];
      v18 = [(REEpubPlugin *)self storeController];
      v19 = [v5 styleManager];
      v20 = [(REEpubPlugin *)self engagementManager];
      v10 = [(REBookReaderModuleHost *)v16 initWithHostEnvironmentProvider:v15 book:v5 annotationProvider:v17 storeController:v18 styleManager:v19 engagementManager:v20];
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

- (void)prewarmSharedResourcesWithCompletion:(id)a3
{
  v3 = a3;
  v4 = +[NSLocale preferredLanguages];
  v9 = [v4 objectAtIndexedSubscript:0];

  if (v9 && ([NSLocale localeWithLocaleIdentifier:?], (v5 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v6 = v5;
    v7 = [v5 languageCode];
  }

  else
  {
    v7 = @"en";
  }

  v8 = +[BKFontCache sharedInstance];
  [v8 prewarmFontsForLanguage:v7 completion:v3];
}

- (id)helperForURL:(id)a3 withOptions:(id)a4
{
  v5 = a3;
  v6 = [[AEEPubBookHelper alloc] initWithDelegate:self forURL:v5];

  return v6;
}

@end