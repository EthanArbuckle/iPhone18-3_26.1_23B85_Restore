@interface PHCallParticipantsView
- (BOOL)_statusLabelStringWillFit:(id)fit;
- (BOOL)isCallRinging;
- (BOOL)isKnownCaller;
- (BOOL)participantLabelShouldShowLargeAvatar;
- (BOOL)shouldIgnoreUpdates;
- (BOOL)shouldShowParticipantLabel;
- (PHCallParticipantsView)initWithCallDisplayStyleManager:(id)manager;
- (PHCallParticipantsViewDelegate)delegate;
- (UILayoutGuide)leadingSideLayoutGuide;
- (UILayoutGuide)trailingSideLayoutGuide;
- (double)multipleCallLabelBaselineOffset;
- (id)compactLabelTextForParticipantLabel:(id)label;
- (id)customFontForParticipantLabel;
- (id)identificationCategoryDisplayString:(int64_t)string;
- (unint64_t)indexForParticipantLabel:(id)label;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)callLabelDetailsGestureRecognizerTappedForLabel:(id)label;
- (void)callLabelInfoLabelWasTappedForLabel:(id)label;
- (void)dealloc;
- (void)fieldModeButtonTapped:(id)tapped;
- (void)gameControllerDidChangeContext;
- (void)participantLabelView:(id)view didPerformActionType:(int64_t)type;
- (void)participantLabelWasTapped:(id)tapped;
- (void)setAllowsFieldModeSendButton:(BOOL)button;
- (void)setBannerAudioRouteButtonSelected:(BOOL)selected;
- (void)setBannerButtonsState:(unint64_t)state;
- (void)setLeadingSideLayoutGuide:(id)guide;
- (void)setShouldShowSingleDurationLabel:(BOOL)label;
- (void)setTextColor:(id)color;
- (void)setTrailingSideLayoutGuide:(id)guide;
- (void)setUserInteractionEnabled:(BOOL)enabled;
- (void)showSendButtonGestureRecognizer:(id)recognizer;
- (void)traitCollectionDidChange:(id)change;
- (void)updateParticipantAtIndex:(unint64_t)index animated:(BOOL)animated;
- (void)updateParticipantsAnimated:(BOOL)animated;
- (void)updateSingleDurationTimerLabelText;
- (void)updateSubviewWithLayout:(int64_t)layout forContact:(id)contact;
@end

@implementation PHCallParticipantsView

