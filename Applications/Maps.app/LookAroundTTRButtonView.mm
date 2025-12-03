@interface LookAroundTTRButtonView
- (LookAroundTTRButtonView)init;
- (LookAroundTTRButtonViewDelegate)delegate;
- (id)contentView;
- (void)_setupConstraints;
- (void)_setupViews;
- (void)buttonTapped:(id)tapped;
@end

@implementation LookAroundTTRButtonView

- (LookAroundTTRButtonViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(LookAroundTTRButtonView *)self delegate];
  [delegate lookAroundTTRButtonView:self didTapTTRButton:tappedCopy];
}

- (void)_setupConstraints
{
  blurView = [(LookAroundTTRButtonView *)self blurView];
  button = [(LookAroundTTRButtonView *)self button];
  topAnchor = [blurView topAnchor];
  topAnchor2 = [(LookAroundTTRButtonView *)self topAnchor];
  v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v36[0] = v33;
  bottomAnchor = [blurView bottomAnchor];
  bottomAnchor2 = [(LookAroundTTRButtonView *)self bottomAnchor];
  v29 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v36[1] = v29;
  v31 = blurView;
  leadingAnchor = [blurView leadingAnchor];
  leadingAnchor2 = [(LookAroundTTRButtonView *)self leadingAnchor];
  v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v36[2] = v26;
  trailingAnchor = [blurView trailingAnchor];
  trailingAnchor2 = [(LookAroundTTRButtonView *)self trailingAnchor];
  v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v36[3] = v23;
  topAnchor3 = [button topAnchor];
  contentView = [(LookAroundTTRButtonView *)self contentView];
  topAnchor4 = [contentView topAnchor];
  v18 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v36[4] = v18;
  bottomAnchor3 = [button bottomAnchor];
  contentView2 = [(LookAroundTTRButtonView *)self contentView];
  bottomAnchor4 = [contentView2 bottomAnchor];
  v5 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v36[5] = v5;
  v22 = button;
  leadingAnchor3 = [button leadingAnchor];
  contentView3 = [(LookAroundTTRButtonView *)self contentView];
  leadingAnchor4 = [contentView3 leadingAnchor];
  v9 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v36[6] = v9;
  trailingAnchor3 = [button trailingAnchor];
  contentView4 = [(LookAroundTTRButtonView *)self contentView];
  trailingAnchor4 = [contentView4 trailingAnchor];
  v13 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v36[7] = v13;
  v14 = [NSArray arrayWithObjects:v36 count:8];
  [NSLayoutConstraint activateConstraints:v14];
}

- (void)_setupViews
{
  v12 = [UIImage imageNamed:@"LookAroundTTR"];
  v3 = [MapsTheme visualEffectViewAllowingBlur:1];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(LookAroundTTRButtonView *)self addSubview:v3];
  v4 = +[UIColor clearColor];
  [(LookAroundTTRButtonView *)self setBackgroundColor:v4];

  [v12 size];
  v6 = v5 * 0.5;
  layer = [(LookAroundTTRButtonView *)self layer];
  [layer setCornerRadius:v6];

  layer2 = [(LookAroundTTRButtonView *)self layer];
  [layer2 setMasksToBounds:1];

  [(LookAroundTTRButtonView *)self setBlurView:v3];
  v9 = [UIButton buttonWithType:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v9 addTarget:self action:"buttonTapped:" forControlEvents:64];
  v10 = [UIImage imageNamed:@"LookAroundTTR"];
  [v9 setImage:v10 forState:0];

  contentView = [(LookAroundTTRButtonView *)self contentView];
  [contentView addSubview:v9];

  [(LookAroundTTRButtonView *)self setButton:v9];
}

- (LookAroundTTRButtonView)init
{
  v5.receiver = self;
  v5.super_class = LookAroundTTRButtonView;
  v2 = [(LookAroundTTRButtonView *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(LookAroundTTRButtonView *)v2 setAccessibilityIdentifier:@"LookAroundTTRButtonView"];
    [(LookAroundTTRButtonView *)v3 _setupViews];
    [(LookAroundTTRButtonView *)v3 _setupConstraints];
  }

  return v3;
}

- (id)contentView
{
  blurView = [(LookAroundTTRButtonView *)self blurView];
  contentView = [blurView contentView];

  return contentView;
}

@end