@interface ENUIRegionalDetailsHeaderCell
- (void)commonInit;
@end

@implementation ENUIRegionalDetailsHeaderCell

- (void)commonInit
{
  specifier = [(ENUIRegionalDetailsHeaderCell *)self specifier];
  userInfo = [specifier userInfo];

  v5 = [userInfo supportsFeatures:32];
  v6 = [_TtC28HealthExposureNotificationUI20OnboardingHeaderView alloc];
  header = [userInfo header];
  v8 = [v6 initWithHeader:header insets:v5 proxyDisabled:0 corners:{16.0, 16.0, 16.0, 16.0}];
  [(ENUIRegionalDetailsHeaderCell *)self setHeaderView:v8];

  header2 = [userInfo header];
  backgroundColor = [header2 backgroundColor];
  v11 = +[UIColor systemBackgroundColor];
  v113 = 0.0;
  v114 = 0.0;
  v111 = 0.0;
  v112 = 0.0;
  if (![backgroundColor getRed:&v114 green:&v113 blue:&v112 alpha:&v111])
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
    headerView = [(ENUIRegionalDetailsHeaderCell *)self headerView];
    [headerView setBackgroundColor:v15];

    header2 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
    v102 = v13;
    [header2 addSubview:v13];
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
  subtitleText = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [subtitleText setFont:v21];

  v100 = userInfo;
  introductoryText = [userInfo introductoryText];
  subtitleText2 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [subtitleText2 setText:introductoryText];

  subtitleText3 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  textContainer = [subtitleText3 textContainer];
  [textContainer setLineFragmentPadding:0.0];

  v27 = +[UIColor clearColor];
  subtitleText4 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [subtitleText4 setBackgroundColor:v27];

  subtitleText5 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [subtitleText5 setEditable:0];

  subtitleText6 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [subtitleText6 setScrollingEnabled:0];

  subtitleText7 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  [subtitleText7 setDataDetectorTypes:3];

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  headerView2 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  v118[0] = headerView2;
  subtitleText8 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  v118[1] = subtitleText8;
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
        contentView = [(ENUIRegionalDetailsHeaderCell *)self contentView];
        [contentView addSubview:v39];
      }

      v36 = [v34 countByEnumeratingWithState:&v103 objects:v119 count:16];
    }

    while (v36);
  }

  v101 = +[NSMutableArray array];
  headerView3 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  leadingAnchor = [headerView3 leadingAnchor];
  contentView2 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  v84 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v117[0] = v84;
  headerView4 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  trailingAnchor = [headerView4 trailingAnchor];
  contentView3 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  v43 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v117[1] = v43;
  headerView5 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  topAnchor = [headerView5 topAnchor];
  contentView4 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  topAnchor2 = [contentView4 topAnchor];
  v48 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v117[2] = v48;
  v49 = [NSArray arrayWithObjects:v117 count:3];
  [v101 addObjectsFromArray:v49];

  headerView6 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
  if (v102)
  {
    v51 = v102;

    topAnchor3 = [v51 topAnchor];
    headerView7 = [(ENUIRegionalDetailsHeaderCell *)self headerView];
    bottomAnchor = [headerView7 bottomAnchor];
    v88 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:4.0];
    v116[0] = v88;
    heightAnchor = [v51 heightAnchor];
    v85 = +[UIScreen mainScreen];
    [v85 scale];
    v79 = [heightAnchor constraintEqualToConstant:1.0 / v52];
    v116[1] = v79;
    leadingAnchor3 = [v51 leadingAnchor];
    contentView5 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
    leadingAnchor4 = [contentView5 leadingAnchor];
    v55 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v116[2] = v55;
    trailingAnchor3 = [v51 trailingAnchor];
    contentView6 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
    trailingAnchor4 = [contentView6 trailingAnchor];
    v59 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
    v116[3] = v59;
    v60 = [NSArray arrayWithObjects:v116 count:4];
    [v101 addObjectsFromArray:v60];

    headerView6 = v51;
  }

  v75 = headerView6;
  subtitleText9 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  topAnchor4 = [subtitleText9 topAnchor];
  bottomAnchor2 = [headerView6 bottomAnchor];
  v89 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  v115[0] = v89;
  subtitleText10 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  leadingAnchor5 = [subtitleText10 leadingAnchor];
  contentView7 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  layoutMarginsGuide = [contentView7 layoutMarginsGuide];
  leadingAnchor6 = [layoutMarginsGuide leadingAnchor];
  v73 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v115[1] = v73;
  subtitleText11 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  trailingAnchor5 = [subtitleText11 trailingAnchor];
  contentView8 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  layoutMarginsGuide2 = [contentView8 layoutMarginsGuide];
  trailingAnchor6 = [layoutMarginsGuide2 trailingAnchor];
  v63 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v115[2] = v63;
  subtitleText12 = [(ENUIRegionalDetailsHeaderCell *)self subtitleText];
  bottomAnchor3 = [subtitleText12 bottomAnchor];
  contentView9 = [(ENUIRegionalDetailsHeaderCell *)self contentView];
  bottomAnchor4 = [contentView9 bottomAnchor];
  v68 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4 constant:-16.0];
  v115[3] = v68;
  v69 = [NSArray arrayWithObjects:v115 count:4];
  [v101 addObjectsFromArray:v69];

  [NSLayoutConstraint activateConstraints:v101];
}

@end