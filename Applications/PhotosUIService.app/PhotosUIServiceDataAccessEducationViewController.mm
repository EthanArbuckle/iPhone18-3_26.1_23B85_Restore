@interface PhotosUIServiceDataAccessEducationViewController
- (id)createEducationViewController;
- (void)buttonTapped:(id)tapped;
- (void)configureWithContext:(id)context completion:(id)completion;
- (void)prepareForActivationWithContext:(id)context completion:(id)completion;
- (void)viewDidLoad;
@end

@implementation PhotosUIServiceDataAccessEducationViewController

- (id)createEducationViewController
{
  v3 = PXLocalizedString();
  v4 = PXLocalizedString();
  v5 = PXLocalizedString();
  v6 = [UIImage px_imageNamed:@"PhotosPrivacyIcon"];
  v7 = +[OBBoldTrayButton boldButton];
  [v7 setTitle:v5 forState:0];
  [v7 addTarget:self action:"buttonTapped:" forControlEvents:0x2000];
  v8 = [[OBWelcomeController alloc] initWithTitle:v3 detailText:v4 icon:v6];
  headerView = [v8 headerView];
  [headerView setAllowFullWidthIcon:1];

  buttonTray = [v8 buttonTray];
  [buttonTray addButton:v7];

  v11 = [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:"buttonTapped:"];
  [v8 addKeyCommand:v11];

  [v8 setModalInPresentation:1];
  [v8 setModalPresentationStyle:2];

  return v8;
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  objc_initWeak(&location, self);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001E0C;
  v5[3] = &unk_100008270;
  objc_copyWeak(&v6, &location);
  [(PhotosUIServiceDataAccessEducationViewController *)self dismissViewControllerAnimated:1 completion:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PhotosUIServiceDataAccessEducationViewController;
  [(PhotosUIServiceDataAccessEducationViewController *)&v4 viewDidLoad];
  createEducationViewController = [(PhotosUIServiceDataAccessEducationViewController *)self createEducationViewController];
  [(PhotosUIServiceDataAccessEducationViewController *)self presentViewController:createEducationViewController animated:1 completion:0];
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
  view = [(PhotosUIServiceDataAccessEducationViewController *)self view];
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