- (BOOL)shouldIgnoreUpdates
{
  delegate = [(PHCallParticipantsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(PHCallParticipantsView *)self delegate];
  v6 = [delegate2 shouldIgnoreUpdatesInParticipantsView:self];

  return v6;
}

- (PHCallParticipantsViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (BOOL)participantLabelShouldShowLargeAvatar
{
  delegate = [(PHCallParticipantsView *)self delegate];
  shouldShowLargeAvatar = [delegate shouldShowLargeAvatar];

  return shouldShowLargeAvatar;
}

- (PHCallParticipantsView)initWithCallDisplayStyleManager:(id)manager
{
  managerCopy = manager;
  v15.receiver = self;
  v15.super_class = PHCallParticipantsView;
  v6 = [(PHCallParticipantsView *)&v15 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_callDisplayStyleManager, manager);
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
  callDisplayStyleManager = [(PHCallParticipantsView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    return 60.0;
  }

  callDisplayStyleManager2 = [(PHCallParticipantsView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager2 usesLargeFormatUI];

  if (usesLargeFormatUI)
  {
    return 40.0;
  }

  if (qword_1003B0CA8 != -1)
  {
    sub_100254650();
  }

  return *&qword_1003B0CA0;
}

- (void)updateSubviewWithLayout:(int64_t)layout forContact:(id)contact
{
  contactCopy = contact;
  contact = [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView contact];
  if (!contact)
  {
    delegate = [(PHCallParticipantsView *)self delegate];
    v8 = [delegate shouldShowParticipantImageAtIndex:0 inParticipantsView:self];

    if (!v8)
    {
      goto LABEL_5;
    }

    contact = [(PHCallParticipantsView *)self delegate];
    v9 = [contact contactForParticipantAtIndex:0 inParticipantsView:self];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setContact:v9];
  }

LABEL_5:
  [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView updateSubviewWithLayout:layout contact:contactCopy];
}

- (void)updateParticipantsAnimated:(BOOL)animated
{
  animatedCopy = animated;
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

  delegate = [(PHCallParticipantsView *)self delegate];
  v7 = [delegate numberOfParticipantsForParticipantsView:self];

  delegate2 = [(PHCallParticipantsView *)self delegate];
  v9 = [delegate2 overrideStringForParticipantsView:self];

  if (v9)
  {
    singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
    [singleCallLabelView removeFromSuperview];

    topMultipleCallLabelView = [(PHCallParticipantsView *)self topMultipleCallLabelView];
    [topMultipleCallLabelView removeFromSuperview];

    bottomMultipleCallLabelView = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [bottomMultipleCallLabelView removeFromSuperview];

    singleCallLabelView2 = [(PHCallParticipantsView *)self singleCallLabelView];
    posterNameViewModel = [singleCallLabelView2 posterNameViewModel];
    [posterNameViewModel updateStatus:&stru_100361FD0];

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
      callDisplayStyleManager = [(PHCallParticipantsView *)self callDisplayStyleManager];
      callDisplayStyle = [callDisplayStyleManager callDisplayStyle];
      callDisplayStyleManager2 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v20 = +[PHUIConfiguration singleCallParticipantLabelFontForCallDisplayStyle:usesLargeFormatUI:](PHUIConfiguration, "singleCallParticipantLabelFontForCallDisplayStyle:usesLargeFormatUI:", callDisplayStyle, [callDisplayStyleManager2 usesLargeFormatUI]);
      [(UILabel *)self->_nameOverrideLabel setFont:v20];

      v21 = [UIColor colorWithWhite:1.0 alpha:1.0];
      [(UILabel *)self->_nameOverrideLabel setTextColor:v21];

      [(UILabel *)self->_nameOverrideLabel setTextAlignment:1];
      [(UILabel *)self->_nameOverrideLabel setLineBreakMode:3];
      [(UILabel *)self->_nameOverrideLabel setAdjustsFontSizeToFitWidth:1];
      [(UILabel *)self->_nameOverrideLabel setMinimumScaleFactor:0.699999988];
      [(PHCallParticipantsView *)self addSubview:self->_nameOverrideLabel];
      leadingAnchor = [(UILabel *)self->_nameOverrideLabel leadingAnchor];
      leadingAnchor2 = [(PHCallParticipantsView *)self leadingAnchor];
      v165 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:24.0];
      v198[0] = v165;
      trailingAnchor = [(UILabel *)self->_nameOverrideLabel trailingAnchor];
      trailingAnchor2 = [(PHCallParticipantsView *)self trailingAnchor];
      v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-24.0];
      v198[1] = v22;
      centerYAnchor = [(UILabel *)self->_nameOverrideLabel centerYAnchor];
      centerYAnchor2 = [(PHCallParticipantsView *)self centerYAnchor];
      v25 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v198[2] = v25;
      bottomAnchor = [(UILabel *)self->_nameOverrideLabel bottomAnchor];
      bottomAnchor2 = [(PHCallParticipantsView *)self bottomAnchor];
      v28 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      v198[3] = v28;
      v29 = [NSArray arrayWithObjects:v198 count:4];
      [NSLayoutConstraint activateConstraints:v29];
    }

    delegate3 = [(PHCallParticipantsView *)self delegate];
    v31 = [delegate3 overrideStringForParticipantsView:self];
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

    callDisplayStyleManager3 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    callDisplayStyle2 = [callDisplayStyleManager3 callDisplayStyle];

    if (!callDisplayStyle2)
    {
      v67 = +[UIApplication sharedApplication];
      delegate4 = [v67 delegate];
      currentInCallScene = [delegate4 currentInCallScene];
      [currentInCallScene requestTransitionToPresentationMode:2 shouldDismissCMASAlerts:0];
    }

    callDisplayStyleManager4 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    usesLargeFormatUI = [callDisplayStyleManager4 usesLargeFormatUI];

    if (usesLargeFormatUI)
    {
      multiCallLabelLayoutGuide = [(PHCallParticipantsView *)self multiCallLabelLayoutGuide];

      if (!multiCallLabelLayoutGuide)
      {
        v73 = objc_alloc_init(UILayoutGuide);
        [(PHCallParticipantsView *)self setMultiCallLabelLayoutGuide:v73];
      }

      multiCallLabelLayoutGuide2 = [(PHCallParticipantsView *)self multiCallLabelLayoutGuide];
      [(PHCallParticipantsView *)self addLayoutGuide:multiCallLabelLayoutGuide2];

      v75 = 0;
    }

    else
    {
      v75 = objc_alloc_init(UILayoutGuide);
      [(PHCallParticipantsView *)self addLayoutGuide:v75];
    }

    centerYAnchor3 = [v75 centerYAnchor];
    centerYAnchor4 = [(PHCallParticipantsView *)self centerYAnchor];
    v92 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    [v92 setActive:1];

    if (!self->_bottomMultipleCallLabelView)
    {
      v171 = v75;
      v93 = [PHMultipleCallParticipantLabelView alloc];
      callDisplayStyleManager5 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v95 = [(PHMultipleCallParticipantLabelView *)v93 initWithCallDisplayStyleManager:callDisplayStyleManager5];
      bottomMultipleCallLabelView = self->_bottomMultipleCallLabelView;
      self->_bottomMultipleCallLabelView = v95;

      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_Bottom"];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setOverrideUserInterfaceStyle:2];
      [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView setDelegate:self];
      [(PHCallParticipantsView *)self addSubview:self->_bottomMultipleCallLabelView];
      leadingAnchor3 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView leadingAnchor];
      leadingAnchor4 = [(PHCallParticipantsView *)self leadingAnchor];
      v99 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
      v195[0] = v99;
      trailingAnchor3 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView trailingAnchor];
      trailingAnchor4 = [(PHCallParticipantsView *)self trailingAnchor];
      v102 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
      v195[1] = v102;
      v103 = [NSArray arrayWithObjects:v195 count:2];
      v168 = [v103 mutableCopy];

      callDisplayStyleManager6 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      callDisplayStyle3 = [callDisplayStyleManager6 callDisplayStyle];

      if (callDisplayStyle3 == 1)
      {
        v75 = v171;
        bottomAnchor3 = [v171 bottomAnchor];
        participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        bottomAnchor4 = [participantMarqueeLabel bottomAnchor];
        v109 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
        v110 = v168;
        [v168 addObject:v109];
      }

      else
      {
        participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        firstBaselineAnchor = [participantMarqueeLabel2 firstBaselineAnchor];
        bottomAnchor5 = [(PHCallParticipantsView *)self bottomAnchor];
        v115 = [firstBaselineAnchor constraintLessThanOrEqualToAnchor:bottomAnchor5];
        v194 = v115;
        v116 = [NSArray arrayWithObjects:&v194 count:1];
        v110 = v168;
        [v168 addObjectsFromArray:v116];

        callDisplayStyleManager7 = [(PHCallParticipantsView *)self callDisplayStyleManager];
        LODWORD(bottomAnchor5) = [callDisplayStyleManager7 usesLargeFormatUI];

        bottomAnchor3 = [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView bottomAnchor];
        participantMarqueeLabel = [(PHCallParticipantsView *)self bottomAnchor];
        if (bottomAnchor5)
        {
          bottomAnchor4 = [bottomAnchor3 constraintEqualToAnchor:participantMarqueeLabel];
          v193 = bottomAnchor4;
          v118 = &v193;
        }

        else
        {
          bottomAnchor4 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:participantMarqueeLabel];
          v192 = bottomAnchor4;
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
      callDisplayStyleManager8 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      v123 = [(PHMultipleCallParticipantLabelView *)v121 initWithCallDisplayStyleManager:callDisplayStyleManager8];
      topMultipleCallLabelView = self->_topMultipleCallLabelView;
      self->_topMultipleCallLabelView = v123;

      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setAccessibilityIdentifier:@"PHMultipleCallParticipantLabelView_Top"];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setOverrideUserInterfaceStyle:2];
      [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView setDelegate:self];
      [(PHCallParticipantsView *)self addSubview:self->_topMultipleCallLabelView];
      leadingAnchor5 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView leadingAnchor];
      leadingAnchor6 = [(PHCallParticipantsView *)self leadingAnchor];
      v127 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
      v191[0] = v127;
      trailingAnchor5 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView trailingAnchor];
      trailingAnchor6 = [(PHCallParticipantsView *)self trailingAnchor];
      v130 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
      v191[1] = v130;
      v131 = [NSArray arrayWithObjects:v191 count:2];
      v169 = [v131 mutableCopy];

      callDisplayStyleManager9 = [(PHCallParticipantsView *)self callDisplayStyleManager];
      callDisplayStyle4 = [callDisplayStyleManager9 callDisplayStyle];

      if (callDisplayStyle4 == 1)
      {
        v75 = v172;
        topAnchor = [v172 topAnchor];
        participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        topAnchor2 = [participantMarqueeLabel3 topAnchor];
        v162 = [topAnchor constraintEqualToAnchor:?];
        v190[0] = v162;
        participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        bottomAnchor6 = [participantMarqueeLabel4 bottomAnchor];
        participantMarqueeLabel5 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        topAnchor3 = [participantMarqueeLabel5 topAnchor];
        v166 = bottomAnchor6;
        bottomAnchor7 = [bottomAnchor6 constraintEqualToAnchor:topAnchor3];
        v190[1] = bottomAnchor7;
        participantMarqueeLabel7 = [NSArray arrayWithObjects:v190 count:2];
        [v169 addObjectsFromArray:participantMarqueeLabel7];
      }

      else
      {
        participantMarqueeLabel6 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        firstBaselineAnchor2 = [participantMarqueeLabel6 firstBaselineAnchor];
        topAnchor2 = [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView participantMarqueeLabel];
        firstBaselineAnchor3 = [topAnchor2 firstBaselineAnchor];
        [(PHCallParticipantsView *)self multipleCallLabelBaselineOffset];
        v162 = firstBaselineAnchor3;
        participantMarqueeLabel4 = [firstBaselineAnchor2 constraintEqualToAnchor:firstBaselineAnchor3 constant:-v142];
        v189[0] = participantMarqueeLabel4;
        topAnchor4 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView topAnchor];
        participantMarqueeLabel5 = [(PHCallParticipantsView *)self topAnchor];
        v166 = topAnchor4;
        topAnchor3 = [topAnchor4 constraintEqualToAnchor:participantMarqueeLabel5];
        v189[1] = topAnchor3;
        bottomAnchor7 = [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView bottomAnchor];
        participantMarqueeLabel7 = [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView participantMarqueeLabel];
        lastBaselineAnchor = [participantMarqueeLabel7 lastBaselineAnchor];
        v145 = [bottomAnchor7 constraintEqualToAnchor:lastBaselineAnchor];
        v189[2] = v145;
        v146 = [NSArray arrayWithObjects:v189 count:3];
        [v169 addObjectsFromArray:v146];

        participantMarqueeLabel3 = firstBaselineAnchor2;
        topAnchor = participantMarqueeLabel6;
        v75 = v172;
      }

      [NSLayoutConstraint activateConstraints:v169];
      v147 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"participantLabelWasTapped:"];
      [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView addGestureRecognizer:v147];
    }

    [(PHCallParticipantsView *)self updateParticipantAtIndex:0 animated:animatedCopy];
    [(PHCallParticipantsView *)self updateParticipantAtIndex:1 animated:animatedCopy];
    singleCallLabelView3 = [(PHCallParticipantsView *)self singleCallLabelView];
    if (singleCallLabelView3)
    {
    }

    else
    {
      nameOverrideLabel = [(PHCallParticipantsView *)self nameOverrideLabel];

      if (!nameOverrideLabel)
      {
LABEL_67:
        delegate5 = [(PHCallParticipantsView *)self delegate];
        -[PHCallParticipantsView setShouldShowSingleDurationLabel:](self, "setShouldShowSingleDurationLabel:", [delegate5 shouldShowSingleDurationLabelInParticipantsView:self]);

        goto LABEL_9;
      }
    }

    if (animatedCopy)
    {
      topMultipleCallLabelView2 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
      [topMultipleCallLabelView2 setAlpha:0.0];

      bottomMultipleCallLabelView2 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
      [bottomMultipleCallLabelView2 setAlpha:0.0];

      singleCallLabelView4 = [(PHCallParticipantsView *)self singleCallLabelView];
      nameOverrideLabel2 = [(PHCallParticipantsView *)self nameOverrideLabel];
      v176[0] = _NSConcreteStackBlock;
      v176[1] = 3221225472;
      v176[2] = sub_100060C48;
      v176[3] = &unk_100357318;
      v177 = singleCallLabelView4;
      v178 = nameOverrideLabel2;
      selfCopy = self;
      v173[0] = _NSConcreteStackBlock;
      v173[1] = 3221225472;
      v173[2] = sub_100060CD0;
      v173[3] = &unk_100356D10;
      v174 = v177;
      v175 = v178;
      v154 = v178;
      nameOverrideLabel3 = v177;
      [UIView animateWithDuration:v176 animations:v173 completion:0.5];
    }

    else
    {
      singleCallLabelView5 = [(PHCallParticipantsView *)self singleCallLabelView];
      [singleCallLabelView5 removeFromSuperview];

      nameOverrideLabel3 = [(PHCallParticipantsView *)self nameOverrideLabel];
      [nameOverrideLabel3 removeFromSuperview];
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

  singleCallLabelView6 = [(PHCallParticipantsView *)self singleCallLabelView];

  if (!singleCallLabelView6)
  {
    v35 = [PHSingleCallParticipantLabelView alloc];
    callDisplayStyleManager10 = [(PHCallParticipantsView *)self callDisplayStyleManager];
    v37 = [(PHSingleCallParticipantLabelView *)v35 initWithCallDisplayStyleManager:callDisplayStyleManager10 delegate:self];
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
    leadingSideLayoutGuide = [(PHCallParticipantsView *)self leadingSideLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setLeadingSideLayoutGuide:leadingSideLayoutGuide];

    trailingSideLayoutGuide = [(PHCallParticipantsView *)self trailingSideLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTrailingSideLayoutGuide:trailingSideLayoutGuide];

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

  delegate6 = [(PHCallParticipantsView *)self delegate];
  v50 = objc_opt_respondsToSelector();

  if (v50)
  {
    v51 = self->_singleCallLabelView;
    delegate7 = [(PHCallParticipantsView *)self delegate];
    v53 = [delegate7 colorForStatusLabelForParticipantAtIndex:0 inParticipantsView:self];
    [(PHSingleCallParticipantLabelView *)v51 setStatusLabelTextColor:v53];
  }

  delegate8 = [(PHCallParticipantsView *)self delegate];
  v55 = objc_opt_respondsToSelector();

  if (v55)
  {
    v56 = self->_singleCallLabelView;
    delegate9 = [(PHCallParticipantsView *)self delegate];
    v58 = [delegate9 colorForParticipantLabelView:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v56 setParticipantMarqueeLabelTextColor:v58];
  }

  delegate10 = [(PHCallParticipantsView *)self delegate];
  v60 = objc_opt_respondsToSelector();

  v61 = self->_singleCallLabelView;
  if (v60)
  {
    delegate11 = [(PHCallParticipantsView *)self delegate];
    v63 = [delegate11 fontForParticipantLabelView:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v61 setParticipantMarqueeLabelFont:v63];
  }

  else
  {
    delegate11 = [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView updatedParticipantMarqueeLabelFont];
    [(PHSingleCallParticipantLabelView *)v61 setParticipantMarqueeLabelFont:delegate11];
  }

  [(PHCallParticipantsView *)self updateParticipantAtIndex:0 animated:animatedCopy];
  delegate12 = [(PHCallParticipantsView *)self delegate];
  v77 = objc_opt_respondsToSelector();

  if (v77)
  {
    v78 = self->_singleCallLabelView;
    delegate13 = [(PHCallParticipantsView *)self delegate];
    v80 = [delegate13 fontForParticipantLabelViewStatusLabel:self->_singleCallLabelView];
    [(PHSingleCallParticipantLabelView *)v78 setStatusLabelTextFont:v80];
  }

  topMultipleCallLabelView3 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
  if (topMultipleCallLabelView3 || ([(PHCallParticipantsView *)self bottomMultipleCallLabelView], (topMultipleCallLabelView3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    nameOverrideLabel4 = [(PHCallParticipantsView *)self nameOverrideLabel];

    if (!nameOverrideLabel4)
    {
      goto LABEL_9;
    }
  }

  topMultipleCallLabelView4 = [(PHCallParticipantsView *)self topMultipleCallLabelView];
  v83 = topMultipleCallLabelView4;
  if (animatedCopy)
  {
    bottomMultipleCallLabelView3 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    nameOverrideLabel5 = [(PHCallParticipantsView *)self nameOverrideLabel];
    singleCallLabelView7 = [(PHCallParticipantsView *)self singleCallLabelView];
    [singleCallLabelView7 setAlpha:0.0];

    v184[0] = _NSConcreteStackBlock;
    v184[1] = 3221225472;
    v184[2] = sub_100060B8C;
    v184[3] = &unk_1003572C8;
    v185 = v83;
    v186 = bottomMultipleCallLabelView3;
    v187 = nameOverrideLabel5;
    selfCopy2 = self;
    v180[0] = _NSConcreteStackBlock;
    v180[1] = 3221225472;
    v180[2] = sub_100060C04;
    v180[3] = &unk_1003572F0;
    v181 = v185;
    v182 = v186;
    v183 = v187;
    v87 = v187;
    v88 = v186;
    nameOverrideLabel6 = v185;
    [UIView animateWithDuration:v184 animations:v180 completion:0.5];
  }

  else
  {
    [topMultipleCallLabelView4 removeFromSuperview];

    bottomMultipleCallLabelView4 = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [bottomMultipleCallLabelView4 removeFromSuperview];

    nameOverrideLabel6 = [(PHCallParticipantsView *)self nameOverrideLabel];
    [nameOverrideLabel6 removeFromSuperview];
  }

  [(PHCallParticipantsView *)self setShouldShowSingleDurationLabel:0];
  [(PHCallParticipantsView *)self setTopMultipleCallLabelView:0];
  [(PHCallParticipantsView *)self setBottomMultipleCallLabelView:0];
  [(PHCallParticipantsView *)self setNameOverrideLabel:0];
LABEL_9:
  singleDurationTimerLabel = [(PHCallParticipantsView *)self singleDurationTimerLabel];

  if (singleDurationTimerLabel)
  {
    [(PHCallParticipantsView *)self updateSingleDurationTimerLabelText];
  }
}

- (void)gameControllerDidChangeContext
{
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  [singleCallLabelView gameControllerDidChangeContext];
}

- (void)updateParticipantAtIndex:(unint64_t)index animated:(BOOL)animated
{
  animatedCopy = animated;
  if (![(PHCallParticipantsView *)self shouldIgnoreUpdates])
  {
    delegate = [(PHCallParticipantsView *)self delegate];
    v9 = [delegate numberOfParticipantsForParticipantsView:self];

    delegate2 = [(PHCallParticipantsView *)self delegate];
    v11 = [delegate2 callForParticipantAtIndex:index inParticipantsView:self];

    objc_storeStrong(&self->_currentCall, v11);
    if (v9 == 2)
    {
      v35 = &OBJC_IVAR___PHCallParticipantsView__bottomMultipleCallLabelView;
      if (!index)
      {
        v35 = &OBJC_IVAR___PHCallParticipantsView__topMultipleCallLabelView;
      }

      v7 = *(&self->super.super.super.isa + *v35);
      previousURL = self->_previousURL;
      self->_previousURL = 0;

      if (v7)
      {
LABEL_7:
        delegate3 = [(PHCallParticipantsView *)self delegate];
        v13 = [delegate3 nameForParticipantAtIndex:index inParticipantsView:self];

        displayContext = [v11 displayContext];

        if (displayContext)
        {
          displayContext2 = [v11 displayContext];
          callDirectoryLabel = [displayContext2 callDirectoryLabel];
          if (callDirectoryLabel)
          {
            v17 = callDirectoryLabel;
            isOutgoing = [v11 isOutgoing];

            if (isOutgoing)
            {
              callDirectoryLabel2 = [displayContext2 callDirectoryLabel];

              v13 = callDirectoryLabel2;
            }
          }
        }

        delegate4 = [(PHCallParticipantsView *)self delegate];
        v21 = [delegate4 labelForParticipantAtIndex:index inParticipantsView:self allowsDuration:1];

        delegate5 = [(PHCallParticipantsView *)self delegate];
        v23 = [delegate5 supplementalParticipantLabelFormatStringAtIndex:index inParticipantsView:self];

        v24 = +[CNKFeatures sharedInstance];
        isHeroImageEnabled = [v24 isHeroImageEnabled];

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
            delegate6 = [(PHCallParticipantsView *)self delegate];
            v41 = objc_opt_respondsToSelector();

            if ((v41 & 1) == 0)
            {
              goto LABEL_53;
            }

            delegate7 = [(PHCallParticipantsView *)self delegate];
            v37 = [delegate7 localizedSenderIdentityForParticipantAtIndex:index inParticipantsView:self];

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

        delegate8 = [(PHCallParticipantsView *)self delegate];
        v27 = objc_opt_respondsToSelector();

        if (v27)
        {
          delegate9 = [(PHCallParticipantsView *)self delegate];
          v29 = [delegate9 iconInParticipantsView:self];
          [(PHSingleCallParticipantLabelView *)v7 setIcon:v29];
        }

        delegate10 = [(PHCallParticipantsView *)self delegate];
        v31 = objc_opt_respondsToSelector();

        if (v31)
        {
          delegate11 = [(PHCallParticipantsView *)self delegate];
          v33 = [delegate11 linkNameForCall:v11];

          isTelephonyProvider = v33 != 0;
          if (v33)
          {
            v34 = v33;

            v13 = v34;
          }
        }

        else
        {
          isTelephonyProvider = 0;
        }

        v38 = v7;
        v104 = v38;
        if (![v11 isIncoming])
        {
LABEL_39:
          if ((isHeroImageEnabled & 1) != 0 || (-[PHCallParticipantsView callDisplayStyleManager](self, "callDisplayStyleManager"), v50 = objc_claimAutoreleasedReturnValue(), v51 = [v50 callDisplayStyle], v50, v51 == 3))
          {
            delegate12 = [(PHCallParticipantsView *)self delegate];
            v53 = [delegate12 contactForParticipantAtIndex:0 inParticipantsView:self];
            [(PHSingleCallParticipantLabelView *)v104 setContact:v53];
          }

          v49 = v105;
          if (!v105)
          {
LABEL_47:
            delegate13 = [(PHCallParticipantsView *)self delegate];
            v60 = objc_opt_respondsToSelector();

            if (v60)
            {
              delegate14 = [(PHCallParticipantsView *)self delegate];
              v62 = [delegate14 localizedSenderIdentityForParticipantAtIndex:index inParticipantsView:self];

              if ([v62 length])
              {
                [v21 setLocalizedSenderIdentity:v62];
              }
            }

            if (isTelephonyProvider)
            {
              strings = [v21 strings];
              firstObject = [strings firstObject];
              [(PHAbstractCallParticipantLabelView *)v104 setParticipantName:firstObject];

              labelDescriptorFactory = self->_labelDescriptorFactory;
              secondaryString = [v21 secondaryString];
              v67 = -[CNKCallParticipantLabelDescriptorFactory makeLabelWithString:secondaryString:layoutState:](labelDescriptorFactory, "makeLabelWithString:secondaryString:layoutState:", v13, secondaryString, [v21 layoutState]);

              sourceString = [v21 sourceString];
              [v67 setSourceString:sourceString];

              localizedSenderIdentity = [v21 localizedSenderIdentity];
              [v67 setLocalizedSenderIdentity:localizedSenderIdentity];

              [(PHSingleCallParticipantLabelView *)v104 setLabelDescriptor:v67];
LABEL_54:
              delegate15 = [(PHCallParticipantsView *)self delegate];
              -[PHSingleCallParticipantLabelView setActivityState:animated:](v7, "setActivityState:animated:", [delegate15 activityStateForParticipantAtIndex:index inParticipantsView:self], animatedCopy);

              delegate16 = [(PHCallParticipantsView *)self delegate];
              v72 = [delegate16 shouldShowInfoButtonForParticipantAtIndex:index inParticipantsView:self];

              [(PHSingleCallParticipantLabelView *)v7 setShowsConferenceParticipantsButton:v72];
              if (v72)
              {
                [(PHSingleCallParticipantLabelView *)v7 setShowsCallDetailsViewButton:0];
              }

              else
              {
                delegate17 = [(PHCallParticipantsView *)self delegate];
                -[PHSingleCallParticipantLabelView setShowsCallDetailsViewButton:](v7, "setShowsCallDetailsViewButton:", [delegate17 shouldShowCallDetailsViewButton]);
              }

LABEL_58:
              goto LABEL_59;
            }

            goto LABEL_53;
          }

LABEL_43:
          if (isTelephonyProvider)
          {
            [NSString stringWithFormat:v49, v13];
            v13 = v54 = v13;
          }

          else
          {
            [v21 strings];
            v101 = animatedCopy;
            v55 = v21;
            v57 = v56 = v49;
            firstObject2 = [v57 firstObject];
            v54 = [NSString stringWithFormat:v56, firstObject2];

            v21 = [(CNKCallParticipantLabelDescriptorFactory *)self->_labelDescriptorFactory makeLabelWithString:v54];

            animatedCopy = v101;
          }

          goto LABEL_47;
        }

        contact = [(PHSingleCallParticipantLabelView *)v38 contact];
        if (contact)
        {

          goto LABEL_39;
        }

        delegate18 = [(PHCallParticipantsView *)self delegate];
        v44 = [delegate18 shouldShowParticipantImageAtIndex:0 inParticipantsView:self];

        if (!v44)
        {
          goto LABEL_39;
        }

        delegate19 = [(PHCallParticipantsView *)self delegate];
        suggestedDisplayName = [delegate19 contactForParticipantAtIndex:0 inParticipantsView:self];
        [(PHSingleCallParticipantLabelView *)v104 setContact:suggestedDisplayName];

        contact2 = [(PHSingleCallParticipantLabelView *)v104 contact];
        if (contact2)
        {
          suggestedDisplayName = contact2;
          contact3 = [(PHSingleCallParticipantLabelView *)v104 contact];
          v49 = v105;
          if ([contact3 imageDataAvailable])
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
          callDirectoryName = [v11 callDirectoryName];
          if (callDirectoryName || ([v11 imageURL], (suggestedDisplayName = objc_claimAutoreleasedReturnValue()) != 0))
          {
            provider = [v11 provider];
            isTelephonyProvider = [provider isTelephonyProvider];

            if (callDirectoryName)
            {
LABEL_80:

              goto LABEL_81;
            }
          }

          else
          {
            isTelephonyProvider = 0;
          }

LABEL_79:

          goto LABEL_80;
        }

        v77 = +[CNKFeatures sharedInstance];
        if ([v77 isHeroImageEnabled])
        {
          imageURL = [v11 imageURL];
          if (imageURL)
          {
            v79 = imageURL;
            provider2 = [v11 provider];
            if ([provider2 isTelephonyProvider])
            {
              [v11 localizedLabel];
              v81 = v102 = provider2;

              if (v81)
              {
LABEL_81:
                imageURL2 = [v11 imageURL];

                v83 = &selRef_numberOfSectionsInTableView_;
                if (imageURL2)
                {
                  imageURL3 = [v11 imageURL];
                  relativePath = [imageURL3 relativePath];
                  v86 = [relativePath isEqualToString:@"/stock"];

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
                      imageURL4 = [v11 imageURL];
                      relativePath2 = [imageURL4 relativePath];
                      *buf = 138412290;
                      indexCopy = relativePath2;
                      _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Attempting to display call imageURL: %@", buf, 0xCu);
                    }

                    v93 = [UIImage alloc];
                    imageURL5 = [v11 imageURL];
                    relativePath3 = [imageURL5 relativePath];
                    v89 = [v93 initWithContentsOfFile:relativePath3];
                  }

                  v83 = &selRef_numberOfSectionsInTableView_;
                  if (v89)
                  {
                    v96 = self->_previousURL;
                    imageURL6 = [v11 imageURL];
                    LOBYTE(v96) = [(NSURL *)v96 isEqual:imageURL6];

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
                imageURL7 = [v11 imageURL];
                v99 = *(v83 + 645);
                v100 = *(&self->super.super.super.isa + v99);
                *(&self->super.super.super.isa + v99) = imageURL7;

                goto LABEL_97;
              }

              goto LABEL_77;
            }
          }
        }

LABEL_77:
        callDirectoryName = [v11 suggestedDisplayName];
        if (!callDirectoryName)
        {
          isTelephonyProvider = 0;
          goto LABEL_80;
        }

        suggestedDisplayName = [v11 suggestedDisplayName];
        isTelephonyProvider = [suggestedDisplayName length] != 0;
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
    indexCopy = index;
    _os_log_impl(&_mh_execute_header, &v7->super.super.super.super, OS_LOG_TYPE_DEFAULT, "Ignoring request to update participant at index %lu because updates to the call participants view are disabled", buf, 0xCu);
  }

LABEL_59:
}

- (BOOL)_statusLabelStringWillFit:(id)fit
{
  fitCopy = fit;
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];

  if (singleCallLabelView)
  {
    singleCallLabelView2 = [(PHCallParticipantsView *)self singleCallLabelView];
    v7 = [singleCallLabelView2 _statusLabelStringWillFit:fitCopy];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (void)setLeadingSideLayoutGuide:(id)guide
{
  guideCopy = guide;
  objc_storeWeak(&self->_leadingSideLayoutGuide, guideCopy);
  singleCallLabelView = self->_singleCallLabelView;
  if (singleCallLabelView)
  {
    superview = [(PHSingleCallParticipantLabelView *)singleCallLabelView superview];

    if (superview)
    {
      [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setLeadingSideLayoutGuide:guideCopy];
    }
  }
}

- (void)setTrailingSideLayoutGuide:(id)guide
{
  guideCopy = guide;
  objc_storeWeak(&self->_trailingSideLayoutGuide, guideCopy);
  singleCallLabelView = self->_singleCallLabelView;
  if (singleCallLabelView)
  {
    superview = [(PHSingleCallParticipantLabelView *)singleCallLabelView superview];

    if (superview)
    {
      [(PHSingleCallParticipantLabelView *)self->_singleCallLabelView setTrailingSideLayoutGuide:guideCopy];
    }
  }
}

- (void)setTextColor:(id)color
{
  singleCallLabelView = self->_singleCallLabelView;
  colorCopy = color;
  [(PHSingleCallParticipantLabelView *)singleCallLabelView setTextColor:colorCopy];
  [(PHMultipleCallParticipantLabelView *)self->_topMultipleCallLabelView setTextColor:colorCopy];
  [(PHMultipleCallParticipantLabelView *)self->_bottomMultipleCallLabelView setTextColor:colorCopy];
}

- (void)participantLabelWasTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  v6 = tappedCopy;
  if (v5)
  {
    view = [tappedCopy view];
    v8 = [(PHCallParticipantsView *)self indexForParticipantLabel:view];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      delegate2 = [(PHCallParticipantsView *)self delegate];
      [delegate2 participantTappedAtIndex:v9 inParticipantsView:self];
    }

    v6 = tappedCopy;
  }
}

- (void)setShouldShowSingleDurationLabel:(BOOL)label
{
  if (self->_shouldShowSingleDurationLabel != label)
  {
    labelCopy = label;
    topMultipleCallLabelView = [(PHCallParticipantsView *)self topMultipleCallLabelView];
    [topMultipleCallLabelView setHidesLabel:labelCopy];

    bottomMultipleCallLabelView = [(PHCallParticipantsView *)self bottomMultipleCallLabelView];
    [bottomMultipleCallLabelView setHidesLabel:labelCopy];

    if (labelCopy)
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
      callDisplayStyleManager = [(PHCallParticipantsView *)self callDisplayStyleManager];
      usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];
      v14 = 0.0;
      if (!usesLargeFormatUI)
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
      singleDurationTimerLabel = [(PHCallParticipantsView *)self singleDurationTimerLabel];
      [singleDurationTimerLabel removeFromSuperview];

      [(PHCallParticipantsView *)self setSingleDurationTimerLabel:0];
    }

    self->_shouldShowSingleDurationLabel = labelCopy;

    [(PHCallParticipantsView *)self updateParticipants];
  }
}

- (id)identificationCategoryDisplayString:(int64_t)string
{
  v4 = +[NSBundle mainBundle];
  v5 = v4;
  if ((string - 3) > 0x10)
  {
    v6 = @"MAYBE_JUNK";
  }

  else
  {
    v6 = off_100357338[string - 3];
  }

  v7 = [v4 localizedStringForKey:v6 value:&stru_100361FD0 table:@"InCallService"];

  return v7;
}

- (void)traitCollectionDidChange:(id)change
{
  v8.receiver = self;
  v8.super_class = PHCallParticipantsView;
  changeCopy = change;
  [(PHCallParticipantsView *)&v8 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHCallParticipantsView *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    [(PHCallParticipantsView *)self updateParticipants];
  }
}

- (void)updateSingleDurationTimerLabelText
{
  traitCollection = [(PHCallParticipantsView *)self traitCollection];
  v4 = [traitCollection _backlightLuminance] != 1;

  delegate = [(PHCallParticipantsView *)self delegate];
  v9 = [delegate labelForParticipantAtIndex:0 inParticipantsView:self allowsDuration:v4];

  singleDurationTimerLabel = [(PHCallParticipantsView *)self singleDurationTimerLabel];
  strings = [v9 strings];
  firstObject = [strings firstObject];
  [singleDurationTimerLabel setAttributedOrPlainText:firstObject];
}

- (void)setUserInteractionEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v5.receiver = self;
  v5.super_class = PHCallParticipantsView;
  [(PHCallParticipantsView *)&v5 setUserInteractionEnabled:?];
  [(PHAbstractCallParticipantLabelView *)self->_singleCallLabelView setUserInteractionEnabled:enabledCopy];
  [(PHAbstractCallParticipantLabelView *)self->_topMultipleCallLabelView setUserInteractionEnabled:enabledCopy];
  [(PHAbstractCallParticipantLabelView *)self->_bottomMultipleCallLabelView setUserInteractionEnabled:enabledCopy];
}

- (void)setBannerButtonsState:(unint64_t)state
{
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  [singleCallLabelView setBannerButtonsState:state];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)selected
{
  selectedCopy = selected;
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  [singleCallLabelView setBannerAudioRouteButtonSelected:selectedCopy];
}

- (unint64_t)indexForParticipantLabel:(id)label
{
  labelCopy = label;
  if (self->_singleCallLabelView == labelCopy || (topMultipleCallLabelView = self->_topMultipleCallLabelView, topMultipleCallLabelView == labelCopy) || ([(PHMultipleCallParticipantLabelView *)topMultipleCallLabelView swapButton], v6 = objc_claimAutoreleasedReturnValue(), v6, v6 == labelCopy))
  {
    v9 = 0;
  }

  else
  {
    bottomMultipleCallLabelView = self->_bottomMultipleCallLabelView;
    if (bottomMultipleCallLabelView == labelCopy || ([(PHMultipleCallParticipantLabelView *)bottomMultipleCallLabelView swapButton], v8 = objc_claimAutoreleasedReturnValue(), v8, v8 == labelCopy))
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

- (void)callLabelInfoLabelWasTappedForLabel:(id)label
{
  labelCopy = label;
  delegate = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(PHCallParticipantsView *)self indexForParticipantLabel:labelCopy];
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = v6;
      delegate2 = [(PHCallParticipantsView *)self delegate];
      [delegate2 participantViewInfoButtonTappedAtIndex:v7 inParticipantsView:self];
    }
  }
}

