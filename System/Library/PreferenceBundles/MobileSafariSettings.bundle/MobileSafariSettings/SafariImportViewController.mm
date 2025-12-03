@interface SafariImportViewController
- (SafariImportViewController)initWithLocationToScanForExports:(int64_t)exports folderURLToScanForExports:(id)forExports;
- (SafariImportViewControllerDelegate)delegate;
- (void)_cancelButtonTapped;
- (void)_computeNumberOfItemsToBeImported;
- (void)_presentImportFailedAlertWithPresentingViewController:(id)controller message:(id)message;
- (void)_searchForExportWithCompletionHandler:(id)handler;
- (void)_showChooseFileUI;
- (void)_showDocumentPicker;
- (void)_showImportFromDocumentPickerUI;
- (void)_showImportFromLastExportUI;
- (void)_showSearchingForExportUI;
- (void)_startImporting;
- (void)_updateUIAndLayoutStackViewIfNeeded:(BOOL)needed;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)importSuccessViewControllerDidDismiss:(id)dismiss;
- (void)viewDidLoad;
@end

@implementation SafariImportViewController

- (SafariImportViewController)initWithLocationToScanForExports:(int64_t)exports folderURLToScanForExports:(id)forExports
{
  forExportsCopy = forExports;
  v8 = _WBSLocalizedString();
  v9 = _WBSLocalizedString();
  v10 = _WBSLocalizedString();
  objc_initWeak(&location, self);
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = __89__SafariImportViewController_initWithLocationToScanForExports_folderURLToScanForExports___block_invoke;
  v22[3] = &unk_89898;
  objc_copyWeak(&v23, &location);
  v11 = [UIAction actionWithHandler:v22];
  v21.receiver = self;
  v21.super_class = SafariImportViewController;
  v12 = [(SafariImportExportSheetController *)&v21 initWithTitleText:v8 detailText:v9 buttonText:v10 buttonAction:v11];
  v13 = v12;
  if (v12)
  {
    v12->_locationToScanForExports = exports;
    objc_storeStrong(&v12->_folderURLToScanForExports, forExports);
    v14 = objc_alloc_init(SafariSettingsBrowsingDataImportController);
    importController = v13->_importController;
    v13->_importController = v14;

    v13->_importLocation = 2;
    v13->_searchingForExport = 1;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __89__SafariImportViewController_initWithLocationToScanForExports_folderURLToScanForExports___block_invoke_2;
    v19[3] = &unk_8A1C0;
    v16 = v13;
    v20 = v16;
    [(SafariImportViewController *)v16 _searchForExportWithCompletionHandler:v19];
    v17 = v16;
  }

  objc_destroyWeak(&v23);
  objc_destroyWeak(&location);

  return v13;
}

void __89__SafariImportViewController_initWithLocationToScanForExports_folderURLToScanForExports___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _importButtonTapped];
    WeakRetained = v2;
  }
}

void __89__SafariImportViewController_initWithLocationToScanForExports_folderURLToScanForExports___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  if (v8)
  {
    v4 = [v8 path];
    v5 = [*(*(a1 + 32) + 200) path];
    v6 = [v4 safari_isSubpathOfPath:v5];

    if (v6)
    {
      *(*(a1 + 32) + 216) = 0;
      objc_storeStrong((*(a1 + 32) + 208), a2);
    }
  }

  *(*(a1 + 32) + 256) = 0;
  [*(a1 + 32) _updateUIAndLayoutStackViewIfNeeded:1];
  v7 = *(a1 + 32);
  if (v7[26])
  {
    [v7 _computeNumberOfItemsToBeImported];
  }
}

