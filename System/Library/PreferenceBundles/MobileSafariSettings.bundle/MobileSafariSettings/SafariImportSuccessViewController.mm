@interface SafariImportSuccessViewController
- (SafariImportSuccessViewController)initWithImportedItems:(id)items;
- (SafariImportSuccessViewControllerDelegate)delegate;
- (void)viewDidLoad;
@end

@implementation SafariImportSuccessViewController

- (SafariImportSuccessViewController)initWithImportedItems:(id)items
{
  itemsCopy = items;
  v6 = _WBSLocalizedString();
  v7 = [WBSBrowsingDataImportController localizedSuccessStringForImportedItems:itemsCopy];
  if (!v7)
  {
    v8 = _WBSLocalizedString();

    v6 = v8;
  }

  v9 = _WBSLocalizedString();
  objc_initWeak(&location, self);
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = __59__SafariImportSuccessViewController_initWithImportedItems___block_invoke;
  v19[3] = &unk_89898;
  objc_copyWeak(&v20, &location);
  v10 = [UIAction actionWithHandler:v19];
  v18.receiver = self;
  v18.super_class = SafariImportSuccessViewController;
  v11 = [(SafariImportExportSheetController *)&v18 initWithTitleText:v6 detailText:v7 buttonText:v9 buttonAction:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_importedItems, items);
    navigationItem = [(SafariImportSuccessViewController *)v12 navigationItem];
    [navigationItem setHidesBackButton:1];

    detailLabel = [(SafariImportExportSheetController *)v12 detailLabel];
    [detailLabel setAccessibilityIdentifier:@"ImportSuccessDetails"];

    button = [(SafariImportExportSheetController *)v12 button];
    [button setAccessibilityIdentifier:@"DoneButton"];

    v16 = v12;
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  return v12;
}

void __59__SafariImportSuccessViewController_initWithImportedItems___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained navigationController];
    [v2 dismissViewControllerAnimated:1 completion:0];

    WeakRetained = v3;
  }
}

- (void)viewDidLoad
{
  v19.receiver = self;
  v19.super_class = SafariImportSuccessViewController;
  [(SafariImportSheetController *)&v19 viewDidLoad];
  v3 = [(NSDictionary *)self->_importedItems objectForKeyedSubscript:WBSPasswordsExportDataType];
  v4 = [(NSDictionary *)self->_importedItems objectForKeyedSubscript:WBSExtensionsExportDataType];
  v5 = [(NSDictionary *)self->_importedItems objectForKeyedSubscript:WBSChromeExtensionsExportDataType];
  v6 = v5;
  if (v4)
  {
    [v4 setNumberOfItemsSuccessfullyImported:{objc_msgSend(v5, "numberOfItemsSuccessfullyImported") + objc_msgSend(v4, "numberOfItemsSuccessfullyImported")}];
    [v4 setNumberOfItemsFailedToImport:{objc_msgSend(v6, "numberOfItemsFailedToImport") + objc_msgSend(v4, "numberOfItemsFailedToImport")}];
    extensionLockupViews = [v4 extensionLockupViews];
    extensionLockupViews2 = [v6 extensionLockupViews];
    v9 = [extensionLockupViews arrayByAddingObjectsFromArray:extensionLockupViews2];
    [v4 setExtensionLockupViews:v9];
  }

  if ([v3 numberOfItemsFailedToImport] || objc_msgSend(v4, "numberOfItemsFailedToImport") || objc_msgSend(v6, "numberOfItemsFailedToImport"))
  {
    v10 = [SafariImportConflictViewContainer alloc];
    if (v4)
    {
      v11 = v4;
    }

    else
    {
      v11 = v6;
    }

    v12 = [(SafariImportConflictViewContainer *)v10 initWithPasswordsImportedData:v3 extensionsImportedData:v11];
    stackView = [(SafariImportExportSheetController *)self stackView];
    [stackView addArrangedSubview:v12];

    widthAnchor = [(SafariImportConflictViewContainer *)v12 widthAnchor];
    stackView2 = [(SafariImportExportSheetController *)self stackView];
    layoutMarginsGuide = [stackView2 layoutMarginsGuide];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v18 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v18 setActive:1];
  }
}

- (SafariImportSuccessViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end