@interface PHAudioCallControlsView
- (BOOL)needsReloadButtonViews;
- (CGSize)intrinsicContentSize;
- (PHAudioCallControlsView)initWithCallDisplayStyleManager:(id)a3;
- (PHAudioCallControlsViewDelegate)delegate;
- (double)_horizontalSpacing;
- (double)_verticalSpacing;
- (id)buttonForControlType:(unint64_t)a3;
- (id)menuForAudioControlsButton:(id)a3;
- (void)assignControlType:(unint64_t)a3 toButton:(id)a4 completion:(id)a5;
- (void)buttonLongPressGestureRecognizer:(id)a3;
- (void)buttonShortPressGestureRecognizer:(id)a3;
- (void)buttonTapped:(id)a3;
- (void)changeVideoStreamingButtonTitleWithIsSharing:(BOOL)a3;
- (void)dismissAudioRoutesMenu;
- (void)forceUpdateAudioRoutesImageForButton:(id)a3 completion:(id)a4;
- (void)reloadButtonViewStates;
- (void)reloadButtonViews;
- (void)replaceBlock:(id)a3 currentButton:(id)a4;
- (void)setButtonsEnabled:(BOOL)a3;
- (void)setCenter:(CGPoint)a3;
- (void)setDelegate:(id)a3;
- (void)setFrame:(CGRect)a3;
- (void)setPrefersWhiteButtonTextColor:(BOOL)a3;
- (void)setSelectedState:(BOOL)a3 forControlType:(unint64_t)a4;
- (void)setupStackViewForRowCount:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateBackgroundMaterial:(unint64_t)a3;
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
  v5 = [v4 delegate];
  v6 = [v5 mostRecentlyDisconnectedAudioCall];

  if (v6 && [v6 isEmergency])
  {
    v7 = [v6 disconnectedReasonRequiresCallBackUI];
  }

  else
  {
    v7 = 0;
  }

  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 frontmostCall];

  if (v9 || v7)
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
      v12 = [v11 currentCalls];
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "(UI) Ignoring call to update controls since frontmostCall is nil (current calls are %@).", &v14, 0xCu);
    }
  }
}

