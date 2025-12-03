@interface SafariExportViewController
- (NSString)authenticationPrompt;
- (SafariExportViewController)initWithExportLocation:(int64_t)location;
- (id)temporaryExportZipArchiveURL;
- (void)_cancelButtonTapped;
- (void)_moveTemporaryExportZipArchiveToDownloadsWithCompletionHandler:(id)handler;
- (void)_presentExportFailureAlertWithPresentingViewController:(id)controller;
- (void)_updateExportButton;
- (void)dealloc;
- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls;
- (void)documentPickerWasCancelled:(id)cancelled;
- (void)sender:(id)sender didToggleBrowsingDataExportType:(unint64_t)type;
- (void)viewDidLoad;
@end

@implementation SafariExportViewController

- (id)temporaryExportZipArchiveURL
{
  v2 = _SFSafariTemporaryDirectoryPath();
  v3 = [NSURL fileURLWithPath:v2];

  v4 = +[WBSBrowsingDataExportController defaultExportFolderName];
  v5 = [v3 URLByAppendingPathComponent:v4];
  v6 = [v5 URLByAppendingPathExtensionForType:UTTypeZIP];

  return v6;
}

- (SafariExportViewController)initWithExportLocation:(int64_t)location
{
  v5 = _WBSLocalizedString();
  if (location > 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = _WBSLocalizedString();
  }

  v7 = _WBSLocalizedString();
  objc_initWeak(&location, self);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __53__SafariExportViewController_initWithExportLocation___block_invoke;
  v16[3] = &unk_89898;
  objc_copyWeak(&v17, &location);
  v8 = [UIAction actionWithHandler:v16];
  v15.receiver = self;
  v15.super_class = SafariExportViewController;
  v9 = [(SafariImportExportSheetController *)&v15 initWithTitleText:v5 detailText:v6 buttonText:v7 buttonAction:v8];
  v10 = v9;
  if (v9)
  {
    v9->_exportLocation = location;
    v11 = objc_alloc_init(SafariSettingsBrowsingDataExportController);
    exportController = v10->_exportController;
    v10->_exportController = v11;

    [(SafariSettingsBrowsingDataExportController *)v10->_exportController setSelectedBrowsingDataExportTypes:31];
    v13 = v10;
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);

  return v10;
}

void __53__SafariExportViewController_initWithExportLocation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained _exportButtonTapped];
    WeakRetained = v2;
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = SafariExportViewController;
  [(SafariExportViewController *)&v4 dealloc];
}

void __49__SafariExportViewController__exportButtonTapped__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a2)
  {
    v7 = [*(a1 + 32) view];
    [v7 setUserInteractionEnabled:0];

    v8 = [*(a1 + 32) button];
    v9 = _WBSLocalizedString();
    [v8 showInProgressWithText:v9];

    v10 = *(a1 + 32);
    v11 = v10[23];
    v12 = [v10 temporaryExportZipArchiveURL];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = __49__SafariExportViewController__exportButtonTapped__block_invoke_27;
    v14[3] = &unk_898E8;
    v14[4] = *(a1 + 32);
    [v11 exportToZipArchiveAtURL:v12 completionHandler:v14];
  }

  else
  {
    v13 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __49__SafariExportViewController__exportButtonTapped__block_invoke_cold_1(v13, v6);
    }
  }
}

void __49__SafariExportViewController__exportButtonTapped__block_invoke_27(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __49__SafariExportViewController__exportButtonTapped__block_invoke_27_cold_1(v4, v3);
    }

    v5 = [*(a1 + 32) navigationController];
    v6 = [v5 presentingViewController];

    v7 = *(a1 + 32);
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = __49__SafariExportViewController__exportButtonTapped__block_invoke_28;
    v11[3] = &unk_896A0;
    v11[4] = v7;
    v12 = v6;
    v8 = v6;
    [v7 dismissViewControllerAnimated:1 completion:v11];
  }

  else
  {
    v9 = *(a1 + 32);
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = __49__SafariExportViewController__exportButtonTapped__block_invoke_2;
    v10[3] = &unk_898C0;
    v10[4] = v9;
    [v9 _moveTemporaryExportZipArchiveToDownloadsWithCompletionHandler:v10];
  }
}

