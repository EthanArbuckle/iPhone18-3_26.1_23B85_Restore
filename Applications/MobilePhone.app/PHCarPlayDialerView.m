@interface PHCarPlayDialerView
- (PHCarPlayDialerView)initWithFrame:(CGRect)a3;
- (id)_linearFocusMovementSequences;
@end

@implementation PHCarPlayDialerView

- (PHCarPlayDialerView)initWithFrame:(CGRect)a3
{
  v127.receiver = self;
  v127.super_class = PHCarPlayDialerView;
  v3 = [(PHCarPlayDialerView *)&v127 initWithFrame:0.0, 0.0, 360.0, 180.0];
  if (v3)
  {
    if (_os_feature_enabled_impl())
    {
      +[UIColor clearColor];
    }

    else
    {
      +[UIColor tableBackgroundColor];
    }
    v4 = ;
    [(PHCarPlayDialerView *)v3 setBackgroundColor:v4];

    v5 = [PHCarPlayDialerLCDView alloc];
    [(PHCarPlayDialerView *)v3 bounds];
    v6 = [(PHCarPlayDialerLCDView *)v5 initWithFrame:0.0, 0.0];
    [(PHCarPlayDialerView *)v3 setLcdView:v6];

    v7 = [(PHCarPlayDialerView *)v3 lcdView];
    [v7 setDelegate:v3];

    v8 = [(PHCarPlayDialerView *)v3 lcdView];
    [v8 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [PHCarPlayNumberPad alloc];
    v10 = [(PHCarPlayDialerView *)v3 traitCollection];
    v11 = -[PHCarPlayNumberPad initWithUserInterfaceStyle:](v9, "initWithUserInterfaceStyle:", [v10 userInterfaceStyle]);
    [(PHCarPlayDialerView *)v3 setPhonePadView:v11];

    v12 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = +[UIColor clearColor];
    v14 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v14 setBackgroundColor:v13];

    v15 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v15 setOpaque:0];

    v16 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v16 setAccessibilityIdentifier:@"PHCarPlayNumberPad"];

    v17 = objc_alloc_init(UIView);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    v18 = [(PHCarPlayDialerView *)v3 lcdView];
    [v17 addSubview:v18];

    v19 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v17 addSubview:v19];

    [(PHCarPlayDialerView *)v3 addSubview:v17];
    if (_UISolariumEnabled())
    {
      v20 = [[PHCarPlayInCallButton alloc] initForButtonType:9 callState:2];
      [(PHCarPlayDialerView *)v3 setCallButton:v20];
    }

    else
    {
      v21 = objc_alloc_init(PHCarPlayDialerCircleButton);
      [(PHCarPlayDialerView *)v3 setCallButton:v21];

      v22 = [(PHCarPlayDialerView *)v3 callButton];
      if (_os_feature_enabled_impl())
      {
        +[UIColor clearColor];
      }

      else
      {
        +[UIColor tableBackgroundColor];
      }
      v23 = ;
      [v22 setTitleColor:v23 forState:0];

      v24 = [(PHCarPlayDialerView *)v3 callButton];
      v25 = [UIImage tpImageForSymbolType:1 textStyle:UIFontTextStyleCallout scale:3 isStaticSize:1];
      [v24 setImage:v25 forState:0];

      v20 = +[UIColor whiteColor];
      v26 = [(PHCarPlayDialerView *)v3 callButton];
      [v26 setTintColor:v20];
    }

    v27 = [(PHCarPlayDialerView *)v3 callButton];
    LODWORD(v28) = 1148846080;
    [v27 setContentCompressionResistancePriority:0 forAxis:v28];

    v29 = [(PHCarPlayDialerView *)v3 callButton];
    [v29 setTranslatesAutoresizingMaskIntoConstraints:0];

    v30 = [(PHCarPlayDialerView *)v3 callButton];
    [v30 setAccessibilityIdentifier:@"PHCarPlayDialerCallButton"];

    v31 = [(PHCarPlayDialerView *)v3 callButton];
    [v17 addSubview:v31];

    v126 = [UIButton buttonWithType:0];
    [v126 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v126 setConfigurationUpdateHandler:&__block_literal_global_7];
    [v126 setAccessibilityIdentifier:@"PHCarPlayDialerDeleteButton"];
    [(PHCarPlayDialerView *)v3 setDeleteButton:v126];
    v32 = [(PHCarPlayDialerView *)v3 deleteButton];
    [v17 addSubview:v32];

    v33 = [NSLayoutConstraint constraintWithItem:v17 attribute:7 relatedBy:-1 toItem:v3 attribute:7 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerView *)v3 addConstraint:v33];

    v34 = [NSLayoutConstraint constraintWithItem:v17 attribute:8 relatedBy:-1 toItem:v3 attribute:8 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerView *)v3 addConstraint:v34];

    v35 = [NSLayoutConstraint constraintWithItem:v17 attribute:10 relatedBy:0 toItem:v3 attribute:10 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerView *)v3 addConstraint:v35];

    v36 = [NSLayoutConstraint constraintWithItem:v17 attribute:9 relatedBy:0 toItem:v3 attribute:9 multiplier:1.0 constant:0.0];
    [(PHCarPlayDialerView *)v3 addConstraint:v36];

    LODWORD(v37) = 1148846080;
    v38 = [NSLayoutConstraint constraintWithItem:v17 attribute:7 relatedBy:-1 toItem:0 attribute:0 multiplier:1.0 constant:356.0 priority:v37];
    [(PHCarPlayDialerView *)v3 addConstraint:v38];

    LODWORD(v39) = 1144750080;
    v40 = [NSLayoutConstraint constraintWithItem:v17 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:196.0 priority:v39];
    [(PHCarPlayDialerView *)v3 addConstraint:v40];

    v41 = [(PHCarPlayDialerView *)v3 phonePadView];
    v42 = [NSLayoutConstraint constraintWithItem:v41 attribute:1 relatedBy:0 toItem:v17 attribute:1 multiplier:1.0 constant:12.0];
    [v17 addConstraint:v42];

    v43 = [(PHCarPlayDialerView *)v3 phonePadView];
    v44 = [NSLayoutConstraint constraintWithItem:v43 attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
    [v17 addConstraint:v44];

    v45 = [(PHCarPlayDialerView *)v3 lcdView];
    v46 = [(PHCarPlayDialerView *)v3 phonePadView];
    v47 = [NSLayoutConstraint constraintWithItem:v45 attribute:1 relatedBy:0 toItem:v46 attribute:2 multiplier:1.0 constant:23.0];
    [v17 addConstraint:v47];

    v48 = [(PHCarPlayDialerView *)v3 lcdView];
    v49 = [NSLayoutConstraint constraintWithItem:v48 attribute:11 relatedBy:0 toItem:v17 attribute:3 multiplier:1.0 constant:79.5];
    [v17 addConstraint:v49];

    v50 = [(PHCarPlayDialerView *)v3 lcdView];
    v51 = [NSLayoutConstraint constraintWithItem:v50 attribute:2 relatedBy:0 toItem:v17 attribute:2 multiplier:1.0 constant:-12.0];
    [v17 addConstraint:v51];

    v52 = [(PHCarPlayDialerView *)v3 deleteButton];
    v53 = [(PHCarPlayDialerView *)v3 callButton];
    v54 = [NSLayoutConstraint constraintWithItem:v52 attribute:1 relatedBy:1 toItem:v53 attribute:2 multiplier:1.0 constant:8.0];
    [v17 addConstraint:v54];

    v55 = [(PHCarPlayDialerView *)v3 deleteButton];
    v56 = [NSLayoutConstraint constraintWithItem:v55 attribute:2 relatedBy:0 toItem:v17 attribute:2 multiplier:1.0 constant:-12.0];
    [v17 addConstraint:v56];

    v125 = [(PHCarPlayDialerView *)v3 deleteButton];
    v124 = [v125 widthAnchor];
    v123 = [v124 constraintEqualToConstant:36.0];
    v128[0] = v123;
    v122 = [(PHCarPlayDialerView *)v3 deleteButton];
    v120 = [v122 heightAnchor];
    v121 = [(PHCarPlayDialerView *)v3 deleteButton];
    v57 = [v121 widthAnchor];
    v58 = [v120 constraintEqualToAnchor:v57];
    v128[1] = v58;
    v59 = [(PHCarPlayDialerView *)v3 deleteButton];
    v60 = [v59 centerYAnchor];
    v61 = [(PHCarPlayDialerView *)v3 callButton];
    [v61 centerYAnchor];
    v62 = v119 = v17;
    v63 = [v60 constraintEqualToAnchor:v62 constant:4.0];
    v128[2] = v63;
    v64 = [NSArray arrayWithObjects:v128 count:3];
    [v17 addConstraints:v64];

    v65 = [(PHCarPlayDialerView *)v3 callButton];
    v66 = [NSLayoutConstraint constraintWithItem:v65 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:52.0];
    [v119 addConstraint:v66];

    v67 = [(PHCarPlayDialerView *)v3 callButton];
    v68 = [(PHCarPlayDialerView *)v3 callButton];
    v69 = [NSLayoutConstraint constraintWithItem:v67 attribute:7 relatedBy:0 toItem:v68 attribute:8 multiplier:1.0 constant:0.0];
    [v119 addConstraint:v69];

    v70 = [(PHCarPlayDialerView *)v3 callButton];
    v71 = [(PHCarPlayDialerView *)v3 lcdView];
    LODWORD(v72) = 1144750080;
    v73 = [NSLayoutConstraint constraintWithItem:v70 attribute:3 relatedBy:0 toItem:v71 attribute:11 multiplier:1.0 constant:56.0 priority:v72];
    [v119 addConstraint:v73];

    v74 = [(PHCarPlayDialerView *)v3 callButton];
    v75 = [NSLayoutConstraint constraintWithItem:v74 attribute:4 relatedBy:-1 toItem:v119 attribute:4 multiplier:1.0 constant:-8.0];
    [v119 addConstraint:v75];

    v76 = [(PHCarPlayDialerView *)v3 callButton];
    v77 = [(PHCarPlayDialerView *)v3 lcdView];
    v78 = [NSLayoutConstraint constraintWithItem:v76 attribute:9 relatedBy:0 toItem:v77 attribute:9 multiplier:1.0 constant:0.0];
    [v119 addConstraint:v78];

    v79 = [(PHCarPlayDialerView *)v3 phonePadView];
    LODWORD(v80) = 1148846080;
    [v79 setContentCompressionResistancePriority:0 forAxis:v80];

    v81 = [(PHCarPlayDialerView *)v3 phonePadView];
    LODWORD(v82) = 1148846080;
    [v81 setContentHuggingPriority:0 forAxis:v82];

    v83 = [(PHCarPlayDialerView *)v3 lcdView];
    LODWORD(v84) = 1132068864;
    [v83 setContentCompressionResistancePriority:0 forAxis:v84];

    v85 = [(PHCarPlayDialerView *)v3 deleteButton];
    LODWORD(v86) = 1148846080;
    [v85 setContentCompressionResistancePriority:0 forAxis:v86];

    v87 = objc_alloc_init(UIFocusContainerGuide);
    [(PHCarPlayDialerView *)v3 addLayoutGuide:v87];
    v88 = [v87 topAnchor];
    v89 = [(PHCarPlayDialerView *)v3 callButton];
    v90 = [v89 topAnchor];
    v91 = [v88 constraintEqualToAnchor:v90];
    [(PHCarPlayDialerView *)v3 addConstraint:v91];

    v92 = [v87 leftAnchor];
    v93 = [(PHCarPlayDialerView *)v3 phonePadView];
    v94 = [v93 rightAnchor];
    v95 = [v92 constraintEqualToAnchor:v94];
    [(PHCarPlayDialerView *)v3 addConstraint:v95];

    v96 = [v87 rightAnchor];
    v97 = [(PHCarPlayDialerView *)v3 rightAnchor];
    v98 = [v96 constraintEqualToAnchor:v97];
    [(PHCarPlayDialerView *)v3 addConstraint:v98];

    v99 = [v87 bottomAnchor];
    v100 = [(PHCarPlayDialerView *)v3 bottomAnchor];
    v101 = [v99 constraintEqualToAnchor:v100];
    [(PHCarPlayDialerView *)v3 addConstraint:v101];

    v102 = objc_alloc_init(UIFocusContainerGuide);
    [(PHCarPlayDialerView *)v3 addLayoutGuide:v102];
    v103 = [v102 topAnchor];
    v104 = [(PHCarPlayDialerView *)v3 topAnchor];
    v105 = [v103 constraintEqualToAnchor:v104];
    [(PHCarPlayDialerView *)v3 addConstraint:v105];

    v106 = [v102 leftAnchor];
    v107 = [(PHCarPlayDialerView *)v3 deleteButton];
    v108 = [v107 leftAnchor];
    v109 = [v106 constraintEqualToAnchor:v108];
    [(PHCarPlayDialerView *)v3 addConstraint:v109];

    v110 = [v102 rightAnchor];
    v111 = [(PHCarPlayDialerView *)v3 deleteButton];
    v112 = [v111 rightAnchor];
    v113 = [v110 constraintEqualToAnchor:v112];
    [(PHCarPlayDialerView *)v3 addConstraint:v113];

    v114 = [v102 bottomAnchor];
    v115 = [(PHCarPlayDialerView *)v3 bottomAnchor];
    v116 = [v114 constraintEqualToAnchor:v115];
    [(PHCarPlayDialerView *)v3 addConstraint:v116];

    v117 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v117 _setSpeedBumpEdges:15];
  }

  return v3;
}

