@interface SafariExportSuccessViewController
- (SafariExportSuccessViewController)initWithExportURL:(id)a3 exportLocation:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation SafariExportSuccessViewController

- (SafariExportSuccessViewController)initWithExportURL:(id)a3 exportLocation:(int64_t)a4
{
  v7 = a3;
  v8 = _WBSLocalizedString();
  if (a4 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = _WBSLocalizedString();
  }

  v10 = _WBSLocalizedString();
  objc_initWeak(&location, self);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __70__SafariExportSuccessViewController_initWithExportURL_exportLocation___block_invoke;
  v18[3] = &unk_89898;
  objc_copyWeak(&v19, &location);
  v11 = [UIAction actionWithHandler:v18];
  v17.receiver = self;
  v17.super_class = SafariExportSuccessViewController;
  v12 = [(SafariImportExportSheetController *)&v17 initWithTitleText:v8 detailText:v9 buttonText:v10 buttonAction:v11];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_exportURL, a3);
    v13->_exportLocation = a4;
    v14 = [(SafariExportSuccessViewController *)v13 navigationItem];
    [v14 setHidesBackButton:1];

    v15 = v13;
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);

  return v13;
}

void __70__SafariExportSuccessViewController_initWithExportURL_exportLocation___block_invoke(uint64_t a1)
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
  v6.receiver = self;
  v6.super_class = SafariExportSuccessViewController;
  [(SafariImportExportSheetController *)&v6 viewDidLoad];
  exportURL = self->_exportURL;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = __48__SafariExportSuccessViewController_viewDidLoad__block_invoke;
  v5[3] = &unk_895D8;
  v5[4] = self;
  [(NSURL *)exportURL safari_accessingSecurityScopedResource:v5];
  v4 = [(SafariImportExportSheetController *)self button];
  [v4 setAccessibilityIdentifier:@"DoneButton"];
}

void __48__SafariExportSuccessViewController_viewDidLoad__block_invoke(uint64_t a1)
{
  v2 = _WBSLocalizedString();
  v3 = [*(*(a1 + 32) + 184) lastPathComponent];
  v4 = [NSString localizedStringWithFormat:v2, v3];

  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = __48__SafariExportSuccessViewController_viewDidLoad__block_invoke_2;
  v18[3] = &unk_89FA8;
  v18[4] = *(a1 + 32);
  v5 = [UIAction actionWithHandler:v18];
  v6 = [UIButton buttonWithType:1 primaryAction:v5];
  [v6 setTitle:v4 forState:0];
  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  v8 = [v6 titleLabel];
  [v8 setFont:v7];

  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v9 = [*(a1 + 32) stackView];
  [v9 addArrangedSubview:v6];

  v10 = [v6 widthAnchor];
  v11 = [*(a1 + 32) stackView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 widthAnchor];
  v14 = [v10 constraintLessThanOrEqualToAnchor:v13 multiplier:0.9];
  [v14 setActive:1];

  v19 = @"fileName";
  v15 = [*(*(a1 + 32) + 184) lastPathComponent];
  v20 = v15;
  v16 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  v17 = WBSMakeAccessibilityIdentifier();
  [v6 setAccessibilityIdentifier:v17];
}

void __48__SafariExportSuccessViewController_viewDidLoad__block_invoke_2(uint64_t a1)
{
  v1 = [[NSURLComponents alloc] initWithURL:*(*(a1 + 32) + 184) resolvingAgainstBaseURL:0];
  [v1 setScheme:@"shareddocuments"];
  v2 = [NSURLQueryItem queryItemWithName:@"reveal" value:@"YES"];
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  [v1 setQueryItems:v3];

  v4 = +[UIApplication sharedApplication];
  v5 = [v1 URL];
  [v4 openURL:v5 withCompletionHandler:0];
}

@end