@interface ICStartupQuickNoteFirstLaunchViewController
- (NSLayoutConstraint)separator1HeightConstraint;
- (NSLayoutConstraint)separator2HeightConstraint;
- (UIImageView)imageView;
- (UILabel)messageLabel;
- (UILabel)titleLabel;
- (UIView)seperator1;
- (UIView)seperator2;
- (id)initStartedWithPencil:(BOOL)a3 launchBlock:(id)a4;
- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5;
- (void)okAction:(id)a3;
- (void)settingsAction:(id)a3;
- (void)viewDidLoad;
@end

@implementation ICStartupQuickNoteFirstLaunchViewController

- (id)initStartedWithPencil:(BOOL)a3 launchBlock:(id)a4
{
  v4 = a3;
  v6 = a4;
  v10.receiver = self;
  v10.super_class = ICStartupQuickNoteFirstLaunchViewController;
  v7 = [(ICStartupQuickNoteFirstLaunchViewController *)&v10 init];
  v8 = v7;
  if (v7)
  {
    [(ICStartupQuickNoteFirstLaunchViewController *)v7 setStartedWithPencil:v4];
    [(ICStartupQuickNoteFirstLaunchViewController *)v8 setLaunchBlock:v6];
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
  v3 = [(ICStartupQuickNoteFirstLaunchViewController *)self view];
  v4 = [v3 layer];
  [v4 setCornerRadius:12.0];

  v5 = [(ICStartupQuickNoteFirstLaunchViewController *)self imageView];
  v6 = [v5 layer];
  [v6 setCornerRadius:12.0];

  v7 = [UIColor colorWithDynamicProvider:&stru_10064A1C0];
  v8 = [(ICStartupQuickNoteFirstLaunchViewController *)self view];
  [v8 setBackgroundColor:v7];

  v9 = [(ICStartupQuickNoteFirstLaunchViewController *)self view];
  [v9 ic_backingScaleFactor];
  v11 = v10;

  if (v11 > 1.0)
  {
    v12 = 1.0 / v11;
    v13 = [(ICStartupQuickNoteFirstLaunchViewController *)self separator1HeightConstraint];
    [v13 setConstant:v12];

    v14 = [(ICStartupQuickNoteFirstLaunchViewController *)self separator2HeightConstraint];
    [v14 setConstant:v12];
  }

  v15 = +[UIColor labelColor];
  v16 = [(ICStartupQuickNoteFirstLaunchViewController *)self imageView];
  [v16 setTintColor:v15];

  v17 = +[UIColor labelColor];
  v18 = [(ICStartupQuickNoteFirstLaunchViewController *)self titleLabel];
  [v18 setTextColor:v17];

  v19 = +[UIColor labelColor];
  v20 = [(ICStartupQuickNoteFirstLaunchViewController *)self messageLabel];
  [v20 setTextColor:v19];

  v21 = +[UIColor tableSeparatorLightColor];
  v22 = [(ICStartupQuickNoteFirstLaunchViewController *)self seperator1];
  [v22 setBackgroundColor:v21];

  v23 = +[UIColor tableSeparatorLightColor];
  v24 = [(ICStartupQuickNoteFirstLaunchViewController *)self seperator2];
  [v24 setBackgroundColor:v23];
}

- (void)okAction:(id)a3
{
  [(ICStartupQuickNoteFirstLaunchViewController *)self dismissViewControllerAnimated:1 completion:0];
  v4 = [(ICStartupQuickNoteFirstLaunchViewController *)self launchBlock];
  v4[2](v4, 0);

  [(ICStartupQuickNoteFirstLaunchViewController *)self setLaunchBlock:0];
}

- (void)settingsAction:(id)a3
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

- (id)presentationControllerForPresentedViewController:(id)a3 presentingViewController:(id)a4 sourceViewController:(id)a5
{
  v6 = a4;
  v7 = a3;
  v8 = [[ICStartupQuickNoteFirstLaunchPresentationController alloc] initWithPresentedViewController:v7 presentingViewController:v6];

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