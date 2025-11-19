@interface ENUIRegionalDetailsHeaderCell
- (void)commonInit;
@end

@implementation ENUIRegionalDetailsHeaderCell

- (void)commonInit
{
  v3 = [(ENUIRegionalDetailsHeaderCell *)self specifier];
  v4 = [v3 userInfo];

  v5 = [v4 supportsFeatures:32];
  v6 = [_TtC28HealthExposureNotificationUI20OnboardingHeaderView alloc];
  v7 = [v4 header];
  v8 = [v6 initWithHeader:v7 insets:v5 proxyDisabled:0 corners:{16.0, 16.0, 16.0, 16.0}];
  [(ENUIRegionalDetailsHeaderCell *)self setHeaderView:v8];

  v9 = [v4 header];
  v10 = [v9 backgroundColor];
  v11 = +[UIColor systemBackgroundColor];
  v113 = 0.0;
  v114 = 0.0;
  v111 = 0.0;
  v112 = 0.0;
  if (![v10 getRed:&v114 green:&v113 blue:&v112 alpha:&v111])
  {

    v102 = 0;
    goto LABEL_10;
  }

  v109 = 0.0;
  v110 = 0.0;
  v107 = 0.0;
  v108 = 0.0;
  v12 = [v11 getRed:&v110 green:&v109 blue:&v108 alpha:&v107] && vabdd_f64(v114, v110) <= 0.05 && vabdd_f64(v113, v109) <= 0.05 && vabdd_f64(v112, v108) <= 0.05 && vabdd_f64(v111, v107) <= 0.05;

  if (v12)
  {
    v13 = objc_opt_new();
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
    v14 = +[UIColor separatorColor];
    [v13 setBackgroundColor:v14];

    v15 = +[UIColor clearColor];
    v16 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
    [v16 setBackgroundColor:v15];

    v9 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
    v102 = v13;
    [v9 addSubview:v13];
LABEL_10:

    goto LABEL_12;
  }

  v102 = 0;
LABEL_12:
  v17 = objc_opt_new();
  [(ENUIRegionalDetailsHeaderCell *)self setSubtitleText:v17];

  v18 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleBody];
  v19 = [v18 fontDescriptorWithSymbolicTraits:0x10000];

  v20 = [v19 fontDescriptorWithDesign:UIFontDescriptorSystemDesignSerif];

  v99 = v20;
  v21 = [UIFont fontWithDescriptor:v20 size:0.0];
  v22 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [v22 setFont:v21];

  v100 = v4;
  v23 = [v4 introductoryText];
  v24 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [v24 setText:v23];

  v25 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v26 = [v25 textContainer];
  [v26 setLineFragmentPadding:0.0];

  v27 = +[UIColor clearColor];
  v28 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [v28 setBackgroundColor:v27];

  v29 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [v29 setEditable:0];

  v30 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [v30 setScrollingEnabled:0];

  v31 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [v31 setDataDetectorTypes:3];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v32 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  v118[0] = v32;
  v33 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v118[1] = v33;
  v34 = [NSArray arrayWithObjects:v118 count:2];

  v35 = [v34 countByEnumeratingWithState:&v103 objects:v119 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v104;
    do
    {
      for (i = 0; i != v36; i = i + 1)
      {
        if (*v104 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v103 + 1) + 8 * i);
        [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
        v40 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
        [v40 addSubview:v39];
      }

      v36 = [v34 countByEnumeratingWithState:&v103 objects:v119 count:16];
    }

    while (v36);
  }

  v101 = +[NSMutableArray array];
  v96 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  v90 = [v96 leadingAnchor];
  v93 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  v87 = [v93 leadingAnchor];
  v84 = [v90 constraintEqualToAnchor:v87];
  v117[0] = v84;
  v81 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  v78 = [v81 trailingAnchor];
  v41 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  v42 = [v41 trailingAnchor];
  v43 = [v78 constraintEqualToAnchor:v42];
  v117[1] = v43;
  v44 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  v45 = [v44 topAnchor];
  v46 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  v47 = [v46 topAnchor];
  v48 = [v45 constraintEqualToAnchor:v47];
  v117[2] = v48;
  v49 = [NSArray arrayWithObjects:v117 count:3];
  [v101 addObjectsFromArray:v49];

  v50 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  if (v102)
  {
    v51 = v102;

    v94 = [v51 topAnchor];
    v97 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
    v91 = [v97 bottomAnchor];
    v88 = [v94 constraintEqualToAnchor:v91 constant:4.0];
    v116[0] = v88;
    v82 = [v51 heightAnchor];
    v85 = +[UIScreen mainScreen];
    [v85 scale];
    v79 = [v82 constraintEqualToConstant:1.0 / v52];
    v116[1] = v79;
    v76 = [v51 leadingAnchor];
    v53 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
    v54 = [v53 leadingAnchor];
    v55 = [v76 constraintEqualToAnchor:v54];
    v116[2] = v55;
    v56 = [v51 trailingAnchor];
    v57 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
    v58 = [v57 trailingAnchor];
    v59 = [v56 constraintEqualToAnchor:v58];
    v116[3] = v59;
    v60 = [NSArray arrayWithObjects:v116 count:4];
    [v101 addObjectsFromArray:v60];

    v50 = v51;
  }

  v75 = v50;
  v98 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v95 = [v98 topAnchor];
  v92 = [v50 bottomAnchor];
  v89 = [v95 constraintEqualToAnchor:v92 constant:16.0];
  v115[0] = v89;
  v86 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v80 = [v86 leadingAnchor];
  v83 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  v77 = [v83 layoutMarginsGuide];
  v74 = [v77 leadingAnchor];
  v73 = [v80 constraintEqualToAnchor:v74];
  v115[1] = v73;
  v72 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v70 = [v72 trailingAnchor];
  v71 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  v61 = [v71 layoutMarginsGuide];
  v62 = [v61 trailingAnchor];
  v63 = [v70 constraintEqualToAnchor:v62];
  v115[2] = v63;
  v64 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v65 = [v64 bottomAnchor];
  v66 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  v67 = [v66 bottomAnchor];
  v68 = [v65 constraintEqualToAnchor:v67 constant:-16.0];
  v115[3] = v68;
  v69 = [NSArray arrayWithObjects:v115 count:4];
  [v101 addObjectsFromArray:v69];

  [NSLayoutConstraint activateConstraints:v101];
}

@end