- (void)callLabelDetailsGestureRecognizerTappedForLabel:(id)label
{
  delegate = [(PHCallParticipantsView *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(PHCallParticipantsView *)self delegate];
    [delegate2 participantViewCallDetailsGestureRecognizerTapped];
  }
}

- (id)compactLabelTextForParticipantLabel:(id)label
{
  labelCopy = label;
  delegate = [(PHCallParticipantsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if ((v6 & 1) != 0 && (v7 = [(PHCallParticipantsView *)self indexForParticipantLabel:labelCopy], v7 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v9 = v7;
    delegate2 = [(PHCallParticipantsView *)self delegate];
    v8 = [delegate2 compactLabelTextForParticipantAtIndex:v9 inParticipantsView:self];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)participantLabelView:(id)view didPerformActionType:(int64_t)type
{
  delegate = [(PHCallParticipantsView *)self delegate];
  [delegate participantsView:self didPerformActionType:type];
}

- (BOOL)isCallRinging
{
  delegate = [(PHCallParticipantsView *)self delegate];
  isCallRinging = [delegate isCallRinging];

  return isCallRinging;
}

- (BOOL)shouldShowParticipantLabel
{
  delegate = [(PHCallParticipantsView *)self delegate];
  shouldShowParticipantLabel = [delegate shouldShowParticipantLabel];

  return shouldShowParticipantLabel;
}

- (id)customFontForParticipantLabel
{
  delegate = [(PHCallParticipantsView *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(PHCallParticipantsView *)self delegate];
    customFontForParticipantLabel = [delegate2 customFontForParticipantLabel];
  }

  else
  {
    customFontForParticipantLabel = 0;
  }

  return customFontForParticipantLabel;
}

- (BOOL)isKnownCaller
{
  currentCall = [(PHCallParticipantsView *)self currentCall];
  contactIdentifier = [currentCall contactIdentifier];
  v4 = contactIdentifier != 0;

  return v4;
}

- (void)setAllowsFieldModeSendButton:(BOOL)button
{
  buttonCopy = button;
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (buttonCopy)
    {
      v6 = @"YES";
    }

    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "PHCallParticipantsView: setAllowsFieldModeSendButton:%@", &v15, 0xCu);
  }

  if (self->_allowsFieldModeSendButton != buttonCopy)
  {
    if (buttonCopy)
    {
      fieldModeSendButton = [(PHCallParticipantsView *)self fieldModeSendButton];

      if (!fieldModeSendButton)
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

    self->_allowsFieldModeSendButton = buttonCopy;
  }
}

- (void)fieldModeButtonTapped:(id)tapped
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Field mode button tapped", v8, 2u);
  }

  delegate = [(PHCallParticipantsView *)self delegate];
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    delegate2 = [(PHCallParticipantsView *)self delegate];
    [delegate2 fieldModeSendButtonTappedInParticipantsView:self];
  }
}

- (void)showSendButtonGestureRecognizer:(id)recognizer
{
  v4 = sub_100004F84();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Showing send button", v6, 2u);
  }

  fieldModeSendButton = [(PHCallParticipantsView *)self fieldModeSendButton];
  [fieldModeSendButton setHidden:0];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  [(PHCallParticipantsView *)self invalidateIntrinsicContentSize];
  singleCallLabelView = [(PHCallParticipantsView *)self singleCallLabelView];
  if (singleCallLabelView)
  {
    v8 = singleCallLabelView;
    singleCallLabelView2 = [(PHCallParticipantsView *)self singleCallLabelView];
    v10 = [singleCallLabelView2 conformsToProtocol:&OBJC_PROTOCOL___ICSCallDisplayStyleHandler];

    if (v10)
    {
      singleCallLabelView3 = [(PHCallParticipantsView *)self singleCallLabelView];
      [singleCallLabelView3 callDisplayStyleDidChangeFromStyle:style toStyle:toStyle];
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