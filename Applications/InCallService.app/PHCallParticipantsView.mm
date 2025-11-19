@interface PHCallParticipantsView
- (BOOL)_statusLabelStringWillFit:(id)a3;
- (BOOL)isCallRinging;
- (BOOL)isKnownCaller;
- (BOOL)participantLabelShouldShowLargeAvatar;
- (BOOL)shouldIgnoreUpdates;
- (BOOL)shouldShowParticipantLabel;
- (PHCallParticipantsView)initWithCallDisplayStyleManager:(id)a3;
- (PHCallParticipantsViewDelegate)delegate;
- (UILayoutGuide)leadingSideLayoutGuide;
- (UILayoutGuide)trailingSideLayoutGuide;
- (double)multipleCallLabelBaselineOffset;
- (id)compactLabelTextForParticipantLabel:(id)a3;
- (id)customFontForParticipantLabel;
- (id)identificationCategoryDisplayString:(int64_t)a3;
- (unint64_t)indexForParticipantLabel:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)callLabelDetailsGestureRecognizerTappedForLabel:(id)a3;
- (void)callLabelInfoLabelWasTappedForLabel:(id)a3;
- (void)dealloc;
- (void)fieldModeButtonTapped:(id)a3;
- (void)gameControllerDidChangeContext;
- (void)participantLabelView:(id)a3 didPerformActionType:(int64_t)a4;
- (void)participantLabelWasTapped:(id)a3;
- (void)setAllowsFieldModeSendButton:(BOOL)a3;
- (void)setBannerAudioRouteButtonSelected:(BOOL)a3;
- (void)setBannerButtonsState:(unint64_t)a3;
- (void)setLeadingSideLayoutGuide:(id)a3;
- (void)setShouldShowSingleDurationLabel:(BOOL)a3;
- (void)setTextColor:(id)a3;
- (void)setTrailingSideLayoutGuide:(id)a3;
- (void)setUserInteractionEnabled:(BOOL)a3;
- (void)showSendButtonGestureRecognizer:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateParticipantAtIndex:(unint64_t)a3 animated:(BOOL)a4;
- (void)updateParticipantsAnimated:(BOOL)a3;
- (void)updateSingleDurationTimerLabelText;
- (void)updateSubviewWithLayout:(int64_t)a3 forContact:(id)a4;
@end

@implementation PHCallParticipantsView