- (BOOL)needsReloadButtonViews
{
  v3 = [(PHAudioCallControlsView *)self delegate];
  v4 = [v3 numberOfRowsInControlsView:self];

  v5 = [(PHAudioCallControlsView *)self delegate];
  v6 = [v5 numberOfColumnsInControlsView:self];

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
    v10 = [(PHAudioCallControlsView *)self buttonsArray];
    v11 = [v10 count];

    if (v11 <= v7 + v9)
    {
      return 1;
    }

    v12 = [(PHAudioCallControlsView *)self delegate];
    v13 = [v12 controlTypeAtRow:v8 column:v9];

    v14 = [(PHAudioCallControlsView *)self buttonsArray];
    v15 = [v14 objectAtIndex:v7 + v9];

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

  v17 = [(PHAudioCallControlsView *)self buttonsArray];
  v18 = [v17 objectAtIndexedSubscript:v7 + v9];

  v19 = [(PHAudioCallControlsView *)self delegate];
  v20 = [v19 imageForControlType:v13];

  v21 = [v20 iconImage];
  v22 = [v18 image];
  if (v21 == v22)
  {
    v23 = [v20 iconView];
    v24 = [v18 controlView];
    v16 = v23 != v24;
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
  v3 = [(PHAudioCallControlsView *)self delegate];
  v4 = [v3 numberOfRowsInControlsView:self];

  v5 = [(PHAudioCallControlsView *)self delegate];
  v6 = [v5 numberOfColumnsInControlsView:self];

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
          v11 = [(PHAudioCallControlsView *)self buttonsArray];
          v12 = [v11 count];

          if (v12 > v10)
          {
            v13 = [(PHAudioCallControlsView *)self buttonsArray];
            v14 = [v13 objectAtIndex:v10];

            v15 = [v14 controlType];
            if ([(PHAudioCallControlsView *)self buttonsEnabled])
            {
              v16 = [(PHAudioCallControlsView *)self delegate];
              [v14 setEnabled:{objc_msgSend(v16, "controlTypeIsEnabled:", v15)}];
            }

            else
            {
              [v14 setEnabled:0];
            }

            v17 = [(PHAudioCallControlsView *)self delegate];
            if ([v17 controlTypeIsSelected:v15])
            {
              v18 = [v14 isEnabled];
            }

            else
            {
              v18 = 0;
            }

            [v14 setSelected:v18];

            [(PHAudioCallControlsView *)self assignControlType:v15 toButton:v14];
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

- (PHAudioCallControlsView)initWithCallDisplayStyleManager:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = PHAudioCallControlsView;
  v5 = [(PHAudioCallControlsView *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = [(PHAudioCallControlsView *)v5 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = [(PHAudioCallControlsView *)v6 layer];
    [v8 setAllowsGroupOpacity:0];

    v9 = +[UIColor clearColor];
    [(PHAudioCallControlsView *)v6 setBackgroundColor:v9];

    v6->_buttonsEnabled = 1;
    v6->_callDisplayStyleManager = v4;
    v10 = objc_opt_new();
    buttonUpdates = v6->_buttonUpdates;
    v6->_buttonUpdates = v10;
  }

  return v6;
}

- (CGSize)intrinsicContentSize
{
  v3 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  v4 = [v3 usesLargeFormatUI];

  if (!v4)
  {
    v9 = [(PHAudioCallControlsView *)self delegate];
    v10 = [v9 numberOfRowsInControlsView:self];

    v11 = [(PHAudioCallControlsView *)self buttonsArray];
    v12 = [v11 objectAtIndexedSubscript:0];
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

    v22 = +[PHInCallUtilities sharedInstance];
    v23 = [v22 isIPadIdiom];
    if (v23 && (-[PHAudioCallControlsView callDisplayStyleManager](self, "callDisplayStyleManager"), v10 = objc_claimAutoreleasedReturnValue(), ![v10 usesLargeFormatUI]))
    {
      v6 = 320.0;
    }

    else
    {
      v24 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      v25 = [v24 callDisplayStyle];

      if (v23)
      {
      }

      if (v25 == 3)
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

      v22 = [(PHAudioCallControlsView *)self buttonsArray];
      v10 = [v22 objectAtIndexedSubscript:0];
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

- (void)setDelegate:(id)a3
{
  if (a3)
  {
    objc_storeWeak(&self->_delegate, a3);

    [(PHAudioCallControlsView *)self reloadButtonViews];
  }
}

- (void)setupStackViewForRowCount:(int64_t)a3
{
  v5 = [(PHAudioCallControlsView *)self buttonStackView];

  if (!v5)
  {
    v6 = objc_alloc_init(UIStackView);
    [(PHAudioCallControlsView *)self setButtonStackView:v6];

    v7 = [(PHAudioCallControlsView *)self buttonStackView];
    [v7 setAxis:1];

    v8 = [(PHAudioCallControlsView *)self buttonStackView];
    [v8 setSpacing:56.0];

    v9 = [(PHAudioCallControlsView *)self buttonStackView];
    [v9 setDistribution:3];

    v10 = [(PHAudioCallControlsView *)self buttonStackView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(PHAudioCallControlsView *)self buttonStackView];
    [(PHAudioCallControlsView *)self addSubview:v11];

    v32 = [(PHAudioCallControlsView *)self buttonStackView];
    v31 = [v32 leadingAnchor];
    v30 = [(PHAudioCallControlsView *)self leadingAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v34[0] = v29;
    v28 = [(PHAudioCallControlsView *)self buttonStackView];
    v27 = [v28 trailingAnchor];
    v26 = [(PHAudioCallControlsView *)self trailingAnchor];
    v25 = [v27 constraintEqualToAnchor:v26];
    v34[1] = v25;
    v24 = [(PHAudioCallControlsView *)self buttonStackView];
    v12 = [v24 topAnchor];
    v13 = [(PHAudioCallControlsView *)self topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    v34[2] = v14;
    v15 = [(PHAudioCallControlsView *)self buttonStackView];
    v16 = [v15 bottomAnchor];
    v17 = [(PHAudioCallControlsView *)self bottomAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
    v34[3] = v18;
    v19 = [NSArray arrayWithObjects:v34 count:4];
    [NSLayoutConstraint activateConstraints:v19];

    v20 = objc_opt_new();
    if (a3 >= 1)
    {
      do
      {
        v21 = objc_opt_new();
        [v21 setAxis:0];
        [v21 setDistribution:3];
        [v20 addObject:v21];
        v22 = [(PHAudioCallControlsView *)self buttonStackView];
        [v22 addArrangedSubview:v21];

        --a3;
      }

      while (a3);
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
  v5 = [(PHAudioCallControlsView *)self buttonsArray];
  v6 = [v5 countByEnumeratingWithState:&v131 objects:v139 count:16];
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
          objc_enumerationMutation(v5);
        }

        [*(*(&v131 + 1) + 8 * i) removeFromSuperview];
      }

      v7 = [v5 countByEnumeratingWithState:&v131 objects:v139 count:16];
    }

    while (v7);
  }

  [(PHAudioCallControlsView *)self setButtonsArray:0];
  v119 = +[NSMutableArray array];
  v9 = [(PHAudioCallControlsView *)self delegate];
  v118 = [v9 numberOfRowsInControlsView:self];

  v10 = [(PHAudioCallControlsView *)self delegate];
  v120 = [v10 numberOfColumnsInControlsView:self];

  v11 = +[PHInCallUtilities sharedInstance];
  v12 = [v11 isIPadIdiom];
  v13 = v12;
  if (v12)
  {
    i = [(PHAudioCallControlsView *)self callDisplayStyleManager];
    if (![i usesLargeFormatUI])
    {
      goto LABEL_19;
    }
  }

  v14 = [(PHAudioCallControlsView *)self captureView];
  if (v14)
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

    v18 = [(PHAudioCallControlsView *)self captureView];
    [v18 setAutoresizingMask:18];

    v19 = [(PHAudioCallControlsView *)self captureView];
    [(PHAudioCallControlsView *)self insertSubview:v19 atIndex:0];

    v20 = [(PHAudioCallControlsView *)self captureView];
    [v20 setRenderMode:1];

    v11 = [(PHAudioCallControlsView *)self captureView];
    i = [v11 captureGroup];
    [i setGroupName:@"InCallButtonsCaptureGroup"];
LABEL_19:

LABEL_20:
  }

  v21 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  v22 = [v21 usesLargeFormatUI];

  if (v22)
  {
    [(PHAudioCallControlsView *)self setupStackViewForRowCount:v118];
    v129 = 0u;
    v130 = 0u;
    v127 = 0u;
    v128 = 0u;
    v23 = [(PHAudioCallControlsView *)self stacks];
    v24 = [v23 countByEnumeratingWithState:&v127 objects:v138 count:16];
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
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v127 + 1) + 8 * j);
          v29 = [v28 arrangedSubviews];
          v123 = 0u;
          v124 = 0u;
          v125 = 0u;
          v126 = 0u;
          v30 = [v29 countByEnumeratingWithState:&v123 objects:v137 count:16];
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
                  objc_enumerationMutation(v29);
                }

                [v28 removeArrangedSubview:*(*(&v123 + 1) + 8 * k)];
              }

              v31 = [v29 countByEnumeratingWithState:&v123 objects:v137 count:16];
            }

            while (v31);
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v127 objects:v138 count:16];
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
      v38 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      v39 = [v38 callDisplayStyle];

      v122 = v37;
      if (v39 == 3)
      {
        break;
      }

      v42 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      v43 = [v42 usesLargeFormatUI];

      if (v43)
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
      v54 = [(PHAudioControlsButton *)v51 widthAnchor];
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v55 = [v54 constraintEqualToConstant:?];
      v136[0] = v55;
      v56 = [(PHAudioControlsButton *)v51 heightAnchor];
      [(PHAudioControlsButton *)v51 intrinsicContentSize];
      v58 = [v56 constraintEqualToConstant:v57];
      v136[1] = v58;
      v59 = [NSArray arrayWithObjects:v136 count:2];
      [v53 activateConstraints:v59];

      v60 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      if ([v60 usesLargeFormatUI])
      {
        v61 = [(PHAudioCallControlsView *)self stacks];

        v35 = v52;
        if (v61)
        {
          v62 = [(PHAudioCallControlsView *)self stacks];
          v63 = [v62 objectAtIndex:v121];

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
        v80 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
        v81 = [v80 usesLargeFormatUI];

        if (v81)
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
        v90 = self;
        v91 = 9;
        goto LABEL_70;
      }

      v66 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
      v67 = [v66 callDisplayStyle];

      if (v67 == 3)
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
      v90 = self;
      v91 = 5;
LABEL_70:
      v103 = [v85 constraintWithItem:v88 attribute:v89 relatedBy:0 toItem:v90 attribute:v91 multiplier:v87 constant:v86];
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

      v110 = [(PHAudioCallControlsView *)self delegate];
      v111 = [v110 controlTypeAtRow:v121 column:v36];

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
        v115 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
        v116 = [v115 usesLargeFormatUI];

        if (!v116)
        {
          goto LABEL_79;
        }
      }

      else
      {
      }

      v117 = [(PHAudioCallControlsView *)self captureView];
      [(PHAudioControlsButton *)v51 setCaptureView:v117];

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

- (void)replaceBlock:(id)a3 currentButton:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (v6)
  {
    v7 = [(PHAudioCallControlsView *)self buttonUpdates];
    v8 = [v6 uuid];
    v9 = [v7 objectForKey:v8];

    if (v9)
    {
      dispatch_block_cancel(v9);
    }

    v10 = [(PHAudioCallControlsView *)self buttonUpdates];
    if (v13)
    {
      v11 = objc_retainBlock(v13);
      v12 = [v6 uuid];
      [v10 setObject:v11 forKey:v12];
    }

    else
    {
      v11 = [v6 uuid];
      [v10 removeObjectForKey:v11];
    }
  }
}

- (void)forceUpdateAudioRoutesImageForButton:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v18 = v8;
  v9 = dispatch_block_create(0, block);
  [(PHAudioCallControlsView *)self replaceBlock:v9 currentButton:v8];
  v10 = [(PHAudioCallControlsView *)self delegate];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000AB5B8;
  v13[3] = &unk_100358838;
  v16 = v20;
  v11 = v9;
  v14 = v11;
  v12 = v7;
  v15 = v12;
  [v10 fetchAudioRoutesImageWithCompletion:v13];

  _Block_object_dispose(v20, 8);
}

- (void)dismissAudioRoutesMenu
{
  v3 = [(PHAudioCallControlsView *)self buttonForControlType:3];
  v2 = [v3 contextMenuInteraction];
  [v2 dismissMenu];
}

- (void)assignControlType:(unint64_t)a3 toButton:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  if (v8 && ([v8 imageForState:0], v10 = objc_claimAutoreleasedReturnValue(), v10, !v10))
  {
    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_1000ABAE0;
    v35[3] = &unk_100358860;
    v11 = v8;
    v36 = v11;
    v37 = self;
    v38 = a3;
    v12 = objc_retainBlock(v35);
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000ABCA8;
    v31[3] = &unk_100358888;
    v13 = v11;
    v32 = v13;
    v33 = self;
    v34 = a3;
    v14 = objc_retainBlock(v31);
    if (a3 == 3)
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
      v18 = [(PHAudioCallControlsView *)self delegate];
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_1000ABDD4;
      v22[3] = &unk_1003588D8;
      v25 = v29;
      v22[4] = self;
      v19 = v17;
      v23 = v19;
      v24 = v9;
      [v18 fetchAudioRoutesImageWithCompletion:v22];

      _Block_object_dispose(v29, 8);
    }

    else
    {
      [(PHAudioCallControlsView *)self replaceBlock:0 currentButton:v13];
      v20 = [(PHAudioCallControlsView *)self delegate];
      v21 = [v20 imageForControlType:a3];
      (v12[2])(v12, v21);

      if (v9)
      {
        v9[2](v9);
      }
    }
  }

  else if (v9)
  {
    v9[2](v9);
  }
}

