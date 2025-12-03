@interface PHCarPlayDialerView
- (PHCarPlayDialerView)initWithFrame:(CGRect)frame;
- (id)_linearFocusMovementSequences;
@end

@implementation PHCarPlayDialerView

- (PHCarPlayDialerView)initWithFrame:(CGRect)frame
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

    lcdView = [(PHCarPlayDialerView *)v3 lcdView];
    [lcdView setDelegate:v3];

    lcdView2 = [(PHCarPlayDialerView *)v3 lcdView];
    [lcdView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v9 = [PHCarPlayNumberPad alloc];
    traitCollection = [(PHCarPlayDialerView *)v3 traitCollection];
    v11 = -[PHCarPlayNumberPad initWithUserInterfaceStyle:](v9, "initWithUserInterfaceStyle:", [traitCollection userInterfaceStyle]);
    [(PHCarPlayDialerView *)v3 setPhonePadView:v11];

    phonePadView = [(PHCarPlayDialerView *)v3 phonePadView];
    [phonePadView setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = +[UIColor clearColor];
    phonePadView2 = [(PHCarPlayDialerView *)v3 phonePadView];
    [phonePadView2 setBackgroundColor:v13];

    phonePadView3 = [(PHCarPlayDialerView *)v3 phonePadView];
    [phonePadView3 setOpaque:0];

    phonePadView4 = [(PHCarPlayDialerView *)v3 phonePadView];
    [phonePadView4 setAccessibilityIdentifier:@"PHCarPlayNumberPad"];

    v17 = objc_alloc_init(UIView);
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    lcdView3 = [(PHCarPlayDialerView *)v3 lcdView];
    [v17 addSubview:lcdView3];

    phonePadView5 = [(PHCarPlayDialerView *)v3 phonePadView];
    [v17 addSubview:phonePadView5];

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

      callButton = [(PHCarPlayDialerView *)v3 callButton];
      if (_os_feature_enabled_impl())
      {
        +[UIColor clearColor];
      }

      else
      {
        +[UIColor tableBackgroundColor];
      }
      v23 = ;
      [callButton setTitleColor:v23 forState:0];

      callButton2 = [(PHCarPlayDialerView *)v3 callButton];
      v25 = [UIImage tpImageForSymbolType:1 textStyle:UIFontTextStyleCallout scale:3 isStaticSize:1];
      [callButton2 setImage:v25 forState:0];

      v20 = +[UIColor whiteColor];
      callButton3 = [(PHCarPlayDialerView *)v3 callButton];
      [callButton3 setTintColor:v20];
    }

    callButton4 = [(PHCarPlayDialerView *)v3 callButton];
    LODWORD(v28) = 1148846080;
    [callButton4 setContentCompressionResistancePriority:0 forAxis:v28];

    callButton5 = [(PHCarPlayDialerView *)v3 callButton];
    [callButton5 setTranslatesAutoresizingMaskIntoConstraints:0];

    callButton6 = [(PHCarPlayDialerView *)v3 callButton];
    [callButton6 setAccessibilityIdentifier:@"PHCarPlayDialerCallButton"];

    callButton7 = [(PHCarPlayDialerView *)v3 callButton];
    [v17 addSubview:callButton7];

    v126 = [UIButton buttonWithType:0];
    [v126 setTranslatesAutoresizingMaskIntoConstraints:0];
    [v126 setConfigurationUpdateHandler:&__block_literal_global_7];
    [v126 setAccessibilityIdentifier:@"PHCarPlayDialerDeleteButton"];
    [(PHCarPlayDialerView *)v3 setDeleteButton:v126];
    deleteButton = [(PHCarPlayDialerView *)v3 deleteButton];
    [v17 addSubview:deleteButton];

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

    phonePadView6 = [(PHCarPlayDialerView *)v3 phonePadView];
    v42 = [NSLayoutConstraint constraintWithItem:phonePadView6 attribute:1 relatedBy:0 toItem:v17 attribute:1 multiplier:1.0 constant:12.0];
    [v17 addConstraint:v42];

    phonePadView7 = [(PHCarPlayDialerView *)v3 phonePadView];
    v44 = [NSLayoutConstraint constraintWithItem:phonePadView7 attribute:10 relatedBy:0 toItem:v17 attribute:10 multiplier:1.0 constant:0.0];
    [v17 addConstraint:v44];

    lcdView4 = [(PHCarPlayDialerView *)v3 lcdView];
    phonePadView8 = [(PHCarPlayDialerView *)v3 phonePadView];
    v47 = [NSLayoutConstraint constraintWithItem:lcdView4 attribute:1 relatedBy:0 toItem:phonePadView8 attribute:2 multiplier:1.0 constant:23.0];
    [v17 addConstraint:v47];

    lcdView5 = [(PHCarPlayDialerView *)v3 lcdView];
    v49 = [NSLayoutConstraint constraintWithItem:lcdView5 attribute:11 relatedBy:0 toItem:v17 attribute:3 multiplier:1.0 constant:79.5];
    [v17 addConstraint:v49];

    lcdView6 = [(PHCarPlayDialerView *)v3 lcdView];
    v51 = [NSLayoutConstraint constraintWithItem:lcdView6 attribute:2 relatedBy:0 toItem:v17 attribute:2 multiplier:1.0 constant:-12.0];
    [v17 addConstraint:v51];

    deleteButton2 = [(PHCarPlayDialerView *)v3 deleteButton];
    callButton8 = [(PHCarPlayDialerView *)v3 callButton];
    v54 = [NSLayoutConstraint constraintWithItem:deleteButton2 attribute:1 relatedBy:1 toItem:callButton8 attribute:2 multiplier:1.0 constant:8.0];
    [v17 addConstraint:v54];

    deleteButton3 = [(PHCarPlayDialerView *)v3 deleteButton];
    v56 = [NSLayoutConstraint constraintWithItem:deleteButton3 attribute:2 relatedBy:0 toItem:v17 attribute:2 multiplier:1.0 constant:-12.0];
    [v17 addConstraint:v56];

    deleteButton4 = [(PHCarPlayDialerView *)v3 deleteButton];
    widthAnchor = [deleteButton4 widthAnchor];
    v123 = [widthAnchor constraintEqualToConstant:36.0];
    v128[0] = v123;
    deleteButton5 = [(PHCarPlayDialerView *)v3 deleteButton];
    heightAnchor = [deleteButton5 heightAnchor];
    deleteButton6 = [(PHCarPlayDialerView *)v3 deleteButton];
    widthAnchor2 = [deleteButton6 widthAnchor];
    v58 = [heightAnchor constraintEqualToAnchor:widthAnchor2];
    v128[1] = v58;
    deleteButton7 = [(PHCarPlayDialerView *)v3 deleteButton];
    centerYAnchor = [deleteButton7 centerYAnchor];
    callButton9 = [(PHCarPlayDialerView *)v3 callButton];
    [callButton9 centerYAnchor];
    v62 = v119 = v17;
    v63 = [centerYAnchor constraintEqualToAnchor:v62 constant:4.0];
    v128[2] = v63;
    v64 = [NSArray arrayWithObjects:v128 count:3];
    [v17 addConstraints:v64];

    callButton10 = [(PHCarPlayDialerView *)v3 callButton];
    v66 = [NSLayoutConstraint constraintWithItem:callButton10 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:52.0];
    [v119 addConstraint:v66];

    callButton11 = [(PHCarPlayDialerView *)v3 callButton];
    callButton12 = [(PHCarPlayDialerView *)v3 callButton];
    v69 = [NSLayoutConstraint constraintWithItem:callButton11 attribute:7 relatedBy:0 toItem:callButton12 attribute:8 multiplier:1.0 constant:0.0];
    [v119 addConstraint:v69];

    callButton13 = [(PHCarPlayDialerView *)v3 callButton];
    lcdView7 = [(PHCarPlayDialerView *)v3 lcdView];
    LODWORD(v72) = 1144750080;
    v73 = [NSLayoutConstraint constraintWithItem:callButton13 attribute:3 relatedBy:0 toItem:lcdView7 attribute:11 multiplier:1.0 constant:56.0 priority:v72];
    [v119 addConstraint:v73];

    callButton14 = [(PHCarPlayDialerView *)v3 callButton];
    v75 = [NSLayoutConstraint constraintWithItem:callButton14 attribute:4 relatedBy:-1 toItem:v119 attribute:4 multiplier:1.0 constant:-8.0];
    [v119 addConstraint:v75];

    callButton15 = [(PHCarPlayDialerView *)v3 callButton];
    lcdView8 = [(PHCarPlayDialerView *)v3 lcdView];
    v78 = [NSLayoutConstraint constraintWithItem:callButton15 attribute:9 relatedBy:0 toItem:lcdView8 attribute:9 multiplier:1.0 constant:0.0];
    [v119 addConstraint:v78];

    phonePadView9 = [(PHCarPlayDialerView *)v3 phonePadView];
    LODWORD(v80) = 1148846080;
    [phonePadView9 setContentCompressionResistancePriority:0 forAxis:v80];

    phonePadView10 = [(PHCarPlayDialerView *)v3 phonePadView];
    LODWORD(v82) = 1148846080;
    [phonePadView10 setContentHuggingPriority:0 forAxis:v82];

    lcdView9 = [(PHCarPlayDialerView *)v3 lcdView];
    LODWORD(v84) = 1132068864;
    [lcdView9 setContentCompressionResistancePriority:0 forAxis:v84];

    deleteButton8 = [(PHCarPlayDialerView *)v3 deleteButton];
    LODWORD(v86) = 1148846080;
    [deleteButton8 setContentCompressionResistancePriority:0 forAxis:v86];

    v87 = objc_alloc_init(UIFocusContainerGuide);
    [(PHCarPlayDialerView *)v3 addLayoutGuide:v87];
    topAnchor = [v87 topAnchor];
    callButton16 = [(PHCarPlayDialerView *)v3 callButton];
    topAnchor2 = [callButton16 topAnchor];
    v91 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(PHCarPlayDialerView *)v3 addConstraint:v91];

    leftAnchor = [v87 leftAnchor];
    phonePadView11 = [(PHCarPlayDialerView *)v3 phonePadView];
    rightAnchor = [phonePadView11 rightAnchor];
    v95 = [leftAnchor constraintEqualToAnchor:rightAnchor];
    [(PHCarPlayDialerView *)v3 addConstraint:v95];

    rightAnchor2 = [v87 rightAnchor];
    rightAnchor3 = [(PHCarPlayDialerView *)v3 rightAnchor];
    v98 = [rightAnchor2 constraintEqualToAnchor:rightAnchor3];
    [(PHCarPlayDialerView *)v3 addConstraint:v98];

    bottomAnchor = [v87 bottomAnchor];
    bottomAnchor2 = [(PHCarPlayDialerView *)v3 bottomAnchor];
    v101 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(PHCarPlayDialerView *)v3 addConstraint:v101];

    v102 = objc_alloc_init(UIFocusContainerGuide);
    [(PHCarPlayDialerView *)v3 addLayoutGuide:v102];
    topAnchor3 = [v102 topAnchor];
    topAnchor4 = [(PHCarPlayDialerView *)v3 topAnchor];
    v105 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    [(PHCarPlayDialerView *)v3 addConstraint:v105];

    leftAnchor2 = [v102 leftAnchor];
    deleteButton9 = [(PHCarPlayDialerView *)v3 deleteButton];
    leftAnchor3 = [deleteButton9 leftAnchor];
    v109 = [leftAnchor2 constraintEqualToAnchor:leftAnchor3];
    [(PHCarPlayDialerView *)v3 addConstraint:v109];

    rightAnchor4 = [v102 rightAnchor];
    deleteButton10 = [(PHCarPlayDialerView *)v3 deleteButton];
    rightAnchor5 = [deleteButton10 rightAnchor];
    v113 = [rightAnchor4 constraintEqualToAnchor:rightAnchor5];
    [(PHCarPlayDialerView *)v3 addConstraint:v113];

    bottomAnchor3 = [v102 bottomAnchor];
    bottomAnchor4 = [(PHCarPlayDialerView *)v3 bottomAnchor];
    v116 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    [(PHCarPlayDialerView *)v3 addConstraint:v116];

    phonePadView12 = [(PHCarPlayDialerView *)v3 phonePadView];
    [phonePadView12 _setSpeedBumpEdges:15];
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
  phonePadView = [(PHCarPlayDialerView *)self phonePadView];
  _linearFocusMovementSequences = [phonePadView _linearFocusMovementSequences];

  firstObject = [_linearFocusMovementSequences firstObject];
  items = [firstObject items];
  callButton = [(PHCarPlayDialerView *)self callButton];
  v15[0] = callButton;
  deleteButton = [(PHCarPlayDialerView *)self deleteButton];
  v15[1] = deleteButton;
  v9 = [NSArray arrayWithObjects:v15 count:2];
  v10 = [items arrayByAddingObjectsFromArray:v9];

  v11 = [_UIFocusLinearMovementSequence sequenceWithItems:v10 loops:0];
  v14 = v11;
  v12 = [NSArray arrayWithObjects:&v14 count:1];

  return v12;
}

@end