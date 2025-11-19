@interface ENUIRegionFAQWebsiteCell
- (ENUIRegionFAQWebsiteCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)commonInit;
@end

@implementation ENUIRegionFAQWebsiteCell

- (ENUIRegionFAQWebsiteCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ENUIRegionFAQWebsiteCell;
  v4 = [(ENUIRegionFAQWebsiteCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUIRegionFAQWebsiteCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUIRegionFAQWebsiteCell *)self setTitleLabel:v3];

  v4 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [v4 setNumberOfLines:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v6 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [v6 setFont:v5];

  v7 = +[UIColor systemBlueColor];
  v8 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [v8 setTextColor:v7];

  v9 = ENUILocalizedString();
  v10 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  [v10 setText:v9];

  v11 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];

  v13 = objc_opt_new();
  [(ENUIRegionFAQWebsiteCell *)self setLinkArrowImageView:v13];

  v14 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  [v14 setContentMode:1];

  v15 = +[UIColor systemBlueColor];
  v16 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  [v16 setTintColor:v15];

  v17 = [UIImage systemImageNamed:@"arrow.up.forward.app.fill"];
  v18 = [v17 imageWithRenderingMode:2];
  v19 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  [v19 setImage:v18];

  v20 = [UIStackView alloc];
  v21 = [(ENUIRegionFAQWebsiteCell *)self titleLabel];
  v49[0] = v21;
  v22 = [(ENUIRegionFAQWebsiteCell *)self linkArrowImageView];
  v49[1] = v22;
  v23 = objc_opt_new();
  v49[2] = v23;
  v24 = [NSArray arrayWithObjects:v49 count:3];
  v25 = [v20 initWithArrangedSubviews:v24];

  [v25 setAxis:0];
  [v25 setSpacing:4.0];
  [v25 setTranslatesAutoresizingMaskIntoConstraints:0];
  v26 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  [v26 addSubview:v25];

  v46 = [v25 leadingAnchor];
  v47 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  v45 = [v47 layoutMarginsGuide];
  v44 = [v45 leadingAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v48[0] = v43;
  v41 = [v25 trailingAnchor];
  v42 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  v40 = [v42 layoutMarginsGuide];
  v39 = [v40 trailingAnchor];
  v38 = [v41 constraintEqualToAnchor:v39];
  v48[1] = v38;
  v36 = [v25 topAnchor];
  v37 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  v27 = [v37 layoutMarginsGuide];
  v28 = [v27 topAnchor];
  v29 = [v36 constraintEqualToAnchor:v28 constant:4.0];
  v48[2] = v29;
  v30 = [v25 bottomAnchor];
  v31 = [(ENUIRegionFAQWebsiteCell *)self contentView];
  v32 = [v31 layoutMarginsGuide];
  v33 = [v32 bottomAnchor];
  v34 = [v30 constraintEqualToAnchor:v33 constant:-4.0];
  v48[3] = v34;
  v35 = [NSArray arrayWithObjects:v48 count:4];
  [NSLayoutConstraint activateConstraints:v35];
}

@end