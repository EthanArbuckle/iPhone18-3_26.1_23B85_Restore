@interface DictionarySettingsController
- (BOOL)isTTYEnabled;
- (DUDictionaryManager)dictionaryManager;
- (id)downloadFailedAlertWithError:(id)a3;
- (id)specifiers;
- (int64_t)runningAssetOperationForDictionary:(id)a3;
- (void)activateDictionaryForSpecifier:(id)a3;
- (void)deactivateDictionaryForSpecifier:(id)a3;
- (void)emitNavigationEventForRootController;
- (void)reloadDictionariesList;
- (void)setErrorMessageToContentUnavailableView:(id)a3;
- (void)setRunningAssetOperation:(int64_t)a3 forDictionary:(id)a4;
- (void)setupProgressHandlerForAsset:(id)a3 specifier:(id)a4;
- (void)showPlaceholderViewsIfNeeded;
- (void)startDownloadForSpecifier:(id)a3;
- (void)toggleDictionaryActivatedState:(id)a3;
- (void)updateProgressForSpecifier:(id)a3 operationState:(id)a4;
- (void)viewDidLoad;
@end

@implementation DictionarySettingsController

- (id)specifiers
{
  v2 = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(DictionarySettingsController *)v2 loadSpecifiersFromPlistName:@"DictionarySettings" target:v2];
    v6 = [v5 mutableCopy];

    v30 = v3;
    objc_storeStrong(&v2->PSListController_opaque[v3], v6);
    v7 = [(DictionarySettingsController *)v2 dictionaryManager];
    v8 = [v7 availableDefinitionDictionaries];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = v8;
    obj = [v8 reverseObjectEnumerator];
    v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    v11 = *v35;
    v12 = PSCellClassKey;
    v33 = PSValueKey;
    v31 = v2;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        if (![v14 isTTYDictionary] || -[DictionarySettingsController isTTYEnabled](v2, "isTTYEnabled"))
        {
          v15 = [PSSpecifier preferenceSpecifierNamed:0 target:v2 set:0 get:0 detail:0 cell:3 edit:0];
          [v15 setButtonAction:"toggleDictionaryActivatedState:"];
          [v15 setProperty:objc_opt_class() forKey:v12];
          [v15 setProperty:v14 forKey:v33];
          [v6 insertObject:v15 atIndex:0];
          if ([v14 needsDownloadNewerVersion])
          {
            [(DictionarySettingsController *)v2 deactivateDictionaryForSpecifier:v15];
            goto LABEL_16;
          }

          v16 = [(DictionarySettingsController *)v2 runningAssetOperationForDictionary:v14];
          v17 = v10;
          v18 = v11;
          v19 = v12;
          v20 = v6;
          v21 = v16;
          v22 = [v14 rawAsset];
          v23 = [v22 state];

          v24 = v23 != &dword_4 || v21 == 1;
          v6 = v20;
          v12 = v19;
          v11 = v18;
          v10 = v17;
          v2 = v31;
          if (!v24)
          {
            v25 = [v14 rawAsset];
            v26 = [v25 attributes];
            v27 = [v26 objectForKeyedSubscript:@"DictionaryIdentifier"];
            NSLog(@"DictionaryUI: DictionarySettings start download in '-specifiers' for dictionary(%@)", v27);

LABEL_16:
            [(DictionarySettingsController *)v2 activateDictionaryForSpecifier:v15];
          }

          continue;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v10)
      {
LABEL_20:

        [(DictionarySettingsController *)v2 showPlaceholderViewsIfNeeded];
        v4 = *&v2->PSListController_opaque[v30];
        break;
      }
    }
  }

  return v4;
}

