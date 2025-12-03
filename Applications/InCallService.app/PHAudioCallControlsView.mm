@interface PHAudioCallControlsView
- (BOOL)needsReloadButtonViews;
- (CGSize)intrinsicContentSize;
- (PHAudioCallControlsView)initWithCallDisplayStyleManager:(id)manager;
- (PHAudioCallControlsViewDelegate)delegate;
- (double)_horizontalSpacing;
- (double)_verticalSpacing;
- (id)buttonForControlType:(unint64_t)type;
- (id)menuForAudioControlsButton:(id)button;
- (void)assignControlType:(unint64_t)type toButton:(id)button completion:(id)completion;
- (void)buttonLongPressGestureRecognizer:(id)recognizer;
- (void)buttonShortPressGestureRecognizer:(id)recognizer;
- (void)buttonTapped:(id)tapped;
- (void)changeVideoStreamingButtonTitleWithIsSharing:(BOOL)sharing;
- (void)dismissAudioRoutesMenu;
- (void)forceUpdateAudioRoutesImageForButton:(id)button completion:(id)completion;
- (void)reloadButtonViewStates;
- (void)reloadButtonViews;
- (void)replaceBlock:(id)block currentButton:(id)button;
- (void)setButtonsEnabled:(BOOL)enabled;
- (void)setCenter:(CGPoint)center;
- (void)setDelegate:(id)delegate;
- (void)setFrame:(CGRect)frame;
- (void)setPrefersWhiteButtonTextColor:(BOOL)color;
- (void)setSelectedState:(BOOL)state forControlType:(unint64_t)type;
- (void)setupStackViewForRowCount:(int64_t)count;
- (void)traitCollectionDidChange:(id)change;
- (void)updateBackgroundMaterial:(unint64_t)material;
- (void)updateControls;
@end

@implementation PHAudioCallControlsView

- (void)updateControls
{
  v3 = sub_100004F84();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v14) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "(UI) Asked to update Six-up Audio Controls", &v14, 2u);
  }

  v4 = +[UIApplication sharedApplication];
  delegate = [v4 delegate];
  mostRecentlyDisconnectedAudioCall = [delegate mostRecentlyDisconnectedAudioCall];

  if (mostRecentlyDisconnectedAudioCall && [mostRecentlyDisconnectedAudioCall isEmergency])
  {
    disconnectedReasonRequiresCallBackUI = [mostRecentlyDisconnectedAudioCall disconnectedReasonRequiresCallBackUI];
  }

  else
  {
    disconnectedReasonRequiresCallBackUI = 0;
  }

  v8 = +[TUCallCenter sharedInstance];
  frontmostCall = [v8 frontmostCall];

  if (frontmostCall || disconnectedReasonRequiresCallBackUI)
  {
    if ([(PHAudioCallControlsView *)self needsReloadButtonViews])
    {
      [(PHAudioCallControlsView *)self reloadButtonViews];
    }

    else
    {
      v13 = sub_100004F84();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v14) = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "(UI) No need to reload Six-up Audio Controls", &v14, 2u);
      }
    }

    [(PHAudioCallControlsView *)self reloadButtonViewStates];
  }

  else
  {
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = +[TUCallCenter sharedInstance];
      currentCalls = [v11 currentCalls];
      v14 = 138412290;
      v15 = currentCalls;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(UI) Ignoring call to update controls since frontmostCall is nil (current calls are %@).", &v14, 0xCu);
    }
  }
}

