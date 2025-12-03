@interface TVLatencyColorimeterSetupProgressViewController
- (void)_handleDismissButton;
- (void)_prepareTrainingAnimation;
- (void)handleProgressEvent:(unsigned int)event;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation TVLatencyColorimeterSetupProgressViewController

- (void)_prepareTrainingAnimation
{
  [(UIView *)self->super._animationContainerView setBackgroundColor:0];
  [(UIView *)self->super._animationContainerView setClipsToBounds:1];
  trainingView = self->super._trainingView;
  if (!trainingView)
  {
    v4 = [TVLatencyColorimeterTrainingView alloc];
    [(UIView *)self->super._animationContainerView bounds];
    v5 = [(TVLatencyColorimeterTrainingView *)v4 initWithFrame:?];
    v6 = self->super._trainingView;
    self->super._trainingView = v5;

    CGAffineTransformMakeScale(&v9, 0.609756098, 0.609756098);
    v7 = self->super._trainingView;
    v8 = v9;
    [(TVLatencyColorimeterTrainingView *)v7 setTransform:&v8];
    [(TVLatencyColorimeterTrainingView *)self->super._trainingView setUserInteractionEnabled:0];
    [(UIView *)self->super._animationContainerView addSubview:self->super._trainingView];
    trainingView = self->super._trainingView;
  }

  [(TVLatencyColorimeterTrainingView *)trainingView setInitialState];
  [(TVLatencyColorimeterTrainingView *)self->super._trainingView setStateName:@"State01_TVIcon"];
}

- (void)handleProgressEvent:(unsigned int)event
{
  if (event == 278)
  {
    v5 = +[NSBundle mainBundle];
    v6 = sub_1001279D0(v5, @"Localizable-TVLatencyColorimeter", @"TVL_COLOR_TURN_PHONE_TITLE");
    [(TVLatencyColorimeterSetupProgressViewController *)self setTitle:v6];

    v7 = +[NSBundle mainBundle];
    v8 = sub_1001279D0(v7, @"Localizable-TVLatencyColorimeter", @"TVL_COLOR_TURN_PHONE_SUBTITLE");
    [(TVLatencyColorimeterSetupProgressViewController *)self setSubtitle:v8];

    trainingView = self->super._trainingView;

    [(TVLatencyColorimeterTrainingView *)trainingView animateToStateName:@"State03_Phone_Animation_Loop" completionHandler:&stru_100194F78];
  }
}

- (void)_handleDismissButton
{
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  [mainController dismiss:5];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v5.receiver = self;
  v5.super_class = TVLatencyColorimeterSetupProgressViewController;
  [(TVLatencyColorimeterSetupProgressViewController *)&v5 viewDidDisappear:disappearCopy];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  if (dword_1001BEA68 <= 30 && (dword_1001BEA68 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v9.receiver = self;
  v9.super_class = TVLatencyColorimeterSetupProgressViewController;
  [(TVLatencyColorimeterSetupProgressViewController *)&v9 viewWillAppear:appearCopy];
  [(TVLatencyColorimeterSetupProgressViewController *)self _prepareTrainingAnimation];
  [(TVLatencyColorimeterTrainingView *)self->super._trainingView animateToStateName:@"State02_Phone_Animation_In" completionHandler:&stru_100194F58];
  mainController = [(TVLatencyColorimeterSetupBaseViewController *)self mainController];
  testFlags = [mainController testFlags];

  if (testFlags)
  {
    v7 = dispatch_time(0, 3000000000);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001032B4;
    block[3] = &unk_100195AC0;
    block[4] = self;
    dispatch_after(v7, &_dispatch_main_q, block);
  }
}

- (void)viewDidLoad
{
  v33.receiver = self;
  v33.super_class = TVLatencyColorimeterSetupProgressViewController;
  [(TVLatencyColorimeterSetupProgressViewController *)&v33 viewDidLoad];
  [(TVLatencyColorimeterSetupProgressViewController *)self setDismissalType:1];
  objc_initWeak(&location, self);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"CANCEL" value:&stru_100195CA8 table:@"Localizable"];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_10010378C;
  v30[3] = &unk_1001958D8;
  objc_copyWeak(&v31, &location);
  v28 = [PRXAction actionWithTitle:v4 style:1 handler:v30];

  v5 = [(TVLatencyColorimeterSetupProgressViewController *)self addAction:v28];
  v6 = +[NSBundle mainBundle];
  v7 = sub_1001279D0(v6, @"Localizable-TVLatencyColorimeter", @"TVL_COLOR_TURN_PHONE_TITLE");
  [(TVLatencyColorimeterSetupProgressViewController *)self setTitle:v7];

  v8 = +[NSBundle mainBundle];
  v9 = sub_1001279D0(v8, @"Localizable-TVLatencyColorimeter", @"TVL_COLOR_TURN_PHONE_SUBTITLE");
  [(TVLatencyColorimeterSetupProgressViewController *)self setSubtitle:v9];

  contentView = [(TVLatencyColorimeterSetupProgressViewController *)self contentView];
  mainContentGuide = [contentView mainContentGuide];

  v11 = [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
  animationContainerView = self->super._animationContainerView;
  self->super._animationContainerView = v11;

  [(UIView *)self->super._animationContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  contentView2 = [(TVLatencyColorimeterSetupProgressViewController *)self contentView];
  [contentView2 addSubview:self->super._animationContainerView];

  topAnchor = [(UIView *)self->super._animationContainerView topAnchor];
  topAnchor2 = [mainContentGuide topAnchor];
  v25 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v34[0] = v25;
  bottomAnchor = [(UIView *)self->super._animationContainerView bottomAnchor];
  bottomAnchor2 = [mainContentGuide bottomAnchor];
  v15 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v34[1] = v15;
  centerXAnchor = [(UIView *)self->super._animationContainerView centerXAnchor];
  centerXAnchor2 = [mainContentGuide centerXAnchor];
  v18 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v34[2] = v18;
  heightAnchor = [(UIView *)self->super._animationContainerView heightAnchor];
  v20 = [heightAnchor constraintEqualToConstant:150.0];
  v34[3] = v20;
  widthAnchor = [(UIView *)self->super._animationContainerView widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:262.0];
  v34[4] = v22;
  v23 = [NSArray arrayWithObjects:v34 count:5];
  [NSLayoutConstraint activateConstraints:v23];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

@end