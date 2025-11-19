@interface BCAlertActionTableViewCell
+ (double)heightForActionItem:(id)a3 forWidth:(double)a4;
+ (id)reuseIdentifierForItem:(id)a3;
- (BCAlertActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)activateCenterAlignConstraints;
- (void)loadContentView;
@end

@implementation BCAlertActionTableViewCell

- (BCAlertActionTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = BCAlertActionTableViewCell;
  v4 = [(BCAlertActionTableViewCell *)&v7 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(BCAlertActionTableViewCell *)v4 loadContentView];
  }

  return v5;
}

+ (id)reuseIdentifierForItem:(id)a3
{
  v3 = [a3 subTitle];
  if ([v3 length])
  {
    v4 = @"CellWithTitleSubTitleAndIcon";
  }

  else
  {
    v4 = @"CellWithTitleAndIcon";
  }

  v5 = v4;

  return v4;
}

+ (double)heightForActionItem:(id)a3 forWidth:(double)a4
{
  v6 = a3;
  v7 = [a1 alloc];
  v8 = [objc_opt_class() reuseIdentifierForItem:v6];
  v9 = [v7 initWithStyle:0 reuseIdentifier:v8];

  v10 = [v6 title];
  v11 = [v9 titleLabel];
  [v11 setText:v10];

  v12 = [v6 subTitle];
  v13 = [v9 subTitleLabel];
  [v13 setText:v12];

  v14 = [v6 icon];

  v15 = [v9 mainImageView];
  [v15 setImage:v14];

  LODWORD(v16) = 1148846080;
  LODWORD(v17) = 1112014848;
  [v9 systemLayoutSizeFittingSize:a4 withHorizontalFittingPriority:0.0 verticalFittingPriority:{v16, v17}];
  v19 = v18;
  [v9 layoutMargins];
  v21 = v19 + v20;
  [v9 layoutMargins];
  v23 = v21 + v22;

  return v23;
}

