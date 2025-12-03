@interface PBADataRecoveryProgressViewController
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)setProgress:(double)progress;
- (void)setStatusText:(id)text;
- (void)viewDidLoad;
@end

@implementation PBADataRecoveryProgressViewController

- (void)loadView
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  v8 = [[SBUIAppleLogoView alloc] initWithFrame:1 progressBarVisible:{CGRectZero.origin.x, y, width, height}];
  appleLogoView = self->_appleLogoView;
  self->_appleLogoView = v8;

  [(SBUIAppleLogoView *)self->_appleLogoView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:self->_appleLogoView];
  leadingAnchor = [v7 leadingAnchor];
  leadingAnchor2 = [(SBUIAppleLogoView *)self->_appleLogoView leadingAnchor];
  v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v23[0] = v20;
  trailingAnchor = [v7 trailingAnchor];
  trailingAnchor2 = [(SBUIAppleLogoView *)self->_appleLogoView trailingAnchor];
  v10 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v23[1] = v10;
  topAnchor = [v7 topAnchor];
  topAnchor2 = [(SBUIAppleLogoView *)self->_appleLogoView topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v23[2] = v13;
  bottomAnchor = [v7 bottomAnchor];
  bottomAnchor2 = [(SBUIAppleLogoView *)self->_appleLogoView bottomAnchor];
  v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v23[3] = v16;
  v17 = [NSArray arrayWithObjects:v23 count:4];
  [NSLayoutConstraint activateConstraints:v17];

  [(PBADataRecoveryProgressViewController *)self setView:v7];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = PBADataRecoveryProgressViewController;
  [(PBADataRecoveryProgressViewController *)&v4 viewDidLoad];
  progress = self->_progress;
  *&progress = progress;
  [(SBUIAppleLogoView *)self->_appleLogoView setProgress:progress];
  [(SBUIAppleLogoView *)self->_appleLogoView setStatusText:self->_statusText];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = PBADataRecoveryProgressViewController;
  [(PBADataRecoveryProgressViewController *)&v2 didReceiveMemoryWarning];
}

- (void)setProgress:(double)progress
{
  self->_progress = progress;
  *&progress = progress;
  [(SBUIAppleLogoView *)self->_appleLogoView setProgress:progress];
}

- (void)setStatusText:(id)text
{
  objc_storeStrong(&self->_statusText, text);
  textCopy = text;
  [(SBUIAppleLogoView *)self->_appleLogoView setStatusText:textCopy];
}

@end