- (void)_searchForExportWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[_SFDownloadManager alloc] initAsReadonly:1];
  v6 = [NSString stringWithFormat:@"com.apple.MobileSafari.SafariImportViewController.%@.%p.searchForExportQueue", objc_opt_class(), self];
  uTF8String = [v6 UTF8String];
  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_attr_make_with_qos_class(v8, QOS_CLASS_USER_INITIATED, 0);
  v10 = dispatch_queue_create(uTF8String, v9);

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke;
  v14[3] = &unk_8A2B0;
  v15 = v10;
  v16 = v5;
  selfCopy = self;
  v18 = handlerCopy;
  v11 = handlerCopy;
  v12 = v5;
  v13 = v10;
  [v12 getDownloadsWithCompletionHandler:v14];
}

void __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke(id *a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_2;
  block[3] = &unk_8A2B0;
  v2 = a1 + 6;
  v3 = a1[4];
  *&v4 = a1[5];
  *(&v4 + 1) = *v2;
  v8 = v4;
  v5 = a1[4];
  v6 = a1[7];
  *&v7 = v5;
  *(&v7 + 1) = v6;
  v10 = v8;
  v11 = v7;
  dispatch_async(v3, block);
}

void __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_2(uint64_t a1)
{
  v2 = dispatch_group_create();
  v43[0] = 0;
  v43[1] = v43;
  v43[2] = 0x3032000000;
  v43[3] = __Block_byref_object_copy_;
  v43[4] = __Block_byref_object_dispose_;
  v44 = 0;
  v41[0] = 0;
  v41[1] = v41;
  v41[2] = 0x3032000000;
  v41[3] = __Block_byref_object_copy_;
  v41[4] = __Block_byref_object_dispose_;
  v42 = 0;
  v22 = +[NSMutableSet set];
  v21 = +[NSMutableArray array];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v3 = [*(a1 + 32) downloads];
  v4 = [v3 countByEnumeratingWithState:&v37 objects:v46 count:16];
  if (v4)
  {
    v5 = *v38;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v38 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v37 + 1) + 8 * i);
        v8 = [v7 completedFileURL];
        v9 = v8 == 0;

        if (!v9)
        {
          v10 = [v7 dateAdded];
          [v10 timeIntervalSinceNow];
          v12 = v11 < -604800.0;

          if (!v12)
          {
            dispatch_group_enter(v2);
            v13 = *(*(a1 + 40) + 184);
            v14 = [v7 completedFileURL];
            v45 = v14;
            v15 = [NSArray arrayWithObjects:&v45 count:1];
            v28[0] = _NSConcreteStackBlock;
            v28[1] = 3221225472;
            v28[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_18;
            v28[3] = &unk_8A238;
            v29 = *(a1 + 48);
            v16 = v2;
            v17 = *(a1 + 40);
            v30 = v16;
            v31 = v17;
            v35 = v41;
            v32 = v7;
            v36 = v43;
            v33 = v22;
            v34 = v21;
            [v13 scanImportURLs:v15 completionHandler:v28];
          }
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v37 objects:v46 count:16];
    }

    while (v4);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_4;
  block[3] = &unk_8A288;
  v24 = v22;
  v25 = v21;
  v18 = *(a1 + 48);
  v26 = *(a1 + 56);
  v27 = v43;
  v19 = v21;
  v20 = v22;
  dispatch_group_notify(v2, v18, block);

  _Block_object_dispose(v41, 8);
  _Block_object_dispose(v43, 8);
}

void __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_18(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_2_19;
  v15[3] = &unk_8A210;
  v16 = v7;
  v10 = *(a1 + 32);
  v17 = *(a1 + 40);
  v11 = *(a1 + 80);
  v18 = *(a1 + 48);
  v23 = v11;
  v19 = *(a1 + 64);
  v20 = v8;
  v21 = *(a1 + 72);
  v22 = v9;
  v12 = v9;
  v13 = v8;
  v14 = v7;
  dispatch_async(v10, v15);
}