- (BOOL)needsReloadButtonViews
{
  delegate = [(PHAudioCallControlsView *)self delegate];
  v4 = [delegate numberOfRowsInControlsView:self];

  delegate2 = [(PHAudioCallControlsView *)self delegate];
  v6 = [delegate2 numberOfColumnsInControlsView:self];

  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = 0;
  while (!v6)
  {
LABEL_11:
    ++v8;
    v7 += v6;
    if (v8 == v4)
    {
      return 0;
    }
  }

  v9 = 0;
  while (1)
  {
    buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
    v11 = [buttonsArray count];

    if (v11 <= v7 + v9)
    {
      return 1;
    }

    delegate3 = [(PHAudioCallControlsView *)self delegate];
    v13 = [delegate3 controlTypeAtRow:v8 column:v9];

    buttonsArray2 = [(PHAudioCallControlsView *)self buttonsArray];
    v15 = [buttonsArray2 objectAtIndex:v7 + v9];

    if (v13 != [v15 controlType])
    {
      v16 = 1;
      goto LABEL_19;
    }

    if ([objc_opt_class() audioCallControlTypeDependsUponImage:v13])
    {
      break;
    }

LABEL_10:

    if (v6 == ++v9)
    {
      goto LABEL_11;
    }
  }

  if (v13 == 3)
  {
    [(PHAudioCallControlsView *)self forceUpdateAudioRoutesImageForButton:v15 completion:0];
    goto LABEL_10;
  }

  buttonsArray3 = [(PHAudioCallControlsView *)self buttonsArray];
  v18 = [buttonsArray3 objectAtIndexedSubscript:v7 + v9];

  delegate4 = [(PHAudioCallControlsView *)self delegate];
  v20 = [delegate4 imageForControlType:v13];

  iconImage = [v20 iconImage];
  image = [v18 image];
  if (iconImage == image)
  {
    iconView = [v20 iconView];
    controlView = [v18 controlView];
    v16 = iconView != controlView;
  }

  else
  {
    v16 = 1;
  }

LABEL_19:
  return v16;
}

- (PHAudioCallControlsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)reloadButtonViewStates
{
  delegate = [(PHAudioCallControlsView *)self delegate];
  v4 = [delegate numberOfRowsInControlsView:self];

  delegate2 = [(PHAudioCallControlsView *)self delegate];
  v6 = [delegate2 numberOfColumnsInControlsView:self];

  if (v4)
  {
    v7 = 0;
    for (i = 0; i != v4; ++i)
    {
      v9 = v6;
      v10 = v7;
      if (v6)
      {
        do
        {
          buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
          v12 = [buttonsArray count];

          if (v12 > v10)
          {
            buttonsArray2 = [(PHAudioCallControlsView *)self buttonsArray];
            v14 = [buttonsArray2 objectAtIndex:v10];

            controlType = [v14 controlType];
            if ([(PHAudioCallControlsView *)self buttonsEnabled])
            {
              delegate3 = [(PHAudioCallControlsView *)self delegate];
              [v14 setEnabled:{objc_msgSend(delegate3, "controlTypeIsEnabled:", controlType)}];
            }

            else
            {
              [v14 setEnabled:0];
            }

            delegate4 = [(PHAudioCallControlsView *)self delegate];
            if ([delegate4 controlTypeIsSelected:controlType])
            {
              isEnabled = [v14 isEnabled];
            }

            else
            {
              isEnabled = 0;
            }

            [v14 setSelected:isEnabled];

            [(PHAudioCallControlsView *)self assignControlType:controlType toButton:v14];
          }

          ++v10;
          --v9;
        }

        while (v9);
      }

      v7 += v6;
    }
  }
}

