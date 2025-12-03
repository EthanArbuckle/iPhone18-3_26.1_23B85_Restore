@interface FlyoverBannerView
- (CGSize)intrinsicContentSize;
- (FlyoverBannerView)initWithDelegate:(id)delegate;
- (FlyoverBannerViewDelegate)delegate;
- (void)setLocationString:(id)string;
- (void)stopButtonPressed;
@end

@implementation FlyoverBannerView

- (FlyoverBannerViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)stopButtonPressed
{
  delegate = [(FlyoverBannerView *)self delegate];
  [delegate stopFlyoverRequestedByBanner:self];
}

- (void)setLocationString:(id)string
{
  stringCopy = string;
  objc_storeStrong(&self->_locationString, string);
  if ([stringCopy length])
  {
    v6 = +[NSBundle mainBundle];
    v7 = [v6 localizedStringForKey:@"Flyover [banner title]" value:@"localized string not found" table:0];
    stringCopy = [NSString stringWithFormat:@"%@ - %@", v7, stringCopy];
  }

  else
  {
    v6 = +[NSBundle mainBundle];
    stringCopy = [v6 localizedStringForKey:@"Flyover [banner title]" value:@"localized string not found" table:0];
  }

  textLabel = [(FlyoverBannerView *)self textLabel];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100F61D7C;
  v11[3] = &unk_101661A90;
  v11[4] = self;
  v12 = stringCopy;
  v10 = stringCopy;
  [UIView transitionWithView:textLabel duration:5242880 options:v11 animations:0 completion:0.300000012];
}

- (CGSize)intrinsicContentSize
{
  v2 = 360.0;
  v3 = 26.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (FlyoverBannerView)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v54.receiver = self;
  v54.super_class = FlyoverBannerView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(FlyoverBannerView *)&v54 initWithFrame:CGRectZero.origin.x, y, width, height];
  v9 = height;
  if (height)
  {
    objc_storeWeak(&height->_delegate, delegateCopy);
    [(FlyoverBannerView *)v9 setAccessibilityIdentifier:@"FlyoverBannerView"];
    v10 = [UIVisualEffectView alloc];
    [UIBlurEffect effectWithStyle:2];
    v11 = v53 = delegateCopy;
    v12 = [v10 initWithEffect:v11];
    effectView = v9->_effectView;
    v9->_effectView = v12;

    [(UIVisualEffectView *)v9->_effectView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIVisualEffectView *)v9->_effectView _setCornerRadius:1 continuous:15 maskedCorners:13.0];
    [(UIVisualEffectView *)v9->_effectView setAccessibilityIdentifier:@"FlyoverBannerEffectView"];
    [(FlyoverBannerView *)v9 addSubview:v9->_effectView];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    textLabel = v9->_textLabel;
    v9->_textLabel = v14;

    [(UILabel *)v9->_textLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = +[NSBundle mainBundle];
    v17 = [v16 localizedStringForKey:@"Flyover [banner title]" value:@"localized string not found" table:0];
    [(UILabel *)v9->_textLabel setText:v17];

    [(UILabel *)v9->_textLabel setAccessibilityIdentifier:@"FlyoverBannerEffectTextLabel"];
    [(FlyoverBannerView *)v9 addSubview:v9->_textLabel];
    v18 = [UIImage systemImageNamed:@"multiply.circle.fill"];
    v52 = [v18 imageWithRenderingMode:2];

    v19 = [UIButton buttonWithType:0];
    stopButton = v9->_stopButton;
    v9->_stopButton = v19;

    [(UIButton *)v9->_stopButton setTranslatesAutoresizingMaskIntoConstraints:0];
    v21 = +[UIColor whiteColor];
    [(UIButton *)v9->_stopButton setTintColor:v21];

    [(UIButton *)v9->_stopButton addTarget:v9 action:"stopButtonPressed" forControlEvents:64];
    [(UIButton *)v9->_stopButton setImage:v52 forState:0];
    [(UIButton *)v9->_stopButton setAccessibilityIdentifier:@"FlyoverBannerEffectStopButton"];
    [(FlyoverBannerView *)v9 addSubview:v9->_stopButton];
    centerXAnchor = [(UIVisualEffectView *)v9->_effectView centerXAnchor];
    centerXAnchor2 = [(FlyoverBannerView *)v9 centerXAnchor];
    v49 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v55[0] = v49;
    centerYAnchor = [(UIVisualEffectView *)v9->_effectView centerYAnchor];
    centerYAnchor2 = [(FlyoverBannerView *)v9 centerYAnchor];
    v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v55[1] = v46;
    heightAnchor = [(UIVisualEffectView *)v9->_effectView heightAnchor];
    heightAnchor2 = [(FlyoverBannerView *)v9 heightAnchor];
    v43 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    v55[2] = v43;
    widthAnchor = [(UIVisualEffectView *)v9->_effectView widthAnchor];
    widthAnchor2 = [(FlyoverBannerView *)v9 widthAnchor];
    v40 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v55[3] = v40;
    leadingAnchor = [(UILabel *)v9->_textLabel leadingAnchor];
    leadingAnchor2 = [(FlyoverBannerView *)v9 leadingAnchor];
    v37 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:13.0];
    v55[4] = v37;
    centerYAnchor3 = [(UILabel *)v9->_textLabel centerYAnchor];
    centerYAnchor4 = [(FlyoverBannerView *)v9 centerYAnchor];
    v34 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v55[5] = v34;
    trailingAnchor = [(UIButton *)v9->_stopButton trailingAnchor];
    trailingAnchor2 = [(FlyoverBannerView *)v9 trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-6.0];
    v55[6] = v22;
    centerYAnchor5 = [(UIButton *)v9->_stopButton centerYAnchor];
    centerYAnchor6 = [(FlyoverBannerView *)v9 centerYAnchor];
    v25 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v55[7] = v25;
    heightAnchor3 = [(UIButton *)v9->_stopButton heightAnchor];
    v27 = [heightAnchor3 constraintEqualToConstant:20.0];
    v55[8] = v27;
    widthAnchor3 = [(UIButton *)v9->_stopButton widthAnchor];
    v29 = [widthAnchor3 constraintEqualToConstant:20.0];
    v55[9] = v29;
    v30 = [NSArray arrayWithObjects:v55 count:10];
    [NSLayoutConstraint activateConstraints:v30];

    delegateCopy = v53;
  }

  return v9;
}

@end