void __49__SafariExportViewController__exportButtonTapped__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    v10 = WBS_LOG_CHANNEL_PREFIXExport();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __49__SafariExportViewController__exportButtonTapped__block_invoke_2_cold_1(v10, v7);
    }

    v11 = [UIDocumentPickerViewController alloc];
    v12 = [*(a1 + 32) temporaryExportZipArchiveURL];
    v14 = v12;
    v13 = [NSArray arrayWithObjects:&v14 count:1];
    v8 = [v11 initForExportingURLs:v13 asCopy:1];

    [(SafariExportSuccessViewController *)v8 setDelegate:*(a1 + 32)];
    [*(a1 + 32) presentViewController:v8 animated:1 completion:0];
  }

  else
  {
    v8 = [[SafariExportSuccessViewController alloc] initWithExportURL:v5 exportLocation:*(*(a1 + 32) + 216)];
    v9 = [*(a1 + 32) navigationController];
    [v9 pushViewController:v8 animated:1];
  }
}

- (void)_presentExportFailureAlertWithPresentingViewController:(id)controller
{
  exportController = self->_exportController;
  controllerCopy = controller;
  exportErrorAlertTitle = [(SafariSettingsBrowsingDataExportController *)exportController exportErrorAlertTitle];
  exportErrorAlertMessage = [(SafariSettingsBrowsingDataExportController *)self->_exportController exportErrorAlertMessage];
  v10 = [UIAlertController alertControllerWithTitle:exportErrorAlertTitle message:exportErrorAlertMessage preferredStyle:1];

  v8 = _WBSLocalizedString();
  v9 = [UIAlertAction actionWithTitle:v8 style:0 handler:0];

  [v10 addAction:v9];
  [controllerCopy presentViewController:v10 animated:1 completion:0];
}

- (void)_cancelButtonTapped
{
  navigationController = [(SafariExportViewController *)self navigationController];
  [navigationController dismissViewControllerAnimated:1 completion:0];
}

- (void)_moveTemporaryExportZipArchiveToDownloadsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = dispatch_get_global_queue(25, 0);
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __93__SafariExportViewController__moveTemporaryExportZipArchiveToDownloadsWithCompletionHandler___block_invoke;
  v7[3] = &unk_89960;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  dispatch_async(v5, v7);
}

void __93__SafariExportViewController__moveTemporaryExportZipArchiveToDownloadsWithCompletionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) temporaryExportZipArchiveURL];
  v3 = +[NSFileManager defaultManager];
  v14 = 0;
  v4 = [v3 _doc_importItemAtURL:v2 toDestination:1 error:&v14];
  v5 = v14;

  if (v4)
  {
    v6 = +[NSFileManager defaultManager];
    [v6 removeItemAtURL:v2 error:0];
  }

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = __93__SafariExportViewController__moveTemporaryExportZipArchiveToDownloadsWithCompletionHandler___block_invoke_2;
  v10[3] = &unk_89938;
  v7 = *(a1 + 40);
  v12 = v5;
  v13 = v7;
  v11 = v4;
  v8 = v5;
  v9 = v4;
  dispatch_async(&_dispatch_main_q, v10);
}

- (void)_updateExportButton
{
  v3 = [(SafariSettingsBrowsingDataExportController *)self->_exportController selectedBrowsingDataExportTypes]!= 0;
  button = [(SafariImportExportSheetController *)self button];
  [button setEnabled:v3];
}

