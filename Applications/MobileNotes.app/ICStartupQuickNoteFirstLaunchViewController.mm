@interface ICStartupQuickNoteFirstLaunchViewController
- (NSLayoutConstraint)separator1HeightConstraint;
- (NSLayoutConstraint)separator2HeightConstraint;
- (UIImageView)imageView;
- (UILabel)messageLabel;
- (UILabel)titleLabel;
- (UIView)seperator1;
- (UIView)seperator2;
- (id)initStartedWithPencil:(BOOL)pencil launchBlock:(id)block;
- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController;
- (void)okAction:(id)action;
- (void)settingsAction:(id)action;
- (void)viewDidLoad;
@end

@implementation ICStartupQuickNoteFirstLaunchViewController

- (id)initStartedWithPencil:(BOOL)pencil launchBlock:(id)block
{
  pencilCopy = pencil;
  blockCopy = block;
  v10.receiver = self;
  v10.super_class = ICStartupQuickNoteFirstLaunchViewController;
  v7 = [(ICStartupQuickNoteFirstLaunchViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICStartupQuickNoteFirstLaunchViewController *)v7 setStartedWithPencil:pencilCopy];
    [(ICStartupQuickNoteFirstLaunchViewController *)v8 setLaunchBlock:blockCopy];
    [(ICStartupQuickNoteFirstLaunchViewController *)v8 setTransitioningDelegate:v8];
    [(ICStartupQuickNoteFirstLaunchViewController *)v8 setModalPresentationStyle:4];
  }

  return v8;
}

- (void)viewDidLoad
{
  v25.receiver = self;
  v25.super_class = ICStartupQuickNoteFirstLaunchViewController;
  [(ICStartupQuickNoteFirstLaunchViewController *)&v25 viewDidLoad];
  view = [(ICStartupQuickNoteFirstLaunchViewController *)self view];
  layer = [view layer];
  [layer setCornerRadius:12.0];

  imageView = [(ICStartupQuickNoteFirstLaunchViewController *)self imageView];
  layer2 = [imageView layer];
  [layer2 setCornerRadius:12.0];

  v7 = [UIColor colorWithDynamicProvider:&stru_10064A1C0];
  view2 = [(ICStartupQuickNoteFirstLaunchViewController *)self view];
  [view2 setBackgroundColor:v7];

  view3 = [(ICStartupQuickNoteFirstLaunchViewController *)self view];
  [view3 ic_backingScaleFactor];
  v11 = v10;

  if (v11 > 1.0)
  {
    v12 = 1.0 / v11;
    separator1HeightConstraint = [(ICStartupQuickNoteFirstLaunchViewController *)self separator1HeightConstraint];
    [separator1HeightConstraint setConstant:v12];

    separator2HeightConstraint = [(ICStartupQuickNoteFirstLaunchViewController *)self separator2HeightConstraint];
    [separator2HeightConstraint setConstant:v12];
  }

  v15 = +[UIColor labelColor];
  imageView2 = [(ICStartupQuickNoteFirstLaunchViewController *)self imageView];
  [imageView2 setTintColor:v15];

  v17 = +[UIColor labelColor];
  titleLabel = [(ICStartupQuickNoteFirstLaunchViewController *)self titleLabel];
  [titleLabel setTextColor:v17];

  v19 = +[UIColor labelColor];
  messageLabel = [(ICStartupQuickNoteFirstLaunchViewController *)self messageLabel];
  [messageLabel setTextColor:v19];

  v21 = +[UIColor tableSeparatorLightColor];
  seperator1 = [(ICStartupQuickNoteFirstLaunchViewController *)self seperator1];
  [seperator1 setBackgroundColor:v21];

  v23 = +[UIColor tableSeparatorLightColor];
  seperator2 = [(ICStartupQuickNoteFirstLaunchViewController *)self seperator2];
  [seperator2 setBackgroundColor:v23];
}

- (void)okAction:(id)action
{
  [(ICStartupQuickNoteFirstLaunchViewController *)self dismissViewControllerAnimated:1 completion:0];
  launchBlock = [(ICStartupQuickNoteFirstLaunchViewController *)self launchBlock];
  launchBlock[2](launchBlock, 0);

  [(ICStartupQuickNoteFirstLaunchViewController *)self setLaunchBlock:0];
}

- (void)settingsAction:(id)action
{
  [(ICStartupQuickNoteFirstLaunchViewController *)self dismissViewControllerAnimated:1 completion:0];
  v4 = +[FBSOpenApplicationService serviceWithDefaultShellEndpoint];
  v5 = objc_opt_new();
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyUnlockDevice];
  [v5 setObject:&__kCFBooleanTrue forKeyedSubscript:FBSOpenApplicationOptionKeyPromptUnlockDevice];
  v6 = [NSURL URLWithString:@"prefs:root=NOTES"];
  [v5 setObject:v6 forKeyedSubscript:FBSOpenApplicationOptionKeyPayloadURL];

  v7 = [FBSOpenApplicationOptions optionsWithDictionary:v5];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10010796C;
  v8[3] = &unk_10064A1E8;
  v8[4] = self;
  [v4 openApplication:@"com.apple.Preferences" withOptions:v7 completion:v8];
}

- (id)presentationControllerForPresentedViewController:(id)controller presentingViewController:(id)viewController sourceViewController:(id)sourceViewController
{
  viewControllerCopy = viewController;
  controllerCopy = controller;
  v8 = [[ICStartupQuickNoteFirstLaunchPresentationController alloc] initWithPresentedViewController:controllerCopy presentingViewController:viewControllerCopy];

  return v8;
}

- (UIImageView)imageView
{
  WeakRetained = objc_loadWeakRetained(&self->_imageView);

  return WeakRetained;
}

- (NSLayoutConstraint)separator1HeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_separator1HeightConstraint);

  return WeakRetained;
}

- (NSLayoutConstraint)separator2HeightConstraint
{
  WeakRetained = objc_loadWeakRetained(&self->_separator2HeightConstraint);

  return WeakRetained;
}

- (UILabel)titleLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_titleLabel);

  return WeakRetained;
}

- (UILabel)messageLabel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageLabel);

  return WeakRetained;
}

- (UIView)seperator1
{
  WeakRetained = objc_loadWeakRetained(&self->_seperator1);

  return WeakRetained;
}

- (UIView)seperator2
{
  WeakRetained = objc_loadWeakRetained(&self->_seperator2);

  return WeakRetained;
}

@end