- (BOOL)shouldIgnoreUpdates
{
  v3 = [(PHCallParticipantsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(PHCallParticipantsView *)self delegate];
  v6 = [v5 shouldIgnoreUpdatesInParticipantsView:self];

  return v6;
}

- (PHCallParticipantsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)participantLabelShouldShowLargeAvatar
{
  v2 = [(PHCallParticipantsView *)self delegate];
  v3 = [v2 shouldShowLargeAvatar];

  return v3;
}

- (PHCallParticipantsView)initWithCallDisplayStyleManager:(id)a3
{
  v5 = a3;
  v15.receiver = self;
  v15.super_class = PHCallParticipantsView;
  v6 = [(PHCallParticipantsView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, a3);
    v8 = objc_opt_new();
    labelDescriptorFactory = v7->_labelDescriptorFactory;
    v7->_labelDescriptorFactory = v8;

    v10 = [[UITapGestureRecognizer alloc] initWithTarget:v7 action:"showSendButtonGestureRecognizer:"];
    [v10 setNumberOfTapsRequired:4];
    [(PHCallParticipantsView *)v7 addGestureRecognizer:v10];
    v11 = +[NSNotificationCenter defaultCenter];
    [v11 addObserver:v7 selector:"_metadataCacheDidFinishUpdating:" name:TUMetadataCacheDidFinishUpdatingNotification object:0];

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v7 selector:"_isEmergencyCallChanged:" name:TUCallCenterIsEmergencyChangedNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v7 selector:"_lockScreenStatusChanged:" name:PHLockScreenStatusChangedNotification object:0];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = PHCallParticipantsView;
  [(PHCallParticipantsView *)&v4 dealloc];
}

- (double)multipleCallLabelBaselineOffset
{
  v3 = [(PHCallParticipantsView *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    return 60.0;
  }

  v6 = [(PHCallParticipantsView *)self callDisplayStyleManager];
  v7 = [v6 usesLargeFormatUI];

  if (v7)
  {
    return 40.0;
  }

  if (qword_1003B0CA8 != -1)
  {
    sub_100254650();
  }

  return *&qword_1003B0CA0;
}

- (void)updateSubviewWithLayout:(int64_t)a3 forContact:(id)a4
{
  v10 = a4;
  v6 = [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView contact];
  if (!v6)
  {
    v7 = [(PHCallParticipantsView *)self delegate];
    v8 = [v7 shouldShowParticipantImageAtIndex:0 inParticipantsView:self];

    if (!v8)
    {
      goto LABEL_5;
    }

    v6 = [(PHCallParticipantsView *)self delegate];
    v9 = [v6 contactForParticipantAtIndex:0 inParticipantsView:self];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setContact:v9];
  }

LABEL_5:
  [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView updateSubviewWithLayout:a3 contact:v10];
}

- (void)updateParticipantsAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(PHCallParticipantsView *)self shouldIgnoreUpdates])
  {
    v5 = sub_100004F84();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participants because updates to the call participants view are disabled", buf, 2u);
    }

    return;
  }

  v6 = [(PHCallParticipantsView *)self delegate];
  v7 = [v6 numberOfParticipantsForParticipantsView:self];

  v8 = [(PHCallParticipantsView *)self delegate];
  v9 = [v8 overrideStringForParticipantsView:self];

  if (v9)
  {
    v10 = [(PHCallParticipantsView *)self singleCallLabelView];
    [v10 removeFromSuperview];

    v11 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
    [v11 removeFromSuperview];

    v12 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [v12 removeFromSuperview];

    v13 = [(PHCallParticipantsView *)self singleCallLabelView];
    v14 = [v13 posterNameViewModel];
    [v14 updateStatus:&stru_100361FD0];

    [(PHCallParticipantsView *)self setSingleCallLabelView:0];
    [(PHCallParticipantsView *)self setTopMultipleCallLabelView:0];
    [(PHCallParticipantsView *)self setBottomMultipleCallLabelView:0];
    [(PHCallParticipantsView *)self setShouldShowSingleDurationLabel:0];
    if (!self->_nameOverrideLabel)
    {
      v15 = objc_alloc_init(UILabel);
      nameOverrideLabel = self->_nameOverrideLabel;
      self->_nameOverrideLabel = v15;

      [(UILabel *)self->_nameOverrideLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      v17 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v18 = [v17 callDisplayStyle];
      v19 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v20 = +[PHUIConfiguration singleCallParticipantLabelFontForCallDisplayStyle:usesLargeFormatUI:](PHUIConfiguration, "singleCallParticipantLabelFontForCallDisplayStyle:usesLargeFormatUI:", v18, [v19 usesLargeFormatUI]);
      [(UILabel *)self->_nameOverrideLabel setFont:v20];

      v21 = [UIColor colorWithWhite:1.0 alpha:1.0];
      [(UILabel *)self->_nameOverrideLabel setTextColor:v21];

      [(UILabel *)self->_nameOverrideLabel setTextAlignment:1];
      [(UILabel *)self->_nameOverrideLabel setLineBreakMode:3];
      [(UILabel *)self->_nameOverrideLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_nameOverrideLabel setMinimumScaleFactor:0.699999988];
      [(PHCallParticipantsView *)self addSubview:self->_nameOverrideLabel];
      v170 = [(UILabel *)self->_nameOverrideLabel leadingAnchor];
      v167 = [(PHCallParticipantsView *)self leadingAnchor];
      v165 = [v170 constraintEqualToAnchor:v167 constant:24.0];
      v198[0] = v165;
      v163 = [(UILabel *)self->_nameOverrideLabel trailingAnchor];
      v160 = [(PHCallParticipantsView *)self trailingAnchor];
      v22 = [v163 constraintEqualToAnchor:v160 constant:-24.0];
      v198[1] = v22;
      v23 = [(UILabel *)self->_nameOverrideLabel centerYAnchor];
      v24 = [(PHCallParticipantsView *)self centerYAnchor];
      v25 = [v23 constraintEqualToAnchor:v24];
      v198[2] = v25;
      v26 = [(UILabel *)self->_nameOverrideLabel bottomAnchor];
      v27 = [(PHCallParticipantsView *)self bottomAnchor];
      v28 = [v26 constraintEqualToAnchor:v27];
      v198[3] = v28;
      v29 = [NSArray arrayWithObjects:v198 count:4];
      [NSLayoutConstraint activateConstraints:v29];
    }

    v30 = [(PHCallParticipantsView *)self delegate];
    v31 = [v30 overrideStringForParticipantsView:self];
    [(UILabel *)self->_nameOverrideLabel setText:v31];

    goto LABEL_9;
  }

  if (v7 == 2)
  {
    v64 = sub_100004F84();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v64, OS_LOG_TYPE_DEFAULT, "Configuring the call participants view for multiple participants", buf, 2u);
    }

    v65 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    v66 = [v65 callDisplayStyle];

    if (!v66)
    {
      v67 = +[UIApplication sharedApplication];
      v68 = [v67 delegate];
      v69 = [v68 currentInCallScene];
      [v69 requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
    }

    v70 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    v71 = [v70 usesLargeFormatUI];

    if (v71)
    {
      v72 = [(PHCallParticipantsView *)self multiCallLabelLayoutGuide];

      if (!v72)
      {
        v73 = objc_alloc_init(UILayoutGuide);
        [(PHCallParticipantsView *)self setMultiCallLabelLayoutGuide:v73];
      }

      v74 = [(PHCallParticipantsView *)self multiCallLabelLayoutGuide];
      [(PHCallParticipantsView *)self addLayoutGuide:v74];

      v75 = 0;
    }

    else
    {
      v75 = objc_alloc_init(UILayoutGuide);
      [(PHCallParticipantsView *)self addLayoutGuide:v75];
    }

    v90 = [v75 centerYAnchor];
    v91 = [(PHCallParticipantsView *)self centerYAnchor];
    v92 = [v90 constraintEqualToAnchor:v91];
    [v92 setActive:1];

    if (!self->_bottomMultipleCallLabelView)
    {
      v171 = v75;
      v93 = [PHMultipleCallParticipantLabelView alloc];
      v94 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v95 = [(PHMultipleCallParticipantLabelView *)v93 initWithCallDisplayStyleManager:v94];
      bottomMultipleCallLabelView = self->_bottomMultipleCallLabelView;
      self->_bottomMultipleCallLabelView = v95;

      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_Bottom"];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setOverrideUserInterfaceStyle:2];
      [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView setDelegate:self];
      [(PHCallParticipantsView *)self addSubview:self->_bottomMultipleCallLabelView];
      v97 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView leadingAnchor];
      v98 = [(PHCallParticipantsView *)self leadingAnchor];
      v99 = [v97 constraintEqualToAnchor:v98];
      v195[0] = v99;
      v100 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView trailingAnchor];
      v101 = [(PHCallParticipantsView *)self trailingAnchor];
      v102 = [v100 constraintEqualToAnchor:v101];
      v195[1] = v102;
      v103 = [NSArray arrayWithObjects:v195 count:2];
      v168 = [v103 mutableCopy];

      v104 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v105 = [v104 callDisplayStyle];

      if (v105 == 1)
      {
        v75 = v171;
        v106 = [v171 bottomAnchor];
        v107 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        v108 = [v107 bottomAnchor];
        v109 = [v106 constraintEqualToAnchor:v108];
        v110 = v168;
        [v168 addObject:v109];
      }

      else
      {
        v112 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        v113 = [v112 firstBaselineAnchor];
        v114 = [(PHCallParticipantsView *)self bottomAnchor];
        v115 = [v113 constraintLessThanOrEqualToAnchor:v114];
        v194 = v115;
        v116 = [NSArray arrayWithObjects:&v194 count:1];
        v110 = v168;
        [v168 addObjectsFromArray:v116];

        v117 = [(PHCallParticipantsView *)self callDisplayStyleManager];
        LODWORD(v114) = [v117 usesLargeFormatUI];

        v106 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView bottomAnchor];
        v107 = [(PHCallParticipantsView *)self bottomAnchor];
        if (v114)
        {
          v108 = [v106 constraintEqualToAnchor:v107];
          v193 = v108;
          v118 = &v193;
        }

        else
        {
          v108 = [v106 constraintLessThanOrEqualToAnchor:v107];
          v192 = v108;
          v118 = &v192;
        }

        v109 = [NSArray arrayWithObjects:v118 count:1];
        [v168 addObjectsFromArray:v109];
        v75 = v171;
      }

      [NSLayoutConstraint activateConstraints:v110];
      v120 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"participantLabelWasTapped:"];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView addGestureRecognizer:v120];
    }

    if (!self->_topMultipleCallLabelView)
    {
      v172 = v75;
      v121 = [PHMultipleCallParticipantLabelView alloc];
      v122 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v123 = [(PHMultipleCallParticipantLabelView *)v121 initWithCallDisplayStyleManager:v122];
      topMultipleCallLabelView = self->_topMultipleCallLabelView;
      self->_topMultipleCallLabelView = v123;

      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_Top"];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setOverrideUserInterfaceStyle:2];
      [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView setDelegate:self];
      [(PHCallParticipantsView *)self addSubview:self->_topMultipleCallLabelView];
      v125 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView leadingAnchor];
      v126 = [(PHCallParticipantsView *)self leadingAnchor];
      v127 = [v125 constraintEqualToAnchor:v126];
      v191[0] = v127;
      v128 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView trailingAnchor];
      v129 = [(PHCallParticipantsView *)self trailingAnchor];
      v130 = [v128 constraintEqualToAnchor:v129];
      v191[1] = v130;
      v131 = [NSArray arrayWithObjects:v191 count:2];
      v169 = [v131 mutableCopy];

      v132 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v133 = [v132 callDisplayStyle];

      if (v133 == 1)
      {
        v75 = v172;
        v134 = [v172 topAnchor];
        v135 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        v164 = [v135 topAnchor];
        v162 = [v134 constraintEqualToAnchor:?];
        v190[0] = v162;
        v161 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        v136 = [v161 bottomAnchor];
        v137 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        v138 = [v137 topAnchor];
        v166 = v136;
        v139 = [v136 constraintEqualToAnchor:v138];
        v190[1] = v139;
        v140 = [NSArray arrayWithObjects:v190 count:2];
        [v169 addObjectsFromArray:v140];
      }

      else
      {
        v159 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        v158 = [v159 firstBaselineAnchor];
        v164 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        v141 = [v164 firstBaselineAnchor];
        [(PHCallParticipantsView *)self multipleCallLabelBaselineOffset];
        v162 = v141;
        v161 = [v158 constraintEqualToAnchor:v141 constant:-v142];
        v189[0] = v161;
        v143 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView topAnchor];
        v137 = [(PHCallParticipantsView *)self topAnchor];
        v166 = v143;
        v138 = [v143 constraintEqualToAnchor:v137];
        v189[1] = v138;
        v139 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView bottomAnchor];
        v140 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        v144 = [v140 lastBaselineAnchor];
        v145 = [v139 constraintEqualToAnchor:v144];
        v189[2] = v145;
        v146 = [NSArray arrayWithObjects:v189 count:3];
        [v169 addObjectsFromArray:v146];

        v135 = v158;
        v134 = v159;
        v75 = v172;
      }

      [NSLayoutConstraint activateConstraints:v169];
      v147 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"participantLabelWasTapped:"];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView addGestureRecognizer:v147];
    }

    [(PHCallParticipantsView *)self updateParticipantAtIndex:0 animated:v3];
    [(PHCallParticipantsView *)self updateParticipantAtIndex:1 animated:v3];
    v148 = [(PHCallParticipantsView *)self singleCallLabelView];
    if (v148)
    {
    }

    else
    {
      v149 = [(PHCallParticipantsView *)self nameOverrideLabel];

      if (!v149)
      {
LABEL_67:
        v157 = [(PHCallParticipantsView *)self delegate];
        -[PHCallParticipantsView setShouldShowSingleDurationLabel:](self, "setShouldShowSingleDurationLabel:", [v157 shouldShowSingleDurationLabelInParticipantsView:self]);

        goto LABEL_9;
      }
    }

    if (v3)
    {
      v150 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
      [v150 setAlpha:0.0];

      v151 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
      [v151 setAlpha:0.0];

      v152 = [(PHCallParticipantsView *)self singleCallLabelView];
      v153 = [(PHCallParticipantsView *)self nameOverrideLabel];
      v176[0] = _NSConcreteStackBlock;
      v176[1] = 3221225472;
      v176[2] = sub_100060C48;
      v176[3] = &unk_100357318;
      v177 = v152;
      v178 = v153;
      v179 = self;
      v173[0] = _NSConcreteStackBlock;
      v173[1] = 3221225472;
      v173[2] = sub_100060CD0;
      v173[3] = &unk_100356D10;
      v174 = v177;
      v175 = v178;
      v154 = v178;
      v155 = v177;
      [UIView animateWithDuration:v176 animations:v173 completion:0.5];
    }

    else
    {
      v156 = [(PHCallParticipantsView *)self singleCallLabelView];
      [v156 removeFromSuperview];

      v155 = [(PHCallParticipantsView *)self nameOverrideLabel];
      [v155 removeFromSuperview];
    }

    [(PHCallParticipantsView *)self setSingleCallLabelView:0];
    [(PHCallParticipantsView *)self setNameOverrideLabel:0];
    goto LABEL_67;
  }

  if (v7 != 1)
  {
    goto LABEL_9;
  }

  v33 = sub_100004F84();
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Configuring the call participants view for a single participant", buf, 2u);
  }

  v34 = [(PHCallParticipantsView *)self singleCallLabelView];

  if (!v34)
  {
    v35 = [PHSingleCallParticipantLabelView alloc];
    v36 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    v37 = [(PHSingleCallParticipantLabelView *)v35 initWithCallDisplayStyleManager:v36 delegate:self];
    singleCallLabelView = self->_singleCallLabelView;
    self->_singleCallLabelView = v37;

    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setPreservesSuperviewLayoutMargins:1];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setOverrideUserInterfaceStyle:2];
    v39 = sub_100004F84();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      v40 = self->_singleCallLabelView;
      *buf = 138412290;
      v197 = v40;
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Adding a new single-participant view to the view hierarchy: %@", buf, 0xCu);
    }

    [(PHCallParticipantsView *)self addSubview:self->_singleCallLabelView];
    v41 = [(PHCallParticipantsView *)self leadingSideLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setLeadingSideLayoutGuide:v41];

    v42 = [(PHCallParticipantsView *)self trailingSideLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTrailingSideLayoutGuide:v42];

    v43 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:5 relatedBy:0 toItem:self attribute:5 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v43];

    v44 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v44];

    v45 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:4 relatedBy:-1 toItem:self attribute:4 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v45];

    LODWORD(v46) = 1132068864;
    v47 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:0.0 priority:v46];
    [(PHCallParticipantsView *)self addConstraint:v47];

    v48 = [NSLayoutConstraint constraintWithItem:self->_singleCallLabelView attribute:3 relatedBy:0 toItem:self attribute:3 multiplier:1.0 constant:0.0];
    [(PHCallParticipantsView *)self addConstraint:v48];
  }

  v49 = [(PHCallParticipantsView *)self delegate];
  v50 = objc_opt_respondsToSelector();

  if (v50)
  {
    v51 = self->_singleCallLabelView;
    v52 = [(PHCallParticipantsView *)self delegate];
    v53 = [v52 colorForStatusLabelForParticipantAtIndex:0 inParticipantsView:self];
    [(PHSingleCallParticipantLabelView *)v51 setStatusLabelTextColor:v53];
  }

  v54 = [(PHCallParticipantsView *)self delegate];
  v55 = objc_opt_respondsToSelector();

  if (v55)
  {
    v56 = self->_singleCallLabelView;
    v57 = [(PHCallParticipantsView *)self delegate];
    v58 = [v57 colorForParticipantLabelView:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v56 setParticipantMarqueeLabelTextColor:v58];
  }

  v59 = [(PHCallParticipantsView *)self delegate];
  v60 = objc_opt_respondsToSelector();

  v61 = self->_singleCallLabelView;
  if (v60)
  {
    v62 = [(PHCallParticipantsView *)self delegate];
    v63 = [v62 fontForParticipantLabelView:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v61 setParticipantMarqueeLabelFont:v63];
  }

  else
  {
    v62 = [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView updatedParticipantMarqueeLabelFont];
    [(PHSingleCallParticipantLabelView *)v61 setParticipantMarqueeLabelFont:v62];
  }

  [(PHCallParticipantsView *)self updateParticipantAtIndex:0 animated:v3];
  v76 = [(PHCallParticipantsView *)self delegate];
  v77 = objc_opt_respondsToSelector();

  if (v77)
  {
    v78 = self->_singleCallLabelView;
    v79 = [(PHCallParticipantsView *)self delegate];
    v80 = [v79 fontForParticipantLabelViewStatusLabel:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v78 setStatusLabelTextFont:v80];
  }

  v81 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
  if (v81 || ([(PHCallParticipantsView *)self bottomMultipleCallLabelView], (v81 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v119 = [(PHCallParticipantsView *)self nameOverrideLabel];

    if (!v119)
    {
      goto LABEL_9;
    }
  }

  v82 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
  v83 = v82;
  if (v3)
  {
    v84 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    v85 = [(PHCallParticipantsView *)self nameOverrideLabel];
    v86 = [(PHCallParticipantsView *)self singleCallLabelView];
    [v86 setAlpha:0.0];

    v184[0] = _NSConcreteStackBlock;
    v184[1] = 3221225472;
    v184[2] = sub_100060B8C;
    v184[3] = &unk_1003572C8;
    v185 = v83;
    v186 = v84;
    v187 = v85;
    v188 = self;
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = sub_100060C04;
    v180[3] = &unk_1003572F0;
    v181 = v185;
    v182 = v186;
    v183 = v187;
    v87 = v187;
    v88 = v186;
    v89 = v185;
    [UIView animateWithDuration:v184 animations:v180 completion:0.5];
  }

  else
  {
    [v82 removeFromSuperview];

    v111 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [v111 removeFromSuperview];

    v89 = [(PHCallParticipantsView *)self nameOverrideLabel];
    [v89 removeFromSuperview];
  }

  [(PHCallParticipantsView *)self setShouldShowSingleDurationLabel:0];
  [(PHCallParticipantsView *)self setTopMultipleCallLabelView:0];
  [(PHCallParticipantsView *)self setBottomMultipleCallLabelView:0];
  [(PHCallParticipantsView *)self setNameOverrideLabel:0];
LABEL_9:
  v32 = [(PHCallParticipantsView *)self singleDurationTimerLabel];

  if (v32)
  {
    [(PHCallParticipantsView *)self updateSingleDurationTimerLabelText];
  }
}

- (void)gameControllerDidChangeContext
{
  v2 = [(PHCallParticipantsView *)self singleCallLabelView];
  [v2 gameControllerDidChangeContext];
}

- (void)updateParticipantAtIndex:(unint64_t)a3 animated:(BOOL)a4
{
  v4 = a4;
  if (![(PHCallParticipantsView *)self shouldIgnoreUpdates])
  {
    v8 = [(PHCallParticipantsView *)self delegate];
    v9 = [v8 numberOfParticipantsForParticipantsView:self];

    v10 = [(PHCallParticipantsView *)self delegate];
    v11 = [v10 callForParticipantAtIndex:a3 inParticipantsView:self];

    objc_storeStrong(&self->_currentCall, v11);
    if (v9 == 2)
    {
      v35 = &OBJC_IVAR___PHCallParticipantsView__bottomMultipleCallLabelView;
      if (!a3)
      {
        v35 = &OBJC_IVAR___PHCallParticipantsView__topMultipleCallLabelView;
      }

      v7 = *(&self->super.super.super.isa + *v35);
      previousURL = self->_previousURL;
      self->_previousURL = 0;

      if (v7)
      {
LABEL_7:
        v12 = [(PHCallParticipantsView *)self delegate];
        v13 = [v12 nameForParticipantAtIndex:a3 inParticipantsView:self];

        v14 = [v11 displayContext];

        if (v14)
        {
          v15 = [v11 displayContext];
          v16 = [v15 callDirectoryLabel];
          if (v16)
          {
            v17 = v16;
            v18 = [v11 isOutgoing];

            if (v18)
            {
              v19 = [v15 callDirectoryLabel];

              v13 = v19;
            }
          }
        }

        v20 = [(PHCallParticipantsView *)self delegate];
        v21 = [v20 labelForParticipantAtIndex:a3 inParticipantsView:self allowsDuration:1];

        v22 = [(PHCallParticipantsView *)self delegate];
        v23 = [v22 supplementalParticipantLabelFormatStringAtIndex:a3 inParticipantsView:self];

        v24 = +[CNKFeatures sharedInstance];
        v25 = [v24 isHeroImageEnabled];

        objc_opt_class();
        v105 = v23;
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if ([v23 length])
          {
            [NSString stringWithFormat:v23, v13];
            v13 = v37 = v13;
          }

          else
          {
            v40 = [(PHCallParticipantsView *)self delegate];
            v41 = objc_opt_respondsToSelector();

            if ((v41 & 1) == 0)
            {
              goto LABEL_53;
            }

            v42 = [(PHCallParticipantsView *)self delegate];
            v37 = [v42 localizedSenderIdentityForParticipantAtIndex:a3 inParticipantsView:self];

            if ([v37 length])
            {
              [v21 setLocalizedSenderIdentity:v37];
            }
          }

LABEL_53:
          [(PHAbstractCallParticipantLabelView *)v7 setParticipantName:v13];
          [(PHSingleCallParticipantLabelView *)v7 setLabelDescriptor:v21];
          goto LABEL_54;
        }

        v26 = [(PHCallParticipantsView *)self delegate];
        v27 = objc_opt_respondsToSelector();

        if (v27)
        {
          v28 = [(PHCallParticipantsView *)self delegate];
          v29 = [v28 iconInParticipantsView:self];
          [(PHSingleCallParticipantLabelView *)v7 setIcon:v29];
        }

        v30 = [(PHCallParticipantsView *)self delegate];
        v31 = objc_opt_respondsToSelector();

        if (v31)
        {
          v32 = [(PHCallParticipantsView *)self delegate];
          v33 = [v32 linkNameForCall:v11];

          v103 = v33 != 0;
          if (v33)
          {
            v34 = v33;

            v13 = v34;
          }
        }

        else
        {
          v103 = 0;
        }

        v38 = v7;
        v104 = v38;
        if (![v11 isIncoming])
        {
LABEL_39:
          if ((v25 & 1) != 0 || (-[PHCallParticipantsView callDisplayStyleManager](self, "callDisplayStyleManager"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 callDisplayStyle], v50, v51 == 3))
          {
            v52 = [(PHCallParticipantsView *)self delegate];
            v53 = [v52 contactForParticipantAtIndex:0 inParticipantsView:self];
            [(PHSingleCallParticipantLabelView *)v104 setContact:v53];
          }

          v49 = v105;
          if (!v105)
          {
LABEL_47:
            v59 = [(PHCallParticipantsView *)self delegate];
            v60 = objc_opt_respondsToSelector();

            if (v60)
            {
              v61 = [(PHCallParticipantsView *)self delegate];
              v62 = [v61 localizedSenderIdentityForParticipantAtIndex:a3 inParticipantsView:self];

              if ([v62 length])
              {
                [v21 setLocalizedSenderIdentity:v62];
              }
            }

            if (v103)
            {
              v63 = [v21 strings];
              v64 = [v63 firstObject];
              [(PHAbstractCallParticipantLabelView *)v104 setParticipantName:v64];

              labelDescriptorFactory = self->_labelDescriptorFactory;
              v66 = [v21 secondaryString];
              v67 = -[CNKCallParticipantLabelDescriptorFactory makeLabelWithString:secondaryString:layoutState:](labelDescriptorFactory, "makeLabelWithString:secondaryString:layoutState:", v13, v66, [v21 layoutState]);

              v68 = [v21 sourceString];
              [v67 setSourceString:v68];

              v69 = [v21 localizedSenderIdentity];
              [v67 setLocalizedSenderIdentity:v69];

              [(PHSingleCallParticipantLabelView *)v104 setLabelDescriptor:v67];
LABEL_54:
              v70 = [(PHCallParticipantsView *)self delegate];
              -[PHSingleCallParticipantLabelView setActivityState:animated:](v7, "setActivityState:animated:", [v70 activityStateForParticipantAtIndex:a3 inParticipantsView:self], v4);

              v71 = [(PHCallParticipantsView *)self delegate];
              v72 = [v71 shouldShowInfoButtonForParticipantAtIndex:a3 inParticipantsView:self];

              [(PHSingleCallParticipantLabelView *)v7 setShowsConferenceParticipantsButton:v72];
              if (v72)
              {
                [(PHSingleCallParticipantLabelView *)v7 setShowsCallDetailsViewButton:0];
              }

              else
              {
                v73 = [(PHCallParticipantsView *)self delegate];
                -[PHSingleCallParticipantLabelView setShowsCallDetailsViewButton:](v7, "setShowsCallDetailsViewButton:", [v73 shouldShowCallDetailsViewButton]);
              }

LABEL_58:
              goto LABEL_59;
            }

            goto LABEL_53;
          }

LABEL_43:
          if (v103)
          {
            [NSString stringWithFormat:v49, v13];
            v13 = v54 = v13;
          }

          else
          {
            [v21 strings];
            v101 = v4;
            v55 = v21;
            v57 = v56 = v49;
            v58 = [v57 firstObject];
            v54 = [NSString stringWithFormat:v56, v58];

            v21 = [(CNKCallParticipantLabelDescriptorFactory *)self->_labelDescriptorFactory makeLabelWithString:v54];

            v4 = v101;
          }

          goto LABEL_47;
        }

        v39 = [(PHSingleCallParticipantLabelView *)v38 contact];
        if (v39)
        {

          goto LABEL_39;
        }

        v43 = [(PHCallParticipantsView *)self delegate];
        v44 = [v43 shouldShowParticipantImageAtIndex:0 inParticipantsView:self];

        if (!v44)
        {
          goto LABEL_39;
        }

        v45 = [(PHCallParticipantsView *)self delegate];
        v46 = [v45 contactForParticipantAtIndex:0 inParticipantsView:self];
        [(PHSingleCallParticipantLabelView *)v104 setContact:v46];

        v47 = [(PHSingleCallParticipantLabelView *)v104 contact];
        if (v47)
        {
          v46 = v47;
          v48 = [(PHSingleCallParticipantLabelView *)v104 contact];
          v49 = v105;
          if ([v48 imageDataAvailable])
          {

            goto LABEL_97;
          }

          if (!v11)
          {
LABEL_97:
            [(PHSingleCallParticipantLabelView *)v104 updateLabelsOrderAndText];
            if (!v49)
            {
              goto LABEL_47;
            }

            goto LABEL_43;
          }
        }

        else
        {
          v49 = v105;
          if (!v11)
          {
            goto LABEL_97;
          }
        }

        if (![v11 isScreening] || (objc_msgSend(v11, "smartHoldingSession"), v74 = objc_claimAutoreleasedReturnValue(), v74, v74))
        {
          v75 = [v11 callDirectoryName];
          if (v75 || ([v11 imageURL], (v46 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v76 = [v11 provider];
            v103 = [v76 isTelephonyProvider];

            if (v75)
            {
LABEL_80:

              goto LABEL_81;
            }
          }

          else
          {
            v103 = 0;
          }

LABEL_79:

          goto LABEL_80;
        }

        v77 = +[CNKFeatures sharedInstance];
        if ([v77 isHeroImageEnabled])
        {
          v78 = [v11 imageURL];
          if (v78)
          {
            v79 = v78;
            v80 = [v11 provider];
            if ([v80 isTelephonyProvider])
            {
              [v11 localizedLabel];
              v81 = v102 = v80;

              if (v81)
              {
LABEL_81:
                v82 = [v11 imageURL];

                v83 = &selRef_numberOfSectionsInTableView_;
                if (v82)
                {
                  v84 = [v11 imageURL];
                  v85 = [v84 relativePath];
                  v86 = [v85 isEqualToString:@"/stock"];

                  v87 = sub_100004F84();
                  v88 = os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT);
                  if (v86)
                  {
                    if (v88)
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Attempting to display generic business logo", buf, 2u);
                    }

                    v89 = +[UIImage genericBusinessLogo];
                  }

                  else
                  {
                    if (v88)
                    {
                      v91 = [v11 imageURL];
                      v92 = [v91 relativePath];
                      *buf = 138412290;
                      v107 = v92;
                      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Attempting to display call imageURL: %@", buf, 0xCu);
                    }

                    v93 = [UIImage alloc];
                    v94 = [v11 imageURL];
                    v95 = [v94 relativePath];
                    v89 = [v93 initWithContentsOfFile:v95];
                  }

                  v83 = &selRef_numberOfSectionsInTableView_;
                  if (v89)
                  {
                    v96 = self->_previousURL;
                    v97 = [v11 imageURL];
                    LOBYTE(v96) = [(NSURL *)v96 isEqual:v97];

                    v83 = &selRef_numberOfSectionsInTableView_;
                    if ((v96 & 1) == 0)
                    {
                      -[PHSingleCallParticipantLabelView setBusinessLogo:isPerson:](v104, "setBusinessLogo:isPerson:", v89, [v11 callDirectoryIdentityType] == 1);
                    }
                  }
                }

                else
                {
                  v90 = sub_100004F84();
                  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
                  {
                    sub_100254664(v90);
                  }

                  [(PHSingleCallParticipantLabelView *)v104 setBusinessLogo:0 isPerson:0];
                }

                v49 = v105;
                v98 = [v11 imageURL];
                v99 = *(v83 + 645);
                v100 = *(&self->super.super.super.isa + v99);
                *(&self->super.super.super.isa + v99) = v98;

                goto LABEL_97;
              }

              goto LABEL_77;
            }
          }
        }

LABEL_77:
        v75 = [v11 suggestedDisplayName];
        if (!v75)
        {
          v103 = 0;
          goto LABEL_80;
        }

        v46 = [v11 suggestedDisplayName];
        v103 = [v46 length] != 0;
        goto LABEL_79;
      }
    }

    else if (v9 == 1)
    {
      v7 = self->_singleCallLabelView;
      if (v7)
      {
        goto LABEL_7;
      }
    }

    v13 = sub_100004F84();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participants because there's no participantLabelView", buf, 2u);
    }

    v7 = 0;
    goto LABEL_58;
  }

  v7 = sub_100004F84();
  if (os_log_type_enabled(&v7->super.super.super.super, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v107 = a3;
    _os_log_impl(&_mh_execute_header, &v7->super.super.super.super, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participant at index %lu because updates to the call participants view are disabled", buf, 0xCu);
  }

LABEL_59:
}

- (BOOL)_statusLabelStringWillFit:(id)a3
{
  v4 = a3;
  v5 = [(PHCallParticipantsView *)self singleCallLabelView];

  if (v5)
  {
    v6 = [(PHCallParticipantsView *)self singleCallLabelView];
    v7 = [v6 _statusLabelStringWillFit:v4];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setLeadingSideLayoutGuide:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_leadingSideLayoutGuide, v6);
  singleCallLabelView = self->_singleCallLabelView;
  if (singleCallLabelView)
  {
    v5 = [(PHSingleCallParticipantLabelView *)singleCallLabelView superview];

    if (v5)
    {
      [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setLeadingSideLayoutGuide:v6];
    }
  }
}

- (void)setTrailingSideLayoutGuide:(id)a3
{
  v6 = a3;
  objc_storeWeak(&self->_trailingSideLayoutGuide, v6);
  singleCallLabelView = self->_singleCallLabelView;
  if (singleCallLabelView)
  {
    v5 = [(PHSingleCallParticipantLabelView *)singleCallLabelView superview];

    if (v5)
    {
      [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTrailingSideLayoutGuide:v6];
    }
  }
}

- (void)setTextColor:(id)a3
{
  singleCallLabelView = self->_singleCallLabelView;
  v5 = a3;
  [(PHSingleCallParticipantLabelView *)singleCallLabelView setTextColor:v5];
  [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setTextColor:v5];
  [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setTextColor:v5];
}

- (void)participantLabelWasTapped:(id)a3
{
  v11 = a3;
  v4 = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = v11;
  if (v5)
  {
    v7 = [v11 view];
    v8 = [(PHCallParticipantsView *)self indexForParticipantLabel:v7];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [(PHCallParticipantsView *)self delegate];
      [v10 participantTappedAtIndex:v9 inParticipantsView:self];
    }

    v6 = v11;
  }
}