- (PHAudioCallControlsView)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = PHAudioCallControlsView;
  v5 = [(PHAudioCallControlsView *)&v13 init];
  v6 = v5;
  if (v5)
  {
    layer = [(PHAudioCallControlsView *)v5 layer];
    [layer setAllowsGroupBlending:0];

    layer2 = [(PHAudioCallControlsView *)v6 layer];
    [layer2 setAllowsGroupOpacity:0];

    v9 = +[UIColor clearColor];
    [(PHAudioCallControlsView *)v6 setBackgroundColor:v9];

    v6->_buttonsEnabled = 1;
    v6->_callDisplayStyleManager = managerCopy;
    v10 = objc_opt_new();
    buttonUpdates = v6->_buttonUpdates;
    v6->_buttonUpdates = v10;
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  callDisplayStyleManager = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if (!usesLargeFormatUI)
  {
    delegate = [(PHAudioCallControlsView *)self delegate];
    v10 = [delegate numberOfRowsInControlsView:self];

    buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
    v12 = [buttonsArray objectAtIndexedSubscript:0];
    [v12 intrinsicContentSize];
    v14 = v13;
    v15 = v10;
    [(PHAudioCallControlsView *)self _topMargin];
    v17 = v16 + v14 * v10;
    v18 = (v10 - 1);
    [(PHAudioCallControlsView *)self _verticalSpacing];
    v20 = v17 + v18 * v19;
    [(PHAudioCallControlsView *)self _verticalSpacing];
    v8 = v20 + v21 * 0.5;

    buttonsArray2 = +[PHInCallUtilities sharedInstance];
    isIPadIdiom = [buttonsArray2 isIPadIdiom];
    if (isIPadIdiom && (-[PHAudioCallControlsView callDisplayStyleManager](self, "callDisplayStyleManager"), v10 = objc_claimAutoreleasedReturnValue(), ![v10 usesLargeFormatUI]))
    {
      v6 = 320.0;
    }

    else
    {
      callDisplayStyleManager2 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

      if (isIPadIdiom)
      {
      }

      if (callDisplayStyle == 3)
      {
        v6 = 320.0;
        goto LABEL_14;
      }

      v26 = +[UIScreen mainScreen];
      [v26 bounds];
      v28 = v27;
      v6 = v29;

      if (v28 < v6)
      {
        v6 = v28;
      }

      buttonsArray2 = [(PHAudioCallControlsView *)self buttonsArray];
      v10 = [buttonsArray2 objectAtIndexedSubscript:0];
      [v10 intrinsicContentSize];
      v31 = v30;
      [(PHAudioCallControlsView *)self _topMargin];
      v33 = v32 + v31 * v15;
      [(PHAudioCallControlsView *)self _verticalSpacing];
      v8 = v33 + v18 * v34;
    }

    goto LABEL_14;
  }

  v37.receiver = self;
  v37.super_class = PHAudioCallControlsView;
  [(PHAudioCallControlsView *)&v37 intrinsicContentSize];
  v6 = v5;
  v8 = v7;
LABEL_14:
  v35 = v6;
  v36 = v8;
  result.height = v36;
  result.width = v35;
  return result;
}

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    objc_storeWeak(&self->_delegate, delegate);

    [(PHAudioCallControlsView *)self reloadButtonViews];
  }
}

