@interface PhotosUIServiceVirtualLibraryEducationViewController
- (id)createEducationViewController;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)continueButtonTapped:(id)tapped;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
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
  headerView = [v7 headerView];
  [headerView setAllowFullWidthIcon:1];

  v9 = +[OBBoldTrayButton boldButton];
  [v9 setTitle:v5 forState:0];
  [v9 addTarget:self action:"continueButtonTapped:" forControlEvents:0x2000];
  buttonTray = [v7 buttonTray];
  [buttonTray addButton:v9];

  v11 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"continueButtonTapped:"];
  [v7 addKeyCommand:v11];

  [v7 setModalInPresentation:1];
  [v7 setModalPresentationStyle:2];

  return v7;
}

- (void)continueButtonTapped:(id)tapped
{
  tappedCopy = tapped;
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
  createEducationViewController = [(PhotosUIServiceVirtualLibraryEducationViewController *)self createEducationViewController];
  [(PhotosUIServiceVirtualLibraryEducationViewController *)self presentViewController:createEducationViewController animated:1 completion:0];
}

- (void)prepareForActivationWithContext:(id)context completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion);
  }
}

- (void)configureWithContext:(id)context completion:(id)completion
{
  completionCopy = completion;
  view = [(PhotosUIServiceVirtualLibraryEducationViewController *)self view];
  window = [view window];
  _rootSheetPresentationController = [window _rootSheetPresentationController];
  [_rootSheetPresentationController _setShouldScaleDownBehindDescendantSheets:0];

  v8 = completionCopy;
  if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy);
    v8 = completionCopy;
  }
}

@end