- (void)setShouldShowSingleDurationLabel:(BOOL)a3
{
  if (self->_shouldShowSingleDurationLabel != a3)
  {
    v3 = a3;
    v5 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
    [v5 setHidesLabel:v3];

    v6 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [v6 setHidesLabel:v3];

    if (v3)
    {
      v7 = objc_alloc_init(UILabel);
      singleDurationTimerLabel = self->_singleDurationTimerLabel;
      self->_singleDurationTimerLabel = v7;

      v9 = +[PHUIConfiguration multipleCallStatusLabelFont];
      [(UILabel *)self->_singleDurationTimerLabel setFont:v9];

      v10 = [UIColor colorWithWhite:1.0 alpha:1.0];
      [(UILabel *)self->_singleDurationTimerLabel setTextColor:v10];

      [(UILabel *)self->_singleDurationTimerLabel setTextAlignment:2];
      [(UILabel *)self->_singleDurationTimerLabel setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHCallParticipantsView *)self updateSingleDurationTimerLabelText];
      [(PHCallParticipantsView *)self addSubview:self->_singleDurationTimerLabel];
      v11 = self->_singleDurationTimerLabel;
      v12 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v13 = [v12 usesLargeFormatUI];
      v14 = 0.0;
      if (!v13)
      {
        v14 = -24.0;
      }

      v15 = [NSLayoutConstraint constraintWithItem:v11 attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:v14];
      [(PHCallParticipantsView *)self addConstraint:v15];

      topMultipleCallLabelView = self->_topMultipleCallLabelView;
      if (topMultipleCallLabelView)
      {
        v17 = [NSLayoutConstraint constraintWithItem:self->_singleDurationTimerLabel attribute:10 relatedBy:0 toItem:topMultipleCallLabelView attribute:4 multiplier:1.0 constant:3.0];
        [(PHCallParticipantsView *)self addConstraint:v17];
      }
    }

    else
    {
      v18 = [(PHCallParticipantsView *)self singleDurationTimerLabel];
      [v18 removeFromSuperview];

      [(PHCallParticipantsView *)self setSingleDurationTimerLabel:0];
    }

    self->_shouldShowSingleDurationLabel = v3;

    [(PHCallParticipantsView *)self updateParticipants];
  }
}