- (void)loadContentView
{
  v3 = [(BCAlertActionTableViewCell *)self contentView];
  v101 = objc_alloc_init(UILayoutGuide);
  [v3 addLayoutGuide:?];
  v4 = objc_alloc_init(UIImageView);
  objc_storeStrong(&self->_mainImageView, v4);
  [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:v4];
  v5 = objc_alloc_init(UILayoutGuide);
  [v3 addLayoutGuide:v5];
  v6 = objc_alloc_init(UIView);
  objc_storeStrong(&self->_titleContainerView, v6);
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  v7 = [v6 layer];
  [v7 setCornerRadius:25.0];

  v8 = [v6 layer];
  [v8 setMasksToBounds:1];

  v9 = objc_alloc_init(UILabel);
  objc_storeStrong(&self->_titleLabel, v9);
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 addSubview:v9];
  [v3 addSubview:v6];
  v10 = [(BCAlertActionTableViewCell *)self reuseIdentifier];
  v11 = [v10 isEqualToString:@"CellWithTitleSubTitleAndIcon"];

  v115 = v5;
  if (v11)
  {
    v12 = objc_alloc_init(UILabel);
    objc_storeStrong(&self->_subTitleLabel, v12);
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v3 addSubview:v12];
  }

  else
  {
    v12 = 0;
  }

  v13 = [UIFont systemFontOfSize:20.0];
  v14 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleTitle3];
  v15 = [v14 scaledFontForFont:v13];
  [v9 setFont:v15];

  [v9 setAdjustsFontForContentSizeCategory:1];
  v16 = +[UIColor _systemBlueColor2];
  [v9 setTextColor:v16];

  [v9 setNumberOfLines:2];
  [v9 setLineBreakMode:4];
  v100 = v6;
  v114 = v9;
  v97 = v12;
  if (v12)
  {
    v17 = [UIFont systemFontOfSize:13.0];

    v18 = [UIFontMetrics metricsForTextStyle:UIFontTextStyleCaption1];
    v19 = [v18 scaledFontForFont:v17];
    [v12 setFont:v19];

    [v12 setAdjustsFontForContentSizeCategory:1];
    v20 = +[UIColor secondaryLabelColor];
    [v12 setTextColor:v20];

    [v12 setNumberOfLines:2];
    [v12 setLineBreakMode:4];
    v98 = v17;
  }

  else
  {
    v98 = v13;
  }

  v21 = [UIColor colorNamed:@"AlertActionIconColor"];
  [v4 setTintColor:v21];

  v22 = [UIColor colorNamed:@"CellBackgroundColor"];
  [(BCAlertActionTableViewCell *)self setBackgroundColor:v22];

  v117 = objc_opt_new();
  v110 = [v101 leadingAnchor];
  v106 = [v3 leadingAnchor];
  v102 = [v110 constraintEqualToAnchor:v106 constant:16.0];
  v123[0] = v102;
  v89 = [v101 centerYAnchor];
  v93 = [v3 layoutMarginsGuide];
  v87 = [v93 centerYAnchor];
  v85 = [v89 constraintEqualToAnchor:v87];
  v123[1] = v85;
  v83 = [v101 topAnchor];
  v81 = [v3 topAnchor];
  v80 = [v83 constraintGreaterThanOrEqualToAnchor:v81];
  v123[2] = v80;
  v79 = [v101 bottomAnchor];
  v78 = [v3 bottomAnchor];
  v77 = [v79 constraintLessThanOrEqualToAnchor:v78];
  v123[3] = v77;
  v76 = [v101 widthAnchor];
  v75 = [v76 constraintEqualToConstant:44.0];
  v123[4] = v75;
  v74 = [v101 heightAnchor];
  v73 = [v74 constraintEqualToConstant:44.0];
  v123[5] = v73;
  v72 = [v4 centerXAnchor];
  v71 = [v101 centerXAnchor];
  v23 = [v72 constraintEqualToAnchor:v71];
  v123[6] = v23;
  [v4 centerYAnchor];
  v24 = v116 = v3;
  v25 = [v101 centerYAnchor];
  v26 = [v24 constraintEqualToAnchor:v25];
  v123[7] = v26;
  v27 = [v4 widthAnchor];
  v28 = [v27 constraintEqualToConstant:24.0];
  v123[8] = v28;
  v99 = v4;
  v29 = [v4 heightAnchor];
  v30 = [v29 constraintEqualToConstant:24.0];
  v123[9] = v30;
  v31 = [NSArray arrayWithObjects:v123 count:10];
  [v117 addObjectsFromArray:v31];

  v111 = [v115 leadingAnchor];
  v107 = [v101 trailingAnchor];
  v103 = [v111 constraintEqualToAnchor:v107 constant:16.0];
  v122[0] = v103;
  v90 = [v115 trailingAnchor];
  v94 = [v116 layoutMarginsGuide];
  v88 = [v94 trailingAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v122[1] = v86;
  v82 = [v115 centerYAnchor];
  v84 = [v116 layoutMarginsGuide];
  v32 = [v84 centerYAnchor];
  v33 = [v82 constraintEqualToAnchor:v32];
  v122[2] = v33;
  v34 = [v115 topAnchor];
  v35 = [v116 topAnchor];
  v36 = [v34 constraintGreaterThanOrEqualToAnchor:v35];
  v122[3] = v36;
  v37 = [v115 bottomAnchor];
  v38 = [v116 bottomAnchor];
  v39 = [v37 constraintLessThanOrEqualToAnchor:v38];
  v122[4] = v39;
  v40 = [NSArray arrayWithObjects:v122 count:5];
  [v117 addObjectsFromArray:v40];

  v112 = [v100 leadingAnchor];
  v108 = [v116 leadingAnchor];
  v104 = [v112 constraintEqualToAnchor:v108 constant:12.0];
  v121[0] = v104;
  v91 = [v100 trailingAnchor];
  v95 = [v116 layoutMarginsGuide];
  v41 = [v95 trailingAnchor];
  v42 = [v91 constraintEqualToAnchor:v41];
  v121[1] = v42;
  v43 = [v100 topAnchor];
  v44 = [v115 topAnchor];
  v45 = [v43 constraintGreaterThanOrEqualToAnchor:v44];
  v121[2] = v45;
  v46 = [v100 bottomAnchor];
  v47 = [v115 bottomAnchor];
  v48 = [v46 constraintLessThanOrEqualToAnchor:v47];
  v121[3] = v48;
  v49 = [NSArray arrayWithObjects:v121 count:4];
  [v117 addObjectsFromArray:v49];

  v50 = [v114 leadingAnchor];
  v113 = [v100 leadingAnchor];
  v51 = [v50 constraintEqualToAnchor:?];
  v105 = v50;
  v109 = v51;
  if (v97)
  {
    v120[0] = v51;
    v52 = [v114 trailingAnchor];
    v53 = [v100 trailingAnchor];
    v54 = [v52 constraintEqualToAnchor:v53];
    v120[1] = v54;
    v55 = [v114 topAnchor];
    v56 = [v100 topAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v120[2] = v57;
    v58 = [NSArray arrayWithObjects:v120 count:3];
    [v117 addObjectsFromArray:v58];

    v59 = [v97 leadingAnchor];
    [v100 leadingAnchor];
    v113 = v105 = v59;
    v109 = [v59 constraintEqualToAnchor:?];
    v119[0] = v109;
    v60 = [v97 trailingAnchor];
    v92 = [v100 trailingAnchor];
    v96 = v60;
    v61 = [v60 constraintEqualToAnchor:v92];
    v119[1] = v61;
    v62 = [v97 topAnchor];
    v63 = [v114 bottomAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:0.0];
    v119[2] = v64;
    v65 = [v97 bottomAnchor];
    v66 = [v115 bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66];
    v119[3] = v67;
    v68 = v119;
  }

  else
  {
    v118[0] = v51;
    v69 = [v114 trailingAnchor];
    v92 = [v100 trailingAnchor];
    v96 = v69;
    v61 = [v69 constraintGreaterThanOrEqualToAnchor:v92];
    v118[1] = v61;
    v62 = [v114 topAnchor];
    v63 = [v100 topAnchor];
    v64 = [v62 constraintEqualToAnchor:v63 constant:15.0];
    v118[2] = v64;
    v65 = [v114 bottomAnchor];
    v66 = [v100 bottomAnchor];
    v67 = [v65 constraintEqualToAnchor:v66 constant:-15.0];
    v118[3] = v67;
    v68 = v118;
  }

  v70 = [NSArray arrayWithObjects:v68 count:4];
  [v117 addObjectsFromArray:v70];

  [NSLayoutConstraint activateConstraints:v117];
}

- (void)activateCenterAlignConstraints
{
  v3 = [(UILabel *)self->_titleLabel centerXAnchor];
  v4 = [(BCAlertActionTableViewCell *)self contentView];
  v5 = [v4 centerXAnchor];
  v6 = [v3 constraintEqualToAnchor:v5];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [NSLayoutConstraint activateConstraints:v7];

  [(UILabel *)self->_titleLabel setTextAlignment:1];
}

@end