@interface NFCCSettingsView
- (NFCCSettingsView)initWithFrame:(CGRect)frame;
- (void)_contentSizeCategoryDidChange;
- (void)_setUp;
- (void)didMoveToWindow;
- (void)traitCollectionDidChange:(id)change;
- (void)updateOrientationIfNeeded;
@end

@implementation NFCCSettingsView

- (NFCCSettingsView)initWithFrame:(CGRect)frame
{
  v7.receiver = self;
  v7.super_class = NFCCSettingsView;
  v3 = [(NFCCSettingsView *)&v7 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(NFCCSettingsView *)v3 _setUp];
    v5 = v4;
  }

  return v4;
}

- (void)_setUp
{
  v3 = [UIView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [v3 initWithFrame:{CGRectZero.origin.x, y, width, height}];
  contentView = self->_contentView;
  self->_contentView = v7;

  [(UIView *)self->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(NFCCSettingsView *)self addSubview:self->_contentView];
  v9 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  titleLabel = self->_titleLabel;
  self->_titleLabel = v9;

  v11 = _BCSLocalizedString();
  [(UILabel *)self->_titleLabel setText:v11];

  [(UILabel *)self->_titleLabel setNumberOfLines:0];
  [(UILabel *)self->_titleLabel setTextAlignment:1];
  [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView addSubview:self->_titleLabel];
  height = [[NFCCPillButton alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  turnOnNFCButton = self->_turnOnNFCButton;
  self->_turnOnNFCButton = height;

  v14 = _BCSLocalizedString();
  titleLabel = [(NFCCPillButton *)self->_turnOnNFCButton titleLabel];
  [titleLabel setText:v14];

  [(NFCCPillButton *)self->_turnOnNFCButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentView addSubview:self->_turnOnNFCButton];
  [(NFCCSettingsView *)self _contentSizeCategoryDidChange];
  leadingAnchor = [(UIView *)self->_contentView leadingAnchor];
  leadingAnchor2 = [(NFCCSettingsView *)self leadingAnchor];
  v53 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v56[0] = v53;
  topAnchor = [(UIView *)self->_contentView topAnchor];
  topAnchor2 = [(NFCCSettingsView *)self topAnchor];
  v50 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:16.0];
  v56[1] = v50;
  trailingAnchor = [(NFCCSettingsView *)self trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_contentView trailingAnchor];
  v47 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:16.0];
  v56[2] = v47;
  bottomAnchor = [(NFCCSettingsView *)self bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_contentView bottomAnchor];
  v44 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:16.0];
  v56[3] = v44;
  centerYAnchor = [(UIView *)self->_contentView centerYAnchor];
  centerYAnchor2 = [(NFCCSettingsView *)self centerYAnchor];
  v41 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v56[4] = v41;
  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  topAnchor4 = [(UIView *)self->_contentView topAnchor];
  v38 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v56[5] = v38;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)self->_contentView leadingAnchor];
  v35 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v56[6] = v35;
  trailingAnchor3 = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor4 = [(UILabel *)self->_titleLabel trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v56[7] = v32;
  centerXAnchor = [(NFCCPillButton *)self->_turnOnNFCButton centerXAnchor];
  centerXAnchor2 = [(UIView *)self->_contentView centerXAnchor];
  v29 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v56[8] = v29;
  leadingAnchor5 = [(NFCCPillButton *)self->_turnOnNFCButton leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_contentView leadingAnchor];
  v26 = [leadingAnchor5 constraintGreaterThanOrEqualToAnchor:leadingAnchor6];
  v56[9] = v26;
  topAnchor5 = [(NFCCPillButton *)self->_turnOnNFCButton topAnchor];
  lastBaselineAnchor = [(UILabel *)self->_titleLabel lastBaselineAnchor];
  v17 = [topAnchor5 constraintEqualToAnchor:lastBaselineAnchor constant:24.0];
  v56[10] = v17;
  trailingAnchor5 = [(UIView *)self->_contentView trailingAnchor];
  trailingAnchor6 = [(NFCCPillButton *)self->_turnOnNFCButton trailingAnchor];
  v20 = [trailingAnchor5 constraintGreaterThanOrEqualToAnchor:trailingAnchor6];
  v56[11] = v20;
  bottomAnchor3 = [(UIView *)self->_contentView bottomAnchor];
  bottomAnchor4 = [(NFCCPillButton *)self->_turnOnNFCButton bottomAnchor];
  v23 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v56[12] = v23;
  v24 = [NSArray arrayWithObjects:v56 count:13];
  [NSLayoutConstraint activateConstraints:v24];
}

- (void)didMoveToWindow
{
  v6.receiver = self;
  v6.super_class = NFCCSettingsView;
  [(NFCCSettingsView *)&v6 didMoveToWindow];
  window = [(NFCCSettingsView *)self window];

  if (window)
  {
    v4 = [(NFCCSettingsView *)self visualStylingProviderForCategory:1];
    visualStylingProvider = self->_visualStylingProvider;
    if (v4 != visualStylingProvider)
    {
      [(MTVisualStylingProvider *)visualStylingProvider stopAutomaticallyUpdatingView:self->_titleLabel];
      objc_storeStrong(&self->_visualStylingProvider, v4);
      [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_titleLabel withStyle:1];
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v9.receiver = self;
  v9.super_class = NFCCSettingsView;
  changeCopy = change;
  [(NFCCSettingsView *)&v9 traitCollectionDidChange:changeCopy];
  preferredContentSizeCategory = [changeCopy preferredContentSizeCategory];

  traitCollection = [(NFCCSettingsView *)self traitCollection];
  preferredContentSizeCategory2 = [traitCollection preferredContentSizeCategory];
  v8 = [preferredContentSizeCategory isEqualToString:preferredContentSizeCategory2];

  if ((v8 & 1) == 0)
  {
    [(NFCCSettingsView *)self _contentSizeCategoryDidChange];
  }
}

- (void)updateOrientationIfNeeded
{
  interfaceOrientation = self->_interfaceOrientation;
  if (interfaceOrientation != [UIApp activeInterfaceOrientation])
  {
    [(NFCCSettingsView *)self _contentSizeCategoryDidChange];
  }

  turnOnNFCButton = self->_turnOnNFCButton;

  [(NFCCPillButton *)turnOnNFCButton updateOrientationIfNeeded];
}

- (void)_contentSizeCategoryDidChange
{
  traitCollection = [(NFCCSettingsView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  activeInterfaceOrientation = [UIApp activeInterfaceOrientation];
  self->_interfaceOrientation = activeInterfaceOrientation;
  if (sub_5758(preferredContentSizeCategory, activeInterfaceOrientation))
  {
    v5 = UIContentSizeCategoryAccessibilityLarge;

    v6 = v5;
  }

  else
  {
    v6 = preferredContentSizeCategory;
  }

  v9 = v6;
  v7 = [UIFont bsui_preferredFontForTextStyle:UIFontTextStyleBody hiFontStyle:8 contentSizeCategory:v6];
  [(UILabel *)self->_titleLabel setFont:v7];
}

@end