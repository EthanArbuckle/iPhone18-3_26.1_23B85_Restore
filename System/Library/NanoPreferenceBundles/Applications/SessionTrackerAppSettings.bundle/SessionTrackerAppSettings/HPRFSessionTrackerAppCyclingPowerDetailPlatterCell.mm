@interface HPRFSessionTrackerAppCyclingPowerDetailPlatterCell
- (HPRFSessionTrackerAppCyclingPowerDetailPlatterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
@end

@implementation HPRFSessionTrackerAppCyclingPowerDetailPlatterCell

- (HPRFSessionTrackerAppCyclingPowerDetailPlatterCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v110.receiver = self;
  v110.super_class = HPRFSessionTrackerAppCyclingPowerDetailPlatterCell;
  v9 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)&v110 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v9 setPreservesSuperviewLayoutMargins:1];
    v108 = [v8 propertyForKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellTitleKey"];
    v107 = [v8 propertyForKey:@"HPRFSessionTrackerAppCyclingPowerDetailPlatterCellDetailKey"];
    v11 = [UIImageView alloc];
    v12 = [UIImage _systemImageNamed:@"bluetooth.applewatch"];
    v13 = [v11 initWithImage:v12];
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 setIconView:v13];

    v14 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

    v15 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    [v15 setContentMode:1];

    v16 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v17 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    [v16 addSubview:v17];

    v18 = objc_alloc_init(UILabel);
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 setTitleView:v18];

    v19 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v19 setText:v108];

    v20 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v20 setTranslatesAutoresizingMaskIntoConstraints:0];

    v21 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v21 setAdjustsFontForContentSizeCategory:1];

    v22 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    v23 = [v22 font];
    [v23 fontDescriptor];
    v24 = v109 = v8;
    v25 = [v24 fontDescriptorWithSymbolicTraits:2];
    v26 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    v27 = [v26 font];
    [v27 pointSize];
    v28 = [UIFont fontWithDescriptor:v25 size:?];
    v29 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v29 setFont:v28];

    v30 = +[UIColor whiteColor];
    v31 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v31 setTextColor:v30];

    v32 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v32 setTextAlignment:1];

    v33 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v33 setNumberOfLines:0];

    v34 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v35 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    [v34 addSubview:v35];

    v36 = objc_alloc_init(UILabel);
    [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 setDetailView:v36];

    v37 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v37 setText:v107];

    v38 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v38 setTranslatesAutoresizingMaskIntoConstraints:0];

    v39 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v39 setAdjustsFontForContentSizeCategory:1];

    v40 = +[UIColor whiteColor];
    v41 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v41 setTextColor:v40];

    v42 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v42 setTextAlignment:1];

    v43 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v43 setNumberOfLines:0];

    v44 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v45 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    [v44 addSubview:v45];

    v106 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    v104 = [v106 topAnchor];
    v105 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v103 = [v105 layoutMarginsGuide];
    v102 = [v103 topAnchor];
    v101 = [v104 constraintEqualToAnchor:v102 constant:16.0];
    v111[0] = v101;
    v100 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    v98 = [v100 centerXAnchor];
    v99 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v97 = [v99 layoutMarginsGuide];
    v96 = [v97 centerXAnchor];
    v95 = [v98 constraintEqualToAnchor:v96];
    v111[1] = v95;
    v94 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    v92 = [v94 widthAnchor];
    v93 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    v91 = [v93 heightAnchor];
    v90 = [v92 constraintEqualToAnchor:v91];
    v111[2] = v90;
    v89 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    v88 = [v89 widthAnchor];
    v87 = [v88 constraintEqualToConstant:60.0];
    v111[3] = v87;
    v86 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    v84 = [v86 topAnchor];
    v85 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 iconView];
    v83 = [v85 bottomAnchor];
    v82 = [v84 constraintEqualToAnchor:v83 constant:16.0];
    v111[4] = v82;
    v81 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    v79 = [v81 leadingAnchor];
    v80 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v78 = [v80 layoutMarginsGuide];
    v77 = [v78 leadingAnchor];
    v76 = [v79 constraintEqualToAnchor:v77];
    v111[5] = v76;
    v75 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    v73 = [v75 trailingAnchor];
    v74 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v72 = [v74 layoutMarginsGuide];
    v71 = [v72 trailingAnchor];
    v70 = [v73 constraintEqualToAnchor:v71];
    v111[6] = v70;
    v69 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    v67 = [v69 topAnchor];
    v68 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 titleView];
    v66 = [v68 bottomAnchor];
    v65 = [v67 constraintEqualToAnchor:v66 constant:16.0];
    v111[7] = v65;
    v64 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    v62 = [v64 leadingAnchor];
    v63 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v61 = [v63 layoutMarginsGuide];
    v60 = [v61 leadingAnchor];
    v59 = [v62 constraintEqualToAnchor:v60];
    v111[8] = v59;
    v58 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    v56 = [v58 trailingAnchor];
    v57 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v46 = [v57 layoutMarginsGuide];
    v47 = [v46 trailingAnchor];
    v48 = [v56 constraintEqualToAnchor:v47];
    v111[9] = v48;
    v49 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 contentView];
    v50 = [v49 bottomAnchor];
    v51 = [(HPRFSessionTrackerAppCyclingPowerDetailPlatterCell *)v10 detailView];
    v52 = [v51 bottomAnchor];
    v53 = [v50 constraintEqualToAnchor:v52 constant:16.0];
    v111[10] = v53;
    v54 = [NSArray arrayWithObjects:v111 count:11];
    [NSLayoutConstraint activateConstraints:v54];

    v8 = v109;
  }

  return v10;
}

@end