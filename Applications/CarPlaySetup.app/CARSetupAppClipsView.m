@interface CARSetupAppClipsView
- (CARSetupAppClipsView)initWithAppClipIdentifiers:(id)a3;
@end

@implementation CARSetupAppClipsView

- (CARSetupAppClipsView)initWithAppClipIdentifiers:(id)a3
{
  v5 = a3;
  v68.receiver = self;
  v68.super_class = CARSetupAppClipsView;
  v6 = [(CARSetupAppClipsView *)&v68 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_appClipIDs, a3);
    v8 = [[ASCLockupViewGroup alloc] initWithName:@"CarPlaySetup"];
    lockupGroup = v7->_lockupGroup;
    v7->_lockupGroup = v8;

    v10 = [(CARSetupAppClipsView *)v7 safeAreaLayoutGuide];
    v11 = objc_alloc_init(UILabel);
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 localizedStringForKey:@"READY_CARD_APPS" value:&stru_100010868 table:@"Localizable-Themed"];

    v52 = v13;
    [v11 setText:v13];
    v55 = v5;
    v14 = [(CARSetupAppClipsView *)v7 traitCollection];
    v15 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleTitle2 compatibleWithTraitCollection:v14];

    v16 = [v15 fontDescriptorWithSymbolicTraits:2];

    v51 = v16;
    v50 = [UIFont fontWithDescriptor:v16 size:0.0];
    [v11 setFont:?];
    [v11 setTextAlignment:0];
    v17 = +[UIColor labelColor];
    [v11 setTextColor:v17];

    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARSetupAppClipsView *)v7 addSubview:v11];
    objc_storeStrong(&v7->_titleLabel, v11);
    obja = [v11 leadingAnchor];
    v18 = v10;
    v56 = [v10 leadingAnchor];
    v19 = [obja constraintEqualToAnchor:v56];
    v74[0] = v19;
    v20 = [v11 trailingAnchor];
    v54 = v18;
    v21 = [v18 trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v74[1] = v22;
    v23 = [v11 topAnchor];
    v24 = [v18 topAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v74[2] = v25;
    v26 = [NSArray arrayWithObjects:v74 count:3];
    [(CARSetupAppClipsView *)v7 addConstraints:v26];

    v53 = v11;
    v48 = [v11 bottomAnchor];
    v27 = objc_alloc_init(UIStackView);
    [v27 setAxis:1];
    [v27 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CARSetupAppClipsView *)v7 addSubview:v27];
    objc_storeStrong(&v7->_lockupStack, v27);
    objb = [v27 leadingAnchor];
    v57 = [v54 leadingAnchor];
    v28 = [objb constraintEqualToAnchor:v57];
    v73[0] = v28;
    v29 = [v27 trailingAnchor];
    v30 = [v54 trailingAnchor];
    v31 = [v29 constraintEqualToAnchor:v30];
    v73[1] = v31;
    v32 = [v27 topAnchor];
    v33 = [v32 constraintEqualToSystemSpacingBelowAnchor:v48 multiplier:1.5];
    v73[2] = v33;
    v34 = [NSArray arrayWithObjects:v73 count:3];
    [(CARSetupAppClipsView *)v7 addConstraints:v34];

    v35 = v27;
    v49 = [v27 bottomAnchor];

    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = v55;
    v36 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
    if (v36)
    {
      v37 = v36;
      v38 = *v65;
      v39 = ASCLockupContextStandard;
      do
      {
        for (i = 0; i != v37; i = i + 1)
        {
          if (*v65 != v38)
          {
            objc_enumerationMutation(obj);
          }

          v41 = *(*(&v64 + 1) + 8 * i);
          v42 = CARSetupLogForCategory();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v71 = v41;
            _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "querying App Store for %{public}@", buf, 0xCu);
          }

          v43 = [(CARSetupAppClipsView *)v7 lockupGroup];
          v61[0] = _NSConcreteStackBlock;
          v61[1] = 3221225472;
          v61[2] = sub_100007D40;
          v61[3] = &unk_100010728;
          v61[4] = v41;
          v62 = v7;
          v63 = v35;
          [v43 _lockupRequestForBundleID:v41 withContext:v39 completionBlock:v61];
        }

        v37 = [obj countByEnumeratingWithState:&v64 objects:v72 count:16];
      }

      while (v37);
    }

    v44 = [v54 bottomAnchor];
    v45 = [v49 constraintEqualToAnchor:v44];
    v69 = v45;
    v46 = [NSArray arrayWithObjects:&v69 count:1];
    [(CARSetupAppClipsView *)v7 addConstraints:v46];

    v5 = v55;
  }

  return v7;
}

@end