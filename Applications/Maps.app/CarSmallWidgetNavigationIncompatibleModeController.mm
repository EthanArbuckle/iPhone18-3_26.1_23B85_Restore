@interface CarSmallWidgetNavigationIncompatibleModeController
- (ChromeViewController)chromeViewController;
- (void)_displayIncompatibilityMessage;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation CarSmallWidgetNavigationIncompatibleModeController

- (ChromeViewController)chromeViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_chromeViewController);

  return WeakRetained;
}

- (void)_displayIncompatibilityMessage
{
  v7 = +[MNNavigationService sharedService];
  if ([v7 desiredTransportType])
  {
    v3 = [v7 desiredTransportType];
    if (v3 > 5)
    {
      v4 = 1;
    }

    else
    {
      v4 = qword_1012160D0[v3];
    }

    v5 = sub_100FB2100(v4);
    v6 = [v5 objectForKeyedSubscript:@"kMapsInterruptionTitle"];
    [(UILabel *)self->_incompatibleLabel setText:v6];
  }

  else
  {
    v5 = sub_100FB2098();
    [(UILabel *)self->_incompatibleLabel setText:v5];
  }
}

- (void)viewDidLoad
{
  v13.receiver = self;
  v13.super_class = CarSmallWidgetNavigationIncompatibleModeController;
  [(CarSmallWidgetNavigationIncompatibleModeController *)&v13 viewDidLoad];
  v3 = [(CarSmallWidgetNavigationIncompatibleModeController *)self view];
  [v3 setAccessibilityIdentifier:@"CarSmallWidgetNavigationIncompatibleView"];

  [(UILabel *)self->_incompatibleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = [UIFont systemFontOfSize:17.0];
  [(UILabel *)self->_incompatibleLabel setFont:v4];

  [(UILabel *)self->_incompatibleLabel setAdjustsFontSizeToFitWidth:1];
  [(UILabel *)self->_incompatibleLabel setMinimumScaleFactor:0.600000024];
  [(UILabel *)self->_incompatibleLabel setNumberOfLines:0];
  [(UILabel *)self->_incompatibleLabel setTextAlignment:1];
  v5 = +[UIColor labelColor];
  [(UILabel *)self->_incompatibleLabel setTextColor:v5];

  [(UILabel *)self->_incompatibleLabel setAccessibilityIdentifier:@"IncompatibleLabel"];
  v6 = [(CarSmallWidgetNavigationIncompatibleModeController *)self view];
  [v6 addSubview:self->_incompatibleLabel];

  incompatibleLabel = self->_incompatibleLabel;
  v8 = [(CarSmallWidgetNavigationIncompatibleModeController *)self view];
  v9 = [v8 safeAreaLayoutGuide];
  LODWORD(v10) = 1148846080;
  v11 = [(UILabel *)incompatibleLabel _maps_constraintsEqualToEdgesOfLayoutGuide:v9 insets:6.0 priority:6.0, 6.0, 6.0, v10];
  v12 = [v11 allConstraints];
  [NSLayoutConstraint activateConstraints:v12];

  [(CarSmallWidgetNavigationIncompatibleModeController *)self _displayIncompatibilityMessage];
}

- (void)loadView
{
  v5.receiver = self;
  v5.super_class = CarSmallWidgetNavigationIncompatibleModeController;
  [(CarSmallWidgetNavigationIncompatibleModeController *)&v5 loadView];
  v3 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  incompatibleLabel = self->_incompatibleLabel;
  self->_incompatibleLabel = v3;
}

@end