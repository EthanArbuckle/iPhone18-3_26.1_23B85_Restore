@interface ENUIRegionCell
- (ENUIRegionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ENUIRegionCell

- (ENUIRegionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = ENUIRegionCell;
  v4 = [(ENUIRegionCell *)&v8 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUIRegionCell *)v4 commonInit];
    v6 = v5;
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUIRegionCell *)self setSectionLabel:v3];

  v4 = ENUILocalizedString();
  v5 = [(ENUIRegionCell *)self sectionLabel];
  [v5 setText:v4];

  v6 = [(ENUIRegionCell *)self sectionLabel];
  [v6 setNumberOfLines:0];

  v7 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v8 = [(ENUIRegionCell *)self sectionLabel];
  [v8 setFont:v7];

  v9 = +[UIColor secondaryLabelColor];
  v10 = [(ENUIRegionCell *)self sectionLabel];
  [v10 setTextColor:v9];

  v11 = [(ENUIRegionCell *)self sectionLabel];
  [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = objc_opt_new();
  [(ENUIRegionCell *)self setTitleLabel:v12];

  v13 = [(ENUIRegionCell *)self titleLabel];
  [v13 setNumberOfLines:0];

  v14 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v15 = [(ENUIRegionCell *)self titleLabel];
  [v15 setFont:v14];

  v16 = objc_opt_new();
  [(ENUIRegionCell *)self setRegionCapsuleLabel:v16];

  v17 = [UIStackView alloc];
  v18 = [(ENUIRegionCell *)self sectionLabel];
  v54[0] = v18;
  v19 = [(ENUIRegionCell *)self titleLabel];
  v54[1] = v19;
  v20 = [(ENUIRegionCell *)self regionCapsuleLabel];
  v54[2] = v20;
  v21 = [NSArray arrayWithObjects:v54 count:3];
  v22 = [v17 initWithArrangedSubviews:v21];

  [v22 setSpacing:4.0];
  [v22 setAxis:1];
  [v22 setDistribution:3];
  [v22 setTranslatesAutoresizingMaskIntoConstraints:0];
  v23 = [(ENUIRegionCell *)self contentView];
  [v23 addSubview:v22];

  v51 = [v22 leadingAnchor];
  v52 = [(ENUIRegionCell *)self contentView];
  v50 = [v52 layoutMarginsGuide];
  v49 = [v50 leadingAnchor];
  v48 = [v51 constraintEqualToAnchor:v49];
  v53[0] = v48;
  v46 = [v22 trailingAnchor];
  v47 = [(ENUIRegionCell *)self contentView];
  v45 = [v47 layoutMarginsGuide];
  v44 = [v45 trailingAnchor];
  v43 = [v46 constraintEqualToAnchor:v44];
  v53[1] = v43;
  v41 = [v22 topAnchor];
  v42 = [(ENUIRegionCell *)self contentView];
  v40 = [v42 layoutMarginsGuide];
  v39 = [v40 topAnchor];
  v38 = [v41 constraintGreaterThanOrEqualToAnchor:v39];
  v53[2] = v38;
  v36 = [v22 bottomAnchor];
  v37 = [(ENUIRegionCell *)self contentView];
  v35 = [v37 layoutMarginsGuide];
  v34 = [v35 bottomAnchor];
  v33 = [v36 constraintLessThanOrEqualToAnchor:v34];
  v53[3] = v33;
  v24 = [v22 centerYAnchor];
  v25 = [(ENUIRegionCell *)self contentView];
  v26 = [v25 layoutMarginsGuide];
  v27 = [v26 centerYAnchor];
  v28 = [v24 constraintEqualToAnchor:v27];
  v53[4] = v28;
  v29 = [(ENUIRegionCell *)self contentView];
  v30 = [v29 heightAnchor];
  v31 = [v30 constraintGreaterThanOrEqualToConstant:UITableViewDefaultRowHeight];
  v53[5] = v31;
  v32 = [NSArray arrayWithObjects:v53 count:6];
  [NSLayoutConstraint activateConstraints:v32];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4 = a3;
  v22 = [v4 userInfo];
  v5 = [v4 objectForKeyedSubscript:PSTitleKey];
  v6 = [(ENUIRegionCell *)self titleLabel];
  [v6 setText:v5];

  v7 = [v22 header];
  v8 = [v7 subtitle];
  v9 = [(ENUIRegionCell *)self regionCapsuleLabel];
  [v9 setText:v8];

  v10 = [v22 header];
  v11 = [v10 textColor];
  v12 = [(ENUIRegionCell *)self regionCapsuleLabel];
  [v12 setTextColor:v11];

  v13 = [v22 header];
  v14 = [v13 backgroundColor];
  v15 = [(ENUIRegionCell *)self regionCapsuleLabel];
  [v15 setCapsuleColor:v14];

  v16 = [(ENUIRegionCell *)self regionCapsuleLabel];
  v17 = [(ENUIRegionCell *)self regionCapsuleLabel];
  v18 = [v17 text];
  [v16 setHidden:{objc_msgSend(v18, "length") == 0}];

  v19 = [(ENUIRegionCell *)self sectionLabel];
  v20 = [v4 objectForKeyedSubscript:PSValueKey];
  [v19 setHidden:{objc_msgSend(v20, "BOOLValue") ^ 1}];

  v21 = [v4 cellType];
  [(ENUIRegionCell *)self setAccessoryType:v21 == &dword_0 + 1];
}

@end