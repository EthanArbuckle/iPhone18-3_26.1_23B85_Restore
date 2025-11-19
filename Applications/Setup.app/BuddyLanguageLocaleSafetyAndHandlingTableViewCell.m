@interface BuddyLanguageLocaleSafetyAndHandlingTableViewCell
- (BuddyLanguageLocaleSafetyAndHandlingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_configureViews;
- (void)_layoutViews;
- (void)configureCellWithViewModel:(id)a3;
- (void)prepareForReuse;
- (void)setLearnMoreAction:(id)a3;
@end

@implementation BuddyLanguageLocaleSafetyAndHandlingTableViewCell

- (BuddyLanguageLocaleSafetyAndHandlingTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v4 = v12;
  v12 = 0;
  v8.receiver = v4;
  v8.super_class = BuddyLanguageLocaleSafetyAndHandlingTableViewCell;
  v5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)&v8 initWithStyle:v10 reuseIdentifier:location];
  v12 = v5;
  objc_storeStrong(&v12, v5);
  if (v5)
  {
    [v12 _layoutViews];
    [v12 _configureViews];
  }

  v6 = v12;
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v12, 0);
  return v6;
}

- (void)_layoutViews
{
  v2 = objc_alloc_init(UILabel);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setTitleLabel:v2];

  v3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UILabel *)v3 setClipsToBounds:0];

  v4 = objc_alloc_init(UILabel);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setDescriptionLabel:v4];

  v5 = objc_alloc_init(UIView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setDivider:v5];

  v6 = objc_alloc_init(UIView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setDividerContainer:v6];

  v7 = objc_alloc_init(UIImageView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setIconView:v7];

  v8 = [UIButton buttonWithType:1];
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setLearnMoreButton:v8];

  v9 = objc_alloc_init(UIStackView);
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setContentStackView:v9];

  v10 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  [(UIImageView *)v10 setTranslatesAutoresizingMaskIntoConstraints:0];

  v11 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];

  v12 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  [(UIView *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];

  v13 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v14 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  [v13 addSubview:v14];

  v15 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v16 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [v15 addSubview:v16];

  v17 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v18 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  [(UIView *)v17 addSubview:v18];

  v19 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v20 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UIStackView *)v19 addArrangedSubview:v20];

  v21 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v22 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UIStackView *)v21 addArrangedSubview:v22];

  v23 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v24 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  [(UIStackView *)v23 addArrangedSubview:v24];

  v25 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v26 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self learnMoreButton];
  [(UIStackView *)v25 addArrangedSubview:v26];

  v108 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  v107 = [(UIImageView *)v108 leadingAnchor];
  v106 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self leadingAnchor];
  v105 = [v107 constraintEqualToAnchor:8.0 constant:?];
  v110[0] = v105;
  v104 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  v103 = [(UIImageView *)v104 widthAnchor];
  v102 = [v103 constraintEqualToConstant:30.0];
  v110[1] = v102;
  v101 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  v99 = [(UIImageView *)v101 topAnchor];
  v100 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v98 = [(UIStackView *)v100 topAnchor];
  v97 = [v99 constraintEqualToAnchor:8.0 constant:?];
  v110[2] = v97;
  v96 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v94 = [(UIStackView *)v96 leadingAnchor];
  v95 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  v93 = [(UIImageView *)v95 trailingAnchor];
  v92 = [v94 constraintEqualToAnchor:8.0 constant:?];
  v110[3] = v92;
  v91 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v89 = [(UIStackView *)v91 topAnchor];
  v90 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v88 = [v90 topAnchor];
  v87 = [v89 constraintEqualToAnchor:16.0 constant:?];
  v110[4] = v87;
  v86 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v84 = [(UIStackView *)v86 bottomAnchor];
  v85 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v83 = [v85 bottomAnchor];
  v82 = [v84 constraintEqualToAnchor:-8.0 constant:?];
  v110[5] = v82;
  v81 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v79 = [(UIStackView *)v81 trailingAnchor];
  v80 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v78 = [v80 trailingAnchor];
  v77 = [v79 constraintEqualToAnchor:-8.0 constant:?];
  v110[6] = v77;
  v76 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v75 = [(UIView *)v76 heightAnchor];
  v74 = [(NSLayoutDimension *)v75 constraintEqualToConstant:0.4];
  v110[7] = v74;
  v73 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v71 = [(UIView *)v73 leadingAnchor];
  v72 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v70 = [(UIStackView *)v72 leadingAnchor];
  v69 = [(NSLayoutXAxisAnchor *)v71 constraintEqualToAnchor:?];
  v110[8] = v69;
  v68 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v66 = [(UIView *)v68 trailingAnchor];
  v67 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  v65 = [(UIStackView *)v67 trailingAnchor];
  v64 = [(NSLayoutXAxisAnchor *)v66 constraintEqualToAnchor:?];
  v110[9] = v64;
  v63 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  v61 = [(UIView *)v63 topAnchor];
  v62 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v60 = [(UIView *)v62 topAnchor];
  v59 = [(NSLayoutYAxisAnchor *)v61 constraintEqualToAnchor:?];
  v110[10] = v59;
  v58 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  v56 = [(UIView *)v58 bottomAnchor];
  v57 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v55 = [(UIView *)v57 bottomAnchor];
  v54 = [(NSLayoutYAxisAnchor *)v56 constraintEqualToAnchor:?];
  v110[11] = v54;
  v53 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  v51 = [(UIView *)v53 leadingAnchor];
  v52 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v50 = [(UIView *)v52 leadingAnchor];
  v49 = [(NSLayoutXAxisAnchor *)v51 constraintEqualToAnchor:?];
  v110[12] = v49;
  v48 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  v46 = [(UIView *)v48 trailingAnchor];
  v47 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self dividerContainer];
  v45 = [(UIView *)v47 trailingAnchor];
  v44 = [(NSLayoutXAxisAnchor *)v46 constraintEqualToAnchor:-11.0 constant:?];
  v110[13] = v44;
  v43 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v42 = [v43 trailingAnchor];
  v41 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self trailingAnchor];
  v40 = [v42 constraintEqualToAnchor:?];
  v110[14] = v40;
  v39 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v38 = [v39 leadingAnchor];
  v37 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self leadingAnchor];
  v27 = [v38 constraintEqualToAnchor:?];
  v110[15] = v27;
  v28 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v29 = [v28 topAnchor];
  v30 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  v110[16] = v31;
  v32 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentView];
  v33 = [v32 bottomAnchor];
  v34 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self bottomAnchor];
  v35 = [v33 constraintEqualToAnchor:v34];
  v110[17] = v35;
  v36 = [NSArray arrayWithObjects:v110 count:18];
  [NSLayoutConstraint activateConstraints:v36];
}

