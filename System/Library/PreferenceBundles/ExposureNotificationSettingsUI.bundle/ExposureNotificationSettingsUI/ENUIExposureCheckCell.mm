@interface ENUIExposureCheckCell
- (ENUIExposureCheckCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ENUIExposureCheckCell

- (ENUIExposureCheckCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ENUIExposureCheckCell;
  v4 = [(ENUIExposureCheckCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUIExposureCheckCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setSectionLabel:v3];

  v4 = [(ENUIExposureCheckCell *)self sectionLabel];
  [v4 setNumberOfLines:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v6 = [(ENUIExposureCheckCell *)self sectionLabel];
  [v6 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(ENUIExposureCheckCell *)self sectionLabel];
  [v8 setTextColor:v7];

  v9 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setTitleIconImageView:v9];

  v10 = [(ENUIExposureCheckCell *)self titleIconImageView];
  [v10 setContentMode:1];

  v11 = [(ENUIExposureCheckCell *)self titleIconImageView];
  LODWORD(v12) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v12];

  v13 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setTitleLabel:v13];

  v14 = [(ENUIExposureCheckCell *)self titleLabel];
  [v14 setNumberOfLines:0];

  v15 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v16 = [(ENUIExposureCheckCell *)self titleLabel];
  [v16 setFont:v15];

  v17 = [(ENUIExposureCheckCell *)self titleLabel];
  LODWORD(v18) = 1144750080;
  [v17 setContentCompressionResistancePriority:0 forAxis:v18];

  v19 = objc_opt_new();
  [(ENUIExposureCheckCell *)self setSubtitleLabel:v19];

  v20 = [(ENUIExposureCheckCell *)self subtitleLabel];
  [v20 setNumberOfLines:0];

  v21 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v22 = [(ENUIExposureCheckCell *)self subtitleLabel];
  [v22 setFont:v21];

  v23 = +[UIColor secondaryLabelColor];
  v24 = [(ENUIExposureCheckCell *)self subtitleLabel];
  [v24 setTextColor:v23];

  v25 = [UIStackView alloc];
  v26 = [(ENUIExposureCheckCell *)self titleIconImageView];
  v62[0] = v26;
  v27 = [(ENUIExposureCheckCell *)self titleLabel];
  v62[1] = v27;
  v28 = objc_opt_new();
  v62[2] = v28;
  v29 = [NSArray arrayWithObjects:v62 count:3];
  v30 = [v25 initWithArrangedSubviews:v29];

  [v30 setAxis:0];
  v31 = v30;
  v59 = v30;
  [v30 setSpacing:4.0];
  v32 = [UIStackView alloc];
  v33 = [(ENUIExposureCheckCell *)self sectionLabel];
  v61[0] = v33;
  v61[1] = v31;
  v34 = [(ENUIExposureCheckCell *)self subtitleLabel];
  v61[2] = v34;
  v35 = [NSArray arrayWithObjects:v61 count:3];
  v36 = [v32 initWithArrangedSubviews:v35];

  [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v36 setAxis:1];
  [v36 setSpacing:4.0];
  v37 = [(ENUIExposureCheckCell *)self contentView];
  [v37 addSubview:v36];

  v57 = [v36 leadingAnchor];
  v58 = [(ENUIExposureCheckCell *)self contentView];
  v56 = [v58 layoutMarginsGuide];
  v55 = [v56 leadingAnchor];
  v54 = [v57 constraintEqualToAnchor:v55];
  v60[0] = v54;
  v52 = [v36 trailingAnchor];
  v53 = [(ENUIExposureCheckCell *)self contentView];
  v51 = [v53 layoutMarginsGuide];
  v50 = [v51 trailingAnchor];
  v49 = [v52 constraintEqualToAnchor:v50];
  v60[1] = v49;
  v47 = [v36 topAnchor];
  v48 = [(ENUIExposureCheckCell *)self contentView];
  v38 = [v48 layoutMarginsGuide];
  v39 = [v38 topAnchor];
  v40 = [v47 constraintEqualToAnchor:v39];
  v60[2] = v40;
  v41 = [v36 bottomAnchor];
  v42 = [(ENUIExposureCheckCell *)self contentView];
  v43 = [v42 layoutMarginsGuide];
  v44 = [v43 bottomAnchor];
  v45 = [v41 constraintEqualToAnchor:v44];
  v60[3] = v45;
  v46 = [NSArray arrayWithObjects:v60 count:4];
  [NSLayoutConstraint activateConstraints:v46];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v33 = [a3 userInfo];
  v4 = [v33 objectForKeyedSubscript:@"notificationAvailable"];
  v5 = [v4 BOOLValue];

  v6 = [v33 objectForKeyedSubscript:@"status"];
  v7 = [v6 integerValue];

  v8 = [v33 objectForKeyedSubscript:@"sectionKey"];
  v9 = [(ENUIExposureCheckCell *)self sectionLabel];
  [v9 setText:v8];

  v10 = [v33 objectForKeyedSubscript:@"titleKey"];
  v11 = [(ENUIExposureCheckCell *)self titleLabel];
  [v11 setText:v10];

  v12 = +[UIColor labelColor];
  v13 = [(ENUIExposureCheckCell *)self titleLabel];
  [v13 setTextColor:v12];

  v14 = [v33 objectForKeyedSubscript:@"subtitleKey"];
  v15 = [(ENUIExposureCheckCell *)self subtitleLabel];
  [v15 setText:v14];

  if (v5)
  {
    v16 = [(ENUIExposureCheckCell *)self titleLabel];
    v17 = [v16 font];
    [v17 pointSize];
    v18 = [UIFont boldSystemFontOfSize:?];
    v19 = [(ENUIExposureCheckCell *)self titleLabel];
    [v19 setFont:v18];

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  [(ENUIExposureCheckCell *)self setAccessoryType:v20];
  if (v7 == &dword_0 + 2)
  {
    v30 = [UIImage systemImageNamed:@"exclamationmark.circle.fill"];
    v31 = [v30 imageWithRenderingMode:2];
    v32 = [(ENUIExposureCheckCell *)self titleIconImageView];
    [v32 setImage:v31];

    v29 = +[UIColor systemRedColor];
  }

  else
  {
    if (!v7)
    {
      v21 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
      v22 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v21];
      v23 = [(ENUIExposureCheckCell *)self titleIconImageView];
      [v23 setImage:v22];

      v24 = +[UIColor systemGray2Color];
      v25 = [(ENUIExposureCheckCell *)self titleIconImageView];
      [v25 setTintColor:v24];

      goto LABEL_10;
    }

    v26 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
    v27 = [v26 imageWithRenderingMode:2];
    v28 = [(ENUIExposureCheckCell *)self titleIconImageView];
    [v28 setImage:v27];

    v29 = +[UIColor systemGreenColor];
  }

  v21 = v29;
  v24 = [(ENUIExposureCheckCell *)self titleIconImageView];
  [v24 setTintColor:v21];
LABEL_10:
}

@end