void __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_2_19(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(a1 + 32);
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_3;
    v12[3] = &unk_8A1E8;
    v12[4] = *(a1 + 48);
    [v2 enumerateKeysAndObjectsUsingBlock:v12];
    if (!*(*(*(a1 + 96) + 8) + 40) || ([*(a1 + 56) dateAdded], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "compare:", *(*(*(a1 + 96) + 8) + 40)), v3, v4 == &dword_0 + 1))
    {
      v5 = [*(a1 + 56) completedFileURL];
      v6 = *(*(a1 + 104) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = [*(a1 + 56) dateAdded];
      v9 = *(*(a1 + 96) + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;
    }

    [*(a1 + 64) unionSet:*(a1 + 72)];
    [*(a1 + 80) addObjectsFromArray:*(a1 + 88)];
    dispatch_group_leave(*(a1 + 40));
  }

  else
  {
    v11 = *(a1 + 40);

    dispatch_group_leave(v11);
  }
}

void __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_3(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  v7 = WBSExportMetadataDataTypeKey;
  v11 = v6;
  v8 = [v6 objectForKeyedSubscript:WBSExportMetadataDataTypeKey];
  if ([v8 isEqualToString:WBSChromeExtensionsExportDataType])
  {
  }

  else
  {
    v9 = [v11 objectForKeyedSubscript:v7];
    v10 = [v9 isEqualToString:WBSChromeHistoryExportDataType];

    if (!v10)
    {
      goto LABEL_5;
    }
  }

  *(*(a1 + 32) + 257) = 1;
  *a4 = 1;
LABEL_5:
}

void __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_4(uint64_t a1)
{
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v23 + 1) + 8 * v6);
        v8 = +[NSFileManager defaultManager];
        [v8 removeItemAtURL:v7 error:0];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v4);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = *(a1 + 40);
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v20;
    do
    {
      v13 = 0;
      do
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(*(&v19 + 1) + 8 * v13) longLongValue];
        sandbox_extension_release();
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v11);
  }

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __68__SafariImportViewController__searchForExportWithCompletionHandler___block_invoke_5;
  v16[3] = &unk_8A260;
  v14 = *(a1 + 48);
  v15 = *(a1 + 56);
  v17 = v14;
  v18 = v15;
  dispatch_async(&_dispatch_main_q, v16);
}

- (void)_cancelButtonTapped
{
  navigationController = [(SafariImportViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_startImporting
{
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __45__SafariImportViewController__startImporting__block_invoke;
  v8[3] = &unk_895D8;
  v8[4] = self;
  v3 = objc_retainBlock(v8);
  v4 = v3;
  importLocation = self->_importLocation;
  if (importLocation == 1)
  {
    (v3[2])(v3);
  }

  else if (!importLocation)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = __45__SafariImportViewController__startImporting__block_invoke_2_33;
    v6[3] = &unk_8A328;
    v7 = v3;
    [_SFSettingsAuthentication authenticateForSettings:self allowAuthenticationReuse:0 completionHandler:v6];
  }
}

void __45__SafariImportViewController__startImporting__block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(SafariSettingsBrowsingDataImportController);
  v3 = [*(a1 + 32) button];
  v4 = _WBSLocalizedString();
  [v3 showInProgressWithText:v4];

  v7 = *(*(a1 + 32) + 208);
  v5 = [NSArray arrayWithObjects:&v7 count:1];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __45__SafariImportViewController__startImporting__block_invoke_2;
  v6[3] = &unk_8A300;
  v6[4] = *(a1 + 32);
  [(SafariSettingsBrowsingDataImportController *)v2 importBrowsingDataFromFiles:v5 withCompletionHandler:v6];
}

void __45__SafariImportViewController__startImporting__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __45__SafariImportViewController__startImporting__block_invoke_3;
  block[3] = &unk_89CB0;
  block[4] = *(a1 + 32);
  v10 = v5;
  v11 = v6;
  v7 = v6;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, block);
}

