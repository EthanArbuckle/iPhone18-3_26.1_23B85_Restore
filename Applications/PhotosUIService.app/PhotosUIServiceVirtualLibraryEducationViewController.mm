@interface PhotosUIServiceVirtualLibraryEducationViewController
- (id)createEducationViewController;
- (void)configureWithContext:(id)a3 completion:(id)a4;
- (void)continueButtonTapped:(id)a3;
- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4;
- (void)viewDidLoad;
@end

@implementation PhotosUIServiceVirtualLibraryEducationViewController

- (id)createEducationViewController
{
  v3 = PXLocalizedString();
  v4 = PXLocalizedString();
  v5 = PXLocalizedString();
  v6 = [UIImage px_imageNamed:@"PhotosPrivacyIcon"];
  v7 = [[OBWelcomeController alloc] initWithTitle:v3 detailText:v4 icon:v6];
  v8 = [v7 headerView];
  [v8 setAllowFullWidthIcon:1];

  v9 = +[OBBoldTrayButton boldButton];
  [v9 setTitle:v5 forState:0];
  [v9 addTarget:self action:"continueButtonTapped:" forControlEvents:0x2000];
  v10 = [v7 buttonTray];
  [v10 addButton:v9];

  v11 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"continueButtonTapped:"];
  [v7 addKeyCommand:v11];

  [v7 setModalInPresentation:1];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)continueButtonTapped:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001170;
  v5[3] = &unk_100008270;
  objc_copyWeak(&v6, &location);
  [(PhotosUIServiceVirtualLibraryEducationViewController *)self dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PhotosUIServiceVirtualLibraryEducationViewController;
  [(PhotosUIServiceVirtualLibraryEducationViewController *)&v4 viewDidLoad];
  v3 = [(PhotosUIServiceVirtualLibraryEducationViewController *)self createEducationViewController];
  [(PhotosUIServiceVirtualLibraryEducationViewController *)self presentViewController:v3 animated:1 completion:0];
}

- (void)prepareForActivationWithContext:(id)a3 completion:(id)a4
{
  if (a4)
  {
    (*(a4 + 2))(a4);
  }
}

- (void)configureWithContext:(id)a3 completion:(id)a4
{
  v9 = a4;
  v5 = [(PhotosUIServiceVirtualLibraryEducationViewController *)self view];
  v6 = [v5 window];
  v7 = [v6 _rootSheetPresentationController];
  [v7 _setShouldScaleDownBehindDescendantSheets:0];

  v8 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9);
    v8 = v9;
  }
}

@end