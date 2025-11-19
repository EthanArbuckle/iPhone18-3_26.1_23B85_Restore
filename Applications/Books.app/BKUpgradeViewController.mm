@interface BKUpgradeViewController
- (BKUpgradeViewController)initWithCoder:(id)a3;
- (BKUpgradeViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (int64_t)_computedUserInterfaceStyle;
- (int64_t)preferredStatusBarStyle;
- (unint64_t)supportedInterfaceOrientations;
- (void)_setupSmartInvert;
- (void)_smartInvertDidChange:(id)a3;
- (void)_startAnimating;
- (void)dealloc;
- (void)viewDidLoad;
@end

@implementation BKUpgradeViewController

- (void)_setupSmartInvert
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_smartInvertDidChange:" name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  v4 = [(BKUpgradeViewController *)self _computedUserInterfaceStyle];

  [(BKUpgradeViewController *)self setOverrideUserInterfaceStyle:v4];
}

- (int64_t)_computedUserInterfaceStyle
{
  if (UIAccessibilityIsInvertColorsEnabled())
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

- (void)viewDidLoad
{
  v17.receiver = self;
  v17.super_class = BKUpgradeViewController;
  [(BKUpgradeViewController *)&v17 viewDidLoad];
  [(BKUpgradeViewController *)self setNeedsStatusBarAppearanceUpdate];
  v3 = +[UIColor bc_booksBackground];
  v4 = [(BKUpgradeViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
  activityView = self->_activityView;
  self->_activityView = v5;

  [(UIActivityIndicatorView *)self->_activityView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIActivityIndicatorView *)self->_activityView setHidden:1];
  v7 = [(BKUpgradeViewController *)self view];
  [v7 addSubview:self->_activityView];

  v8 = [(UIActivityIndicatorView *)self->_activityView centerXAnchor];
  v9 = [(BKUpgradeViewController *)self view];
  v10 = [v9 centerXAnchor];
  v11 = [v8 constraintEqualToAnchor:v10];
  v18[0] = v11;
  v12 = [(UIActivityIndicatorView *)self->_activityView centerYAnchor];
  v13 = [(BKUpgradeViewController *)self view];
  v14 = [v13 centerYAnchor];
  v15 = [v12 constraintEqualToAnchor:v14];
  v18[1] = v15;
  v16 = [NSArray arrayWithObjects:v18 count:2];
  [NSLayoutConstraint activateConstraints:v16];

  [(BKUpgradeViewController *)self performSelector:"_startAnimating" withObject:0 afterDelay:2.0];
}

- (int64_t)preferredStatusBarStyle
{
  v2 = [(BKUpgradeViewController *)self traitCollection];
  v3 = [v2 userInterfaceStyle] == 2;

  return v3;
}

- (unint64_t)supportedInterfaceOrientations
{
  if (isPad())
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (BKUpgradeViewController)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = BKUpgradeViewController;
  v3 = [(BKUpgradeViewController *)&v6 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    [(BKUpgradeViewController *)v3 _setupSmartInvert];
  }

  return v4;
}

- (BKUpgradeViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v7.receiver = self;
  v7.super_class = BKUpgradeViewController;
  v4 = [(BKUpgradeViewController *)&v7 initWithNibName:a3 bundle:a4];
  v5 = v4;
  if (v4)
  {
    [(BKUpgradeViewController *)v4 _setupSmartInvert];
  }

  return v5;
}

- (void)dealloc
{
  [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"_startAnimating" object:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIAccessibilityInvertColorsStatusDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = BKUpgradeViewController;
  [(BKUpgradeViewController *)&v4 dealloc];
}

- (void)_startAnimating
{
  [(UIActivityIndicatorView *)self->_activityView setHidden:0];
  activityView = self->_activityView;

  [(UIActivityIndicatorView *)activityView startAnimating];
}

- (void)_smartInvertDidChange:(id)a3
{
  v5 = a3;
  if (+[NSThread isMainThread])
  {
    [(BKUpgradeViewController *)self setOverrideUserInterfaceStyle:[(BKUpgradeViewController *)self _computedUserInterfaceStyle]];
  }

  else
  {
    [(BKUpgradeViewController *)self performSelectorOnMainThread:a2 withObject:v5 waitUntilDone:0];
  }
}

@end