- (void)buttonTapped:(id)a3
{
  v4 = a3;
  v5 = [(PHAudioCallControlsView *)self delegate];
  [v5 controlTypeTapped:objc_msgSend(v4 forView:{"controlType"), v4}];
}

- (void)buttonShortPressGestureRecognizer:(id)a3
{
  v6 = a3;
  if ([v6 state] == 1)
  {
    v4 = [(PHAudioCallControlsView *)self delegate];
    v5 = [v6 view];
    [v4 controlTypeShortPressed:{objc_msgSend(v5, "controlType")}];
  }
}

- (void)buttonLongPressGestureRecognizer:(id)a3
{
  v6 = a3;
  if ([v6 state] == 1)
  {
    v4 = [(PHAudioCallControlsView *)self delegate];
    v5 = [v6 view];
    [v4 controlTypeLongPressed:{objc_msgSend(v5, "controlType")}];
  }
}

- (void)setSelectedState:(BOOL)a3 forControlType:(unint64_t)a4
{
  v4 = a3;
  v5 = [(PHAudioCallControlsView *)self buttonForControlType:a4];
  [v5 setSelected:v4];
}

- (id)buttonForControlType:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(PHAudioCallControlsView *)self buttonsArray];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 controlType] == a3)
        {
          v10 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setButtonsEnabled:(BOOL)a3
{
  if (self->_buttonsEnabled != a3)
  {
    v3 = a3;
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [(PHAudioCallControlsView *)self buttonsArray];
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v11 + 1) + 8 * v9);
          if (!v3)
          {
            [*(*(&v11 + 1) + 8 * v9) setSelected:0];
          }

          [v10 setEnabled:v3];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    self->_buttonsEnabled = v3;
  }
}