- (void)setupStackViewForRowCount:(int64_t)count
{
  buttonStackView = [(PHAudioCallControlsView *)self buttonStackView];

  if (!buttonStackView)
  {
    v6 = objc_alloc_init(UIStackView);
    [(PHAudioCallControlsView *)self setButtonStackView:v6];

    buttonStackView2 = [(PHAudioCallControlsView *)self buttonStackView];
    [buttonStackView2 setAxis:1];

    buttonStackView3 = [(PHAudioCallControlsView *)self buttonStackView];
    [buttonStackView3 setSpacing:56.0];

    buttonStackView4 = [(PHAudioCallControlsView *)self buttonStackView];
    [buttonStackView4 setDistribution:3];

    buttonStackView5 = [(PHAudioCallControlsView *)self buttonStackView];
    [buttonStackView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    buttonStackView6 = [(PHAudioCallControlsView *)self buttonStackView];
    [(PHAudioCallControlsView *)self addSubview:buttonStackView6];

    buttonStackView7 = [(PHAudioCallControlsView *)self buttonStackView];
    leadingAnchor = [buttonStackView7 leadingAnchor];
    leadingAnchor2 = [(PHAudioCallControlsView *)self leadingAnchor];
    v29 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v34[0] = v29;
    buttonStackView8 = [(PHAudioCallControlsView *)self buttonStackView];
    trailingAnchor = [buttonStackView8 trailingAnchor];
    trailingAnchor2 = [(PHAudioCallControlsView *)self trailingAnchor];
    v25 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v34[1] = v25;
    buttonStackView9 = [(PHAudioCallControlsView *)self buttonStackView];
    topAnchor = [buttonStackView9 topAnchor];
    topAnchor2 = [(PHAudioCallControlsView *)self topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v34[2] = v14;
    buttonStackView10 = [(PHAudioCallControlsView *)self buttonStackView];
    bottomAnchor = [buttonStackView10 bottomAnchor];
    bottomAnchor2 = [(PHAudioCallControlsView *)self bottomAnchor];
    v18 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v34[3] = v18;
    v19 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = objc_opt_new();
    if (count >= 1)
    {
      do
      {
        v21 = objc_opt_new();
        [v21 setAxis:0];
        [v21 setDistribution:3];
        [v20 addObject:v21];
        buttonStackView11 = [(PHAudioCallControlsView *)self buttonStackView];
        [buttonStackView11 addArrangedSubview:v21];

        --count;
      }

      while (count);
    }

    v23 = [v20 copy];
    [(PHAudioCallControlsView *)self setStacks:v23];

    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000AA6A8;
    v33[3] = &unk_100356988;
    v33[4] = self;
    [UIView performWithoutAnimation:v33];
  }
}

- (void)reloadButtonViews
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "(UI) Reloading Six-up Audio Controls", buf, 2u);
  }

  v133 = 0u;
  v134 = 0u;
  v131 = 0u;
  v132 = 0u;
  buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
  v6 = [buttonsArray countByEnumeratingWithState:&v131 objects:v139 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v132;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v132 != v8)
        {
          objc_enumerationMutation(buttonsArray);
        }

        [*(*(&v131 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [buttonsArray countByEnumeratingWithState:&v131 objects:v139 count:16];
    }

    while (v7);
  }

  [(PHAudioCallControlsView *)self setButtonsArray:0];
  v119 = +[NSMutableArray array];
  delegate = [(PHAudioCallControlsView *)self delegate];
  v118 = [delegate numberOfRowsInControlsView:self];

  delegate2 = [(PHAudioCallControlsView *)self delegate];
  v120 = [delegate2 numberOfColumnsInControlsView:self];

  captureView5 = +[PHInCallUtilities sharedInstance];
  isIPadIdiom = [captureView5 isIPadIdiom];
  v13 = isIPadIdiom;
  if (isIPadIdiom)
  {
    i = [(PHAudioCallControlsView *)self callDisplayStyleManager];
    if (![i usesLargeFormatUI])
    {
      goto LABEL_19;
    }
  }

  captureView = [(PHAudioCallControlsView *)self captureView];
  if (captureView)
  {

    if ((v13 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v15 = _UISolariumEnabled();

  if (v13)
  {
  }

  if ((v15 & 1) == 0)
  {
    v16 = [_UIVisualEffectBackdropView alloc];
    [(PHAudioCallControlsView *)self bounds];
    v17 = [v16 initWithFrame:?];
    [(PHAudioCallControlsView *)self setCaptureView:v17];

    captureView2 = [(PHAudioCallControlsView *)self captureView];
    [captureView2 setAutoresizingMask:18];

    captureView3 = [(PHAudioCallControlsView *)self captureView];
    [(PHAudioCallControlsView *)self insertSubview:captureView3 atIndex:0];

    captureView4 = [(PHAudioCallControlsView *)self captureView];
    [captureView4 setRenderMode:1];

    captureView5 = [(PHAudioCallControlsView *)self captureView];
    i = [captureView5 captureGroup];
    [i setGroupName:@"InCallButtonsCaptureGroup"];
LABEL_19:

LABEL_20:
  }

  callDisplayStyleManager = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if (usesLargeFormatUI)
  {
    [(PHAudioCallControlsView *)self setupStackViewForRowCount:v118];
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    stacks = [(PHAudioCallControlsView *)self stacks];
    v24 = [stacks countByEnumeratingWithState:&v127 objects:v138 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v128;
      do
      {
        for (j = 0; j != v25; j = j + 1)
        {
          if (*v128 != v26)
          {
            objc_enumerationMutation(stacks);
          }

          v28 = *(*(&v127 + 1) + 8 * j);
          arrangedSubviews = [v28 arrangedSubviews];
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v30 = [arrangedSubviews countByEnumeratingWithState:&v123 objects:v137 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v124;
            do
            {
              for (k = 0; k != v31; k = k + 1)
              {
                if (*v124 != v32)
                {
                  objc_enumerationMutation(arrangedSubviews);
                }

                [v28 removeArrangedSubview:*(*(&v123 + 1) + 8 * k)];
              }

              v31 = [arrangedSubviews countByEnumeratingWithState:&v123 objects:v137 count:16];
            }

            while (v31);
          }
        }

        v25 = [stacks countByEnumeratingWithState:&v127 objects:v138 count:16];
      }

      while (v25);
    }
  }

  if (v118)
  {
    v121 = 0;
    v34 = (v120 - 1);
    v35 = &_sScI4next7ElementQzSgyYaKFTj_ptr;
    while (!v120)
    {
LABEL_80:
      if (++v121 == v118)
      {
        goto LABEL_81;
      }
    }

    v36 = 0;
    v37 = v120 - 1;
    while (1)
    {
      callDisplayStyleManager2 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

      v122 = v37;
      if (callDisplayStyle == 3)
      {
        break;
      }

      callDisplayStyleManager3 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      usesLargeFormatUI2 = [callDisplayStyleManager3 usesLargeFormatUI];

      if (usesLargeFormatUI2)
      {
        v44 = +[UIScreen mainScreen];
        [v44 bounds];
        v46 = v45;
        v48 = v47;

        if (v46 >= v48)
        {
          v49 = v46;
        }

        else
        {
          v49 = v48;
        }

        v41 = v49 * 0.065;
        goto LABEL_48;
      }

      v50 = [PHAudioControlsButton buttonWithType:0];
LABEL_50:
      v51 = v50;
      [(PHAudioControlsButton *)v50 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHAudioControlsButton *)v51 setOpaque:0];
      v52 = v35;
      v53 = v35[356];
      widthAnchor = [(PHAudioControlsButton *)v51 widthAnchor];
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v55 = [widthAnchor constraintEqualToConstant:?];
      v136[0] = v55;
      heightAnchor = [(PHAudioControlsButton *)v51 heightAnchor];
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v58 = [heightAnchor constraintEqualToConstant:v57];
      v136[1] = v58;
      v59 = [NSArray arrayWithObjects:v136 count:2];
      [v53 activateConstraints:v59];

      callDisplayStyleManager4 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      if ([callDisplayStyleManager4 usesLargeFormatUI])
      {
        stacks2 = [(PHAudioCallControlsView *)self stacks];

        v35 = v52;
        if (stacks2)
        {
          stacks3 = [(PHAudioCallControlsView *)self stacks];
          v63 = [stacks3 objectAtIndex:v121];

          [v63 addArrangedSubview:v51];
          v64 = v122;
          goto LABEL_71;
        }
      }

      else
      {

        v35 = v52;
      }

      [(PHAudioCallControlsView *)self addSubview:v51];
      v65 = +[PHInCallUtilities sharedInstance];
      v64 = v122;
      if ([v65 isIPadIdiom])
      {

LABEL_57:
        if ([(PHAudioCallControlsView *)self _shouldReverseLayoutDirection])
        {
          v68 = v122;
        }

        else
        {
          v68 = v36;
        }

        [(PHAudioControlsButton *)v51 intrinsicContentSize];
        v70 = v69;
        [(PHAudioCallControlsView *)self _horizontalSpacing];
        v72 = v71 * v34 + v120 * v70;
        [(PHAudioControlsButton *)v51 intrinsicContentSize];
        v74 = v73;
        if (v68)
        {
          v75 = 1.0;
        }

        else
        {
          v75 = 0.0;
        }

        [(PHAudioCallControlsView *)self _horizontalSpacing];
        *&v76 = (v74 + v75 * v76) * v68;
        v77 = *&v76 + (v72 * -0.5);
        [(PHAudioControlsButton *)v51 intrinsicContentSize];
        v79 = v78 * 0.5 + v77;
        callDisplayStyleManager5 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
        usesLargeFormatUI3 = [callDisplayStyleManager5 usesLargeFormatUI];

        if (usesLargeFormatUI3)
        {
          [(PHAudioCallControlsView *)self frame];
          v83 = v82;
          [(PHAudioControlsButton *)v51 intrinsicContentSize];
          v79 = fmax(v79, (v83 + -v120 * v84) / v34);
        }

        v85 = v35[356];
        v86 = v79;
        v87 = 1.0;
        v88 = v51;
        v89 = 9;
        selfCopy2 = self;
        v91 = 9;
        goto LABEL_70;
      }

      callDisplayStyleManager6 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      callDisplayStyle2 = [callDisplayStyleManager6 callDisplayStyle];

      if (callDisplayStyle2 == 3)
      {
        goto LABEL_57;
      }

      v92 = +[UIScreen mainScreen];
      [v92 bounds];
      v94 = v93;
      v96 = v95;

      if (v94 >= v96)
      {
        v97 = v96;
      }

      else
      {
        v97 = v94;
      }

      v98 = v97 * 0.102;
      v99 = v97 + v97 * 0.102 * -2.0;
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v101 = (v99 + v100 * -3.0) * 0.5;
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v86 = v98 + v36 * v102 + v36 * v101;
      v85 = v35[356];
      v87 = 1.0;
      v88 = v51;
      v89 = 5;
      selfCopy2 = self;
      v91 = 5;
LABEL_70:
      v103 = [v85 constraintWithItem:v88 attribute:v89 relatedBy:0 toItem:selfCopy2 attribute:v91 multiplier:v87 constant:v86];
      [(PHAudioCallControlsView *)self addConstraint:v103];

      v104 = v35[356];
      [(PHAudioCallControlsView *)self _topMargin];
      v106 = v105;
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v108 = v107;
      [(PHAudioCallControlsView *)self _verticalSpacing];
      v63 = [v104 constraintWithItem:v51 attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:v106 + v121 * (v108 + v109)];
      [(PHAudioCallControlsView *)self addConstraint:v63];
LABEL_71:

      delegate3 = [(PHAudioCallControlsView *)self delegate];
      v111 = [delegate3 controlTypeAtRow:v121 column:v36];

      [(PHAudioControlsButton *)v51 setControlType:v111];
      if (v111 == 3)
      {
        [(PHAudioControlsButton *)v51 setMenuDataSource:self];
      }

      else
      {
        [(PHAudioControlsButton *)v51 addTarget:self action:"buttonTapped:" forControlEvents:64];
      }

      v112 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"buttonShortPressGestureRecognizer:"];
      [v112 setMinimumPressDuration:1.5];
      [(PHAudioControlsButton *)v51 addGestureRecognizer:v112];
      v113 = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:"buttonLongPressGestureRecognizer:"];
      [v113 setMinimumPressDuration:3.0];
      [v113 setAllowableMovement:1000.0];
      [(PHAudioControlsButton *)v51 addGestureRecognizer:v113];
      [v112 requireGestureRecognizerToFail:v113];
      [v119 addObject:v51];
      v114 = +[PHInCallUtilities sharedInstance];
      if ([v114 isIPadIdiom])
      {
        callDisplayStyleManager7 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
        usesLargeFormatUI4 = [callDisplayStyleManager7 usesLargeFormatUI];

        if (!usesLargeFormatUI4)
        {
          goto LABEL_79;
        }
      }

      else
      {
      }

      captureView6 = [(PHAudioCallControlsView *)self captureView];
      [(PHAudioControlsButton *)v51 setCaptureView:captureView6];

LABEL_79:
      ++v36;
      v37 = v64 - 1;
      if (v120 == v36)
      {
        goto LABEL_80;
      }
    }

    +[PHUIConfiguration ambientInCallControlSize];
    v41 = v40;
LABEL_48:
    v50 = [[PHAudioControlsButton alloc] initWithSize:v41, v41];
    goto LABEL_50;
  }

LABEL_81:
  [(PHAudioCallControlsView *)self setButtonsArray:v119];
  [(PHAudioCallControlsView *)self reloadButtonViewStates];
  [(PHAudioCallControlsView *)self invalidateIntrinsicContentSize];
}