- (id)identificationCategoryDisplayString:(int64_t)a3
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if ((a3 - 3) > 0x10)
  {
    v6 = @"MAYBE_JUNK";
  }

  else
  {
    v6 = off_100357338[a3 - 3];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100361FD0 table:@"InCallService"];

  return v7;
}

- (void)traitCollectionDidChange:(id)a3
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsView;
  v4 = a3;
  [(PHCallParticipantsView *)&v8 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(PHCallParticipantsView *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 != v7)
  {
    [(PHCallParticipantsView *)self updateParticipants];
  }
}

- (void)updateSingleDurationTimerLabelText
{
  v3 = [(PHCallParticipantsView *)self traitCollection];
  v4 = [v3 _backlightLuminance] != 1;

  v5 = [(PHCallParticipantsView *)self delegate];
  v9 = [v5 labelForParticipantAtIndex:0 inParticipantsView:self allowsDuration:v4];

  v6 = [(PHCallParticipantsView *)self singleDurationTimerLabel];
  v7 = [v9 strings];
  v8 = [v7 firstObject];
  [v6 setAttributedOrPlainText:v8];
}

- (void)setUserInteractionEnabled:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = PHCallParticipantsView;
  [(PHCallParticipantsView *)&v5 setUserInteractionEnabled:?];
  [(PHAbstractCallParticipantLabelView *)self->_singleCallLabelView setUserInteractionEnabled:v3];
  [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView setUserInteractionEnabled:v3];
  [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView setUserInteractionEnabled:v3];
}