- (void)sender:(id)sender didToggleBrowsingDataExportType:(unint64_t)type
{
  [(SafariSettingsBrowsingDataExportController *)self->_exportController setSelectedBrowsingDataExportTypes:[(SafariSettingsBrowsingDataExportController *)self->_exportController selectedBrowsingDataExportTypes]^ type];

  [(SafariExportViewController *)self _updateExportButton];
}

- (void)viewDidLoad
{
  v51.receiver = self;
  v51.super_class = SafariExportViewController;
  [(SafariImportExportSheetController *)&v51 viewDidLoad];
  v3 = [UIBarButtonItem alloc];
  v4 = _WBSLocalizedString();
  v5 = [v3 initWithTitle:v4 style:0 target:self action:"_cancelButtonTapped"];
  navigationItem = [(SafariExportViewController *)self navigationItem];
  [navigationItem setLeftBarButtonItem:v5];

  navigationItem2 = [(SafariExportViewController *)self navigationItem];
  leftBarButtonItem = [navigationItem2 leftBarButtonItem];
  [leftBarButtonItem setAccessibilityIdentifier:@"Cancel"];

  button = [(SafariImportExportSheetController *)self button];
  [button setAccessibilityIdentifier:@"ExportBrowsingDataButton"];

  v10 = objc_alloc_init(SafariExportDataTypeToggleContainer);
  exportDataTypeToggleContainer = self->_exportDataTypeToggleContainer;
  self->_exportDataTypeToggleContainer = v10;

  [(SafariExportDataTypeToggleContainer *)self->_exportDataTypeToggleContainer setDelegate:self];
  [(SafariExportDataTypeToggleContainer *)self->_exportDataTypeToggleContainer setTranslatesAutoresizingMaskIntoConstraints:0];
  stackView = [(SafariImportExportSheetController *)self stackView];
  [stackView addArrangedSubview:self->_exportDataTypeToggleContainer];

  widthAnchor = [(SafariExportDataTypeToggleContainer *)self->_exportDataTypeToggleContainer widthAnchor];
  stackView2 = [(SafariImportExportSheetController *)self stackView];
  layoutMarginsGuide = [stackView2 layoutMarginsGuide];
  widthAnchor2 = [layoutMarginsGuide widthAnchor];
  v17 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  [v17 setActive:1];

  v18 = +[SafariSettingsController tabGroupManager];
  if ([v18 hasMultipleProfiles])
  {
    v19 = objc_alloc_init(SafariExportProfilePicker);
    objc_initWeak(&location, v19);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = __41__SafariExportViewController_viewDidLoad__block_invoke;
    v47[3] = &unk_899B0;
    v47[4] = self;
    v20 = v18;
    v48 = v20;
    objc_copyWeak(&v49, &location);
    v21 = objc_retainBlock(v47);
    v22 = _WBSLocalizedString();
    profiles = [v20 profiles];
    v43 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v22, [profiles count]);

    v41 = [UIImage systemImageNamed:@"square.stack.fill"];
    v24 = [UIAction actionWithTitle:"actionWithTitle:image:identifier:handler:" image:v43 identifier:? handler:?];
    v53 = v24;
    v25 = [NSArray arrayWithObjects:&v53 count:1];
    v42 = [UIMenu menuWithTitle:&stru_8BB60 image:0 identifier:0 options:1 children:v25];

    v26 = +[SafariSettingsController tabGroupManager];
    profiles2 = [v26 profiles];
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = __41__SafariExportViewController_viewDidLoad__block_invoke_4;
    v45[3] = &unk_899D8;
    v40 = v21;
    v46 = v40;
    v28 = [profiles2 safari_mapObjectsUsingBlock:v45];

    v52 = v42;
    v29 = [NSArray arrayWithObjects:&v52 count:1];
    v30 = [v29 arrayByAddingObjectsFromArray:v28];

    v31 = [UIMenu menuWithChildren:v30];
    [(SafariExportProfilePicker *)v19 setMenu:v31];

    [v24 performWithSender:self target:0];
    [(SafariExportProfilePicker *)v19 setTranslatesAutoresizingMaskIntoConstraints:0];
    stackView3 = [(SafariImportExportSheetController *)self stackView];
    [stackView3 addArrangedSubview:v19];

    widthAnchor3 = [(SafariExportProfilePicker *)v19 widthAnchor];
    stackView4 = [(SafariImportExportSheetController *)self stackView];
    layoutMarginsGuide2 = [stackView4 layoutMarginsGuide];
    widthAnchor4 = [layoutMarginsGuide2 widthAnchor];
    v37 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
    [v37 setActive:1];

    objc_destroyWeak(&v49);
    objc_destroyWeak(&location);
  }

  else
  {
    allProfileIdentifiers = [v18 allProfileIdentifiers];
    [(SafariSettingsBrowsingDataExportController *)self->_exportController setProfileIdentifiersToExportFrom:allProfileIdentifiers];

    exportController = self->_exportController;
    v44[0] = _NSConcreteStackBlock;
    v44[1] = 3221225472;
    v44[2] = __41__SafariExportViewController_viewDidLoad__block_invoke_5;
    v44[3] = &unk_89988;
    v44[4] = self;
    [(SafariSettingsBrowsingDataExportController *)exportController computeNumberOfItemsToBeExportedForBrowsingDataExportType:31 usingBlock:v44];
  }
}