void __45__SafariImportViewController__startImporting__block_invoke_3(id *a1)
{
  v2 = a1 + 5;
  v3 = [a1[5] copy];
  v4 = a1[4];
  v5 = v4[34];
  v4[34] = v3;

  v6 = [a1[4] navigationController];
  v7 = [v6 presentingViewController];

  v8 = [*(a1[4] + 26) lastPathComponent];
  v9 = [v8 stringByDeletingPathExtension];

  v30 = 0;
  v31 = &v30;
  v32 = 0x2020000000;
  v33 = [*v2 count] != 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v10 = *v2;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = __45__SafariImportViewController__startImporting__block_invoke_4;
  v25[3] = &unk_8A2D8;
  v25[4] = &v30;
  v25[5] = &v26;
  [v10 enumerateKeysAndObjectsUsingBlock:v25];
  if (a1[6] || *(v31 + 24) == 1)
  {
    v11 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1[4] + 26);
      v13 = [a1[6] safari_privacyPreservingDescription];
      __45__SafariImportViewController__startImporting__block_invoke_3_cold_1(v12, v13, buf, v11);
    }

    v14 = [a1[4] navigationController];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = __45__SafariImportViewController__startImporting__block_invoke_28;
    v22[3] = &unk_89CB0;
    v22[4] = a1[4];
    v23 = v7;
    v24 = v9;
    [v14 dismissViewControllerAnimated:1 completion:v22];
  }

  else if ([a1[5] count] && (v27[3] & 1) != 0)
  {
    v15 = [[SafariImportSuccessViewController alloc] initWithImportedItems:a1[5]];
    [(SafariImportSuccessViewController *)v15 setDelegate:a1[4]];
    v16 = [a1[4] navigationController];
    [v16 pushViewController:v15 animated:1];
  }

  else
  {
    v17 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_0, v17, OS_LOG_TYPE_INFO, "Didn't find any importable data.", buf, 2u);
    }

    v18 = [a1[4] navigationController];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = __45__SafariImportViewController__startImporting__block_invoke_29;
    v19[3] = &unk_89CB0;
    v19[4] = a1[4];
    v20 = v7;
    v21 = v9;
    [v18 dismissViewControllerAnimated:1 completion:v19];
  }

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v30, 8);
}

void __45__SafariImportViewController__startImporting__block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = [v5 errorMessage];

  if (!v6)
  {
    *(*(*(a1 + 32) + 8) + 24) = 0;
  }

  if ([v10 isEqualToString:WBSPasswordsExportDataType])
  {
    v7 = [v5 numberOfItemsFailedToImport] != 0;
  }

  else
  {
    v7 = 0;
  }

  if ([v10 isEqualToString:WBSChromeExtensionsExportDataType])
  {
    v8 = [v5 numberOfItemsFailedToImport] != 0;
  }

  else
  {
    v8 = 0;
  }

  if ([v10 isEqualToString:WBSExtensionsExportDataType])
  {
    v9 = [v5 numberOfItemsFailedToImport] != 0;
  }

  else
  {
    v9 = 0;
  }

  if (v7 || v9 || v8 || [v5 numberOfItemsSuccessfullyImported])
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

void __45__SafariImportViewController__startImporting__block_invoke_28(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [v1[23] importErrorAlertMessageForFailureReason:1 filename:a1[6]];
  [v1 _presentImportFailedAlertWithPresentingViewController:v2 message:v3];
}

void __45__SafariImportViewController__startImporting__block_invoke_29(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = [v1[23] importErrorAlertMessageForFailureReason:0 filename:a1[6]];
  [v1 _presentImportFailedAlertWithPresentingViewController:v2 message:v3];
}

void __45__SafariImportViewController__startImporting__block_invoke_2_33(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v7 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __45__SafariImportViewController__startImporting__block_invoke_2_33_cold_1(v7);
    }
  }
}

