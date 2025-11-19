@interface NFCCContentView
- (NFCCContentView)initWithFrame:(CGRect)a3;
- (NFCCContentViewDelegate)delegate;
- (double)preferredExpandedContentHeightForWidth:(double)a3;
- (void)_setUp;
- (void)_setUpSettingsViewIfNeeded;
- (void)_turnOnNFCButtonTapped;
- (void)updateOrientationIfNeeded;
@end

@implementation NFCCContentView

- (NFCCContentView)initWithFrame:(CGRect)a3
{
  v7.receiver = self;
  v7.super_class = NFCCContentView;
  v3 = [(NFCCContentView *)&v7 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(NFCCContentView *)self layer];
  [v3 setAllowsGroupBlending:0];

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
  v12 = [(UIView *)self->_lighteningBackgroundView layer];
  [v12 setCompositingFilter:v11];

  [(UIView *)self->_lighteningBackgroundView setAutoresizingMask:18];
  [(NFCCContentView *)self addSubview:self->_lighteningBackgroundView];
  v13 = [[NFCCStatusView alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  statusView = self->_statusView;
  self->_statusView = v13;

  [(NFCCStatusView *)self->_statusView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCContentView *)self addSubview:self->_statusView];
  [(NFCCContentView *)self _moduleStateDidChangeAnimated:0];
  v15 = [(NFCCContentView *)self heightAnchor];
  v16 = [v15 constraintGreaterThanOrEqualToConstant:169.0];

  LODWORD(v17) = 1132068864;
  v18 = v16;
  v29 = v16;
  [v16 setPriority:v17];
  v37 = [(NFCCStatusView *)self->_statusView leadingAnchor];
  v36 = [(NFCCContentView *)self leadingAnchor];
  v35 = [v37 constraintEqualToAnchor:v36];
  v38[0] = v35;
  v34 = [(NFCCStatusView *)self->_statusView centerYAnchor];
  v33 = [(NFCCContentView *)self centerYAnchor];
  v32 = [v34 constraintEqualToAnchor:v33];
  v38[1] = v32;
  v31 = [(NFCCStatusView *)self->_statusView topAnchor];
  v30 = [(NFCCContentView *)self topAnchor];
  v19 = [v31 constraintGreaterThanOrEqualToAnchor:v30];
  v38[2] = v19;
  v20 = [(NFCCContentView *)self trailingAnchor];
  v21 = [(NFCCStatusView *)self->_statusView trailingAnchor];
  v22 = [v20 constraintEqualToAnchor:v21];
  v38[3] = v22;
  v23 = [(NFCCContentView *)self bottomAnchor];
  v24 = [(NFCCStatusView *)self->_statusView bottomAnchor];
  v25 = [v23 constraintGreaterThanOrEqualToAnchor:v24];
  v38[4] = v25;
  v38[5] = v18;
  v26 = [(NFCCContentView *)self heightAnchor];
  v27 = [v26 constraintGreaterThanOrEqualToConstant:120.0];
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

    v5 = [(NFCCSettingsView *)self->_settingsView turnOnNFCButton];
    [v5 addTarget:self action:"_turnOnNFCButtonTapped" forControlEvents:64];

    [(NFCCSettingsView *)self->_settingsView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(NFCCContentView *)self addSubview:self->_settingsView];
    v18 = [(NFCCSettingsView *)self->_settingsView leadingAnchor];
    v17 = [(NFCCContentView *)self leadingAnchor];
    v16 = [v18 constraintEqualToAnchor:v17];
    v19[0] = v16;
    v6 = [(NFCCSettingsView *)self->_settingsView topAnchor];
    v7 = [(NFCCContentView *)self topAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v19[1] = v8;
    v9 = [(NFCCContentView *)self trailingAnchor];
    v10 = [(NFCCSettingsView *)self->_settingsView trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v19[2] = v11;
    v12 = [(NFCCContentView *)self bottomAnchor];
    v13 = [(NFCCSettingsView *)self->_settingsView bottomAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v19[3] = v14;
    v15 = [NSArray arrayWithObjects:v19 count:4];
    [NSLayoutConstraint activateConstraints:v15];
  }
}

- (double)preferredExpandedContentHeightForWidth:(double)a3
{
  [(NFCCStatusView *)self->_statusView systemLayoutSizeFittingSize:a3, 0.0];
  v6 = v5;
  [(NFCCSettingsView *)self->_settingsView systemLayoutSizeFittingSize:a3, 0.0];
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