void __37__PHCarPlayDialerView_initWithFrame___block_invoke(id a1, UIButton *a2)
{
  v2 = a2;
  v3 = +[UIButtonConfiguration plainButtonConfiguration];
  v4 = [UIImage systemImageNamed:@"delete.backward.fill"];
  v5 = [v4 imageWithRenderingMode:2];
  [v3 setImage:v5];

  v6 = [UIImageSymbolConfiguration configurationWithTextStyle:UIFontTextStyleCallout scale:2];
  [v3 setPreferredSymbolConfigurationForImage:v6];

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = __37__PHCarPlayDialerView_initWithFrame___block_invoke_2;
  v16[3] = &unk_100285978;
  v7 = v2;
  v17 = v7;
  [v3 setImageColorTransformer:v16];
  v8 = +[UIBackgroundConfiguration clearConfiguration];
  if ([(UIButton *)v7 isFocused])
  {
    v9 = +[UIColor dynamicCarFocusedColor];
    [v8 setBackgroundColor:v9];

    [(UIButton *)v7 frame];
    [v8 setCornerRadius:CGRectGetHeight(v18) * 0.5];
  }

  [v3 setBackground:v8];
  [(UIButton *)v7 setConfiguration:v3];
  v10 = [(UIButton *)v7 traitCollection];
  v11 = [v10 userInterfaceStyle];
  v12 = &kCAFilterPlusL;
  if (v11 != 2)
  {
    v12 = &kCAFilterPlusD;
  }

  v13 = [CAFilter filterWithType:*v12];
  v14 = [(UIButton *)v7 layer];
  [v14 setCompositingFilter:v13];

  v15 = [(UIButton *)v7 layer];
  [v15 setAllowsGroupBlending:0];
}

id __37__PHCarPlayDialerView_initWithFrame___block_invoke_2(uint64_t a1)
{
  if ([*(a1 + 32) isFocused])
  {
    v2 = +[UIColor dynamicCarFocusedPrimaryLabelColor];
  }

  else if (([*(a1 + 32) isSelected] & 1) != 0 || objc_msgSend(*(a1 + 32), "isHighlighted"))
  {
    v2 = +[UIColor tertiaryLabelColor];
  }

  else
  {
    v2 = +[UIColor labelColor];
  }

  return v2;
}

- (id)_linearFocusMovementSequences
{
  v3 = [(PHCarPlayDialerView *)self phonePadView];
  v4 = [v3 _linearFocusMovementSequences];

  v5 = [v4 firstObject];
  v6 = [v5 items];
  v7 = [(PHCarPlayDialerView *)self callButton];
  v15[0] = v7;
  v8 = [(PHCarPlayDialerView *)self deleteButton];
  v15[1] = v8;
  v9 = [NSArray arrayWithObjects:v15 count:2];
  v10 = [v6 arrayByAddingObjectsFromArray:v9];

  v11 = [_UIFocusLinearMovementSequence sequenceWithItems:v10 loops:0];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];

  return v12;
}

@end