- (void)setBannerButtonsState:(unint64_t)a3
{
  v4 = [(PHCallParticipantsView *)self singleCallLabelView];
  [v4 setBannerButtonsState:a3];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHCallParticipantsView *)self singleCallLabelView];
  [v4 setBannerAudioRouteButtonSelected:v3];
}

- (unint64_t)indexForParticipantLabel:(id)a3
{
  v4 = a3;
  if (self->_singleCallLabelView == v4 || (topMultipleCallLabelView = self->_topMultipleCallLabelView, topMultipleCallLabelView == v4) || ([(PHMultipleCallParticipantLabelView *)topMultipleCallLabelView swapButton], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == v4))
  {
    v9 = 0;
  }

  else
  {
    bottomMultipleCallLabelView = self->_bottomMultipleCallLabelView;
    if (bottomMultipleCallLabelView == v4 || ([(PHMultipleCallParticipantLabelView *)bottomMultipleCallLabelView swapButton], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == v4))
    {
      v9 = 1;
    }

    else
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return v9;
}

- (void)callLabelInfoLabelWasTappedForLabel:(id)a3
{
  v9 = a3;
  v4 = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHCallParticipantsView *)self indexForParticipantLabel:v9];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      v8 = [(PHCallParticipantsView *)self delegate];
      [v8 participantViewInfoButtonTappedAtIndex:v7 inParticipantsView:self];
    }
  }
}

