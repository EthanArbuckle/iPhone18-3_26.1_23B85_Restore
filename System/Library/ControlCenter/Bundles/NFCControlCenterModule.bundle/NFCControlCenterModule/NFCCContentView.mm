@interface NFCCContentView
- (NFCCContentView)initWithFrame:(CGRect)frame;
- (NFCCContentViewDelegate)delegate;
- (double)preferredExpandedContentHeightForWidth:(double)width;
- (void)_setUp;
- (void)_setUpSettingsViewIfNeeded;
- (void)_turnOnNFCButtonTapped;
- (void)updateOrientationIfNeeded;
@end

@implementation NFCCContentView

- (NFCCContentView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NFCCContentView;
  v3 = [(NFCCContentView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NFCCContentView *)v3 _setUp];
    v5 = v4;
  }

  return v4;
}

- (void)_setUp
{
  layer = [(NFCCContentView *)self layer];
  [layer setAllowsGroupBlending:0];

  v4 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v8 = [v4 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  lighteningBackgroundView = self->_lighteningBackgroundView;
  self->_lighteningBackgroundView = v8;

  v10 = [UIColor colorWithWhite:0.05 alpha:1.0];
  [(UIView *)self->_lighteningBackgroundView setBackgroundColor:v10];

  v11 = kCAFilterLightenBlendMode;
  layer2 = [(UIView *)self->_lighteningBackgroundView layer];
  [layer2 setCompositingFilter:v11];

  [(UIView *)self->_lighteningBackgroundView setAutoresizingMask:18];
  [(NFCCContentView *)self addSubview:self->_lighteningBackgroundView];
  height = [[NFCCStatusView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  statusView = self->_statusView;
  self->_statusView = height;

  [(NFCCStatusView *)self->_statusView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCContentView *)self addSubview:self->_statusView];
  [(NFCCContentView *)self _moduleStateDidChangeAnimated:0];
  heightAnchor = [(NFCCContentView *)self heightAnchor];
  v16 = [heightAnchor constraintGreaterThanOrEqualToConstant:169.0];

  LODWORD(v17) = 1132068864;
  v18 = v16;
  v29 = v16;
  [v16 setPriority:v17];
  leadingAnchor = [(NFCCStatusView *)self->_statusView leadingAnchor];
  leadingAnchor2 = [(NFCCContentView *)self leadingAnchor];
  v35 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v38[0] = v35;
  centerYAnchor = [(NFCCStatusView *)self->_statusView centerYAnchor];
  centerYAnchor2 = [(NFCCContentView *)self centerYAnchor];
  v32 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v38[1] = v32;
  topAnchor = [(NFCCStatusView *)self->_statusView topAnchor];
  topAnchor2 = [(NFCCContentView *)self topAnchor];
  v19 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
  v38[2] = v19;
  trailingAnchor = [(NFCCContentView *)self trailingAnchor];
  trailingAnchor2 = [(NFCCStatusView *)self->_statusView trailingAnchor];
  v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v38[3] = v22;
  bottomAnchor = [(NFCCContentView *)self bottomAnchor];
  bottomAnchor2 = [(NFCCStatusView *)self->_statusView bottomAnchor];
  v25 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
  v38[4] = v25;
  v38[5] = v18;
  heightAnchor2 = [(NFCCContentView *)self heightAnchor];
  v27 = [heightAnchor2 constraintGreaterThanOrEqualToConstant:120.0];
  v38[6] = v27;
  v28 = [NSArray arrayWithObjects:v38 count:7];
  [NSLayoutConstraint activateConstraints:v28];
}

- (void)_setUpSettingsViewIfNeeded
{
  if (!self->_settingsView)
  {
    v3 = [[NFCCSettingsView alloc] initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
    settingsView = self->_settingsView;
    self->_settingsView = v3;

    turnOnNFCButton = [(NFCCSettingsView *)self->_settingsView turnOnNFCButton];
    [turnOnNFCButton addTarget:self action:"_turnOnNFCButtonTapped" forControlEvents:64];

    [(NFCCSettingsView *)self->_settingsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NFCCContentView *)self addSubview:self->_settingsView];
    leadingAnchor = [(NFCCSettingsView *)self->_settingsView leadingAnchor];
    leadingAnchor2 = [(NFCCContentView *)self leadingAnchor];
    v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v19[0] = v16;
    topAnchor = [(NFCCSettingsView *)self->_settingsView topAnchor];
    topAnchor2 = [(NFCCContentView *)self topAnchor];
    v8 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v19[1] = v8;
    trailingAnchor = [(NFCCContentView *)self trailingAnchor];
    trailingAnchor2 = [(NFCCSettingsView *)self->_settingsView trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v19[2] = v11;
    bottomAnchor = [(NFCCContentView *)self bottomAnchor];
    bottomAnchor2 = [(NFCCSettingsView *)self->_settingsView bottomAnchor];
    v14 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v19[3] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:4];
    [NSLayoutConstraint activateConstraints:v15];
  }
}

- (double)preferredExpandedContentHeightForWidth:(double)width
{
  [(NFCCStatusView *)self->_statusView systemLayoutSizeFittingSize:width, 0.0];
  v6 = v5;
  [(NFCCSettingsView *)self->_settingsView systemLayoutSizeFittingSize:width, 0.0];
  return fmax(fmax(v6, v7), 169.0);
}

- (void)updateOrientationIfNeeded
{
  [(NFCCStatusView *)self->_statusView updateOrientationIfNeeded];
  settingsView = self->_settingsView;

  [(NFCCSettingsView *)settingsView updateOrientationIfNeeded];
}

- (void)_turnOnNFCButtonTapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained turnOnNFCButtonTapped];
}

- (NFCCContentViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end