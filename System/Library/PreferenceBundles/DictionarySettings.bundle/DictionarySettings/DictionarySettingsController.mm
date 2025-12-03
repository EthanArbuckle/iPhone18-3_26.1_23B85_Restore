@interface DictionarySettingsController
- (BOOL)isTTYEnabled;
- (DUDictionaryManager)dictionaryManager;
- (id)downloadFailedAlertWithError:(id)error;
- (id)specifiers;
- (int64_t)runningAssetOperationForDictionary:(id)dictionary;
- (void)activateDictionaryForSpecifier:(id)specifier;
- (void)deactivateDictionaryForSpecifier:(id)specifier;
- (void)emitNavigationEventForRootController;
- (void)reloadDictionariesList;
- (void)setErrorMessageToContentUnavailableView:(id)view;
- (void)setRunningAssetOperation:(int64_t)operation forDictionary:(id)dictionary;
- (void)setupProgressHandlerForAsset:(id)asset specifier:(id)specifier;
- (void)showPlaceholderViewsIfNeeded;
- (void)startDownloadForSpecifier:(id)specifier;
- (void)toggleDictionaryActivatedState:(id)state;
- (void)updateProgressForSpecifier:(id)specifier operationState:(id)state;
- (void)viewDidLoad;
@end

@implementation DictionarySettingsController

- (id)specifiers
{
  selfCopy = self;
  v3 = OBJC_IVAR___PSListController__specifiers;
  v4 = *&self->PSListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v4)
  {
    v5 = [(DictionarySettingsController *)selfCopy loadSpecifiersFromPlistName:@"DictionarySettings" target:selfCopy];
    v6 = [v5 mutableCopy];

    v30 = v3;
    objc_storeStrong(&selfCopy->PSListController_opaque[v3], v6);
    dictionaryManager = [(DictionarySettingsController *)selfCopy dictionaryManager];
    availableDefinitionDictionaries = [dictionaryManager availableDefinitionDictionaries];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v29 = availableDefinitionDictionaries;
    obj = [availableDefinitionDictionaries reverseObjectEnumerator];
    v9 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (!v9)
    {
      goto LABEL_20;
    }

    v10 = v9;
    v11 = *v35;
    v12 = PSCellClassKey;
    v33 = PSValueKey;
    v31 = selfCopy;
    while (1)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v35 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v34 + 1) + 8 * i);
        if (![v14 isTTYDictionary] || -[DictionarySettingsController isTTYEnabled](selfCopy, "isTTYEnabled"))
        {
          v15 = [PSSpecifier preferenceSpecifierNamed:0 target:selfCopy set:0 get:0 detail:0 cell:3 edit:0];
          [v15 setButtonAction:"toggleDictionaryActivatedState:"];
          [v15 setProperty:objc_opt_class() forKey:v12];
          [v15 setProperty:v14 forKey:v33];
          [v6 insertObject:v15 atIndex:0];
          if ([v14 needsDownloadNewerVersion])
          {
            [(DictionarySettingsController *)selfCopy deactivateDictionaryForSpecifier:v15];
            goto LABEL_16;
          }

          v16 = [(DictionarySettingsController *)selfCopy runningAssetOperationForDictionary:v14];
          v17 = v10;
          v18 = v11;
          v19 = v12;
          v20 = v6;
          v21 = v16;
          rawAsset = [v14 rawAsset];
          state = [rawAsset state];

          v24 = state != &dword_4 || v21 == 1;
          v6 = v20;
          v12 = v19;
          v11 = v18;
          v10 = v17;
          selfCopy = v31;
          if (!v24)
          {
            rawAsset2 = [v14 rawAsset];
            attributes = [rawAsset2 attributes];
            v27 = [attributes objectForKeyedSubscript:@"DictionaryIdentifier"];
            NSLog(@"DictionaryUI: DictionarySettings start download in '-specifiers' for dictionary(%@)", v27);

LABEL_16:
            [(DictionarySettingsController *)selfCopy activateDictionaryForSpecifier:v15];
          }

          continue;
        }
      }

      v10 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
      if (!v10)
      {
LABEL_20:

        [(DictionarySettingsController *)selfCopy showPlaceholderViewsIfNeeded];
        v4 = *&selfCopy->PSListController_opaque[v30];
        break;
      }
    }
  }

  return v4;
}