- (void)replaceBlock:(id)block currentButton:(id)button
{
  blockCopy = block;
  buttonCopy = button;
  if (buttonCopy)
  {
    buttonUpdates = [(PHAudioCallControlsView *)self buttonUpdates];
    uuid = [buttonCopy uuid];
    v9 = [buttonUpdates objectForKey:uuid];

    if (v9)
    {
      dispatch_block_cancel(v9);
    }

    buttonUpdates2 = [(PHAudioCallControlsView *)self buttonUpdates];
    if (blockCopy)
    {
      uuid3 = objc_retainBlock(blockCopy);
      uuid2 = [buttonCopy uuid];
      [buttonUpdates2 setObject:uuid3 forKey:uuid2];
    }

    else
    {
      uuid3 = [buttonCopy uuid];
      [buttonUpdates2 removeObjectForKey:uuid3];
    }
  }
}

- (void)forceUpdateAudioRoutesImageForButton:(id)button completion:(id)completion
{
  buttonCopy = button;
  completionCopy = completion;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_1000AB4AC;
  v20[4] = sub_1000AB4BC;
  v21 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000AB4C4;
  block[3] = &unk_1003578D8;
  v19 = v20;
  v8 = buttonCopy;
  v18 = v8;
  v9 = dispatch_block_create(0, block);
  [(PHAudioCallControlsView *)self replaceBlock:v9 currentButton:v8];
  delegate = [(PHAudioCallControlsView *)self delegate];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AB5B8;
  v13[3] = &unk_100358838;
  v16 = v20;
  v11 = v9;
  v14 = v11;
  v12 = completionCopy;
  v15 = v12;
  [delegate fetchAudioRoutesImageWithCompletion:v13];

  _Block_object_dispose(v20, 8);
}