- (void)setPrefersWhiteButtonTextColor:(BOOL)a3
{
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [(PHAudioCallControlsView *)self buttonsArray];
  v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (a3)
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

      v6 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }
}

- (void)updateBackgroundMaterial:(unint64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v17 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "SNAP: Setting button background material to type: %lu", buf, 0xCu);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = [(PHAudioCallControlsView *)self buttonsArray];
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) updateBackgroundMaterial:a3];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)changeVideoStreamingButtonTitleWithIsSharing:(BOOL)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [(PHAudioCallControlsView *)self buttonsArray];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 controlType] == 17)
        {
          v10 = +[NSBundle mainBundle];
          v11 = v10;
          if (v3)
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

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:
}

- (void)setCenter:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  [(PHAudioCallControlsView *)self transform];
  if (CGAffineTransformIsIdentity(&v7))
  {
    v6.receiver = self;
    v6.super_class = PHAudioCallControlsView;
    [(PHAudioCallControlsView *)&v6 setCenter:x, y];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  [(PHAudioCallControlsView *)self transform];
  if (CGAffineTransformIsIdentity(&v9))
  {
    v8.receiver = self;
    v8.super_class = PHAudioCallControlsView;
    [(PHAudioCallControlsView *)&v8 setFrame:x, y, width, height];
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v11.receiver = self;
  v11.super_class = PHAudioCallControlsView;
  v4 = a3;
  [(PHAudioCallControlsView *)&v11 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(PHAudioCallControlsView *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 != v7)
  {
    v8 = [(PHAudioCallControlsView *)self traitCollection];
    v9 = [v8 _backlightLuminance];

    [(PHAudioCallControlsView *)self setUserInteractionEnabled:v9 != 1];
    v10 = sub_100004F84();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v13 = v9 != 1;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Setting userInteractionEnabled of controls view to %d because of back light change", buf, 8u);
    }
  }
}

- (double)_verticalSpacing
{
  v3 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  v5 = 0.0;
  if (v4 == 3)
  {
    return v5;
  }

  v6 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  v7 = [v6 usesLargeFormatUI];

  if (v7)
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
    v15 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
    v16 = [v15 usesLargeFormatUI];

    if (!v16)
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
  v2 = [(PHAudioCallControlsView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  if (v3 == 3)
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

- (id)menuForAudioControlsButton:(id)a3
{
  v3 = [(PHAudioCallControlsView *)self delegate];
  v4 = [v3 audioRouteMenu];

  return v4;
}

@end