- (void)_presentImportFailedAlertWithPresentingViewController:(id)controller message:(id)message
{
  importController = self->_importController;
  messageCopy = message;
  controllerCopy = controller;
  importErrorAlertTitle = [(SafariSettingsBrowsingDataImportController *)importController importErrorAlertTitle];
  v11 = [UIAlertController alertControllerWithTitle:importErrorAlertTitle message:messageCopy preferredStyle:1];

  v9 = _WBSLocalizedString();
  v10 = [UIAlertAction actionWithTitle:v9 style:0 handler:0];

  [v11 addAction:v10];
  [controllerCopy presentViewController:v11 animated:1 completion:0];
}

- (void)_computeNumberOfItemsToBeImported
{
  importController = self->_importController;
  urlToImportFrom = self->_urlToImportFrom;
  v4 = [NSArray arrayWithObjects:&urlToImportFrom count:1];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __63__SafariImportViewController__computeNumberOfItemsToBeImported__block_invoke;
  v5[3] = &unk_8A300;
  v5[4] = self;
  [(SafariSettingsBrowsingDataImportController *)importController computeNumberOfItemsToBeImportedFromFiles:v4 withCompletionHandler:v5];
}

void __63__SafariImportViewController__computeNumberOfItemsToBeImported__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = WBS_LOG_CHANNEL_PREFIXImport();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __63__SafariImportViewController__computeNumberOfItemsToBeImported__block_invoke_cold_1(v7);
    }
  }

  v8 = [v5 objectForKeyedSubscript:WBSChromeExtensionsExportDataType];
  if (v8)
  {

LABEL_7:
    *(*(a1 + 32) + 257) = 1;
    goto LABEL_8;
  }

  v9 = [v5 objectForKeyedSubscript:WBSChromeHistoryExportDataType];

  if (v9)
  {
    goto LABEL_7;
  }

LABEL_8:
  v10 = *(a1 + 32);
  v11 = *(v10 + 264);
  *(v10 + 264) = v5;
  v12 = v5;

  [*(a1 + 32) _updateUIAndLayoutStackViewIfNeeded:1];
}