- (void)dismissAudioRoutesMenu
{
  v3 = [(PHAudioCallControlsView *)self buttonForControlType:3];
  contextMenuInteraction = [v3 contextMenuInteraction];
  [contextMenuInteraction dismissMenu];
}

- (void)assignControlType:(unint64_t)type toButton:(id)button completion:(id)completion
{
  buttonCopy = button;
  completionCopy = completion;
  if (buttonCopy && ([buttonCopy imageForState:0], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000ABAE0;
    v35[3] = &unk_100358860;
    v11 = buttonCopy;
    v36 = v11;
    selfCopy = self;
    typeCopy = type;
    v12 = objc_retainBlock(v35);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000ABCA8;
    v31[3] = &unk_100358888;
    v13 = v11;
    v32 = v13;
    selfCopy2 = self;
    typeCopy2 = type;
    v14 = objc_retainBlock(v31);
    if (type == 3)
    {
      v15 = +[TURoute speakerAudioRouteGlyph];
      v16 = [v15 imageWithRenderingMode:2];
      (v14[2])(v14, v16);

      v29[0] = 0;
      v29[1] = v29;
      v29[2] = 0x3032000000;
      v29[3] = sub_1000AB4AC;
      v29[4] = sub_1000AB4BC;
      v30 = 0;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000ABDB8;
      block[3] = &unk_1003588B0;
      v27 = v14;
      v28 = v29;
      v17 = dispatch_block_create(0, block);
      [(PHAudioCallControlsView *)self replaceBlock:v17 currentButton:v13];
      delegate = [(PHAudioCallControlsView *)self delegate];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000ABDD4;
      v22[3] = &unk_1003588D8;
      v25 = v29;
      v22[4] = self;
      v19 = v17;
      v23 = v19;
      v24 = completionCopy;
      [delegate fetchAudioRoutesImageWithCompletion:v22];

      _Block_object_dispose(v29, 8);
    }

    else
    {
      [(PHAudioCallControlsView *)self replaceBlock:0 currentButton:v13];
      delegate2 = [(PHAudioCallControlsView *)self delegate];
      v21 = [delegate2 imageForControlType:type];
      (v12[2])(v12, v21);

      if (completionCopy)
      {
        completionCopy[2](completionCopy);
      }
    }
  }

  else if (completionCopy)
  {
    completionCopy[2](completionCopy);
  }
}

- (void)buttonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHAudioCallControlsView *)self delegate];
  [delegate controlTypeTapped:objc_msgSend(tappedCopy forView:{"controlType"), tappedCopy}];
}

