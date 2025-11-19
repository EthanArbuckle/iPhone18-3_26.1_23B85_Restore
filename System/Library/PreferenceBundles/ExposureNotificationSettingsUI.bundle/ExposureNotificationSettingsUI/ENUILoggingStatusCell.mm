@interface ENUILoggingStatusCell
- (ENUILoggingStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)commonInit;
- (void)refreshCellContentsWithSpecifier:(id)a3;
@end

@implementation ENUILoggingStatusCell

- (ENUILoggingStatusCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = ENUILoggingStatusCell;
  v4 = [(ENUILoggingStatusCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(ENUILoggingStatusCell *)v4 commonInit];
  }

  return v5;
}

- (void)commonInit
{
  v3 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setSectionLabel:v3];

  v4 = [(ENUILoggingStatusCell *)self sectionLabel];
  [v4 setNumberOfLines:0];

  v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleCallout];
  v6 = [(ENUILoggingStatusCell *)self sectionLabel];
  [v6 setFont:v5];

  v7 = +[UIColor secondaryLabelColor];
  v8 = [(ENUILoggingStatusCell *)self sectionLabel];
  [v8 setTextColor:v7];

  v9 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setTitleIconImageView:v9];

  v10 = [(ENUILoggingStatusCell *)self titleIconImageView];
  [v10 setContentMode:1];

  v11 = [UIImage systemImageNamed:@"checkmark.circle.fill"];
  v12 = [v11 imageWithRenderingMode:2];
  v13 = [(ENUILoggingStatusCell *)self titleIconImageView];
  [v13 setImage:v12];

  v14 = +[UIColor systemGreenColor];
  v15 = [(ENUILoggingStatusCell *)self titleIconImageView];
  [v15 setTintColor:v14];

  v16 = [(ENUILoggingStatusCell *)self titleIconImageView];
  LODWORD(v17) = 1148846080;
  [v16 setContentCompressionResistancePriority:0 forAxis:v17];

  v18 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setTitleLabel:v18];

  v19 = [(ENUILoggingStatusCell *)self titleLabel];
  [v19 setNumberOfLines:0];

  v20 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  v21 = [(ENUILoggingStatusCell *)self titleLabel];
  [v21 setFont:v20];

  v22 = [(ENUILoggingStatusCell *)self titleLabel];
  LODWORD(v23) = 1144750080;
  [v22 setContentCompressionResistancePriority:0 forAxis:v23];

  v24 = objc_opt_new();
  [v24 setContentMode:1];
  v71 = [UIFont _preferredFontForTextStyle:UIFontTextStyleBody variant:1280];
  v70 = [UIImageSymbolConfiguration configurationWithFont:v71 scale:1];
  v69 = [UIImage systemImageNamed:@"chevron.forward" withConfiguration:v70];
  [v24 setImage:v69];
  v25 = +[UIColor tertiaryLabelColor];
  v26 = v24;
  v68 = v24;
  [v24 setTintColor:v25];

  v27 = objc_opt_new();
  [(ENUILoggingStatusCell *)self setSubtitleLabel:v27];

  v28 = [(ENUILoggingStatusCell *)self subtitleLabel];
  [v28 setNumberOfLines:0];

  v29 = [UIFont preferredFontForTextStyle:UIFontTextStyleFootnote];
  v30 = [(ENUILoggingStatusCell *)self subtitleLabel];
  [v30 setFont:v29];

  v31 = +[UIColor secondaryLabelColor];
  v32 = [(ENUILoggingStatusCell *)self subtitleLabel];
  [v32 setTextColor:v31];

  v33 = [UIStackView alloc];
  v34 = [(ENUILoggingStatusCell *)self titleIconImageView];
  v74[0] = v34;
  v35 = [(ENUILoggingStatusCell *)self titleLabel];
  v74[1] = v35;
  v36 = objc_opt_new();
  v74[2] = v36;
  v74[3] = v26;
  v37 = [NSArray arrayWithObjects:v74 count:4];
  v38 = [v33 initWithArrangedSubviews:v37];

  [v38 setAxis:0];
  v39 = v38;
  v67 = v38;
  [v38 setSpacing:4.0];
  v40 = [UIStackView alloc];
  v41 = [(ENUILoggingStatusCell *)self sectionLabel];
  v73[0] = v41;
  v73[1] = v39;
  v42 = [(ENUILoggingStatusCell *)self subtitleLabel];
  v73[2] = v42;
  v43 = [NSArray arrayWithObjects:v73 count:3];
  v44 = [v40 initWithArrangedSubviews:v43];

  [v44 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v44 setAxis:1];
  [v44 setSpacing:4.0];
  v45 = [(ENUILoggingStatusCell *)self contentView];
  [v45 addSubview:v44];

  v65 = [v44 leadingAnchor];
  v66 = [(ENUILoggingStatusCell *)self contentView];
  v64 = [v66 layoutMarginsGuide];
  v63 = [v64 leadingAnchor];
  v62 = [v65 constraintEqualToAnchor:v63];
  v72[0] = v62;
  v60 = [v44 trailingAnchor];
  v61 = [(ENUILoggingStatusCell *)self contentView];
  v59 = [v61 layoutMarginsGuide];
  v58 = [v59 trailingAnchor];
  v57 = [v60 constraintEqualToAnchor:v58];
  v72[1] = v57;
  v55 = [v44 topAnchor];
  v56 = [(ENUILoggingStatusCell *)self contentView];
  v46 = [v56 layoutMarginsGuide];
  v47 = [v46 topAnchor];
  v48 = [v55 constraintEqualToAnchor:v47];
  v72[2] = v48;
  v49 = [v44 bottomAnchor];
  v50 = [(ENUILoggingStatusCell *)self contentView];
  v51 = [v50 layoutMarginsGuide];
  v52 = [v51 bottomAnchor];
  v53 = [v49 constraintEqualToAnchor:v52];
  v72[3] = v53;
  v54 = [NSArray arrayWithObjects:v72 count:4];
  [NSLayoutConstraint activateConstraints:v54];
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v19 = [a3 userInfo];
  v4 = [v19 objectForKeyedSubscript:@"showTitleIconKey"];
  v5 = [v4 BOOLValue];

  if ((v5 & 1) == 0)
  {
    v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleFootnote];
    v7 = [UIImage systemImageNamed:@"circle.fill" withConfiguration:v6];
    v8 = [(ENUILoggingStatusCell *)self titleIconImageView];
    [v8 setImage:v7];

    v9 = +[UIColor systemGray2Color];
    v10 = [(ENUILoggingStatusCell *)self titleIconImageView];
    [v10 setTintColor:v9];
  }

  v11 = [v19 objectForKeyedSubscript:@"sectionKey"];
  v12 = [(ENUILoggingStatusCell *)self sectionLabel];
  [v12 setText:v11];

  v13 = [v19 objectForKeyedSubscript:@"titleKey"];
  v14 = [(ENUILoggingStatusCell *)self titleLabel];
  [v14 setText:v13];

  v15 = +[UIColor labelColor];
  v16 = [(ENUILoggingStatusCell *)self titleLabel];
  [v16 setTextColor:v15];

  v17 = [v19 objectForKeyedSubscript:@"subtitleKey"];
  v18 = [(ENUILoggingStatusCell *)self subtitleLabel];
  [v18 setText:v17];

  [(ENUILoggingStatusCell *)self setAccessoryType:0];
}

@end