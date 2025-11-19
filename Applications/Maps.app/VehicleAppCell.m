@interface VehicleAppCell
- (VehicleAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_commonInit;
- (void)layoutSubviews;
- (void)setApplicationRecord:(id)a3;
@end

@implementation VehicleAppCell

- (void)setApplicationRecord:(id)a3
{
  v5 = a3;
  if (self->_applicationRecord != v5)
  {
    v15 = v5;
    objc_storeStrong(&self->_applicationRecord, a3);
    v6 = [(LSApplicationRecord *)v15 bundleIdentifier];
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _applicationIconImageForBundleIdentifier:v6 format:2 scale:?];
    v9 = [(VehicleAppCell *)self appIconView];
    [v9 setImage:v8];

    v10 = [(LSApplicationRecord *)v15 localizedName];
    v11 = [(VehicleAppCell *)self appNameLabel];
    [v11 setText:v10];

    v12 = [(LSApplicationRecord *)v15 iTunesMetadata];
    v13 = [v12 genre];
    v14 = [(VehicleAppCell *)self appDescriptionLabel];
    [v14 setText:v13];

    v5 = v15;
  }
}

- (void)layoutSubviews
{
  v7.receiver = self;
  v7.super_class = VehicleAppCell;
  [(VehicleAppCell *)&v7 layoutSubviews];
  v3 = [(VehicleAppCell *)self openButton];
  [v3 frame];
  v5 = v4 * 0.5;
  v6 = [(VehicleAppCell *)self openButton];
  [v6 _setContinuousCornerRadius:v5];
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
  v21 = [(UIButton *)self->_openButton titleLabel];
  [v21 setFont:v20];

  v22 = +[UIColor tertiarySystemFillColor];
  [(UIButton *)self->_openButton setBackgroundColor:v22];

  [(UIButton *)self->_openButton setContentEdgeInsets:10.0, 12.0, 10.0, 12.0];
  LODWORD(v23) = 1148846080;
  [(UIButton *)self->_openButton setContentCompressionResistancePriority:0 forAxis:v23];
  LODWORD(v24) = 1148846080;
  [(UIButton *)self->_openButton setContentHuggingPriority:0 forAxis:v24];
  v25 = [(VehicleAppCell *)self contentView];
  [v25 addSubview:self->_appIconView];

  v26 = [(VehicleAppCell *)self contentView];
  [v26 addSubview:self->_appNameLabel];

  v27 = [(VehicleAppCell *)self contentView];
  [v27 addSubview:self->_appDescriptionLabel];

  v28 = [(VehicleAppCell *)self contentView];
  [v28 addSubview:self->_openButton];

  v67 = [(UIImageView *)self->_appIconView leadingAnchor];
  v68 = [(VehicleAppCell *)self contentView];
  v66 = [v68 leadingAnchor];
  v65 = [v67 constraintEqualToAnchor:v66 constant:16.0];
  v69[0] = v65;
  v64 = [(UIImageView *)self->_appIconView widthAnchor];
  v63 = [v64 constraintEqualToConstant:62.0];
  v69[1] = v63;
  v61 = [(UIImageView *)self->_appIconView centerYAnchor];
  v62 = [(VehicleAppCell *)self contentView];
  v60 = [v62 centerYAnchor];
  v59 = [v61 constraintEqualToAnchor:v60];
  v69[2] = v59;
  v58 = [(UIImageView *)self->_appIconView heightAnchor];
  v57 = [v58 constraintEqualToConstant:62.0];
  v69[3] = v57;
  v56 = [(UILabel *)self->_appNameLabel leadingAnchor];
  v55 = [(UIImageView *)self->_appIconView trailingAnchor];
  v54 = [v56 constraintEqualToAnchor:v55 constant:10.0];
  v69[4] = v54;
  v53 = [(UILabel *)self->_appNameLabel trailingAnchor];
  v52 = [(UIButton *)self->_openButton leadingAnchor];
  v51 = [v53 constraintEqualToAnchor:v52 constant:-10.0];
  v69[5] = v51;
  v49 = [(UILabel *)self->_appNameLabel topAnchor];
  v50 = [(VehicleAppCell *)self contentView];
  v48 = [v50 topAnchor];
  v47 = [v49 constraintEqualToAnchor:v48 constant:30.0];
  v69[6] = v47;
  v46 = [(UILabel *)self->_appDescriptionLabel leadingAnchor];
  v45 = [(UIImageView *)self->_appIconView trailingAnchor];
  v44 = [v46 constraintEqualToAnchor:v45 constant:10.0];
  v69[7] = v44;
  v43 = [(UILabel *)self->_appDescriptionLabel trailingAnchor];
  v42 = [(UIButton *)self->_openButton leadingAnchor];
  v41 = [v43 constraintEqualToAnchor:v42 constant:-10.0];
  v69[8] = v41;
  v40 = [(UILabel *)self->_appDescriptionLabel topAnchor];
  v39 = [(UILabel *)self->_appNameLabel bottomAnchor];
  v29 = [v40 constraintEqualToAnchor:v39 constant:3.0];
  v69[9] = v29;
  v30 = [(UIButton *)self->_openButton trailingAnchor];
  v31 = [(VehicleAppCell *)self contentView];
  v32 = [v31 trailingAnchor];
  v33 = [v30 constraintEqualToAnchor:v32 constant:-16.0];
  v69[10] = v33;
  v34 = [(UIButton *)self->_openButton centerYAnchor];
  v35 = [(VehicleAppCell *)self contentView];
  v36 = [v35 centerYAnchor];
  v37 = [v34 constraintEqualToAnchor:v36];
  v69[11] = v37;
  v38 = [NSArray arrayWithObjects:v69 count:12];
  [NSLayoutConstraint activateConstraints:v38];
}

- (VehicleAppCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = VehicleAppCell;
  v4 = [(VehicleAppCell *)&v7 initWithStyle:0 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(VehicleAppCell *)v4 _commonInit];
    [(VehicleAppCell *)v5 setAccessibilityIdentifier:@"VehicleAppCell"];
  }

  return v5;
}

@end