- (void)viewDidLoad
{
  v65.receiver = self;
  v65.super_class = SafariImportViewController;
  [(SafariImportSheetController *)&v65 viewDidLoad];
  v60 = +[UIColor systemGray5Color];
  v3 = objc_alloc_init(ImportDetailsStackView);
  importDetailsStackView = self->_importDetailsStackView;
  self->_importDetailsStackView = v3;

  stackView = [(SafariImportExportSheetController *)self stackView];
  [stackView addArrangedSubview:self->_importDetailsStackView];

  widthAnchor = [(ImportDetailsStackView *)self->_importDetailsStackView widthAnchor];
  stackView2 = [(SafariImportExportSheetController *)self stackView];
  layoutMarginsGuide = [stackView2 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide widthAnchor];
  v10 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v10 setActive:1];

  v11 = [UIBarButtonItem alloc];
  v12 = _WBSLocalizedString();
  v13 = [v11 initWithTitle:v12 style:0 target:self action:"_cancelButtonTapped"];
  navigationItem = [(SafariImportViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v13];

  navigationItem2 = [(SafariImportViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"CancelButton"];

  stackView3 = [(SafariImportExportSheetController *)self stackView];
  detailLabel = [(SafariImportExportSheetController *)self detailLabel];
  [stackView3 setCustomSpacing:detailLabel afterView:60.0];

  v64[0] = _NSConcreteStackBlock;
  v64[1] = 3221225472;
  v64[2] = __41__SafariImportViewController_viewDidLoad__block_invoke;
  v64[3] = &unk_89FA8;
  v64[4] = self;
  v19 = [UIAction actionWithHandler:v64];
  v20 = [UIButton buttonWithType:0 primaryAction:v19];
  chooseFileButton = self->_chooseFileButton;
  self->_chooseFileButton = v20;

  [(UIButton *)self->_chooseFileButton setAccessibilityIdentifier:@"ChooseFileButton"];
  [(UIButton *)self->_chooseFileButton setHidden:1];
  v22 = [NSAttributedString alloc];
  v23 = _WBSLocalizedString();
  v66[0] = NSFontAttributeName;
  v24 = [UIFont preferredFontForTextStyle:UIFontTextStyleHeadline];
  v67[0] = v24;
  v66[1] = NSForegroundColorAttributeName;
  v25 = +[UIColor systemBlueColor];
  v67[1] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v67 forKeys:v66 count:2];
  v27 = [v22 initWithString:v23 attributes:v26];

  v28 = +[UIButtonConfiguration borderedProminentButtonConfiguration];
  background = [v28 background];
  [background setCornerRadius:8.0];

  v30 = +[UIColor systemGray5Color];
  background2 = [v28 background];
  [background2 setBackgroundColor:v30];

  [v28 setContentInsets:{20.0, 0.0, 20.0, 0.0}];
  [v28 setAttributedTitle:v27];
  [(UIButton *)self->_chooseFileButton setConfiguration:v28];
  [(UIButton *)self->_chooseFileButton setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView4 = [(SafariImportExportSheetController *)self stackView];
  [stackView4 addArrangedSubview:self->_chooseFileButton];

  widthAnchor3 = [(UIButton *)self->_chooseFileButton widthAnchor];
  stackView5 = [(SafariImportExportSheetController *)self stackView];
  layoutMarginsGuide2 = [stackView5 layoutMarginsGuide];
  widthAnchor4 = [layoutMarginsGuide2 widthAnchor];
  v37 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  [v37 setActive:1];

  v38 = objc_alloc_init(UIView);
  searchingForExportSpinner = self->_searchingForExportSpinner;
  self->_searchingForExportSpinner = v38;

  [(UIView *)self->_searchingForExportSpinner setHidden:1];
  [(UIView *)self->_searchingForExportSpinner setBackgroundColor:v60];
  layer = [(UIView *)self->_searchingForExportSpinner layer];
  [layer setCornerRadius:8.0];

  [(UIView *)self->_searchingForExportSpinner setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView6 = [(SafariImportExportSheetController *)self stackView];
  [stackView6 addArrangedSubview:self->_searchingForExportSpinner];

  widthAnchor5 = [(UIView *)self->_searchingForExportSpinner widthAnchor];
  stackView7 = [(SafariImportExportSheetController *)self stackView];
  layoutMarginsGuide3 = [stackView7 layoutMarginsGuide];
  widthAnchor6 = [layoutMarginsGuide3 widthAnchor];
  v46 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  [v46 setActive:1];

  v47 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  [v47 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_searchingForExportSpinner addSubview:v47];
  v48 = [NSLayoutConstraint safari_constraintsMatchingFrameOfView:v47 withFrameOfView:self->_searchingForExportSpinner edgeInsets:20.0, 0.0, 20.0, 0.0];
  [NSLayoutConstraint activateConstraints:v48];

  [v47 startAnimating];
  objc_initWeak(&location, self);
  v49 = [ImportCaptionStackView alloc];
  v61[0] = _NSConcreteStackBlock;
  v61[1] = 3221225472;
  v61[2] = __41__SafariImportViewController_viewDidLoad__block_invoke_2;
  v61[3] = &unk_89898;
  objc_copyWeak(&v62, &location);
  v50 = [UIAction actionWithHandler:v61];
  v51 = [(ImportCaptionStackView *)v49 initWithButtonAction:v50];
  importCaptionStackView = self->_importCaptionStackView;
  self->_importCaptionStackView = v51;

  [(ImportCaptionStackView *)self->_importCaptionStackView setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView8 = [(SafariImportExportSheetController *)self stackView];
  [stackView8 addArrangedSubview:self->_importCaptionStackView];

  widthAnchor7 = [(ImportCaptionStackView *)self->_importCaptionStackView widthAnchor];
  stackView9 = [(SafariImportExportSheetController *)self stackView];
  layoutMarginsGuide4 = [stackView9 layoutMarginsGuide];
  widthAnchor8 = [layoutMarginsGuide4 widthAnchor];
  v58 = [widthAnchor7 constraintEqualToAnchor:widthAnchor8 multiplier:0.7];
  [v58 setActive:1];

  button = [(SafariImportExportSheetController *)self button];
  [button setAccessibilityIdentifier:@"ImportBrowsingDataButton"];

  [(SafariImportViewController *)self _updateUIAndLayoutStackViewIfNeeded:0];
  objc_destroyWeak(&v62);
  objc_destroyWeak(&location);
}

void __41__SafariImportViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _showDocumentPicker];
    WeakRetained = v2;
  }
}

- (void)_updateUIAndLayoutStackViewIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  importLocation = self->_importLocation;
  switch(importLocation)
  {
    case 2:
      if (!self->_searchingForExport)
      {
        [(SafariImportViewController *)self _showChooseFileUI];
        if (!neededCopy)
        {
          return;
        }

        goto LABEL_11;
      }

      [(SafariImportViewController *)self _showSearchingForExportUI];
      break;
    case 1:
      [(SafariImportViewController *)self _showImportFromDocumentPickerUI];
      if (!neededCopy)
      {
        return;
      }

      goto LABEL_11;
    case 0:
      [(SafariImportViewController *)self _showImportFromLastExportUI];
      if (!neededCopy)
      {
        return;
      }

      goto LABEL_11;
  }

  if (!neededCopy)
  {
    return;
  }

LABEL_11:
  stackView = [(SafariImportExportSheetController *)self stackView];
  [stackView layoutIfNeeded];
}

- (void)_showImportFromLastExportUI
{
  button = [(SafariImportExportSheetController *)self button];
  [button setEnabled:1];

  [(UIButton *)self->_chooseFileButton setHidden:1];
  [(UIView *)self->_searchingForExportSpinner setHidden:1];
  [(ImportDetailsStackView *)self->_importDetailsStackView setNumberOfItemsToBeImportedPerDataType:self->_numberOfItemsToBeImported];
  [(ImportDetailsStackView *)self->_importDetailsStackView setIsChromeExport:self->_foundExportLooksLikeChromeExport];
  [(ImportDetailsStackView *)self->_importDetailsStackView setFileNameAndMetadataFromURL:self->_urlToImportFrom];
  [(ImportDetailsStackView *)self->_importDetailsStackView setHidden:0];
  v4 = _WBSLocalizedString();
  if (!self->_locationToScanForExports)
  {
    v6 = v4;
    v5 = _WBSLocalizedString();

    v4 = v5;
  }

  v7 = v4;
  [(ImportCaptionStackView *)self->_importCaptionStackView setLabelText:?];
  [(ImportCaptionStackView *)self->_importCaptionStackView setShowChooseOtherButton:1];
}

- (void)_showImportFromDocumentPickerUI
{
  button = [(SafariImportExportSheetController *)self button];
  [button setEnabled:1];

  [(UIButton *)self->_chooseFileButton setHidden:1];
  [(UIView *)self->_searchingForExportSpinner setHidden:1];
  [(ImportDetailsStackView *)self->_importDetailsStackView setNumberOfItemsToBeImportedPerDataType:self->_numberOfItemsToBeImported];
  [(ImportDetailsStackView *)self->_importDetailsStackView setIsChromeExport:0];
  [(ImportDetailsStackView *)self->_importDetailsStackView setFileNameAndMetadataFromURL:self->_urlToImportFrom];
  [(ImportDetailsStackView *)self->_importDetailsStackView setHidden:0];
  [(ImportCaptionStackView *)self->_importCaptionStackView setLabelText:0];
  importCaptionStackView = self->_importCaptionStackView;

  [(ImportCaptionStackView *)importCaptionStackView setShowChooseOtherButton:1];
}

