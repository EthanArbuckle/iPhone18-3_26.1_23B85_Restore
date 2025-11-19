@interface NavTrayActionCell
- (NavTrayActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateConfigurationUsingState:(id)a3;
@end

@implementation NavTrayActionCell

- (void)updateConfigurationUsingState:(id)a3
{
  v10 = a3;
  v4 = [(NavTrayActionCell *)self backgroundConfiguration];
  v5 = [v4 updatedConfigurationForState:v10];

  v6 = [(NavTrayActionCell *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (([v10 isHighlighted] & 1) != 0 || objc_msgSend(v10, "isSelected"))
  {
    if (v7 == 2)
    {
      +[UIColor tertiarySystemGroupedBackgroundColor];
    }

    else
    {
      +[UIColor systemLightMidGrayColor];
    }
    v8 = ;
  }

  else
  {
    v8 = +[UIColor secondarySystemGroupedBackgroundColor];
  }

  v9 = v8;
  [v5 setBackgroundColor:v8];

  [(NavTrayActionCell *)self setBackgroundConfiguration:v5];
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = NavTrayActionCell;
  v4 = a3;
  [(NavTrayActionCell *)&v8 traitCollectionDidChange:v4];
  v5 = [(NavTrayActionCell *)self traitCollection:v8.receiver];
  v6 = [v5 userInterfaceStyle];
  v7 = [v4 userInterfaceStyle];

  if (v6 != v7)
  {
    [(NavTrayActionCell *)self setNeedsUpdateConfiguration];
  }
}

- (NavTrayActionCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v70.receiver = self;
  v70.super_class = NavTrayActionCell;
  v4 = [(NavTrayActionCell *)&v70 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    [(NavTrayActionCell *)v4 setAccessibilityIdentifier:v6];

    v69 = +[UIBackgroundConfiguration listCellConfiguration];
    [v69 setCornerRadius:10.0];
    [(NavTrayActionCell *)v4 setBackgroundConfiguration:v69];
    v7 = objc_opt_new();
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v7 setAccessibilityIdentifier:@"ImageViewContainer"];
    v8 = [(NavTrayActionCell *)v4 contentView];
    [v8 addSubview:v7];

    v9 = objc_opt_new();
    leadingImageBackgroundView = v4->_leadingImageBackgroundView;
    v4->_leadingImageBackgroundView = v9;

    [(UIView *)v4->_leadingImageBackgroundView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v4->_leadingImageBackgroundView setAccessibilityIdentifier:@"LeadingImageBackground"];
    v11 = [(UIView *)v4->_leadingImageBackgroundView layer];
    [v11 setCornerRadius:23.0];

    [v7 addSubview:v4->_leadingImageBackgroundView];
    v12 = objc_opt_new();
    leadingImageView = v4->_leadingImageView;
    v4->_leadingImageView = v12;

    [(UIImageView *)v4->_leadingImageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v4->_leadingImageView setContentMode:1];
    [(UIImageView *)v4->_leadingImageView setAccessibilityIdentifier:@"LeadingImageView"];
    [v7 addSubview:v4->_leadingImageView];
    v14 = objc_opt_new();
    titleLabel = v4->_titleLabel;
    v4->_titleLabel = v14;

    [(UILabel *)v4->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle2];
    [(UILabel *)v4->_titleLabel setFont:v16];

    [(UILabel *)v4->_titleLabel setNumberOfLines:2];
    [(UILabel *)v4->_titleLabel setAccessibilityIdentifier:@"TitleLabel"];
    v17 = [(NavTrayActionCell *)v4 contentView];
    [v17 addSubview:v4->_titleLabel];

    v67 = [v7 leadingAnchor];
    v68 = [(NavTrayActionCell *)v4 contentView];
    v66 = [v68 leadingAnchor];
    v65 = [v67 constraintEqualToAnchor:v66];
    v71[0] = v65;
    v64 = [v7 widthAnchor];
    v63 = [v64 constraintEqualToConstant:70.0];
    v71[1] = v63;
    v61 = [v7 centerYAnchor];
    v62 = [(NavTrayActionCell *)v4 contentView];
    v60 = [v62 centerYAnchor];
    v59 = [v61 constraintEqualToAnchor:v60];
    v71[2] = v59;
    v58 = [(UIView *)v4->_leadingImageBackgroundView centerXAnchor];
    v57 = [v7 centerXAnchor];
    v56 = [v58 constraintEqualToAnchor:v57];
    v71[3] = v56;
    v55 = [(UIView *)v4->_leadingImageBackgroundView centerYAnchor];
    v54 = [v7 centerYAnchor];
    v53 = [v55 constraintEqualToAnchor:v54];
    v71[4] = v53;
    v52 = [(UIView *)v4->_leadingImageBackgroundView heightAnchor];
    v51 = [v52 constraintEqualToConstant:46.0];
    v71[5] = v51;
    v49 = [(UIView *)v4->_leadingImageBackgroundView widthAnchor];
    v48 = [v49 constraintEqualToConstant:46.0];
    v71[6] = v48;
    v47 = [(UIImageView *)v4->_leadingImageView centerXAnchor];
    v46 = [v7 centerXAnchor];
    v45 = [v47 constraintEqualToAnchor:v46];
    v71[7] = v45;
    v44 = [(UIImageView *)v4->_leadingImageView centerYAnchor];
    v50 = v7;
    v43 = [v7 centerYAnchor];
    v42 = [v44 constraintEqualToAnchor:v43];
    v71[8] = v42;
    v41 = [(UIImageView *)v4->_leadingImageView heightAnchor];
    v40 = [(UIView *)v4->_leadingImageBackgroundView heightAnchor];
    v39 = [v41 constraintEqualToAnchor:v40 multiplier:0.657142857];
    v71[9] = v39;
    v38 = [(UILabel *)v4->_titleLabel leadingAnchor];
    v37 = [v7 trailingAnchor];
    v36 = [v38 constraintEqualToAnchor:v37];
    v71[10] = v36;
    v34 = [(UILabel *)v4->_titleLabel trailingAnchor];
    v35 = [(NavTrayActionCell *)v4 contentView];
    v33 = [v35 trailingAnchor];
    v32 = [v34 constraintEqualToAnchor:v33 constant:-16.0];
    v71[11] = v32;
    v30 = [(UILabel *)v4->_titleLabel centerYAnchor];
    v31 = [(NavTrayActionCell *)v4 contentView];
    v29 = [v31 centerYAnchor];
    v28 = [v30 constraintEqualToAnchor:v29];
    v71[12] = v28;
    v18 = [(UILabel *)v4->_titleLabel topAnchor];
    v19 = [(NavTrayActionCell *)v4 contentView];
    v20 = [v19 topAnchor];
    v21 = [v18 constraintGreaterThanOrEqualToAnchor:v20 constant:25.0];
    v71[13] = v21;
    v22 = [(UILabel *)v4->_titleLabel bottomAnchor];
    v23 = [(NavTrayActionCell *)v4 contentView];
    v24 = [v23 bottomAnchor];
    v25 = [v22 constraintLessThanOrEqualToAnchor:v24 constant:-25.0];
    v71[14] = v25;
    v26 = [NSArray arrayWithObjects:v71 count:15];
    [NSLayoutConstraint activateConstraints:v26];
  }

  return v4;
}

@end