- (void)_configureViews
{
  v2 = +[UIColor secondarySystemBackgroundColor];
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self setBackgroundColor:v2];

  v3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)v3 setSpacing:8.0];

  v4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)v4 setAxis:1];

  v5 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)v5 setAlignment:1];

  v6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self contentStackView];
  [(UIStackView *)v6 setDistribution:0];

  v7 = +[UIColor separatorColor];
  v8 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self divider];
  [(UIView *)v8 setBackgroundColor:v7];

  v9 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self iconView];
  [(UIImageView *)v9 setContentMode:2];

  +[UIFont systemFontSize];
  v10 = [UIFont boldSystemFontOfSize:?];
  v11 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UILabel *)v11 setFont:v10];

  v12 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self titleLabel];
  [(UILabel *)v12 setNumberOfLines:0];

  +[UIFont smallSystemFontSize];
  v13 = [UIFont systemFontOfSize:?];
  v14 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UILabel *)v14 setFont:v13];

  v15 = +[UIColor secondaryLabelColor];
  v16 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UILabel *)v16 setTextColor:v15];

  v17 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)self descriptionLabel];
  [(UILabel *)v17 setNumberOfLines:0];
}

- (void)configureCellWithViewModel:(id)a3
{
  v30 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [location[0] attributedTitleText];
  v4 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 titleLabel];
  [(UILabel *)v4 setAttributedText:v3];

  v5 = [location[0] attributedDescriptionText];
  v6 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 descriptionLabel];
  [(UILabel *)v6 setAttributedText:v5];

  v7 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 learnMoreButton];
  v8 = [location[0] attributedButtonText];
  [(UIButton *)v7 setAttributedTitle:v8 forState:0];

  v9 = [location[0] iconName];
  v10 = +[UITraitCollection traitCollectionWithLayoutDirection:](UITraitCollection, "traitCollectionWithLayoutDirection:", ([location[0] isRTL] & 1) != 0);
  v28 = [UIImage systemImageNamed:v9 compatibleWithTraitCollection:v10];

  v11 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 iconView];
  if ([location[0] isRTL])
  {
    v12 = 4;
  }

  else
  {
    v12 = 3;
  }

  [(UIImageView *)v11 setSemanticContentAttribute:v12];

  v13 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 iconView];
  [(UIImageView *)v13 setImage:v28];

  v14 = v30;
  if ([location[0] isRTL])
  {
    v15 = 4;
  }

  else
  {
    v15 = 3;
  }

  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v14 setSemanticContentAttribute:v15];
  v16 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 contentStackView];
  if ([location[0] isRTL])
  {
    v17 = 4;
  }

  else
  {
    v17 = 3;
  }

  [(UIStackView *)v16 setSemanticContentAttribute:v17];

  v18 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 dividerContainer];
  if ([location[0] isRTL])
  {
    v19 = 4;
  }

  else
  {
    v19 = 3;
  }

  [(UIView *)v18 setSemanticContentAttribute:v19];

  v20 = [location[0] isRTL];
  v21 = 2;
  if ((v20 & 1) == 0)
  {
    v21 = 0;
  }

  v27 = v21;
  v22 = v21;
  v23 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 titleLabel];
  [(UILabel *)v23 setTextAlignment:v22];

  v24 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 descriptionLabel];
  [(UILabel *)v24 setTextAlignment:v27];

  v25 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v30 learnMoreButton];
  v26 = [(UIButton *)v25 titleLabel];
  [(UILabel *)v26 setTextAlignment:v27];

  objc_storeStrong(&v28, 0);
  objc_storeStrong(location, 0);
}

- (void)setLearnMoreAction:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v5->_learnMoreAction, location[0]);
  v3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v5 learnMoreButton];
  [(UIButton *)v3 addAction:location[0] forControlEvents:64];

  objc_storeStrong(location, 0);
}

- (void)prepareForReuse
{
  v6 = self;
  v5 = a2;
  v4.receiver = self;
  v4.super_class = BuddyLanguageLocaleSafetyAndHandlingTableViewCell;
  [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)&v4 prepareForReuse];
  v2 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v6 learnMoreButton];
  v3 = [(BuddyLanguageLocaleSafetyAndHandlingTableViewCell *)v6 learnMoreAction];
  [(UIButton *)v2 removeAction:v3 forControlEvents:64];

  objc_storeStrong(&v6->_learnMoreAction, 0);
}

@end