- (void)showPlaceholderViewsIfNeeded
{
  dictionaryManager = [(DictionarySettingsController *)self dictionaryManager];
  availableDefinitionDictionaries = [dictionaryManager availableDefinitionDictionaries];
  if ([availableDefinitionDictionaries count])
  {

LABEL_4:
    loadingSpinner = [(DictionarySettingsController *)self loadingSpinner];
    [loadingSpinner stopAnimating];

    loadingSpinner2 = [(DictionarySettingsController *)self loadingSpinner];
    [loadingSpinner2 removeFromSuperview];

    [(DictionarySettingsController *)self setLoadingSpinner:0];
LABEL_5:
    dictionariesUnavailableView = [(DictionarySettingsController *)self dictionariesUnavailableView];
    [dictionariesUnavailableView removeFromSuperview];

    [(DictionarySettingsController *)self setDictionariesUnavailableView:0];
    return;
  }

  view = [(DictionarySettingsController *)self view];
  [view frame];
  IsEmpty = CGRectIsEmpty(v28);

  if (IsEmpty)
  {
    goto LABEL_4;
  }

  if (![(DictionarySettingsController *)self performedRemoteQuery])
  {
    loadingSpinner3 = [(DictionarySettingsController *)self loadingSpinner];

    if (!loadingSpinner3)
    {
      v22 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
      [(DictionarySettingsController *)self setLoadingSpinner:v22];
      view2 = [(DictionarySettingsController *)self view];
      [view2 bounds];
      MidX = CGRectGetMidX(v29);
      view3 = [(DictionarySettingsController *)self view];
      [view3 bounds];
      [v22 setCenter:{MidX, CGRectGetMidY(v30)}];

      view4 = [(DictionarySettingsController *)self view];
      [view4 addSubview:v22];

      [v22 startAnimating];
    }

    goto LABEL_5;
  }

  dictionariesUnavailableView2 = [(DictionarySettingsController *)self dictionariesUnavailableView];

  if (!dictionariesUnavailableView2)
  {
    v11 = [_UIContentUnavailableView alloc];
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"DICTIONARY_UNAVAILABLE_TITLE" value:&stru_C998 table:@"DictionarySettings"];
    v14 = [v11 initWithFrame:v13 title:0 style:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];

    [(DictionarySettingsController *)self setErrorMessageToContentUnavailableView:v14];
    [v14 setAutoresizingMask:18];
    view5 = [(DictionarySettingsController *)self view];
    [view5 bounds];
    [v14 setFrame:?];

    view6 = [(DictionarySettingsController *)self view];
    [view6 addSubview:v14];

    [(DictionarySettingsController *)self setDictionariesUnavailableView:v14];
    v17 = DCSDictionaryAssetCopyDiagnosticLog();
    if (v17)
    {
      v18 = v17;
      NSLog(@"DictionaryUI: %@", v17);
      CFRelease(v18);
    }
  }

  loadingSpinner4 = [(DictionarySettingsController *)self loadingSpinner];
  [loadingSpinner4 stopAnimating];

  loadingSpinner5 = [(DictionarySettingsController *)self loadingSpinner];
  [loadingSpinner5 removeFromSuperview];

  [(DictionarySettingsController *)self setLoadingSpinner:0];
}

- (void)setErrorMessageToContentUnavailableView:(id)view
{
  viewCopy = view;
  if (os_variant_has_internal_diagnostics())
  {
    v5 = DCSDictionaryAssetGetAssetType();
    v6 = ASServerURLForAssetType();
    v7 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DICTIONARY_UNAVAILABLE_MESSAGE_INTERNAL" value:&stru_C998 table:@"DictionarySettings"];
    catalogDownloadResult = [(DictionarySettingsController *)self catalogDownloadResult];
    absoluteString = [v6 absoluteString];
    v11 = [NSString stringWithFormat:v8, catalogDownloadResult, absoluteString];

    [viewCopy setButtonTitle:@"Check Connection"];
    v12 = [v5 stringByReplacingOccurrencesOfString:@"." withString:@"_"];
    v13 = [NSString stringWithFormat:@"/%@/%@.xml", v12, v12];
    v14 = [v6 URLByAppendingPathComponent:v13 isDirectory:0];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_22E4;
    v18[3] = &unk_C578;
    v19 = v14;
    v15 = v14;
    [viewCopy setButtonAction:v18];
  }

  else
  {
    v16 = [NSBundle bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"DICTIONARY_UNAVAILABLE_MESSAGE" value:&stru_C998 table:@"DictionarySettings"];
    v11 = [NSMutableString stringWithString:v17];
  }

  [viewCopy setMessage:v11];
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
    dictionaryManager = [(DictionarySettingsController *)self dictionaryManager];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_2698;
    v13[3] = &unk_C630;
    v8 = v3;
    v14 = v8;
    [dictionaryManager _downloadDictionaryAssetCatalogWithTimeout:60 completion:v13];

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
  bundleURL = [v6 bundleURL];
  v8 = [v4 initWithKey:@"Dictionary" table:@"DictionarySettings" locale:v5 bundleURL:bundleURL];

  v9 = [_NSLocalizedStringResource alloc];
  v10 = +[NSLocale currentLocale];
  v11 = [NSBundle bundleForClass:objc_opt_class()];
  bundleURL2 = [v11 bundleURL];
  v13 = [v9 initWithKey:@"General" table:@"DictionarySettings" locale:v10 bundleURL:bundleURL2];

  v15 = v13;
  v14 = [NSArray arrayWithObjects:&v15 count:1];
  [(DictionarySettingsController *)self pe_emitNavigationEventForSystemSettingsWithGraphicIconIdentifier:@"com.apple.graphic-icon.dictionary" title:v8 localizedNavigationComponents:v14 deepLink:v3];
}