- (void)callLabelDetailsGestureRecognizerTappedForLabel:(id)a3
{
  v4 = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHCallParticipantsView *)self delegate];
    [v6 participantViewCallDetailsGestureRecognizerTapped];
  }
}

- (id)compactLabelTextForParticipantLabel:(id)a3
{
  v4 = a3;
  v5 = [(PHCallParticipantsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && (v7 = [(PHCallParticipantsView *)self indexForParticipantLabel:v4], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    v10 = [(PHCallParticipantsView *)self delegate];
    v8 = [v10 compactLabelTextForParticipantAtIndex:v9 inParticipantsView:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)participantLabelView:(id)a3 didPerformActionType:(int64_t)a4
{
  v6 = [(PHCallParticipantsView *)self delegate];
  [v6 participantsView:self didPerformActionType:a4];
}

- (BOOL)isCallRinging
{
  v2 = [(PHCallParticipantsView *)self delegate];
  v3 = [v2 isCallRinging];

  return v3;
}

- (BOOL)shouldShowParticipantLabel
{
  v2 = [(PHCallParticipantsView *)self delegate];
  v3 = [v2 shouldShowParticipantLabel];

  return v3;
}

- (id)customFontForParticipantLabel
{
  v3 = [(PHCallParticipantsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    v5 = [(PHCallParticipantsView *)self delegate];
    v6 = [v5 customFontForParticipantLabel];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)isKnownCaller
{
  v2 = [(PHCallParticipantsView *)self currentCall];
  v3 = [v2 contactIdentifier];
  v4 = v3 != 0;

  return v4;
}

- (void)setAllowsFieldModeSendButton:(BOOL)a3
{
  v3 = a3;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v3)
    {
      v6 = @"YES";
    }

    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCallParticipantsView: setAllowsFieldModeSendButton:%@", &v15, 0xCu);
  }

  if (self->_allowsFieldModeSendButton != v3)
  {
    if (v3)
    {
      v7 = [(PHCallParticipantsView *)self fieldModeSendButton];

      if (!v7)
      {
        v8 = [UIButton buttonWithType:1];
        fieldModeSendButton = self->_fieldModeSendButton;
        self->_fieldModeSendButton = v8;

        [(UIButton *)self->_fieldModeSendButton setTranslatesAutoresizingMaskIntoConstraints:0];
        v10 = self->_fieldModeSendButton;
        v11 = +[NSBundle conversationKit];
        v12 = [v11 localizedStringForKey:@"FIELD_MODE_SEND" value:&stru_100361FD0 table:@"CallStatus"];
        [(UIButton *)v10 setTitle:v12 forState:0];

        [(UIButton *)self->_fieldModeSendButton sizeToFit];
        [(UIButton *)self->_fieldModeSendButton addTarget:self action:"fieldModeButtonTapped:" forControlEvents:64];
        [(PHCallParticipantsView *)self addSubview:self->_fieldModeSendButton];
        [(UIButton *)self->_fieldModeSendButton setHidden:1];
        v13 = [NSLayoutConstraint constraintWithItem:self->_fieldModeSendButton attribute:6 relatedBy:0 toItem:self attribute:6 multiplier:1.0 constant:-24.0];
        [(PHCallParticipantsView *)self addConstraint:v13];

        v14 = [NSLayoutConstraint constraintWithItem:self->_fieldModeSendButton attribute:4 relatedBy:0 toItem:self attribute:4 multiplier:1.0 constant:3.0];
        [(PHCallParticipantsView *)self addConstraint:v14];
      }
    }

    else
    {
      [(UIButton *)self->_fieldModeSendButton removeFromSuperview];
      [(PHCallParticipantsView *)self setFieldModeSendButton:0];
    }

    self->_allowsFieldModeSendButton = v3;
  }
}

- (void)fieldModeButtonTapped:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Field mode button tapped", v8, 2u);
  }

  v5 = [(PHCallParticipantsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = [(PHCallParticipantsView *)self delegate];
    [v7 fieldModeSendButtonTappedInParticipantsView:self];
  }
}

- (void)showSendButtonGestureRecognizer:(id)a3
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing send button", v6, 2u);
  }

  v5 = [(PHCallParticipantsView *)self fieldModeSendButton];
  [v5 setHidden:0];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  [(PHCallParticipantsView *)self invalidateIntrinsicContentSize];
  v7 = [(PHCallParticipantsView *)self singleCallLabelView];
  if (v7)
  {
    v8 = v7;
    v9 = [(PHCallParticipantsView *)self singleCallLabelView];
    v10 = [v9 conformsToProtocol:&OBJC_PROTOCOL___ICSCallDisplayStyleHandler];

    if (v10)
    {
      v11 = [(PHCallParticipantsView *)self singleCallLabelView];
      [v11 callDisplayStyleDidChangeFromStyle:a3 toStyle:a4];
    }
  }
}

- (UILayoutGuide)leadingSideLayoutGuide
{
  WeakRetained = objc_loadWeakRetained(&self->_leadingSideLayoutGuide);

  return WeakRetained;
}

- (UILayoutGuide)trailingSideLayoutGuide
{
  WeakRetained = objc_loadWeakRetained(&self->_trailingSideLayoutGuide);

  return WeakRetained;
}

@end