- (void)buttonShortPressGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    delegate = [(PHAudioCallControlsView *)self delegate];
    view = [recognizerCopy view];
    [delegate controlTypeShortPressed:{objc_msgSend(view, "controlType")}];
  }
}

- (void)buttonLongPressGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  if ([recognizerCopy state] == 1)
  {
    delegate = [(PHAudioCallControlsView *)self delegate];
    view = [recognizerCopy view];
    [delegate controlTypeLongPressed:{objc_msgSend(view, "controlType")}];
  }
}

- (void)setSelectedState:(BOOL)state forControlType:(unint64_t)type
{
  stateCopy = state;
  v5 = [(PHAudioCallControlsView *)self buttonForControlType:type];
  [v5 setSelected:stateCopy];
}

- (id)buttonForControlType:(unint64_t)type
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
  v5 = [buttonsArray countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(buttonsArray);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 controlType] == type)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [buttonsArray countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (void)setButtonsEnabled:(BOOL)enabled
{
  if (self->_buttonsEnabled != enabled)
  {
    enabledCopy = enabled;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
    v6 = [buttonsArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(buttonsArray);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (!enabledCopy)
          {
            [*(*(&v11 + 1) + 8 * v9) setSelected:0];
          }

          [v10 setEnabled:enabledCopy];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [buttonsArray countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    self->_buttonsEnabled = enabledCopy;
  }
}

- (void)setPrefersWhiteButtonTextColor:(BOOL)color
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
  v5 = [buttonsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(buttonsArray);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (color)
        {
          v10 = +[UIColor whiteColor];
          [v9 setTitleColor:v10 forState:0];

          +[UIColor whiteColor];
        }

        else
        {
          v11 = +[UIColor blackColor];
          [v9 setTitleColor:v11 forState:0];

          +[UIColor blackColor];
        }
        v12 = ;
        [v9 setTitleColor:v12 forState:2];
      }

      v6 = [buttonsArray countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)updateBackgroundMaterial:(unint64_t)material
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    materialCopy = material;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: Setting button background material to type: %lu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
  v7 = [buttonsArray countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(buttonsArray);
        }

        [*(*(&v11 + 1) + 8 * v10) updateBackgroundMaterial:material];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [buttonsArray countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)changeVideoStreamingButtonTitleWithIsSharing:(BOOL)sharing
{
  sharingCopy = sharing;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  buttonsArray = [(PHAudioCallControlsView *)self buttonsArray];
  v5 = [buttonsArray countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(buttonsArray);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 controlType] == 17)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          if (sharingCopy)
          {
            v12 = @"LIVE_VIDEO";
          }

          else
          {
            v12 = @"RESUME_VIDEO";
          }

          v13 = [v10 localizedStringForKey:v12 value:&stru_100361FD0 table:@"InCallService"];
          [v9 setTitle:v13 forState:0];

          goto LABEL_14;
        }
      }

      v6 = [buttonsArray countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)setCenter:(CGPoint)center
{
  y = center.y;
  x = center.x;
  [(PHAudioCallControlsView *)self transform];
  if (CGAffineTransformIsIdentity(&v7))
  {
    v6.receiver = self;
    v6.super_class = PHAudioCallControlsView;
    [(PHAudioCallControlsView *)&v6 setCenter:x, y];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(PHAudioCallControlsView *)self transform];
  if (CGAffineTransformIsIdentity(&v9))
  {
    v8.receiver = self;
    v8.super_class = PHAudioCallControlsView;
    [(PHAudioCallControlsView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v11.receiver = self;
  v11.super_class = PHAudioCallControlsView;
  changeCopy = change;
  [(PHAudioCallControlsView *)&v11 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHAudioCallControlsView *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    traitCollection2 = [(PHAudioCallControlsView *)self traitCollection];
    _backlightLuminance3 = [traitCollection2 _backlightLuminance];

    [(PHAudioCallControlsView *)self setUserInteractionEnabled:_backlightLuminance3 != 1];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = _backlightLuminance3 != 1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting userInteractionEnabled of controls view to %d because of back light change", buf, 8u);
    }
  }
}

- (double)_verticalSpacing
{
  callDisplayStyleManager = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  v5 = 0.0;
  if (callDisplayStyle == 3)
  {
    return v5;
  }

  callDisplayStyleManager2 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager2 usesLargeFormatUI];

  if (usesLargeFormatUI)
  {
    v8 = +[UIScreen mainScreen];
    [v8 bounds];
    v10 = v9;
    v12 = v11;

    if (v10 >= v12)
    {
      v13 = v10;
    }

    else
    {
      v13 = v12;
    }

    return v13 * 0.03;
  }

  v14 = +[PHInCallUtilities sharedInstance];
  if ([v14 isIPadIdiom])
  {
    callDisplayStyleManager3 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
    usesLargeFormatUI2 = [callDisplayStyleManager3 usesLargeFormatUI];

    if (!usesLargeFormatUI2)
    {
      v17 = +[PHUIConfiguration inCallControlSpacing];
      if (v17 <= 5)
      {
        return dbl_1002F9258[v17];
      }

      return v5;
    }
  }

  else
  {
  }

  v18 = +[UIScreen mainScreen];
  [v18 bounds];
  v20 = v19;
  v22 = v21;

  if (v20 < v22)
  {
    v20 = v22;
  }

  +[PHUIConfiguration inCallControlButtonVerticalSpacingRatio];
  return v23 * v20;
}

- (double)_horizontalSpacing
{
  callDisplayStyleManager = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {

    +[PHUIConfiguration ambientInCallControlSpacing];
  }

  else
  {
    v5 = +[PHUIConfiguration inCallControlSpacing];
    result = 0.0;
    if (v5 <= 5)
    {
      return dbl_1002F9288[v5];
    }
  }

  return result;
}

- (id)menuForAudioControlsButton:(id)button
{
  delegate = [(PHAudioCallControlsView *)self delegate];
  audioRouteMenu = [delegate audioRouteMenu];

  return audioRouteMenu;
}

@end