- (void)showPlaceholderViewsIfNeeded
{
  v3 = [(DictionarySettingsController *)self dictionaryManager];
  v4 = [v3 availableDefinitionDictionaries];
  if ([v4 count])
  {

LABEL_4:
    v7 = [(DictionarySettingsController *)self loadingSpinner];
    [v7 stopAnimating];

    v8 = [(DictionarySettingsController *)self loadingSpinner];
    [v8 removeFromSuperview];

    [(DictionarySettingsController *)self setLoadingSpinner:0];
LABEL_5:
    v9 = [(DictionarySettingsController *)self dictionariesUnavailableView];
    [v9 removeFromSuperview];

    [(DictionarySettingsController *)self setDictionariesUnavailableView:0];
    return;
  }

  v5 = [(DictionarySettingsController *)self view];
  [v5 frame];
  IsEmpty = CGRectIsEmpty(v28);

  if (IsEmpty)
  {
    goto LABEL_4;
  }

  if (![(DictionarySettingsController *)self performedRemoteQuery])
  {
    v21 = [(DictionarySettingsController *)self loadingSpinner];

    if (!v21)
    {
      v22 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [(DictionarySettingsController *)self setLoadingSpinner:v22];
      v23 = [(DictionarySettingsController *)self view];
      [v23 bounds];
      MidX = CGRectGetMidX(v29);
      v25 = [(DictionarySettingsController *)self view];
      [v25 bounds];
      [v22 setCenter:{MidX, CGRectGetMidY(v30)}];

      v26 = [(DictionarySettingsController *)self view];
      [v26 addSubview:v22];

      [v22 startAnimating];
    }

    goto LABEL_5;
  }

  v10 = [(DictionarySettingsController *)self dictionariesUnavailableView];

  if (!v10)
  {
    v11 = [_UIContentUnavailableView alloc];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"DICTIONARY_UNAVAILABLE_TITLE" value:&stru_C998 table:@"DictionarySettings"];
    v14 = [v11 initWithFrame:v13 title:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

    [(DictionarySettingsController *)self setErrorMessageToContentUnavailableView:v14];
    [v14 setAutoresizingMask:18];
    v15 = [(DictionarySettingsController *)self view];
    [v15 bounds];
    [v14 setFrame:?];

    v16 = [(DictionarySettingsController *)self view];
    [v16 addSubview:v14];

    [(DictionarySettingsController *)self setDictionariesUnavailableView:v14];
    v17 = DCSDictionaryAssetCopyDiagnosticLog();
    if (v17)
    {
      v18 = v17;
      NSLog(@"DictionaryUI: %@", v17);
      CFRelease(v18);
    }
  }

  v19 = [(DictionarySettingsController *)self loadingSpinner];
  [v19 stopAnimating];

  v20 = [(DictionarySettingsController *)self loadingSpinner];
  [v20 removeFromSuperview];

  [(DictionarySettingsController *)self setLoadingSpinner:0];
}

- (void)setErrorMessageToContentUnavailableView:(id)a3
{
  v4 = a3;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = DCSDictionaryAssetGetAssetType();
    v6 = ASServerURLForAssetType();
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DICTIONARY_UNAVAILABLE_MESSAGE_INTERNAL" value:&stru_C998 table:@"DictionarySettings"];
    v9 = [(DictionarySettingsController *)self catalogDownloadResult];
    v10 = [v6 absoluteString];
    v11 = [NSString stringWithFormat:v8, v9, v10];

    [v4 setButtonTitle:@"Check Connection"];
    v12 = [v5 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
    v13 = [NSString stringWithFormat:@"/%@/%@.xml", v12, v12];
    v14 = [v6 URLByAppendingPathComponent:v13 isDirectory:0];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_22E4;
    v18[3] = &unk_C578;
    v19 = v14;
    v15 = v14;
    [v4 setButtonAction:v18];
  }

  else
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"DICTIONARY_UNAVAILABLE_MESSAGE" value:&stru_C998 table:@"DictionarySettings"];
    v11 = [NSMutableString stringWithString:v17];
  }

  [v4 setMessage:v11];
}