- (void)_showSearchingForExportUI
{
  button = [(SafariImportExportSheetController *)self button];
  [button setEnabled:0];

  [(UIButton *)self->_chooseFileButton setHidden:1];
  [(ImportDetailsStackView *)self->_importDetailsStackView setHidden:1];
  [(UIView *)self->_searchingForExportSpinner setHidden:0];
  v4 = _WBSLocalizedString();
  if (!self->_locationToScanForExports)
  {
    v6 = v4;
    v5 = _WBSLocalizedString();

    v4 = v5;
  }

  v7 = v4;
  [(ImportCaptionStackView *)self->_importCaptionStackView setLabelText:?];
  [(ImportCaptionStackView *)self->_importCaptionStackView setShowChooseOtherButton:0];
}

- (void)_showChooseFileUI
{
  button = [(SafariImportExportSheetController *)self button];
  [button setEnabled:0];

  [(UIButton *)self->_chooseFileButton setHidden:0];
  [(ImportDetailsStackView *)self->_importDetailsStackView setHidden:1];
  [(UIView *)self->_searchingForExportSpinner setHidden:1];
  [(ImportCaptionStackView *)self->_importCaptionStackView setLabelText:0];
  importCaptionStackView = self->_importCaptionStackView;

  [(ImportCaptionStackView *)importCaptionStackView setShowChooseOtherButton:0];
}

- (void)_showDocumentPicker
{
  v3 = [UIDocumentPickerViewController alloc];
  v4 = +[SafariSettingsBrowsingDataImportController allowedImportContentTypes];
  v5 = [v3 initForOpeningContentTypes:v4];

  [v5 setDelegate:self];
  [v5 setAllowsMultipleSelection:0];
  [(SafariImportViewController *)self presentViewController:v5 animated:1 completion:0];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __68__SafariImportViewController_documentPicker_didPickDocumentsAtURLs___block_invoke;
  v5[3] = &unk_8A350;
  selfCopy = self;
  lsCopy = ls;
  v4 = lsCopy;
  [_SFSettingsAuthentication authenticateForSettings:selfCopy allowAuthenticationReuse:0 completionHandler:v5];
}

void __68__SafariImportViewController_documentPicker_didPickDocumentsAtURLs___block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(v7 + 264);
    *(v7 + 264) = 0;

    v9 = [*(a1 + 40) firstObject];
    v10 = *(a1 + 32);
    v11 = *(v10 + 208);
    *(v10 + 208) = v9;

    *(*(a1 + 32) + 216) = 1;
    [*(a1 + 32) _updateUIAndLayoutStackViewIfNeeded:1];
    [*(a1 + 32) _computeNumberOfItemsToBeImported];
  }

  else
  {
    v12 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      __45__SafariImportViewController__startImporting__block_invoke_2_33_cold_1(v12);
    }
  }
}

- (void)importSuccessViewControllerDidDismiss:(id)dismiss
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained importViewController:self didDismissAfterSuccessfulImportingDataFromFileURL:self->_urlToImportFrom importedDataClassification:{+[WBSBrowsingDataImportController importedDataClassificationFromImportedItems:](WBSBrowsingDataImportController, "importedDataClassificationFromImportedItems:", self->_importedItems)}];
  }
}

- (SafariImportViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __45__SafariImportViewController__startImporting__block_invoke_3_cold_1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138478083;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_0, log, OS_LOG_TYPE_ERROR, "Failed to import browsing data at URL: %{private}@ error: %{public}@", buf, 0x16u);
}

void __45__SafariImportViewController__startImporting__block_invoke_2_33_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to authenticate to import browsing data: %{public}@", v6, v7, v8, v9, v10);
}

void __63__SafariImportViewController__computeNumberOfItemsToBeImported__block_invoke_cold_1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_1() safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0(&dword_0, v4, v5, "Failed to compute the number of items to be imported: %{public}@", v6, v7, v8, v9, v10);
}

@end