void __41__SafariExportViewController_viewDidLoad__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"com.apple.Safari.SafariExportViewController.Action.AllProfiles"];

  *(*(a1 + 32) + 200) = 6;
  v6 = dispatch_time(0, (secondsToWaitBeforeHidingOrShowingExportCountSpinner * 1000000000.0));
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __41__SafariExportViewController_viewDidLoad__block_invoke_2;
  block[3] = &unk_895D8;
  block[4] = *(a1 + 32);
  dispatch_after(v6, &_dispatch_main_q, block);
  if (v5)
  {
    v7 = [*(a1 + 40) allProfileIdentifiers];
    v8 = v7;
  }

  else
  {
    v8 = [v3 identifier];
    v7 = [NSSet setWithObject:v8];
  }

  [*(*(a1 + 32) + 184) setProfileIdentifiersToExportFrom:v7];
  if (v5)
  {
    v9 = 31;
  }

  else
  {

    v9 = 6;
  }

  v10 = *(a1 + 32);
  v11 = *(v10 + 184);
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = __41__SafariExportViewController_viewDidLoad__block_invoke_3;
  v13[3] = &unk_89988;
  v13[4] = v10;
  [v11 computeNumberOfItemsToBeExportedForBrowsingDataExportType:v9 usingBlock:v13];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained updateMenuStateWithSelectedAction:v3];
}

void *__41__SafariExportViewController_viewDidLoad__block_invoke_2(void *result)
{
  v1 = result[4];
  v2 = *(v1 + 200);
  if ((v2 & 2) != 0)
  {
    v3 = result;
    result = [*(v1 + 192) showSpinnerForBrowsingDataExportType:2];
    v1 = v3[4];
    v2 = *(v1 + 200);
  }

  if ((v2 & 4) != 0)
  {
    v4 = *(v1 + 192);

    return [v4 showSpinnerForBrowsingDataExportType:4];
  }

  return result;
}

id __41__SafariExportViewController_viewDidLoad__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(*(a1 + 32) + 200) &= ~a2;
  [*(*(a1 + 32) + 192) updateCountOfBrowsingDataExportType:a2 count:a3];
  if (!a3)
  {
    [*(*(a1 + 32) + 184) setSelectedBrowsingDataExportTypes:{objc_msgSend(*(*(a1 + 32) + 184), "selectedBrowsingDataExportTypes") & ~a2}];
  }

  v6 = *(a1 + 32);

  return [v6 _updateExportButton];
}