- (void)reloadDictionariesList
{
  if (![(NSMutableDictionary *)self->_downloadingAssets count])
  {
    dictionaryManager = [(DictionarySettingsController *)self dictionaryManager];
    _allAvailableDefinitionDictionaries = [dictionaryManager _allAvailableDefinitionDictionaries];

    [(DictionarySettingsController *)self reloadSpecifiers];
  }
}

- (void)toggleDictionaryActivatedState:(id)state
{
  stateCopy = state;
  [stateCopy propertyForKey:PSValueKey];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_2B80;
  v8 = block[3] = &unk_C680;
  selfCopy = self;
  v10 = stateCopy;
  v5 = stateCopy;
  v6 = v8;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)setupProgressHandlerForAsset:(id)asset specifier:(id)specifier
{
  assetCopy = asset;
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_2CF0;
  v10[3] = &unk_C6D0;
  v8 = assetCopy;
  v11 = v8;
  objc_copyWeak(&v13, &location);
  v9 = specifierCopy;
  v12 = v9;
  [v8 attachProgressCallBack:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)updateProgressForSpecifier:(id)specifier operationState:(id)state
{
  stateCopy = state;
  v5 = PSValueKey;
  specifierCopy = specifier;
  v7 = [specifierCopy propertyForKey:v5];
  v8 = [specifierCopy propertyForKey:PSTableCellKey];

  v9 = [stateCopy objectForKeyedSubscript:@"MAProgressNotification"];
  if (([v9 isStalled] & 1) == 0)
  {
    totalWritten = [v9 totalWritten];
    *&v11 = totalWritten / [v9 totalExpected];
    [v7 setProgress:v11];
    [v8 reloadDataWithAssetOperationState:stateCopy];
  }
}

- (void)activateDictionaryForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  v4 = [specifierCopy propertyForKey:PSValueKey];
  v5 = [specifierCopy propertyForKey:PSTableCellKey];
  [v4 setActivated:1];
  rawAsset = [v4 rawAsset];
  if (([rawAsset wasLocal] & 1) == 0)
  {
    [(DictionarySettingsController *)self setupProgressHandlerForAsset:rawAsset specifier:specifierCopy];
    rawAsset2 = [v4 rawAsset];
    attributes = [rawAsset2 attributes];
    v9 = [attributes objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings start download in '-activateDictionaryForSpecifier' for dictionary(%@)", v9);

    [(DictionarySettingsController *)self startDownloadForSpecifier:specifierCopy];
  }

  [v5 reloadDataWithAssetOperationState:0];
}

- (void)deactivateDictionaryForSpecifier:(id)specifier
{
  v4 = PSValueKey;
  specifierCopy = specifier;
  v24 = [specifierCopy propertyForKey:v4];
  v6 = [specifierCopy propertyForKey:PSTableCellKey];

  rawAsset = [v24 rawAsset];
  state = [rawAsset state];

  if (state == &dword_4)
  {
    [(DictionarySettingsController *)self setRunningAssetOperation:2 forDictionary:v24];
    rawAsset2 = [v24 rawAsset];
    cancelDownloadSync = [rawAsset2 cancelDownloadSync];

    rawAsset3 = [v24 rawAsset];
    attributes = [rawAsset3 attributes];
    v13 = [attributes objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings canceled download for dictionary(%@) with error(%ld)", v13, cancelDownloadSync);

    if (cancelDownloadSync)
    {
      [(DictionarySettingsController *)self setRunningAssetOperation:0 forDictionary:v24];
      goto LABEL_9;
    }

    [v24 setActivated:0];
    [v24 setProgress:0.0];
    goto LABEL_8;
  }

  rawAsset4 = [v24 rawAsset];
  wasPurgeable = [rawAsset4 wasPurgeable];

  if (wasPurgeable)
  {
    rawAsset5 = [v24 rawAsset];
    attributes2 = [rawAsset5 attributes];
    DCSDictionaryAssetAttributesWillBePurged();

    rawAsset6 = [v24 rawAsset];
    purgeSync = [rawAsset6 purgeSync];

    rawAsset7 = [v24 rawAsset];
    attributes3 = [rawAsset7 attributes];
    v22 = [attributes3 objectForKeyedSubscript:@"DictionaryIdentifier"];
    NSLog(@"DictionaryUI: DictionarySettings purged dictionary(%@) with error(%ld)", v22, purgeSync);

    if (!purgeSync)
    {
      [v24 setActivated:0];
LABEL_8:
      rawAsset8 = [v24 rawAsset];
      [rawAsset8 refreshState];

      [v6 reloadDataWithAssetOperationState:0];
    }
  }

LABEL_9:
}

- (void)startDownloadForSpecifier:(id)specifier
{
  specifierCopy = specifier;
  objc_initWeak(&location, self);
  v5 = [specifierCopy propertyForKey:PSValueKey];
  rawAsset = [v5 rawAsset];
  downloadingAssets = self->_downloadingAssets;
  if (!downloadingAssets)
  {
    v8 = objc_opt_new();
    [(DictionarySettingsController *)self setDownloadingAssets:v8];

    downloadingAssets = self->_downloadingAssets;
  }

  v9 = +[NSNull null];
  assetId = [rawAsset assetId];
  [(NSMutableDictionary *)downloadingAssets setObject:v9 forKey:assetId];

  [(DictionarySettingsController *)self setRunningAssetOperation:1 forDictionary:v5];
  v11 = objc_opt_new();
  [v11 setAllowsCellularAccess:1];
  [v11 setDiscretionary:0];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_35A4;
  v15[3] = &unk_C720;
  v12 = rawAsset;
  v16 = v12;
  v13 = v5;
  v17 = v13;
  v14 = specifierCopy;
  v18 = v14;
  objc_copyWeak(&v19, &location);
  [v12 startDownload:v11 then:v15];
  [v12 refreshState];
  objc_destroyWeak(&v19);

  objc_destroyWeak(&location);
}

- (id)downloadFailedAlertWithError:(id)error
{
  errorCopy = error;
  v4 = [NSBundle bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"DICTIONARY_DOWNLOAD_FAILED_MESSAGE" value:&stru_C998 table:@"DictionarySettings"];

  if (errorCopy)
  {
    v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @" (%ld)", [errorCopy integerValue]);
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

- (int64_t)runningAssetOperationForDictionary:(id)dictionary
{
  runningAssetOperationInfoForDictionary = self->_runningAssetOperationInfoForDictionary;
  rawAsset = [dictionary rawAsset];
  assetId = [rawAsset assetId];
  v6 = [(NSMutableDictionary *)runningAssetOperationInfoForDictionary objectForKey:assetId];
  integerValue = [v6 integerValue];

  return integerValue;
}

- (void)setRunningAssetOperation:(int64_t)operation forDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  runningAssetOperationInfoForDictionary = self->_runningAssetOperationInfoForDictionary;
  if (!runningAssetOperationInfoForDictionary)
  {
    v7 = objc_opt_new();
    [(DictionarySettingsController *)self setRunningAssetOperationInfoForDictionary:v7];

    runningAssetOperationInfoForDictionary = self->_runningAssetOperationInfoForDictionary;
  }

  v8 = [NSNumber numberWithInteger:operation];
  rawAsset = [dictionaryCopy rawAsset];
  assetId = [rawAsset assetId];
  [(NSMutableDictionary *)runningAssetOperationInfoForDictionary setObject:v8 forKey:assetId];
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
  tTYSoftwareEnabled = [v2 TTYSoftwareEnabled];

  return tTYSoftwareEnabled;
}

@end