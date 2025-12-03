@interface VehicleAppCell
- (VehicleAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setApplicationRecord:(id)record;
@end

@implementation VehicleAppCell

- (void)setApplicationRecord:(id)record
{
  recordCopy = record;
  if (self->_applicationRecord != recordCopy)
  {
    v15 = recordCopy;
    objc_storeStrong(&self->_applicationRecord, record);
    bundleIdentifier = [(LSApplicationRecord *)v15 bundleIdentifier];
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _applicationIconImageForBundleIdentifier:bundleIdentifier format:2 scale:?];
    appIconView = [(VehicleAppCell *)self appIconView];
    [appIconView setImage:v8];

    localizedName = [(LSApplicationRecord *)v15 localizedName];
    appNameLabel = [(VehicleAppCell *)self appNameLabel];
    [appNameLabel setText:localizedName];

    iTunesMetadata = [(LSApplicationRecord *)v15 iTunesMetadata];
    genre = [iTunesMetadata genre];
    appDescriptionLabel = [(VehicleAppCell *)self appDescriptionLabel];
    [appDescriptionLabel setText:genre];

    recordCopy = v15;
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = VehicleAppCell;
  [(VehicleAppCell *)&v7 layoutSubviews];
  openButton = [(VehicleAppCell *)self openButton];
  [openButton frame];
  v5 = v4 * 0.5;
  openButton2 = [(VehicleAppCell *)self openButton];
  [openButton2 _setContinuousCornerRadius:v5];
}

- (void)_commonInit
{
  v3 = objc_opt_new();
  appIconView = self->_appIconView;
  self->_appIconView = v3;

  [(UIImageView *)self->_appIconView setAccessibilityIdentifier:@"AppIconView"];
  [(UIImageView *)self->_appIconView setTranslatesAutoresizingMaskIntoConstraints:0];
  v5 = objc_opt_new();
  appNameLabel = self->_appNameLabel;
  self->_appNameLabel = v5;

  [(UILabel *)self->_appNameLabel setAccessibilityIdentifier:@"AppNameLabel"];
  [(UILabel *)self->_appNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = +[UIColor labelColor];
  [(UILabel *)self->_appNameLabel setTextColor:v7];

  v8 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [(UILabel *)self->_appNameLabel setFont:v8];

  v9 = objc_opt_new();
  appDescriptionLabel = self->_appDescriptionLabel;
  self->_appDescriptionLabel = v9;

  [(UILabel *)self->_appDescriptionLabel setAccessibilityIdentifier:@"AppDescriptionLabel"];
  [(UILabel *)self->_appDescriptionLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  v11 = +[UIColor secondaryLabelColor];
  [(UILabel *)self->_appDescriptionLabel setTextColor:v11];

  v12 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  [(UILabel *)self->_appDescriptionLabel setFont:v12];

  v13 = objc_opt_new();
  openButton = self->_openButton;
  self->_openButton = v13;

  [(UIButton *)self->_openButton setAccessibilityIdentifier:@"OpenButton"];
  [(UIButton *)self->_openButton setTranslatesAutoresizingMaskIntoConstraints:0];
  v15 = self->_openButton;
  v16 = +[NSBundle mainBundle];
  v17 = [v16 localizedStringForKey:@"[Virtual Garage] Open App" value:@"localized string not found" table:0];
  [(UIButton *)v15 setTitle:v17 forState:0];

  v18 = self->_openButton;
  v19 = +[UIColor systemBlueColor];
  [(UIButton *)v18 setTitleColor:v19 forState:0];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
  titleLabel = [(UIButton *)self->_openButton titleLabel];
  [titleLabel setFont:v20];

  v22 = +[UIColor tertiarySystemFillColor];
  [(UIButton *)self->_openButton setBackgroundColor:v22];

  [(UIButton *)self->_openButton setContentEdgeInsets:10.0, 12.0, 10.0, 12.0];
  LODWORD(v23) = 1148846080;
  [(UIButton *)self->_openButton setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [(UIButton *)self->_openButton setContentHuggingPriority:0 forAxis:v24];
  contentView = [(VehicleAppCell *)self contentView];
  [contentView addSubview:self->_appIconView];

  contentView2 = [(VehicleAppCell *)self contentView];
  [contentView2 addSubview:self->_appNameLabel];

  contentView3 = [(VehicleAppCell *)self contentView];
  [contentView3 addSubview:self->_appDescriptionLabel];

  contentView4 = [(VehicleAppCell *)self contentView];
  [contentView4 addSubview:self->_openButton];

  leadingAnchor = [(UIImageView *)self->_appIconView leadingAnchor];
  contentView5 = [(VehicleAppCell *)self contentView];
  leadingAnchor2 = [contentView5 leadingAnchor];
  v65 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:16.0];
  v69[0] = v65;
  widthAnchor = [(UIImageView *)self->_appIconView widthAnchor];
  v63 = [widthAnchor constraintEqualToConstant:62.0];
  v69[1] = v63;
  centerYAnchor = [(UIImageView *)self->_appIconView centerYAnchor];
  contentView6 = [(VehicleAppCell *)self contentView];
  centerYAnchor2 = [contentView6 centerYAnchor];
  v59 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v69[2] = v59;
  heightAnchor = [(UIImageView *)self->_appIconView heightAnchor];
  v57 = [heightAnchor constraintEqualToConstant:62.0];
  v69[3] = v57;
  leadingAnchor3 = [(UILabel *)self->_appNameLabel leadingAnchor];
  trailingAnchor = [(UIImageView *)self->_appIconView trailingAnchor];
  v54 = [leadingAnchor3 constraintEqualToAnchor:trailingAnchor constant:10.0];
  v69[4] = v54;
  trailingAnchor2 = [(UILabel *)self->_appNameLabel trailingAnchor];
  leadingAnchor4 = [(UIButton *)self->_openButton leadingAnchor];
  v51 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-10.0];
  v69[5] = v51;
  topAnchor = [(UILabel *)self->_appNameLabel topAnchor];
  contentView7 = [(VehicleAppCell *)self contentView];
  topAnchor2 = [contentView7 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:30.0];
  v69[6] = v47;
  leadingAnchor5 = [(UILabel *)self->_appDescriptionLabel leadingAnchor];
  trailingAnchor3 = [(UIImageView *)self->_appIconView trailingAnchor];
  v44 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3 constant:10.0];
  v69[7] = v44;
  trailingAnchor4 = [(UILabel *)self->_appDescriptionLabel trailingAnchor];
  leadingAnchor6 = [(UIButton *)self->_openButton leadingAnchor];
  v41 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor6 constant:-10.0];
  v69[8] = v41;
  topAnchor3 = [(UILabel *)self->_appDescriptionLabel topAnchor];
  bottomAnchor = [(UILabel *)self->_appNameLabel bottomAnchor];
  v29 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:3.0];
  v69[9] = v29;
  trailingAnchor5 = [(UIButton *)self->_openButton trailingAnchor];
  contentView8 = [(VehicleAppCell *)self contentView];
  trailingAnchor6 = [contentView8 trailingAnchor];
  v33 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-16.0];
  v69[10] = v33;
  centerYAnchor3 = [(UIButton *)self->_openButton centerYAnchor];
  contentView9 = [(VehicleAppCell *)self contentView];
  centerYAnchor4 = [contentView9 centerYAnchor];
  v37 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
  v69[11] = v37;
  v38 = [NSArray arrayWithObjects:v69 count:12];
  [NSLayoutConstraint activateConstraints:v38];
}

- (VehicleAppCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = VehicleAppCell;
  v4 = [(VehicleAppCell *)&v7 initWithStyle:0 reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(VehicleAppCell *)v4 _commonInit];
    [(VehicleAppCell *)v5 setAccessibilityIdentifier:@"VehicleAppCell"];
  }

  return v5;
}

@end