- (void)viewDidLoad
{
  v18.receiver = self;
  v18.super_class = DictionarySettingsController;
  [(DictionarySettingsController *)&v18 viewDidLoad];
  objc_initWeak(&location, self);
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_25C0;
  v15[3] = &unk_C5E0;
  objc_copyWeak(&v16, &location);
  v3 = objc_retainBlock(v15);
  [(DictionarySettingsController *)self setWillReloadContent:0];
  v4 = *&qword_11080;
  if (*&qword_11080 == 0.0 || (+[NSDate timeIntervalSinceReferenceDate], v4 > *&qword_11080 + 3600.0))
  {
    +[NSDate timeIntervalSinceReferenceDate];
    qword_11080 = v5;
    [(DictionarySettingsController *)self setWillReloadContent:1];
    v6 = +[UIApplication sharedApplication];
    [v6 setNetworkActivityIndicatorVisible:1];

    NSLog(@"DictionaryUI: Start catalog download");
    v7 = [(DictionarySettingsController *)self dictionaryManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2698;
    v13[3] = &unk_C630;
    v8 = v3;
    v14 = v8;
    [v7 _downloadDictionaryAssetCatalogWithTimeout:60 completion:v13];

    v9 = dispatch_time(0, 65000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_2778;
    block[3] = &unk_C658;
    objc_copyWeak(&v12, &location);
    v11 = v8;
    dispatch_after(v9, &_dispatch_main_q, block);

    objc_destroyWeak(&v12);
  }

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)emitNavigationEventForRootController
{
  v3 = [NSURL URLWithString:@"settings-navigation://com.apple.Settings.General/DICTIONARY"];
  v4 = [_NSLocalizedStringResource alloc];
  v5 = +[NSLocale currentLocale];
  v6 = [NSBundle bundleForClass:objc_opt_class()];
  v7 = [v6 bundleURL];
  v8 = [v4 initWithKey:@"Dictionary" table:@"DictionarySettings" locale:v5 bundleURL:v7];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  v12 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"General" table:@"DictionarySettings" locale:v10 bundleURL:v12];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(DictionarySettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.dictionary" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (void)reloadDictionariesList
{
  if (![(NSMutableDictionary *)self->_downloadingAssets count])
  {
    v3 = [(DictionarySettingsController *)self dictionaryManager];
    v4 = [v3 _allAvailableDefinitionDictionaries];

    [(DictionarySettingsController *)self reloadSpecifiers];
  }
}

- (void)toggleDictionaryActivatedState:(id)a3
{
  v4 = a3;
  [v4 propertyForKey:PSValueKey];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B80;
  v8 = block[3] = &unk_C680;
  v9 = self;
  v10 = v4;
  v5 = v4;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setupProgressHandlerForAsset:(id)a3 specifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2CF0;
  v10[3] = &unk_C6D0;
  v8 = v6;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = v7;
  v12 = v9;
  [v8 attachProgressCallBack:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)updateProgressForSpecifier:(id)a3 operationState:(id)a4
{
  v12 = a4;
  v5 = PSValueKey;
  v6 = a3;
  v7 = [v6 propertyForKey:v5];
  v8 = [v6 propertyForKey:PSTableCellKey];

  v9 = [v12 objectForKeyedSubscript:@"MAProgressNotification"];
  if (([v9 isStalled] & 1) == 0)
  {
    v10 = [v9 totalWritten];
    *&v11 = v10 / [v9 totalExpected];
    [v7 setProgress:v11];
    [v8 reloadDataWithAssetOperationState:v12];
  }
}

- (void)activateDictionaryForSpecifier:(id)a3
{
  v10 = a3;
  v4 = [v10 propertyForKey:PSValueKey];
  v5 = [v10 propertyForKey:PSTableCellKey];
  [v4 setActivated:1];
  v6 = [v4 rawAsset];
  if (([v6 wasLocal] & 1) == 0)
  {
    [(DictionarySettingsController *)self setupProgressHandlerForAsset:v6 specifier:v10];
    v7 = [v4 rawAsset];
    v8 = [v7 attributes];
    v9 = [v8 objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings start download in '-activateDictionaryForSpecifier' for dictionary(%@)", v9);

    [(DictionarySettingsController *)self startDownloadForSpecifier:v10];
  }

  [v5 reloadDataWithAssetOperationState:0];
}

- (void)deactivateDictionaryForSpecifier:(id)a3
{
  v4 = PSValueKey;
  v5 = a3;
  v24 = [v5 propertyForKey:v4];
  v6 = [v5 propertyForKey:PSTableCellKey];

  v7 = [v24 rawAsset];
  v8 = [v7 state];

  if (v8 == &dword_4)
  {
    [(DictionarySettingsController *)self setRunningAssetOperation:2 forDictionary:v24];
    v9 = [v24 rawAsset];
    v10 = [v9 cancelDownloadSync];

    v11 = [v24 rawAsset];
    v12 = [v11 attributes];
    v13 = [v12 objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings canceled download for dictionary(%@) with error(%ld)", v13, v10);

    if (v10)
    {
      [(DictionarySettingsController *)self setRunningAssetOperation:0 forDictionary:v24];
      goto LABEL_9;
    }

    [v24 setActivated:0];
    [v24 setProgress:0.0];
    goto LABEL_8;
  }

  v14 = [v24 rawAsset];
  v15 = [v14 wasPurgeable];

  if (v15)
  {
    v16 = [v24 rawAsset];
    v17 = [v16 attributes];
    DCSDictionaryAssetAttributesWillBePurged();

    v18 = [v24 rawAsset];
    v19 = [v18 purgeSync];

    v20 = [v24 rawAsset];
    v21 = [v20 attributes];
    v22 = [v21 objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings purged dictionary(%@) with error(%ld)", v22, v19);

    if (!v19)
    {
      [v24 setActivated:0];
LABEL_8:
      v23 = [v24 rawAsset];
      [v23 refreshState];

      [v6 reloadDataWithAssetOperationState:0];
    }
  }

LABEL_9:
}

- (void)startDownloadForSpecifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 propertyForKey:PSValueKey];
  v6 = [v5 rawAsset];
  downloadingAssets = self->_downloadingAssets;
  if (!downloadingAssets)
  {
    v8 = objc_opt_new();
    [(DictionarySettingsController *)self setDownloadingAssets:v8];

    downloadingAssets = self->_downloadingAssets;
  }

  v9 = +[NSNull null];
  v10 = [v6 assetId];
  [(NSMutableDictionary *)downloadingAssets setObject:v9 forKey:v10];

  [(DictionarySettingsController *)self setRunningAssetOperation:1 forDictionary:v5];
  v11 = objc_opt_new();
  [v11 setAllowsCellularAccess:1];
  [v11 setDiscretionary:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_35A4;
  v15[3] = &unk_C720;
  v12 = v6;
  v16 = v12;
  v13 = v5;
  v17 = v13;
  v14 = v4;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  [v12 startDownload:v11 then:v15];
  [v12 refreshState];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (id)downloadFailedAlertWithError:(id)a3
{
  v3 = a3;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DICTIONARY_DOWNLOAD_FAILED_MESSAGE" value:&stru_C998 table:@"DictionarySettings"];

  if (v3)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (%ld)", [v3 integerValue]);
    v7 = [v5 stringByAppendingString:v6];

    v5 = v7;
  }

  v8 = [UIAlertController alertControllerWithTitle:0 message:v5 preferredStyle:1];
  v9 = [NSBundle bundleForClass:objc_opt_class()];
  v10 = [v9 localizedStringForKey:@"OK" value:&stru_C998 table:@"DictionaryUI"];
  v11 = [UIAlertAction actionWithTitle:v10 style:0 handler:&stru_C760];

  [v8 addAction:v11];

  return v8;
}

- (int64_t)runningAssetOperationForDictionary:(id)a3
{
  runningAssetOperationInfoForDictionary = self->_runningAssetOperationInfoForDictionary;
  v4 = [a3 rawAsset];
  v5 = [v4 assetId];
  v6 = [(NSMutableDictionary *)runningAssetOperationInfoForDictionary objectForKey:v5];
  v7 = [v6 integerValue];

  return v7;
}

- (void)setRunningAssetOperation:(int64_t)a3 forDictionary:(id)a4
{
  v11 = a4;
  runningAssetOperationInfoForDictionary = self->_runningAssetOperationInfoForDictionary;
  if (!runningAssetOperationInfoForDictionary)
  {
    v7 = objc_opt_new();
    [(DictionarySettingsController *)self setRunningAssetOperationInfoForDictionary:v7];

    runningAssetOperationInfoForDictionary = self->_runningAssetOperationInfoForDictionary;
  }

  v8 = [NSNumber numberWithInteger:a3];
  v9 = [v11 rawAsset];
  v10 = [v9 assetId];
  [(NSMutableDictionary *)runningAssetOperationInfoForDictionary setObject:v8 forKey:v10];
}

- (DUDictionaryManager)dictionaryManager
{
  if (qword_11088 != -1)
  {
    sub_6EA0();
  }

  v3 = qword_11090;

  return v3;
}

- (BOOL)isTTYEnabled
{
  v2 = +[RTTSettings sharedInstance];
  v3 = [v2 TTYSoftwareEnabled];

  return v3;
}

@end