id __41__SafariExportViewController_viewDidLoad__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 title];
  v5 = [v3 symbolImage];
  v6 = [v3 identifier];

  v7 = [UIAction actionWithTitle:v4 image:v5 identifier:v6 handler:*(a1 + 32)];

  return v7;
}

id __41__SafariExportViewController_viewDidLoad__block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(*(a1 + 32) + 192) updateCountOfBrowsingDataExportType:a2 count:a3];
  if (!a3)
  {
    [*(*(a1 + 32) + 184) setSelectedBrowsingDataExportTypes:{objc_msgSend(*(*(a1 + 32) + 184), "selectedBrowsingDataExportTypes") & ~a2}];
  }

  v6 = *(a1 + 32);

  return [v6 _updateExportButton];
}

- (void)documentPicker:(id)picker didPickDocumentsAtURLs:(id)ls
{
  lsCopy = ls;
  v6 = dispatch_get_global_queue(25, 0);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = __68__SafariExportViewController_documentPicker_didPickDocumentsAtURLs___block_invoke;
  v8[3] = &unk_896A0;
  v8[4] = self;
  v9 = lsCopy;
  v7 = lsCopy;
  dispatch_async(v6, v8);
}

void __68__SafariExportViewController_documentPicker_didPickDocumentsAtURLs___block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) temporaryExportZipArchiveURL];
  [v2 removeItemAtURL:v3 error:0];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = __68__SafariExportViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2;
  v6[3] = &unk_896A0;
  v4 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = v4;
  v8 = v5;
  dispatch_async(&_dispatch_main_q, v6);
}

void __68__SafariExportViewController_documentPicker_didPickDocumentsAtURLs___block_invoke_2(uint64_t a1)
{
  v2 = [SafariExportSuccessViewController alloc];
  v3 = [*(a1 + 32) firstObject];
  v5 = [(SafariExportSuccessViewController *)v2 initWithExportURL:v3 exportLocation:*(*(a1 + 40) + 216)];

  v4 = [*(a1 + 40) navigationController];
  [v4 pushViewController:v5 animated:1];
}

- (void)documentPickerWasCancelled:(id)cancelled
{
  v4 = dispatch_get_global_queue(25, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__SafariExportViewController_documentPickerWasCancelled___block_invoke;
  block[3] = &unk_895D8;
  block[4] = self;
  dispatch_async(v4, block);
}

void __57__SafariExportViewController_documentPickerWasCancelled___block_invoke(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = [*(a1 + 32) temporaryExportZipArchiveURL];
  [v2 removeItemAtURL:v3 error:0];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __57__SafariExportViewController_documentPickerWasCancelled___block_invoke_2;
  block[3] = &unk_895D8;
  block[4] = *(a1 + 32);
  dispatch_async(&_dispatch_main_q, block);
}

void __57__SafariExportViewController_documentPickerWasCancelled___block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) navigationController];
  [v1 dismissViewControllerAnimated:1 completion:0];
}

- (NSString)authenticationPrompt
{
  if (([(SafariSettingsBrowsingDataExportController *)self->_exportController selectedBrowsingDataExportTypes]& 0x10) != 0)
  {
    [(SafariSettingsBrowsingDataExportController *)self->_exportController selectedBrowsingDataExportTypes];
  }

  v3 = _WBSLocalizedString();

  return v3;
}

void __49__SafariExportViewController__exportButtonTapped__block_invoke_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "Failed to authenticate to export browsing data: %{public}@", v7, v8, v9, v10, 2u);
}

void __49__SafariExportViewController__exportButtonTapped__block_invoke_27_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "Export failed: %{public}@.", v7, v8, v9, v10, 2u);
}

void __49__SafariExportViewController__exportButtonTapped__block_invoke_2_cold_1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 safari_privacyPreservingDescription];
  OUTLINED_FUNCTION_0(&dword_0, v5, v6, "Failed to move the export to the Downloads folder: %{public}@. Showing a file picker instead.", v7, v8, v9, v10, 2u);
}

@end