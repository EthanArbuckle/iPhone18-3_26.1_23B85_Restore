@interface PHSingleCallParticipantLabelView
- (BOOL)_statusLabelStringWillFit:(id)fit;
- (BOOL)_statusLabelStringWillFit:(id)fit attributes:(id)attributes padding:(float)padding;
- (BOOL)inBrandedCall;
- (BOOL)inCallDirectoryCall;
- (BOOL)isDisplayStyleAmbient;
- (BOOL)isDisplayStyleBanner;
- (BOOL)isDisplayStyleMiniWindow;
- (BOOL)setUpFirstAndLastNameLabelsIfPossible;
- (BOOL)shouldBlurAvatarViewForCurrentContactNickname:(id)nickname;
- (BOOL)shouldUseHeroImageLayout;
- (BOOL)showPostersEnabledForiPad;
- (BOOL)showsCallDetailsViewButton;
- (CNContact)contact;
- (PHPosterNameViewModel)posterNameViewModel;
- (PHSingleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)manager delegate:(id)delegate;
- (UILayoutGuide)leadingSideLayoutGuide;
- (UILayoutGuide)trailingSideLayoutGuide;
- (UIView)posterBadgeView;
- (double)_distanceFromParticipantNameBaseLineToStatus;
- (double)avatarDiameterFullScreen;
- (double)businessLogoCornerRadius;
- (double)businessLogoEdge;
- (double)businessLogoMarginH;
- (double)getParticipantsMarqueeLabelHeight;
- (double)getParticipantsViewHeight;
- (double)getStatusLabelHeight;
- (double)horizontalPaddingConstantForTrailingConstraints;
- (double)horizontalPaddingForMiniWindow;
- (double)labelsVerticalOffset;
- (double)voipIconEdge;
- (double)voipIconMarginH;
- (id)currentIMNicknameMatchingContact:(id)contact;
- (id)gameControllerContext;
- (id)updatedAvatarViewConstraints;
- (id)updatedParticipantMarqueeLabelFont;
- (int64_t)numberOfLinesInStatusLabel;
- (unint64_t)ambientLayout;
- (unint64_t)initialStateForBannerButtonsView;
- (void)animateToFirstLabel;
- (void)animateToNextLabel;
- (void)bannerButtonsView:(id)view didPerformActionType:(int64_t)type;
- (void)callDetailsGestureRecognizerTapped:(id)tapped;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle;
- (void)deactivateLayoutGuideConstraints;
- (void)dealloc;
- (void)fadeStatusLabelToAttributedOrPlainString:(id)string;
- (void)gameControllerDidChangeContext;
- (void)hideBadgesOnly;
- (void)hideFirstAndLastNameAnimated:(BOOL)animated;
- (void)infoButtonTapped:(id)tapped;
- (void)invalidateStatusLabelTimer;
- (void)layoutSubviews;
- (void)scheduleStatusLabelTimer;
- (void)setActivityState:(unsigned __int16)state animated:(BOOL)animated;
- (void)setBannerAudioRouteButtonSelected:(BOOL)selected;
- (void)setBannerButtonsState:(unint64_t)state;
- (void)setBusinessLogo:(id)logo isPerson:(BOOL)person;
- (void)setContact:(id)contact;
- (void)setCustomAvatar:(id)avatar;
- (void)setDelegate:(id)delegate;
- (void)setHidesLabel:(BOOL)label;
- (void)setIcon:(id)icon;
- (void)setLabelDescriptor:(id)descriptor;
- (void)setLabelLayoutState:(int64_t)state animated:(BOOL)animated;
- (void)setParticipantMarqueeLabelFont:(id)font;
- (void)setParticipantMarqueeLabelTextColor:(id)color;
- (void)setPosterBadgeView:(id)view;
- (void)setPosterNameViewModel:(id)model;
- (void)setShowsCallDetailsViewButton:(BOOL)button;
- (void)setShowsConferenceParticipantsButton:(BOOL)button;
- (void)setStatusLabelTextColor:(id)color;
- (void)setStatusLabelTextFont:(id)font;
- (void)setTextColor:(id)color;
- (void)setTrailingSideLayoutGuide:(id)guide;
- (void)setUpCallDetailsViewButton;
- (void)showFirstAndLastNameAnimated:(BOOL)animated;
- (void)statusLabelTapped:(id)tapped;
- (void)traitCollectionDidChange:(id)change;
- (void)updateAvatarViewConstraints;
- (void)updateBannerButtonsViewForCallDisplayStyle:(int64_t)style;
- (void)updateBusinessLogoSize;
- (void)updateGestureRecognizersEnabled;
- (void)updateHeightConstraints;
- (void)updateIconSize;
- (void)updateLabelAlignmentForCallDisplayStyle:(int64_t)style;
- (void)updateLabelConstraints;
- (void)updateLabelFonts;
- (void)updateLabelScales;
- (void)updateLabelTextAlignmentForCallDisplayStyle:(int64_t)style;
- (void)updateLabelTrailingConstraints;
- (void)updateLabelsOrder;
- (void)updateLabelsOrderAndLayout;
- (void)updateLabelsOrderAndText;
- (void)updateLayoutForCallDisplayStyle:(int64_t)style;
- (void)updateLayoutGuide;
- (void)updateParticipantMarqueeLabelHorizontalConstraint;
- (void)updateParticipantMarqueeLabelNumberOfLines;
- (void)updatePosterBadgeView;
- (void)updateSecondaryLabelHorizontalConstraint;
- (void)updateStackViewHorizontalConstraints;
- (void)updateStackViewHorizontalConstraintsWithBusinessLogo;
- (void)updateStackViewHorizontalConstraintsWithVoIPAppIcon;
- (void)updateStatusLabelText;
- (void)updateSubviewWithLayout:(int64_t)layout contact:(id)contact;
- (void)updateViewForCallState;
@end

@implementation PHSingleCallParticipantLabelView

- (void)updatePosterBadgeView
{
  posterBadgeView = [(PHSingleCallParticipantLabelView *)self posterBadgeView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  posterBadgeView2 = [(PHSingleCallParticipantLabelView *)self posterBadgeView];
  if (isKindOfClass)
  {
    badgeView = [(PHSingleCallParticipantLabelView *)self badgeView];
    title = [badgeView title];
    [posterBadgeView2 setTitle:title];
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
      return;
    }

    posterBadgeView2 = [(PHSingleCallParticipantLabelView *)self posterBadgeView];
    badgeView = [(PHSingleCallParticipantLabelView *)self iconView];
    title = [badgeView image];
    [posterBadgeView2 setImage:title];
  }
}

- (UIView)posterBadgeView
{
  WeakRetained = objc_loadWeakRetained(&self->_posterBadgeView);

  return WeakRetained;
}

- (PHPosterNameViewModel)posterNameViewModel
{
  WeakRetained = objc_loadWeakRetained(&self->_posterNameViewModel);

  return WeakRetained;
}

- (id)updatedParticipantMarqueeLabelFont
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    v10 = +[PHUIConfiguration singleCallParticipantLabelAmbientFont];
    delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      delegate2 = [(PHAbstractCallParticipantLabelView *)self delegate];
      customFontForParticipantLabel = [delegate2 customFontForParticipantLabel];
      v15 = customFontForParticipantLabel;
      if (customFontForParticipantLabel)
      {
        v16 = customFontForParticipantLabel;
      }

      else
      {
        v16 = v10;
      }

      v17 = v16;

      v10 = v17;
    }

    ambientLayout = [(PHSingleCallParticipantLabelView *)self ambientLayout];
    v19 = 60.0;
    if (ambientLayout == 1)
    {
      v19 = 90.0;
    }

    v9 = [v10 fontWithSize:v19];
  }

  else if (callDisplayStyle == 1)
  {
    v9 = +[PHUIConfiguration singleCallParticipantLabelMiniWindowFont];
  }

  else
  {
    if (callDisplayStyle)
    {
      callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
      v9 = +[PHUIConfiguration singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:](PHUIConfiguration, "singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:", [callDisplayStyleManager2 usesLargeFormatUI]);
    }

    else
    {
      callDisplayStyleManager2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      text = [callDisplayStyleManager2 text];
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel bounds];
      v9 = [PHUIConfiguration singleCallParticipantLabelBannerFontForText:text availableWidth:v8];
    }
  }

  return v9;
}

- (unint64_t)ambientLayout
{
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  participantLabelShouldShowLargeAvatar = [delegate participantLabelShouldShowLargeAvatar];

  return participantLabelShouldShowLargeAvatar;
}

- (BOOL)setUpFirstAndLastNameLabelsIfPossible
{
  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    trailingSideLayoutGuide = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (trailingSideLayoutGuide)
    {
      contact = [(PHSingleCallParticipantLabelView *)self contact];
      v5 = [CNContactFormatter posterNameComponentsForContact:contact];

      secondNameComponent = [v5 secondNameComponent];
      LOBYTE(trailingSideLayoutGuide) = secondNameComponent != 0;

      if (secondNameComponent)
      {
        firstNameLabel = self->_firstNameLabel;
        if (!firstNameLabel)
        {
          if (self->_lastNameLabel)
          {
            firstNameLabel = 0;
          }

          else
          {
            v8 = objc_alloc_init(UILabel);
            v9 = self->_firstNameLabel;
            self->_firstNameLabel = v8;

            [(UILabel *)self->_firstNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
            [(UILabel *)self->_firstNameLabel setTextAlignment:1];
            [(UILabel *)self->_firstNameLabel setNumberOfLines:1];
            [(UILabel *)self->_firstNameLabel setAdjustsFontSizeToFitWidth:1];
            [(UILabel *)self->_firstNameLabel _setExtremeSizingEnabled:1];
            [(UILabel *)self->_firstNameLabel setAlpha:0.0];
            [(PHSingleCallParticipantLabelView *)self addSubview:self->_firstNameLabel];
            v10 = objc_alloc_init(UILabel);
            lastNameLabel = self->_lastNameLabel;
            self->_lastNameLabel = v10;

            [(UILabel *)self->_lastNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
            [(UILabel *)self->_lastNameLabel setTextAlignment:1];
            [(UILabel *)self->_lastNameLabel setNumberOfLines:1];
            [(UILabel *)self->_lastNameLabel setAdjustsFontSizeToFitWidth:1];
            [(UILabel *)self->_lastNameLabel _setExtremeSizingEnabled:1];
            [(UILabel *)self->_lastNameLabel setAlpha:0.0];
            [(PHSingleCallParticipantLabelView *)self addSubview:self->_lastNameLabel];
            topAnchor = [(UILabel *)self->_firstNameLabel topAnchor];
            topAnchor2 = [(PHSingleCallParticipantLabelView *)self topAnchor];
            v74 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2];
            v79[0] = v74;
            leadingAnchor = [(UILabel *)self->_firstNameLabel leadingAnchor];
            trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            leadingAnchor2 = [trailingSideLayoutGuide2 leadingAnchor];
            v70 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
            v79[1] = v70;
            centerXAnchor = [(UILabel *)self->_firstNameLabel centerXAnchor];
            trailingSideLayoutGuide3 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            centerXAnchor2 = [trailingSideLayoutGuide3 centerXAnchor];
            v66 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
            v79[2] = v66;
            trailingAnchor = [(UILabel *)self->_firstNameLabel trailingAnchor];
            trailingSideLayoutGuide4 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            trailingAnchor2 = [trailingSideLayoutGuide4 trailingAnchor];
            v62 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
            v79[3] = v62;
            trailingAnchor3 = [(UILabel *)self->_firstNameLabel trailingAnchor];
            trailingAnchor4 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
            v59 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
            v79[4] = v59;
            bottomAnchor = [(UILabel *)self->_firstNameLabel bottomAnchor];
            topAnchor3 = [(UILabel *)self->_lastNameLabel topAnchor];
            v56 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:16.0];
            v79[5] = v56;
            leadingAnchor3 = [(UILabel *)self->_lastNameLabel leadingAnchor];
            trailingSideLayoutGuide5 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            leadingAnchor4 = [trailingSideLayoutGuide5 leadingAnchor];
            v52 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4];
            v79[6] = v52;
            centerXAnchor3 = [(UILabel *)self->_lastNameLabel centerXAnchor];
            trailingSideLayoutGuide6 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            centerXAnchor4 = [trailingSideLayoutGuide6 centerXAnchor];
            v48 = [centerXAnchor3 constraintEqualToAnchor:centerXAnchor4];
            v79[7] = v48;
            trailingAnchor5 = [(UILabel *)self->_lastNameLabel trailingAnchor];
            trailingSideLayoutGuide7 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            trailingAnchor6 = [trailingSideLayoutGuide7 trailingAnchor];
            v44 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:trailingAnchor6];
            v79[8] = v44;
            firstBaselineAnchor = [(UILabel *)self->_lastNameLabel firstBaselineAnchor];
            participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
            firstBaselineAnchor2 = [participantMarqueeLabel firstBaselineAnchor];
            v12 = [firstBaselineAnchor constraintEqualToAnchor:firstBaselineAnchor2];
            v79[9] = v12;
            bottomAnchor2 = [(UILabel *)self->_lastNameLabel bottomAnchor];
            trailingSideLayoutGuide8 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            bottomAnchor3 = [trailingSideLayoutGuide8 bottomAnchor];
            v16 = [bottomAnchor2 constraintLessThanOrEqualToAnchor:bottomAnchor3];
            v79[10] = v16;
            v17 = [NSArray arrayWithObjects:v79 count:11];
            [NSLayoutConstraint activateConstraints:v17];

            firstNameLabel = self->_firstNameLabel;
          }
        }

        v18 = self->_lastNameLabel;
        v78[0] = firstNameLabel;
        v78[1] = v18;
        v19 = [NSArray arrayWithObjects:v78 count:2];
        v20 = [v19 objectAtIndexedSubscript:{objc_msgSend(v5, "emphasizedNameComponentIndex")}];

        v21 = self->_firstNameLabel;
        if (v20 == v21)
        {
          v21 = self->_lastNameLabel;
        }

        v22 = v21;
        updatedParticipantMarqueeLabelFont = [(PHSingleCallParticipantLabelView *)self updatedParticipantMarqueeLabelFont];
        v24 = [updatedParticipantMarqueeLabelFont fontWithSize:48.0];
        [(UILabel *)v22 setFont:v24];

        showPostersEnabledForiPad = [(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad];
        v26 = 35.0;
        if (!showPostersEnabledForiPad)
        {
          v26 = 25.0;
        }

        [(UILabel *)v22 setMinimumFontSize:v26];
        participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        textColor = [participantMarqueeLabel2 textColor];
        [(UILabel *)v22 setTextColor:textColor];

        LODWORD(v29) = 1132134400;
        [(UILabel *)v22 setContentCompressionResistancePriority:1 forAxis:v29];
        [(UILabel *)v20 setFont:updatedParticipantMarqueeLabelFont];
        [(UILabel *)v20 setMinimumFontSize:38.0];
        participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        textColor2 = [participantMarqueeLabel3 textColor];
        [(UILabel *)v20 setTextColor:textColor2];

        LODWORD(v32) = 1132068864;
        [(UILabel *)v20 setContentCompressionResistancePriority:1 forAxis:v32];
        firstNameComponent = [v5 firstNameComponent];
        [(UILabel *)self->_firstNameLabel setText:firstNameComponent];

        secondNameComponent2 = [v5 secondNameComponent];
        [(UILabel *)self->_lastNameLabel setText:secondNameComponent2];

        firstNameComponent2 = [v5 firstNameComponent];
        v77[0] = firstNameComponent2;
        secondNameComponent3 = [v5 secondNameComponent];
        v77[1] = secondNameComponent3;
        v37 = [NSArray arrayWithObjects:v77 count:2];
        v38 = [v37 objectAtIndexedSubscript:{objc_msgSend(v5, "singleNameComponentIndex")}];
        participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        [participantMarqueeLabel4 setText:v38];
      }
    }
  }

  else
  {
    LOBYTE(trailingSideLayoutGuide) = 0;
  }

  return trailingSideLayoutGuide;
}

- (BOOL)shouldUseHeroImageLayout
{
  v2 = +[CNKFeatures sharedInstance];
  isHeroImageEnabled = [v2 isHeroImageEnabled];

  return isHeroImageEnabled;
}

- (void)invalidateStatusLabelTimer
{
  statusLabelTimer = [(PHSingleCallParticipantLabelView *)self statusLabelTimer];

  if (statusLabelTimer)
  {
    statusLabelTimer2 = [(PHSingleCallParticipantLabelView *)self statusLabelTimer];
    [statusLabelTimer2 invalidate];

    [(PHSingleCallParticipantLabelView *)self setStatusLabelTimer:0];
  }
}

- (void)updateLabelTrailingConstraints
{
  participantMarqueeLabelTrailingConstraint = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelTrailingConstraint];
  [participantMarqueeLabelTrailingConstraint setActive:0];

  stackViewTrailingConstraint = [(PHSingleCallParticipantLabelView *)self stackViewTrailingConstraint];
  [stackViewTrailingConstraint setActive:0];

  secondaryInfoLabelTrailingConstraint = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelTrailingConstraint];
  [secondaryInfoLabelTrailingConstraint setActive:0];

  secondaryInfoLabelLeadingConstraint = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelLeadingConstraint];
  [secondaryInfoLabelLeadingConstraint setActive:0];

  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle])
  {
  }

  else
  {
    bannerButtonsView = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];

    if (bannerButtonsView)
    {
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      trailingAnchor = [participantMarqueeLabel trailingAnchor];
      bannerButtonsView2 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      leadingAnchor = [bannerButtonsView2 leadingAnchor];
      v28 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-10.0];
      [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelTrailingConstraint:v28];

      stackView = [(PHSingleCallParticipantLabelView *)self stackView];
      trailingAnchor2 = [stackView trailingAnchor];
      bannerButtonsView3 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      leadingAnchor2 = [bannerButtonsView3 leadingAnchor];
      v33 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:leadingAnchor2 constant:-10.0];
      [(PHSingleCallParticipantLabelView *)self setStackViewTrailingConstraint:v33];

      secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      trailingAnchor3 = [secondaryInfoLabel trailingAnchor];
      bannerButtonsView4 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      leadingAnchor3 = [bannerButtonsView4 leadingAnchor];
      v38 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-10.0];
      [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelTrailingConstraint:v38];

LABEL_13:
      goto LABEL_15;
    }
  }

  [(PHSingleCallParticipantLabelView *)self horizontalPaddingConstantForTrailingConstraints];
  v9 = v8;
  v10 = -v8;
  conferenceParticipantsButton = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
  if (conferenceParticipantsButton || ([(PHSingleCallParticipantLabelView *)self callDetailsViewButton], (conferenceParticipantsButton = objc_claimAutoreleasedReturnValue()) != 0))
  {
    participantMarqueeLabel3 = conferenceParticipantsButton;
    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    trailingAnchor4 = [participantMarqueeLabel2 trailingAnchor];
    leadingAnchor4 = [participantMarqueeLabel3 leadingAnchor];
    v16 = [trailingAnchor4 constraintLessThanOrEqualToAnchor:leadingAnchor4 constant:-10.0];
    [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelTrailingConstraint:v16];
  }

  else
  {
    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    participantMarqueeLabel2 = [participantMarqueeLabel3 trailingAnchor];
    trailingAnchor4 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    leadingAnchor4 = [participantMarqueeLabel2 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:v10];
    [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelTrailingConstraint:leadingAnchor4];
  }

  callDetailsViewButton = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];

  stackView2 = [(PHSingleCallParticipantLabelView *)self stackView];
  trailingAnchor5 = [stackView2 trailingAnchor];
  if (callDetailsViewButton)
  {
    callDetailsViewButton2 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    leadingAnchor5 = [callDetailsViewButton2 leadingAnchor];
    v22 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor5 constant:-10.0];
    [(PHSingleCallParticipantLabelView *)self setStackViewTrailingConstraint:v22];
  }

  else
  {
    callDetailsViewButton2 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    leadingAnchor5 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:callDetailsViewButton2 constant:v10];
    [(PHSingleCallParticipantLabelView *)self setStackViewTrailingConstraint:leadingAnchor5];
  }

  if ([(PHSingleCallParticipantLabelView *)self labelLayoutState]== 2)
  {
    secondaryInfoLabel2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    trailingAnchor6 = [secondaryInfoLabel2 trailingAnchor];
    trailingAnchor7 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    v42 = [trailingAnchor6 constraintLessThanOrEqualToAnchor:trailingAnchor7 constant:v9 * -2.0];
    [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelTrailingConstraint:v42];

    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    trailingAnchor3 = [secondaryInfoLabel leadingAnchor];
    bannerButtonsView4 = [(PHSingleCallParticipantLabelView *)self leadingAnchor];
    leadingAnchor3 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:bannerButtonsView4 constant:-(v9 * -2.0)];
    [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelLeadingConstraint:leadingAnchor3];
    goto LABEL_13;
  }

  secondaryInfoLabel3 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  trailingAnchor8 = [secondaryInfoLabel3 trailingAnchor];
  participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  trailingAnchor9 = [participantMarqueeLabel4 trailingAnchor];
  v47 = [trailingAnchor8 constraintLessThanOrEqualToAnchor:trailingAnchor9 constant:v10];
  [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelTrailingConstraint:v47];

  [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelLeadingConstraint:0];
LABEL_15:
  participantMarqueeLabelTrailingConstraint2 = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelTrailingConstraint];
  [participantMarqueeLabelTrailingConstraint2 setActive:1];

  stackViewTrailingConstraint2 = [(PHSingleCallParticipantLabelView *)self stackViewTrailingConstraint];
  [stackViewTrailingConstraint2 setActive:1];

  secondaryInfoLabelLeadingConstraint2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelLeadingConstraint];
  [secondaryInfoLabelLeadingConstraint2 setActive:1];

  secondaryInfoLabelTrailingConstraint2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelTrailingConstraint];
  [secondaryInfoLabelTrailingConstraint2 setActive:1];
}

- (double)horizontalPaddingConstantForTrailingConstraints
{
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleMiniWindow])
  {

    [(PHSingleCallParticipantLabelView *)self horizontalPaddingForMiniWindow];
  }

  else
  {
    v4 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v4 userInterfaceIdiom];

    result = 20.0;
    if ((userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 0.0;
    }
  }

  return result;
}

- (BOOL)isDisplayStyleMiniWindow
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 1;

  return v3;
}

- (void)updateGestureRecognizersEnabled
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle < 2)
  {
    callDetailsGestureRecognizer = [(PHSingleCallParticipantLabelView *)self callDetailsGestureRecognizer];
    [callDetailsGestureRecognizer setEnabled:0];

    v7 = 0;
  }

  else
  {
    showsCallDetailsViewButton = [(PHSingleCallParticipantLabelView *)self showsCallDetailsViewButton];
    callDetailsGestureRecognizer2 = [(PHSingleCallParticipantLabelView *)self callDetailsGestureRecognizer];
    [callDetailsGestureRecognizer2 setEnabled:showsCallDetailsViewButton];

    v7 = [(PHSingleCallParticipantLabelView *)self showsCallDetailsViewButton]^ 1;
  }

  statusLabelTapRecognizer = [(PHSingleCallParticipantLabelView *)self statusLabelTapRecognizer];
  [statusLabelTapRecognizer setEnabled:v7];

  statusLabelTapRecognizer2 = [(PHSingleCallParticipantLabelView *)self statusLabelTapRecognizer];
  isEnabled = [statusLabelTapRecognizer2 isEnabled];
  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel setUserInteractionEnabled:isEnabled];
}

- (BOOL)showsCallDetailsViewButton
{
  callDetailsViewButton = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
  v3 = callDetailsViewButton != 0;

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PHSingleCallParticipantLabelView;
  [(PHSingleCallParticipantLabelView *)&v14 layoutSubviews];
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  if (![callDisplayStyleManager callDisplayStyle])
  {
    [(PHSingleCallParticipantLabelView *)self cachedBannerParticipantLabelWidth];
    v5 = v4;
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel bounds];
    v8 = v7;

    if (v5 == v8)
    {
      goto LABEL_5;
    }

    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel2 bounds];
    [(PHSingleCallParticipantLabelView *)self setCachedBannerParticipantLabelWidth:v10];

    callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self updatedParticipantMarqueeLabelFont];
    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel3 setFont:callDisplayStyleManager];
  }

LABEL_5:
  callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

  if (callDisplayStyle == 3)
  {
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
    [(PHSingleCallParticipantLabelView *)self updateLabelAlignmentForCallDisplayStyle:3];
    [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
    [(PHSingleCallParticipantLabelView *)self updateViewForCallState];
  }
}

- (PHSingleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)manager delegate:(id)delegate
{
  managerCopy = manager;
  v67.receiver = self;
  v67.super_class = PHSingleCallParticipantLabelView;
  v8 = [(PHAbstractCallParticipantLabelView *)&v67 initWithCallDisplayStyleManager:managerCopy delegate:delegate];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_callDisplayStyleManager, manager);
    v10 = objc_alloc_init(UIStackView);
    stackView = v9->_stackView;
    v9->_stackView = v10;

    [(UIStackView *)v9->_stackView setAxis:0];
    [(UIStackView *)v9->_stackView setDistribution:0];
    [(UIStackView *)v9->_stackView setAlignment:3];
    [(UIStackView *)v9->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v9->_stackView setSpacing:6.0];
    [(PHSingleCallParticipantLabelView *)v9 addSubview:v9->_stackView];
    v12 = +[UIColor labelColor];
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
    [participantMarqueeLabel setTextColor:v12];

    [(PHSingleCallParticipantLabelView *)v9 updateLabelScales];
    v14 = objc_alloc_init(UILabel);
    [(PHAbstractCallParticipantLabelView *)v9 setStatusLabel:v14];

    statusLabel = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel setAccessibilityIdentifier:@"PHSingleCallParticipantLabelView_StatusLabel"];

    callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
    v17 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
    statusLabel2 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel2 setFont:v17];

    statusLabel3 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel3 setAdjustsFontSizeToFitWidth:1];

    statusLabel4 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel4 setMinimumScaleFactor:0.75999999];

    if ([managerCopy callDisplayStyle] == 3)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    statusLabel5 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel5 setNumberOfLines:v21];

    statusLabel6 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel6 setTranslatesAutoresizingMaskIntoConstraints:0];

    if ([(PHSingleCallParticipantLabelView *)v9 showPostersEnabledForiPad])
    {
      v24 = +[UIColor systemWhiteColor];
      statusLabel7 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel7 setTextColor:v24];

      statusLabel8 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel8 setMarqueeEnabled:1];

      statusLabel9 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel9 setMarqueeRunning:1];

      statusLabel10 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel10 setPreferredVibrancy:1];

      statusLabel11 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel11 setAdjustsFontForContentSizeCategory:1];

      statusLabel12 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel12 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

      statusLabel13 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel13 setMinimumContentSizeCategory:UIContentSizeCategoryMedium];

      participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [participantMarqueeLabel2 setPreferredVibrancy:1];

      v33 = +[UIColor systemWhiteColor];
      participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [participantMarqueeLabel3 setTextColor:v33];

      participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [participantMarqueeLabel4 setAdjustsFontForContentSizeCategory:1];

      participantMarqueeLabel5 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [participantMarqueeLabel5 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge];

      participantMarqueeLabel6 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [participantMarqueeLabel6 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
    }

    else
    {
      participantMarqueeLabel6 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
      v38 = +[PHUIConfiguration statusLabelFontColorForCallDisplayStyle:](PHUIConfiguration, "statusLabelFontColorForCallDisplayStyle:", [participantMarqueeLabel6 callDisplayStyle]);
      statusLabel14 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [statusLabel14 setTextColor:v38];
    }

    statusLabel15 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v41) = 1144750080;
    [statusLabel15 setContentCompressionResistancePriority:0 forAxis:v41];

    statusLabel16 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v43) = 1148846080;
    [statusLabel16 setContentCompressionResistancePriority:1 forAxis:v43];

    statusLabel17 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v45) = 1148846080;
    [statusLabel17 setContentHuggingPriority:0 forAxis:v45];

    statusLabel18 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v47) = 1148846080;
    [statusLabel18 setContentHuggingPriority:1 forAxis:v47];

    stackView = [(PHSingleCallParticipantLabelView *)v9 stackView];
    statusLabel19 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [stackView addArrangedSubview:statusLabel19];

    v50 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"statusLabelTapped:"];
    statusLabelTapRecognizer = v9->_statusLabelTapRecognizer;
    v9->_statusLabelTapRecognizer = v50;

    [(UITapGestureRecognizer *)v9->_statusLabelTapRecognizer setNumberOfTapsRequired:1];
    statusLabel20 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [statusLabel20 addGestureRecognizer:v9->_statusLabelTapRecognizer];

    v53 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"callDetailsGestureRecognizerTapped:"];
    callDetailsGestureRecognizer = v9->_callDetailsGestureRecognizer;
    v9->_callDetailsGestureRecognizer = v53;

    [(UITapGestureRecognizer *)v9->_callDetailsGestureRecognizer setNumberOfTapsRequired:1];
    [(PHSingleCallParticipantLabelView *)v9 addGestureRecognizer:v9->_callDetailsGestureRecognizer];
    [(PHSingleCallParticipantLabelView *)v9 updateGestureRecognizersEnabled];
    v55 = objc_alloc_init(UILayoutGuide);
    participantAndStatusRectangle = v9->_participantAndStatusRectangle;
    v9->_participantAndStatusRectangle = v55;

    [(PHSingleCallParticipantLabelView *)v9 addLayoutGuide:v9->_participantAndStatusRectangle];
    v57 = objc_alloc_init(UILabel);
    secondaryInfoLabel = v9->_secondaryInfoLabel;
    v9->_secondaryInfoLabel = v57;

    [(UILabel *)v9->_secondaryInfoLabel setAccessibilityIdentifier:@"PHSingleCallParticipantLabelView_SecondaryInfoLabel"];
    callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
    v60 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [callDisplayStyleManager2 callDisplayStyle]);
    [(UILabel *)v9->_secondaryInfoLabel setFont:v60];

    [(UILabel *)v9->_secondaryInfoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v9->_secondaryInfoLabel setAlpha:0.0];
    callDisplayStyleManager3 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
    LODWORD(callDisplayStyleManager2) = [callDisplayStyleManager3 usesLargeFormatUI];

    if (callDisplayStyleManager2)
    {
      [(UILabel *)v9->_secondaryInfoLabel setPreferredVibrancy:1];
      layer = [(UILabel *)v9->_secondaryInfoLabel layer];
      [layer setAllowsGroupBlending:1];

      [(UILabel *)v9->_secondaryInfoLabel setAdjustsFontForContentSizeCategory:1];
      callDisplayStyleManager4 = +[UIColor tertiaryLabelColor];
      [(UILabel *)v9->_secondaryInfoLabel setTextColor:callDisplayStyleManager4];
    }

    else
    {
      callDisplayStyleManager4 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
      v64 = +[PHUIConfiguration statusLabelFontColorForCallDisplayStyle:](PHUIConfiguration, "statusLabelFontColorForCallDisplayStyle:", [callDisplayStyleManager4 callDisplayStyle]);
      [(UILabel *)v9->_secondaryInfoLabel setTextColor:v64];
    }

    [(PHSingleCallParticipantLabelView *)v9 addSubview:v9->_secondaryInfoLabel];
    -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](v9, "updateLayoutForCallDisplayStyle:", [managerCopy callDisplayStyle]);
    [(PHSingleCallParticipantLabelView *)v9 updateLabelConstraints];
    [(PHSingleCallParticipantLabelView *)v9 setAccessibilityIdentifier:@"PHSingleCallParticipantLabelView"];
    v65 = +[NSNotificationCenter defaultCenter];
    [v65 addObserver:v9 selector:"handleContactStoreDidChangeNotification:" name:CNContactStoreDidChangeNotification object:0];
  }

  return v9;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];
  v4.receiver = self;
  v4.super_class = PHSingleCallParticipantLabelView;
  [(PHSingleCallParticipantLabelView *)&v4 dealloc];
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = PHSingleCallParticipantLabelView;
  [(PHAbstractCallParticipantLabelView *)&v5 setDelegate:delegate];
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](self, "updateLayoutForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
}

- (double)labelsVerticalOffset
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  result = 2.0;
  if (callDisplayStyle == 3)
  {
    result = -2.0;
  }

  if (callDisplayStyle == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)setLabelLayoutState:(int64_t)state animated:(BOOL)animated
{
  if (self->_labelLayoutState != state)
  {
    v18[5] = v4;
    v18[6] = v5;
    animatedCopy = animated;
    self->_labelLayoutState = state;
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
    if (animatedCopy)
    {
      if ((state - 1) > 2)
      {
        v9 = &stru_100356B30;
      }

      else
      {
        v9 = off_100356D78[state - 1];
      }

      objc_initWeak(v18, self);
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000235C0;
      v15 = &unk_100356A48;
      objc_copyWeak(&v17, v18);
      v16 = v9;
      v11 = objc_retainBlock(&v12);

      objc_destroyWeak(&v17);
      objc_destroyWeak(v18);
      [UIView transitionWithView:self duration:5243008 options:v11 animations:0 completion:0.300000012];
    }

    else
    {
      if ((state - 1) > 2)
      {
        v10 = &stru_100356B30;
      }

      else
      {
        v10 = off_100356D78[state - 1];
      }

      objc_initWeak(v18, self);
      v12 = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_1000235C0;
      v15 = &unk_100356A48;
      objc_copyWeak(&v17, v18);
      v16 = v10;
      v11 = objc_retainBlock(&v12);

      objc_destroyWeak(&v17);
      objc_destroyWeak(v18);
      (v11[2])(v11);
    }
  }
}

- (void)setLabelDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  strings = [descriptorCopy strings];
  statusLabelsArray = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
  v7 = [strings isEqualToArray:statusLabelsArray];

  if (v7)
  {
    goto LABEL_20;
  }

  [(PHSingleCallParticipantLabelView *)self setStatusLabelsArray:strings];
  if ([strings count] < 2)
  {
    v13 = +[CNKFeatures sharedInstance];
    isHeroImageEnabled = [v13 isHeroImageEnabled];

    if ((isHeroImageEnabled & 1) == 0)
    {
      traitCollection = [(PHSingleCallParticipantLabelView *)self traitCollection];
      _backlightLuminance = [traitCollection _backlightLuminance];

      if (_backlightLuminance == 1)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      [statusLabel setAlpha:v17];
    }

    [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];
    [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:0];
    statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    strings2 = [descriptorCopy strings];
    firstObject = [strings2 firstObject];
    [statusLabel2 setAttributedOrPlainText:firstObject];

    posterNameViewModel = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];
    statusLabel3 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    text = [statusLabel3 text];
    [posterNameViewModel updateStatus:text];

    strings3 = [descriptorCopy strings];
    firstObject2 = [strings3 firstObject];
    objc_opt_class();
    LOBYTE(text) = objc_opt_isKindOfClass();

    if ((text & 1) == 0)
    {
      goto LABEL_16;
    }

    strings4 = [descriptorCopy strings];
    firstObject3 = [strings4 firstObject];

    posterNameViewModel2 = +[NSBundle mainBundle];
    statusLabel5 = [posterNameViewModel2 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
    if ([firstObject3 isEqualToString:statusLabel5])
    {
      numberOfLinesInStatusLabel = [(PHSingleCallParticipantLabelView *)self numberOfLinesInStatusLabel];

      if (numberOfLinesInStatusLabel < 3)
      {
LABEL_15:

LABEL_16:
        v36 = [descriptorCopy layoutState] - 1;
        if (v36 > 2)
        {
          v37 = &stru_100356B30;
        }

        else
        {
          v37 = off_100356D78[v36];
        }

        objc_initWeak(&location, self);
        v67 = _NSConcreteStackBlock;
        v68 = 3221225472;
        v69 = sub_1000235C0;
        v70 = &unk_100356A48;
        objc_copyWeak(&v72, &location);
        v71 = v37;
        v38 = objc_retainBlock(&v67);

        objc_destroyWeak(&v72);
        objc_destroyWeak(&location);
        (v38[2])(v38);

        goto LABEL_20;
      }

      statusLabel4 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v33 = +[NSBundle mainBundle];
      v34 = [v33 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_100361FD0 table:@"Localizable-Stewie"];
      [statusLabel4 setAttributedOrPlainText:v34];

      posterNameViewModel2 = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];
      statusLabel5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      text2 = [statusLabel5 text];
      [posterNameViewModel2 updateStatus:text2];
    }

    goto LABEL_15;
  }

  statusLabel6 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  firstObject4 = [strings firstObject];
  [statusLabel6 setAttributedOrPlainText:firstObject4];

  posterNameViewModel3 = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];
  statusLabel7 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  text3 = [statusLabel7 text];
  [posterNameViewModel3 updateStatus:text3];

  [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:0];
  [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];
  if ([strings count] >= 2)
  {
    [(PHSingleCallParticipantLabelView *)self scheduleStatusLabelTimer];
  }

LABEL_20:
  sourceString = [descriptorCopy sourceString];

  if (sourceString)
  {
    sourceString2 = [descriptorCopy sourceString];
LABEL_24:
    secondaryInfoLabel3 = sourceString2;
    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    text4 = [secondaryInfoLabel text];
    v45 = secondaryInfoLabel3;
    goto LABEL_25;
  }

  secondaryString = [descriptorCopy secondaryString];

  if (secondaryString)
  {
    sourceString2 = [descriptorCopy secondaryString];
    goto LABEL_24;
  }

  secondaryInfoLabel2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  text5 = [secondaryInfoLabel2 text];

  if (!text5)
  {
    [strings count];
    goto LABEL_34;
  }

  secondaryInfoLabel3 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  secondaryInfoLabel = [secondaryInfoLabel3 text];
  text4 = [descriptorCopy secondaryString];
  v45 = secondaryInfoLabel;
LABEL_25:
  v46 = [v45 isEqualToString:text4];

  if ([strings count] <= 1 && (v46 & 1) == 0)
  {
    sourceString3 = [descriptorCopy sourceString];

    secondaryInfoLabel4 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (sourceString3)
    {
      [descriptorCopy sourceString];
    }

    else
    {
      [descriptorCopy secondaryString];
    }
    v49 = ;
    [secondaryInfoLabel4 setText:v49];

    v50 = [descriptorCopy layoutState] - 1;
    if (v50 > 2)
    {
      v51 = &stru_100356B30;
    }

    else
    {
      v51 = off_100356D78[v50];
    }

    objc_initWeak(&location, self);
    v67 = _NSConcreteStackBlock;
    v68 = 3221225472;
    v69 = sub_1000235C0;
    v70 = &unk_100356A48;
    objc_copyWeak(&v72, &location);
    v71 = v51;
    v52 = objc_retainBlock(&v67);

    objc_destroyWeak(&v72);
    objc_destroyWeak(&location);
    (v52[2])(v52);
  }

LABEL_34:
  localizedSenderIdentity = [descriptorCopy localizedSenderIdentity];
  v54 = [localizedSenderIdentity length];

  if (v54)
  {
    badgeView = [(PHSingleCallParticipantLabelView *)self badgeView];

    if (badgeView)
    {
      localizedSenderIdentity2 = [descriptorCopy localizedSenderIdentity];
      badgeView2 = [(PHSingleCallParticipantLabelView *)self badgeView];
      [badgeView2 setTitle:localizedSenderIdentity2];
    }

    else
    {
      v58 = [TPBadgeView alloc];
      localizedSenderIdentity3 = [descriptorCopy localizedSenderIdentity];
      localizedSenderIdentity2 = [v58 initWithTitle:localizedSenderIdentity3 theme:1];

      [localizedSenderIdentity2 setTranslatesAutoresizingMaskIntoConstraints:0];
      [localizedSenderIdentity2 setHidden:{-[PHAbstractCallParticipantLabelView hidesLabel](self, "hidesLabel")}];
      stackView = [(PHSingleCallParticipantLabelView *)self stackView];
      arrangedSubviews = [stackView arrangedSubviews];
      firstObject5 = [arrangedSubviews firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        stackView2 = [(PHSingleCallParticipantLabelView *)self stackView];
        [stackView2 insertArrangedSubview:localizedSenderIdentity2 atIndex:0];
      }

      [(PHSingleCallParticipantLabelView *)self setBadgeView:localizedSenderIdentity2];
    }

    [(PHSingleCallParticipantLabelView *)self updatePosterBadgeView];
  }

  -[PHSingleCallParticipantLabelView setLabelLayoutState:animated:](self, "setLabelLayoutState:animated:", [descriptorCopy layoutState], 1);
}

- (int64_t)numberOfLinesInStatusLabel
{
  [(PHSingleCallParticipantLabelView *)self frame];
  v4 = v3 + -48.0;
  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  font = [statusLabel font];
  [font lineHeight];
  v8 = v7;

  statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  text = [statusLabel2 text];

  v17 = NSFontAttributeName;
  statusLabel3 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  font2 = [statusLabel3 font];
  v18 = font2;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [text boundingRectWithSize:1 options:v13 attributes:0 context:{v4, 1.79769313e308}];
  v15 = v14;

  return (v15 / v8);
}

- (double)getParticipantsViewHeight
{
  [(PHSingleCallParticipantLabelView *)self getStatusLabelHeight];
  v4 = v3;
  [(PHSingleCallParticipantLabelView *)self getParticipantsMarqueeLabelHeight];
  return v4 + v5;
}

- (double)getStatusLabelHeight
{
  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];

  if (!statusLabel)
  {
    return 0.0;
  }

  statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel2 intrinsicContentSize];
  v6 = v5;

  return v6;
}

- (double)getParticipantsMarqueeLabelHeight
{
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];

  if (!participantMarqueeLabel)
  {
    return 0.0;
  }

  participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel2 intrinsicContentSize];
  v6 = v5;

  return v6;
}

- (void)traitCollectionDidChange:(id)change
{
  v21.receiver = self;
  v21.super_class = PHSingleCallParticipantLabelView;
  changeCopy = change;
  [(PHSingleCallParticipantLabelView *)&v21 traitCollectionDidChange:changeCopy];
  _backlightLuminance = [changeCopy _backlightLuminance];

  traitCollection = [(PHSingleCallParticipantLabelView *)self traitCollection];
  _backlightLuminance2 = [traitCollection _backlightLuminance];

  if (_backlightLuminance != _backlightLuminance2)
  {
    traitCollection2 = [(PHSingleCallParticipantLabelView *)self traitCollection];
    _backlightLuminance3 = [traitCollection2 _backlightLuminance];

    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v11 = statusLabel;
    if (_backlightLuminance3 == 1)
    {
      v12 = 0.0;
LABEL_4:
      [statusLabel setAlpha:v12];
LABEL_7:

      return;
    }

    text = [statusLabel text];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
    if ([text isEqualToString:v15])
    {

      goto LABEL_7;
    }

    statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    text2 = [statusLabel2 text];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_100361FD0 table:@"Localizable-Stewie"];
    v20 = [text2 isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v11 = statusLabel;
      v12 = 1.0;
      goto LABEL_4;
    }
  }
}

- (void)setHidesLabel:(BOOL)label
{
  labelCopy = label;
  if ([(PHAbstractCallParticipantLabelView *)self hidesLabel]!= label)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100047A94;
    v6[3] = &unk_100356BB8;
    v6[4] = self;
    v7 = labelCopy;
    [UIView performWithoutAnimation:v6];
    v5.receiver = self;
    v5.super_class = PHSingleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v5 setHidesLabel:labelCopy];
  }
}

- (void)hideBadgesOnly
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_100047BAC;
  v2[3] = &unk_100356988;
  v2[4] = self;
  [UIView performWithoutAnimation:v2];
}

- (void)setActivityState:(unsigned __int16)state animated:(BOOL)animated
{
  stateCopy = state;
  if ([(PHAbstractCallParticipantLabelView *)self activityState:state]!= state)
  {
    [(PHAbstractCallParticipantLabelView *)self setUserInteractionEnabled:stateCopy > 1];
    v6.receiver = self;
    v6.super_class = PHSingleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v6 setActivityState:stateCopy];
  }
}

- (void)setShowsConferenceParticipantsButton:(BOOL)button
{
  buttonCopy = button;
  if (![(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {
    shouldUseHeroImageLayout = [(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout];
    conferenceParticipantsButton = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];

    if (shouldUseHeroImageLayout || !buttonCopy)
    {
      if (conferenceParticipantsButton)
      {
        conferenceParticipantsButton2 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
        [conferenceParticipantsButton2 removeFromSuperview];

        [(PHSingleCallParticipantLabelView *)self setConferenceParticipantsButton:0];

        [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];
      }
    }

    else if (!conferenceParticipantsButton)
    {
      v7 = [UIButton buttonWithType:3];
      [(PHSingleCallParticipantLabelView *)self setConferenceParticipantsButton:v7];

      v8 = +[UIColor systemTealColor];
      conferenceParticipantsButton3 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [conferenceParticipantsButton3 setTintColor:v8];

      conferenceParticipantsButton4 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [conferenceParticipantsButton4 setTranslatesAutoresizingMaskIntoConstraints:0];

      conferenceParticipantsButton5 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      LODWORD(v12) = 1148846080;
      [conferenceParticipantsButton5 setContentCompressionResistancePriority:0 forAxis:v12];

      conferenceParticipantsButton6 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      LODWORD(v14) = 1148846080;
      [conferenceParticipantsButton6 setContentCompressionResistancePriority:1 forAxis:v14];

      conferenceParticipantsButton7 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [conferenceParticipantsButton7 addTarget:self action:"infoButtonTapped:" forControlEvents:64];

      conferenceParticipantsButton8 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [(PHSingleCallParticipantLabelView *)self addSubview:conferenceParticipantsButton8];

      conferenceParticipantsButton9 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      bottomAnchor = [conferenceParticipantsButton9 bottomAnchor];
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      firstBaselineAnchor = [participantMarqueeLabel firstBaselineAnchor];
      v28 = [bottomAnchor constraintEqualToAnchor:firstBaselineAnchor];
      v33[0] = v28;
      participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      trailingAnchor = [participantMarqueeLabel2 trailingAnchor];
      conferenceParticipantsButton10 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      leadingAnchor = [conferenceParticipantsButton10 leadingAnchor];
      v20 = [trailingAnchor constraintEqualToAnchor:leadingAnchor constant:-10.0];
      v33[1] = v20;
      conferenceParticipantsButton11 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      trailingAnchor2 = [conferenceParticipantsButton11 trailingAnchor];
      trailingAnchor3 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
      v24 = [trailingAnchor2 constraintLessThanOrEqualToAnchor:trailingAnchor3 constant:-24.0];
      v33[2] = v24;
      v25 = [NSArray arrayWithObjects:v33 count:3];
      [(PHSingleCallParticipantLabelView *)self addConstraints:v25];

      [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];
    }
  }
}

- (void)infoButtonTapped:(id)tapped
{
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  [delegate callLabelInfoLabelWasTappedForLabel:self];
}

- (void)setShowsCallDetailsViewButton:(BOOL)button
{
  buttonCopy = button;
  if ([(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {

    [(PHSingleCallParticipantLabelView *)self setCallDetailsViewButton:0];
  }

  else
  {
    if (buttonCopy && ![(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
    {
      callDetailsViewButton = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];

      if (callDetailsViewButton)
      {
        return;
      }

      [(PHSingleCallParticipantLabelView *)self setUpCallDetailsViewButton];
    }

    else
    {
      callDetailsViewButton2 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
      [callDetailsViewButton2 removeFromSuperview];

      [(PHSingleCallParticipantLabelView *)self setCallDetailsViewButton:0];
    }

    [(PHSingleCallParticipantLabelView *)self updateGestureRecognizersEnabled];

    [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];
  }
}

- (BOOL)showPostersEnabledForiPad
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  return usesLargeFormatUI;
}

- (void)setUpCallDetailsViewButton
{
  if (![(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {
    v3 = [UIButton buttonWithType:4];
    [(PHSingleCallParticipantLabelView *)self setCallDetailsViewButton:v3];

    v4 = +[UIColor secondaryLabelColor];
    callDetailsViewButton = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [callDetailsViewButton setTintColor:v4];

    callDetailsViewButton2 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [callDetailsViewButton2 setUserInteractionEnabled:0];

    callDetailsViewButton3 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [callDetailsViewButton3 setTranslatesAutoresizingMaskIntoConstraints:0];

    callDetailsViewButton4 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    LODWORD(v9) = 1148846080;
    [callDetailsViewButton4 setContentCompressionResistancePriority:0 forAxis:v9];

    callDetailsViewButton5 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    LODWORD(v11) = 1148846080;
    [callDetailsViewButton5 setContentCompressionResistancePriority:1 forAxis:v11];

    callDetailsViewButton6 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [(PHSingleCallParticipantLabelView *)self addSubview:callDetailsViewButton6];

    callDetailsViewButton7 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    centerYAnchor = [callDetailsViewButton7 centerYAnchor];
    centerYAnchor2 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
    v16 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v22[0] = v16;
    callDetailsViewButton8 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    trailingAnchor = [callDetailsViewButton8 trailingAnchor];
    trailingAnchor2 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-20.0];
    v22[1] = v20;
    v21 = [NSArray arrayWithObjects:v22 count:2];
    [(PHSingleCallParticipantLabelView *)self addConstraints:v21];
  }
}

- (void)showFirstAndLastNameAnimated:(BOOL)animated
{
  if (self->_firstNameLabel && self->_lastNameLabel)
  {
    if (animated)
    {
      CGAffineTransformMakeScale(&v16, 0.9, 0.9);
      firstNameLabel = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
      v15 = v16;
      [firstNameLabel setTransform:&v15];

      CGAffineTransformMakeScale(&v14, 0.9, 0.9);
      lastNameLabel = [(PHSingleCallParticipantLabelView *)self lastNameLabel];
      v15 = v14;
      [lastNameLabel setTransform:&v15];

      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1000486EC;
      v13[3] = &unk_100356988;
      v13[4] = self;
      [UIView _animateUsingSpringWithDuration:4 delay:v13 options:&stru_100356BF8 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_100048758;
      v12[3] = &unk_100356988;
      v12[4] = self;
      [UIView _animateUsingSpringWithDuration:4 delay:v12 options:&stru_100356C18 mass:0.5 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_1000487E8;
      v11[3] = &unk_100356988;
      v11[4] = self;
      [UIView _animateUsingSpringWithDuration:4 delay:v11 options:&stru_100356C38 mass:0.8 stiffness:0.25 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
    }

    else
    {
      statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      [statusLabel setAlpha:0.0];

      badgeView = [(PHSingleCallParticipantLabelView *)self badgeView];
      [badgeView setAlpha:0.0];

      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel setAlpha:0.0];

      firstNameLabel2 = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
      [firstNameLabel2 setAlpha:1.0];

      lastNameLabel2 = [(PHSingleCallParticipantLabelView *)self lastNameLabel];
      [lastNameLabel2 setAlpha:1.0];
    }
  }
}

- (void)hideFirstAndLastNameAnimated:(BOOL)animated
{
  animatedCopy = animated;
  firstNameLabel = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
  if (firstNameLabel)
  {
    v6 = firstNameLabel;
    lastNameLabel = [(PHSingleCallParticipantLabelView *)self lastNameLabel];

    if (lastNameLabel)
    {
      if (animatedCopy)
      {
        CGAffineTransformMakeScale(&v20, 0.9, 0.9);
        participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        v19 = v20;
        [participantMarqueeLabel setTransform:&v19];

        statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        [statusLabel setAlpha:0.0];

        badgeView = [(PHSingleCallParticipantLabelView *)self badgeView];
        [badgeView setAlpha:0.0];

        v18[0] = _NSConcreteStackBlock;
        v18[1] = 3221225472;
        v18[2] = sub_100048BCC;
        v18[3] = &unk_100356988;
        v18[4] = self;
        [UIView _animateUsingSpringWithDuration:4 delay:v18 options:&stru_100356C58 mass:0.8 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100048C80;
        v17[3] = &unk_100356988;
        v17[4] = self;
        [UIView _animateUsingSpringWithDuration:4 delay:v17 options:&stru_100356C78 mass:0.5 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100048CF4;
        v16[3] = &unk_100356988;
        v16[4] = self;
        [UIView _animateUsingSpringWithDuration:4 delay:v16 options:&stru_100356C98 mass:0.8 stiffness:0.25 damping:2.0 initialVelocity:300.0 animations:50.0 completion:0.0];
      }

      else
      {
        firstNameLabel2 = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
        [firstNameLabel2 setAlpha:0.0];

        lastNameLabel2 = [(PHSingleCallParticipantLabelView *)self lastNameLabel];
        [lastNameLabel2 setAlpha:0.0];

        statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        [statusLabel2 setAlpha:1.0];

        badgeView2 = [(PHSingleCallParticipantLabelView *)self badgeView];
        [badgeView2 setAlpha:1.0];

        participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        [participantMarqueeLabel2 setAlpha:1.0];
      }
    }
  }
}

- (void)callDetailsGestureRecognizerTapped:(id)tapped
{
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  [delegate callLabelDetailsGestureRecognizerTappedForLabel:self];
}

- (void)setTextColor:(id)color
{
  v8.receiver = self;
  v8.super_class = PHSingleCallParticipantLabelView;
  colorCopy = color;
  [(PHAbstractCallParticipantLabelView *)&v8 setTextColor:colorCopy];
  v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel:v8.receiver];
  [v5 setTextColor:colorCopy];

  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel setTextColor:colorCopy];

  secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  [secondaryInfoLabel setTextColor:colorCopy];
}

- (void)setStatusLabelTextColor:(id)color
{
  colorCopy = color;
  posterNameViewModel = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];

  if (!posterNameViewModel)
  {
    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [statusLabel setTextColor:colorCopy];
  }
}

- (void)setParticipantMarqueeLabelTextColor:(id)color
{
  colorCopy = color;
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel setTextColor:colorCopy];
}

- (void)setStatusLabelTextFont:(id)font
{
  fontCopy = font;
  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel setFont:fontCopy];
}

- (void)setParticipantMarqueeLabelFont:(id)font
{
  fontCopy = font;
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel setFont:fontCopy];
}

- (CNContact)contact
{
  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
LABEL_4:
    contact = [avatarView2 contact];

    goto LABEL_6;
  }

  contact = 0;
LABEL_6:

  return contact;
}

- (BOOL)shouldBlurAvatarViewForCurrentContactNickname:(id)nickname
{
  v3 = [(PHSingleCallParticipantLabelView *)self currentIMNicknameMatchingContact:nickname];
  if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
  {
    avatar = [v3 avatar];
    contentIsSensitive = [avatar contentIsSensitive];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = contentIsSensitive;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for currentNickname returning %d", v10, 8u);
    }
  }

  else
  {
    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for currentNickname not performing check", v10, 2u);
    }

    LOBYTE(contentIsSensitive) = 0;
  }

  v7 = +[ICSPreferences sharedPreferences];
  forceBlurCurrentPoster = [v7 forceBlurCurrentPoster];

  return (forceBlurCurrentPoster | contentIsSensitive) & 1;
}

- (void)setContact:(id)contact
{
  contactCopy = contact;
  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
  v6 = avatarView;
  if (!contactCopy)
  {
    if (!avatarView)
    {
      goto LABEL_22;
    }

    avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      avatarView3 = [(PHSingleCallParticipantLabelView *)self avatarView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    avatarView4 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [avatarView4 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
LABEL_20:
    callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    -[PHSingleCallParticipantLabelView updateLabelAlignmentForCallDisplayStyle:](self, "updateLabelAlignmentForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
    goto LABEL_21;
  }

  if (!avatarView)
  {
    if (![contactCopy imageDataAvailable])
    {
      goto LABEL_10;
    }

    callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

    if (callDisplayStyle == 3)
    {
      v10 = [[_TtC13InCallService17AmbientAvatarView alloc] initWithContact:contactCopy];
    }

    else
    {
      v10 = [[_TtC13InCallService19BlurrableAvatarView alloc] initWithContact:contactCopy wantsBlur:[(PHSingleCallParticipantLabelView *)self shouldBlurAvatarViewForCurrentContactNickname:contactCopy] isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];
      callDisplayStyleManager3 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
      usesLargeFormatUI = [callDisplayStyleManager3 usesLargeFormatUI];

      if (usesLargeFormatUI)
      {
        callDisplayStyleManager4 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
        callDisplayStyle2 = [callDisplayStyleManager4 callDisplayStyle];

        if (callDisplayStyle2)
        {
          goto LABEL_19;
        }
      }
    }

    [(PHSingleCallParticipantLabelView *)self setAvatarView:v10];
LABEL_19:

    avatarView5 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [avatarView5 setTranslatesAutoresizingMaskIntoConstraints:0];

    avatarView6 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [(PHSingleCallParticipantLabelView *)self addSubview:avatarView6];

    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
    goto LABEL_20;
  }

LABEL_10:
  avatarView7 = [(PHSingleCallParticipantLabelView *)self avatarView];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  avatarView8 = [(PHSingleCallParticipantLabelView *)self avatarView];
  callDisplayStyleManager = avatarView8;
  if (v12)
  {
LABEL_13:
    [avatarView8 setContact:contactCopy];
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    avatarView8 = [(PHSingleCallParticipantLabelView *)self avatarView];
    callDisplayStyleManager = avatarView8;
    goto LABEL_13;
  }

LABEL_22:
  [(PHSingleCallParticipantLabelView *)self setUpFirstAndLastNameLabelsIfPossible];
  if ([(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
  {
    v25 = +[CNKFeatures sharedInstance];
    isNameAndPhotoC3Enabled = [v25 isNameAndPhotoC3Enabled];

    if (isNameAndPhotoC3Enabled)
    {
      v27 = +[TUCallCenter sharedInstance];
      frontmostCall = [v27 frontmostCall];

      if (contactCopy)
      {
        if (frontmostCall)
        {
          if ([frontmostCall status] == 1)
          {
            avatarView9 = [(PHSingleCallParticipantLabelView *)self avatarView];
            if (avatarView9)
            {
              v30 = avatarView9;
              avatarView10 = [(PHSingleCallParticipantLabelView *)self avatarView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = +[TUCallCenter sharedInstance];
                currentCallCount = [v32 currentCallCount];

                if (currentCallCount == 1)
                {
                  sharedProfileStateOracle = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];

                  if (!sharedProfileStateOracle)
                  {
                    v35 = sub_100004F84();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      contactIdentifier = [frontmostCall contactIdentifier];
                      *buf = 138739971;
                      v62[0] = contactIdentifier;
                      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SNAP: creating a new oracle for contactIdentifier: %{sensitive}@", buf, 0xCu);
                    }

                    v37 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:frontmostCall];
                    v38 = [[CNContactStore alloc] initWithConfiguration:v37];
                    v39 = [[CNSharedProfileStateOracle alloc] initWithContact:contactCopy contactStore:v38];
                    [(PHSingleCallParticipantLabelView *)self setSharedProfileStateOracle:v39];
                  }

                  avatarView11 = [(PHSingleCallParticipantLabelView *)self avatarView];
                  cnAvatarView = [avatarView11 cnAvatarView];
                  sharedProfileStateOracle2 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];
                  [cnAvatarView setSharedProfileStateOracle:sharedProfileStateOracle2];

                  sharedProfileStateOracle3 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];
                  pendingNickname = [sharedProfileStateOracle3 pendingNickname];
                  avatar = [pendingNickname avatar];

                  if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
                  {
                    contentIsSensitive = [avatar contentIsSensitive];
                    v47 = sub_100004F84();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      wantsBlur = [avatarView11 wantsBlur];
                      *buf = 67109376;
                      LODWORD(v62[0]) = contentIsSensitive;
                      WORD2(v62[0]) = 1024;
                      *(v62 + 6) = wantsBlur;
                      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for pendingNickname returning %d currentlyBlurred=%d", buf, 0xEu);
                    }
                  }

                  else
                  {
                    v47 = sub_100004F84();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "SNAP: IMNicknameAvatarImage.contentIsSensitive for pendingNickname not performing checks", buf, 2u);
                    }

                    contentIsSensitive = 0;
                  }

                  v49 = +[ICSPreferences sharedPreferences];
                  forceBlurNewPoster = [v49 forceBlurNewPoster];

                  v51 = 0;
                  if (!avatar || ((forceBlurNewPoster | contentIsSensitive) & 1) == 0)
                  {
                    goto LABEL_49;
                  }

                  if ([avatarView11 wantsBlur])
                  {
                    v51 = 0;
LABEL_49:
                    v54 = sub_100004F84();
                    if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "SNAP: asking avatarView to do a coin flip", buf, 2u);
                    }

                    v57[0] = _NSConcreteStackBlock;
                    v57[1] = 3221225472;
                    v57[2] = sub_1000499D4;
                    v57[3] = &unk_100356CC0;
                    v60 = v51;
                    v58 = avatarView11;
                    v59 = cnAvatarView;
                    v55 = cnAvatarView;
                    v56 = avatarView11;
                    [v55 performTransitionAnimationWithCompletion:v57];

                    goto LABEL_52;
                  }

                  sharedProfileStateOracle4 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];
                  avatarViewAnimationTypeForEffectiveState = [sharedProfileStateOracle4 avatarViewAnimationTypeForEffectiveState];

                  v51 = 0;
                  if (avatarViewAnimationTypeForEffectiveState)
                  {
                    if (avatarViewAnimationTypeForEffectiveState != 1)
                    {
                      goto LABEL_49;
                    }

                    v51 = 1;
                  }

                  [avatarView11 setWantsBlur:1];
                  goto LABEL_49;
                }
              }

              else
              {
              }
            }
          }
        }
      }

LABEL_52:
    }
  }
}

- (void)updateLabelsOrderAndLayout
{
  [(PHSingleCallParticipantLabelView *)self updateLabelsOrder];
  [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];

  [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
}

- (void)updateLabelsOrder
{
  labelsOrder = [(PHSingleCallParticipantLabelView *)self labelsOrder];
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
  {
    v4 = [(PHSingleCallParticipantLabelView *)self ambientLayout]== 1;
    goto LABEL_13;
  }

  if ([(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
  {
    inCallDirectoryCall = [(PHSingleCallParticipantLabelView *)self inBrandedCall]|| [(PHSingleCallParticipantLabelView *)self inCallDirectoryCall];
    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [statusLabel setMarqueeEnabled:inCallDirectoryCall];

    statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [statusLabel2 setMarqueeRunning:inCallDirectoryCall];

    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    [secondaryInfoLabel setMarqueeEnabled:inCallDirectoryCall];

    secondaryInfoLabel2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    [secondaryInfoLabel2 setMarqueeRunning:inCallDirectoryCall];

    goto LABEL_12;
  }

  if (![(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {
LABEL_9:
    v4 = 0;
    goto LABEL_13;
  }

  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  if ([delegate isCallRinging])
  {
    delegate2 = [(PHAbstractCallParticipantLabelView *)self delegate];
    isKnownCaller = [delegate2 isKnownCaller];

    if (isKnownCaller)
    {
      goto LABEL_9;
    }
  }

  else
  {
  }

LABEL_12:
  v4 = 1;
LABEL_13:
  [(PHSingleCallParticipantLabelView *)self setLabelsOrder:v4];
  if (labelsOrder != [(PHSingleCallParticipantLabelView *)self labelsOrder])
  {

    [(PHSingleCallParticipantLabelView *)self updateLabelConstraints];
  }
}

- (double)_distanceFromParticipantNameBaseLineToStatus
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (!callDisplayStyle)
  {
    return -24.0;
  }

  v4 = +[PHUIConfiguration screenSize];
  result = -34.0;
  if (!v4)
  {
    return -26.0;
  }

  return result;
}

- (BOOL)_statusLabelStringWillFit:(id)fit
{
  v10 = NSFontAttributeName;
  fitCopy = fit;
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v6 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  LODWORD(v8) = 15.0;
  LOBYTE(self) = [(PHSingleCallParticipantLabelView *)self _statusLabelStringWillFit:fitCopy attributes:v7 padding:v8];

  return self;
}

- (BOOL)_statusLabelStringWillFit:(id)fit attributes:(id)attributes padding:(float)padding
{
  [fit sizeWithAttributes:attributes];
  v8 = v7;
  [(PHSingleCallParticipantLabelView *)self intrinsicContentSize];
  v10 = v9 + -48.0;
  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
  [avatarView bounds];
  v13 = v10 - (v12 + padding);

  return v13 > v8;
}

- (void)setIcon:(id)icon
{
  iconCopy = icon;
  iconView = self->_iconView;
  v20 = iconCopy;
  if (iconCopy && !iconView)
  {
    v6 = objc_alloc_init(UIImageView);
    v7 = self->_iconView;
    self->_iconView = v6;

    [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHSingleCallParticipantLabelView *)self addSubview:self->_iconView];
    iconView = [(PHSingleCallParticipantLabelView *)self iconView];
    heightAnchor = [iconView heightAnchor];
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v10 = [heightAnchor constraintEqualToConstant:?];
    [(PHSingleCallParticipantLabelView *)self setAppIconHeightConstraint:v10];

    appIconHeightConstraint = [(PHSingleCallParticipantLabelView *)self appIconHeightConstraint];
    [appIconHeightConstraint setActive:1];

    iconView2 = [(PHSingleCallParticipantLabelView *)self iconView];
    widthAnchor = [iconView2 widthAnchor];
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v14 = [widthAnchor constraintEqualToConstant:?];
    [(PHSingleCallParticipantLabelView *)self setAppIconWidthConstraint:v14];

    appIconWidthConstraint = [(PHSingleCallParticipantLabelView *)self appIconWidthConstraint];
    [appIconWidthConstraint setActive:1];

    centerYAnchor = [(UIImageView *)self->_iconView centerYAnchor];
    centerYAnchor2 = [(UIStackView *)self->_stackView centerYAnchor];
    v18 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v18 setActive:1];

    [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithVoIPAppIcon];
    iconView = self->_iconView;
  }

  if (iconView)
  {
    [(UIImageView *)iconView setImage:v20];
    [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithVoIPAppIcon];
  }

  [(PHSingleCallParticipantLabelView *)self updatePosterBadgeView];
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLabelTextAlignmentForCallDisplayStyle:](self, "updateLabelTextAlignmentForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
}

- (void)updateIconSize
{
  iconView = [(PHSingleCallParticipantLabelView *)self iconView];

  if (iconView)
  {
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v5 = v4;
    appIconHeightConstraint = [(PHSingleCallParticipantLabelView *)self appIconHeightConstraint];
    [appIconHeightConstraint setConstant:v5];

    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v8 = v7;
    appIconWidthConstraint = [(PHSingleCallParticipantLabelView *)self appIconWidthConstraint];
    [appIconWidthConstraint setConstant:v8];
  }
}

- (double)voipIconEdge
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  result = 16.0;
  if (callDisplayStyle == 3)
  {
    result = 26.0;
  }

  if (!callDisplayStyle)
  {
    return 13.0;
  }

  return result;
}

- (double)voipIconMarginH
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  result = 5.0;
  if (callDisplayStyle == 3)
  {
    result = 8.0;
  }

  if (!callDisplayStyle)
  {
    return 4.0;
  }

  return result;
}

- (void)setBusinessLogo:(id)logo isPerson:(BOOL)person
{
  personCopy = person;
  logoCopy = logo;
  if (![(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
  {
    callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle != 3)
    {
      businessLogoView = self->_businessLogoView;
      if (logoCopy && !businessLogoView)
      {
        v17 = objc_alloc_init(UIImageView);
        v18 = self->_businessLogoView;
        self->_businessLogoView = v17;

        [(UIImageView *)self->_businessLogoView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(PHSingleCallParticipantLabelView *)self addSubview:self->_businessLogoView];
        businessLogoView = [(PHSingleCallParticipantLabelView *)self businessLogoView];
        heightAnchor = [businessLogoView heightAnchor];
        [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
        v21 = [heightAnchor constraintEqualToConstant:?];
        [(PHSingleCallParticipantLabelView *)self setBusinessLogoHeightConstraint:v21];

        businessLogoHeightConstraint = [(PHSingleCallParticipantLabelView *)self businessLogoHeightConstraint];
        [businessLogoHeightConstraint setActive:1];

        businessLogoView2 = [(PHSingleCallParticipantLabelView *)self businessLogoView];
        widthAnchor = [businessLogoView2 widthAnchor];
        [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
        v25 = [widthAnchor constraintEqualToConstant:?];
        [(PHSingleCallParticipantLabelView *)self setBusinessLogoWidthConstraint:v25];

        businessLogoWidthConstraint = [(PHSingleCallParticipantLabelView *)self businessLogoWidthConstraint];
        [businessLogoWidthConstraint setActive:1];

        centerYAnchor = [(UIImageView *)self->_businessLogoView centerYAnchor];
        centerYAnchor2 = [(UIStackView *)self->_stackView centerYAnchor];
        v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        [v29 setActive:1];

        [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithBusinessLogo];
        businessLogoView = self->_businessLogoView;
      }

      if (businessLogoView)
      {
        if (logoCopy)
        {
          [(UIImageView *)businessLogoView setImage:?];
          [(PHSingleCallParticipantLabelView *)self businessLogoCornerRadius];
          v31 = v30;
          layer = [(UIImageView *)self->_businessLogoView layer];
          [layer setCornerRadius:v31];

          layer2 = [(UIImageView *)self->_businessLogoView layer];
          [layer2 setMasksToBounds:1];

          [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithBusinessLogo];
        }

        else
        {
          businessLogoHeightConstraint2 = [(PHSingleCallParticipantLabelView *)self businessLogoHeightConstraint];
          [businessLogoHeightConstraint2 setActive:0];

          businessLogoWidthConstraint2 = [(PHSingleCallParticipantLabelView *)self businessLogoWidthConstraint];
          [businessLogoWidthConstraint2 setActive:0];

          [(UIImageView *)self->_businessLogoView removeFromSuperview];
          v36 = self->_businessLogoView;
          self->_businessLogoView = 0;
        }
      }

      callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
      -[PHSingleCallParticipantLabelView updateLabelTextAlignmentForCallDisplayStyle:](self, "updateLabelTextAlignmentForCallDisplayStyle:", [callDisplayStyleManager2 callDisplayStyle]);
      goto LABEL_20;
    }
  }

  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (logoCopy && !avatarView)
  {
    v9 = [[_TtC13InCallService13LogoImageView alloc] initWithImage:logoCopy style:!personCopy];
    [(PHSingleCallParticipantLabelView *)self setAvatarView:v9];

    avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [avatarView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    avatarView3 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [(PHSingleCallParticipantLabelView *)self addSubview:avatarView3];

    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
LABEL_6:
    callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    -[PHSingleCallParticipantLabelView updateLabelAlignmentForCallDisplayStyle:](self, "updateLabelAlignmentForCallDisplayStyle:", [callDisplayStyleManager2 callDisplayStyle]);
    goto LABEL_20;
  }

  avatarView4 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (!avatarView4)
  {
    goto LABEL_21;
  }

  avatarView5 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (!logoCopy)
  {
    [avatarView5 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    goto LABEL_6;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
    goto LABEL_21;
  }

  callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self avatarView];
  [callDisplayStyleManager2 setImage:logoCopy];
LABEL_20:

LABEL_21:
}

- (void)updateBusinessLogoSize
{
  businessLogoView = [(PHSingleCallParticipantLabelView *)self businessLogoView];

  if (businessLogoView)
  {
    [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
    v5 = v4;
    businessLogoHeightConstraint = [(PHSingleCallParticipantLabelView *)self businessLogoHeightConstraint];
    [businessLogoHeightConstraint setConstant:v5];

    [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
    v8 = v7;
    businessLogoWidthConstraint = [(PHSingleCallParticipantLabelView *)self businessLogoWidthConstraint];
    [businessLogoWidthConstraint setConstant:v8];
  }
}

- (double)businessLogoEdge
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  result = 22.0;
  if (callDisplayStyle == 3)
  {
    result = 26.0;
  }

  if (!callDisplayStyle)
  {
    return 16.0;
  }

  return result;
}

- (double)businessLogoMarginH
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  result = 8.0;
  if (!callDisplayStyle)
  {
    return 6.0;
  }

  return result;
}

- (double)businessLogoCornerRadius
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  result = 4.0;
  if (callDisplayStyle == 3)
  {
    result = 6.0;
  }

  if (!callDisplayStyle)
  {
    return 3.0;
  }

  return result;
}

- (void)setBannerButtonsState:(unint64_t)state
{
  bannerButtonsView = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [bannerButtonsView setState:state];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)selected
{
  selectedCopy = selected;
  bannerButtonsView = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [bannerButtonsView setAudioRouteButtonSelected:selectedCopy];
}

- (void)setTrailingSideLayoutGuide:(id)guide
{
  objc_storeWeak(&self->_trailingSideLayoutGuide, guide);
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](self, "updateLayoutForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
}

- (void)setCustomAvatar:(id)avatar
{
  avatarCopy = avatar;
  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (avatarView)
  {
    avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [avatarView2 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
  }

  if (avatarCopy)
  {
    v6 = [[UIImageView alloc] initWithImage:avatarCopy];
    [(PHSingleCallParticipantLabelView *)self setAvatarView:v6];

    avatarView3 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [avatarView3 setTranslatesAutoresizingMaskIntoConstraints:0];

    avatarView4 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [(PHSingleCallParticipantLabelView *)self addSubview:avatarView4];

    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
  }

  else
  {
    avatarView5 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [avatarView5 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
  }

  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLabelAlignmentForCallDisplayStyle:](self, "updateLabelAlignmentForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
}

- (void)setPosterNameViewModel:(id)model
{
  modelCopy = model;
  v4 = objc_storeWeak(&self->_posterNameViewModel, modelCopy);
  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  text = [statusLabel text];
  [modelCopy updateStatus:text];
}

- (void)setPosterBadgeView:(id)view
{
  objc_storeWeak(&self->_posterBadgeView, view);

  [(PHSingleCallParticipantLabelView *)self updatePosterBadgeView];
}

- (void)statusLabelTapped:(id)tapped
{
  statusLabelsArray = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
  if (statusLabelsArray)
  {
    v5 = statusLabelsArray;
    statusLabelsArray2 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
    v7 = [statusLabelsArray2 count];

    if (v7 >= 2)
    {
      [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];

      [(PHSingleCallParticipantLabelView *)self animateToNextLabel];
    }
  }
}

- (void)animateToFirstLabel
{
  [(PHSingleCallParticipantLabelView *)self animateToNextLabel];

  [(PHSingleCallParticipantLabelView *)self scheduleStatusLabelTimer];
}

- (void)animateToNextLabel
{
  statusLabelsArray = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
  if (statusLabelsArray)
  {
    v4 = statusLabelsArray;
    statusLabelsArray2 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
    v6 = [statusLabelsArray2 count];

    if (v6 >= 2)
    {
      [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:[(PHSingleCallParticipantLabelView *)self currentStatusLabelIndex]+ 1];
      currentStatusLabelIndex = [(PHSingleCallParticipantLabelView *)self currentStatusLabelIndex];
      statusLabelsArray3 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
      v9 = [statusLabelsArray3 count];

      if (currentStatusLabelIndex >= v9)
      {
        [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:0];
      }

      statusLabelsArray4 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
      v10 = [statusLabelsArray4 objectAtIndex:{-[PHSingleCallParticipantLabelView currentStatusLabelIndex](self, "currentStatusLabelIndex")}];
      [(PHSingleCallParticipantLabelView *)self fadeStatusLabelToAttributedOrPlainString:v10];
    }
  }
}

- (void)scheduleStatusLabelTimer
{
  [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];
  objc_initWeak(&location, self);
  v4 = _NSConcreteStackBlock;
  v5 = 3221225472;
  v6 = sub_10004AD98;
  v7 = &unk_100356CE8;
  objc_copyWeak(&v8, &location);
  v3 = [NSTimer scheduledTimerWithTimeInterval:0 repeats:&v4 block:2.5];
  [(PHSingleCallParticipantLabelView *)self setStatusLabelTimer:v3, v4, v5, v6, v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)fadeStatusLabelToAttributedOrPlainString:(id)string
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10004AEC4;
  v6[3] = &unk_100356988;
  v6[4] = self;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10004AF34;
  v4[3] = &unk_100356D10;
  v4[4] = self;
  stringCopy = string;
  v3 = stringCopy;
  [UIView animateWithDuration:v6 animations:v4 completion:0.200000003];
}

- (void)updateLayoutForCallDisplayStyle:(int64_t)style
{
  delegate2 = sub_100004F84();
  if (os_log_type_enabled(delegate2, OS_LOG_TYPE_DEFAULT))
  {
    callDisplayStyle = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle];
    v10 = 134217984;
    v11 = callDisplayStyle;
    _os_log_impl(&_mh_execute_header, delegate2, OS_LOG_TYPE_DEFAULT, "Updating single-participant label for presentation mode %ld", &v10, 0xCu);
  }

  [(PHSingleCallParticipantLabelView *)self updateParticipantMarqueeLabelNumberOfLines];
  [(PHSingleCallParticipantLabelView *)self updateLabelsOrderAndLayout];
  [(PHSingleCallParticipantLabelView *)self updateBannerButtonsViewForCallDisplayStyle:style];
  [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
  [(PHSingleCallParticipantLabelView *)self updateLabelAlignmentForCallDisplayStyle:style];
  [(PHSingleCallParticipantLabelView *)self updateLabelScales];
  [(PHSingleCallParticipantLabelView *)self updateLabelFonts];
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  if (delegate)
  {
    delegate2 = [(PHAbstractCallParticipantLabelView *)self delegate];
    shouldShowParticipantLabel = [delegate2 shouldShowParticipantLabel];
  }

  else
  {
    shouldShowParticipantLabel = 1.0;
  }

  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel setAlpha:shouldShowParticipantLabel];

  if (delegate)
  {
  }
}

- (void)deactivateLayoutGuideConstraints
{
  participantAndStatusRectangleMinLeadingConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMinLeadingConstraint];
  [participantAndStatusRectangleMinLeadingConstraint setActive:0];

  participantAndStatusRectangleMaxLeadingConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMaxLeadingConstraint];
  [participantAndStatusRectangleMaxLeadingConstraint setActive:0];

  participantAndStatusRectangleTrailingConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTrailingConstraint];
  [participantAndStatusRectangleTrailingConstraint setActive:0];

  participantAndStatusRectangleCenterXConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterXConstraint];
  [participantAndStatusRectangleCenterXConstraint setActive:0];

  participantAndStatusRectangleCenterYConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterYConstraint];
  [participantAndStatusRectangleCenterYConstraint setActive:0];

  participantAndStatusRectangleTopConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTopConstraint];
  [participantAndStatusRectangleTopConstraint setActive:0];

  participantAndStatusRectangleBottomConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleBottomConstraint];
  [participantAndStatusRectangleBottomConstraint setActive:0];
}

- (void)updateLayoutGuide
{
  [(PHSingleCallParticipantLabelView *)self deactivateLayoutGuideConstraints];
  participantAndStatusRectangle = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  centerYAnchor = [participantAndStatusRectangle centerYAnchor];
  centerYAnchor2 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
  v6 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleCenterYConstraint:v6];

  labelsOrder = [(PHSingleCallParticipantLabelView *)self labelsOrder];
  participantAndStatusRectangle2 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  topAnchor = [participantAndStatusRectangle2 topAnchor];
  if (labelsOrder == 1)
  {
    stackView = [(PHSingleCallParticipantLabelView *)self stackView];
    topAnchor2 = [stackView topAnchor];
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleTopConstraint:v12];

    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (!secondaryInfoLabel || (-[PHSingleCallParticipantLabelView secondaryInfoLabel](self, "secondaryInfoLabel"), topAnchor = objc_claimAutoreleasedReturnValue(), [topAnchor text], topAnchor2 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(topAnchor2, "length")))
    {
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      goto LABEL_10;
    }
  }

  else
  {
    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    topAnchor2 = [participantMarqueeLabel2 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleTopConstraint:v15];

    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (!secondaryInfoLabel || (-[PHSingleCallParticipantLabelView secondaryInfoLabel](self, "secondaryInfoLabel"), topAnchor = objc_claimAutoreleasedReturnValue(), [topAnchor text], topAnchor2 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(topAnchor2, "length")))
    {
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
LABEL_10:
      secondaryInfoLabel2 = participantMarqueeLabel;
      if (!secondaryInfoLabel)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  secondaryInfoLabel2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
LABEL_11:

LABEL_12:
  participantAndStatusRectangle3 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  bottomAnchor = [participantAndStatusRectangle3 bottomAnchor];
  bottomAnchor2 = [secondaryInfoLabel2 bottomAnchor];
  v21 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleBottomConstraint:v21];

  v22 = [(PHSingleCallParticipantLabelView *)self ambientLayout]== 0;
  participantAndStatusRectangleCenterYConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterYConstraint];
  [participantAndStatusRectangleCenterYConstraint setActive:v22];

  participantAndStatusRectangleTopConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTopConstraint];
  [participantAndStatusRectangleTopConstraint setActive:1];

  participantAndStatusRectangleBottomConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleBottomConstraint];
  [participantAndStatusRectangleBottomConstraint setActive:1];

  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if ((callDisplayStyle - 1) <= 3)
  {
    v28 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v28 userInterfaceIdiom];

    v30 = userInterfaceIdiom & 0xFFFFFFFFFFFFFFFBLL;
    participantAndStatusRectangle4 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    leadingAnchor = [participantAndStatusRectangle4 leadingAnchor];
    leadingAnchor2 = [(PHSingleCallParticipantLabelView *)self leadingAnchor];
    if (v30 == 1)
    {
      v34 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleMinLeadingConstraint:v34];

      participantAndStatusRectangle5 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      leadingAnchor3 = [participantAndStatusRectangle5 leadingAnchor];
      centerXAnchor = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      v38 = [leadingAnchor3 constraintLessThanOrEqualToAnchor:centerXAnchor constant:-130.0];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleMaxLeadingConstraint:v38];

      participantAndStatusRectangle6 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      centerXAnchor2 = [participantAndStatusRectangle6 centerXAnchor];
      centerXAnchor3 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      v42 = [centerXAnchor2 constraintEqualToAnchor:centerXAnchor3];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleCenterXConstraint:v42];

      secondaryInfoLabel3 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      [secondaryInfoLabel3 intrinsicContentSize];
      v45 = v44;
      participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel3 intrinsicContentSize];
      if (v45 > v47)
      {
        [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      }

      else
      {
        [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      }
      participantAndStatusRectangle4 = ;

      participantAndStatusRectangle7 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      trailingAnchor = [participantAndStatusRectangle7 trailingAnchor];
      trailingAnchor2 = [participantAndStatusRectangle4 trailingAnchor];
      v52 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleTrailingConstraint:v52];

      participantAndStatusRectangleMaxLeadingConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMaxLeadingConstraint];
      LODWORD(v54) = 1148846080;
      [participantAndStatusRectangleMaxLeadingConstraint setPriority:v54];

      participantAndStatusRectangleMaxLeadingConstraint2 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMaxLeadingConstraint];
      v56 = 1;
      [participantAndStatusRectangleMaxLeadingConstraint2 setActive:1];

      participantAndStatusRectangleCenterXConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterXConstraint];
      [participantAndStatusRectangleCenterXConstraint setActive:1];

      if ([(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager usesLargeFormatUI])
      {
        v56 = self->_subviewLayout == 1;
      }

      leadingAnchor = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTrailingConstraint];
      [leadingAnchor setActive:v56];
    }

    else
    {
      v48 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleMinLeadingConstraint:v48];
    }

    participantAndStatusRectangleMinLeadingConstraint = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMinLeadingConstraint];
    [participantAndStatusRectangleMinLeadingConstraint setActive:1];
  }
}

- (void)gameControllerDidChangeContext
{
  gameControllerContext = [(PHSingleCallParticipantLabelView *)self gameControllerContext];
  bannerButtonsView = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [bannerButtonsView setGameControllerContext:gameControllerContext];
}

- (id)gameControllerContext
{
  v2 = +[CNKGameControllerManager shared];
  v3 = v2;
  if (v2)
  {
    gameControllerContext = [v2 gameControllerContext];
  }

  else
  {
    gameControllerContext = 0;
  }

  return gameControllerContext;
}

- (void)updateBannerButtonsViewForCallDisplayStyle:(int64_t)style
{
  if (!style)
  {
    bannerButtonsView = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
    superview = [bannerButtonsView superview];

    if (!superview)
    {
      gameControllerContext = [(PHSingleCallParticipantLabelView *)self gameControllerContext];
      v7 = [[PHBannerButtonsView alloc] initWithState:[(PHSingleCallParticipantLabelView *)self initialStateForBannerButtonsView] gameControllerContext:gameControllerContext];
      [(PHSingleCallParticipantLabelView *)self setBannerButtonsView:v7];

      bannerButtonsView2 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      [bannerButtonsView2 setDelegate:self];

      bannerButtonsView3 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      [bannerButtonsView3 setTranslatesAutoresizingMaskIntoConstraints:0];

      bannerButtonsView4 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      [(PHSingleCallParticipantLabelView *)self addSubview:bannerButtonsView4];

      bannerButtonsView5 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      centerYAnchor = [bannerButtonsView5 centerYAnchor];
      centerYAnchor2 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
      v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v23[0] = v12;
      bannerButtonsView6 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      trailingAnchor = [bannerButtonsView6 trailingAnchor];
      layoutMarginsGuide = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
      trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
      v17 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v23[1] = v17;
      v18 = [NSArray arrayWithObjects:v23 count:2];
      [(PHSingleCallParticipantLabelView *)self addConstraints:v18];
    }
  }

  bannerButtonsView7 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [bannerButtonsView7 setHidden:style != 0];
}

- (unint64_t)initialStateForBannerButtonsView
{
  v2 = +[TUCallCenter sharedInstance];
  incomingVideoCall = [v2 incomingVideoCall];

  v4 = +[TUCallCenter sharedInstance];
  v5 = v4;
  if (incomingVideoCall)
  {
    incomingVideoCall2 = [v4 incomingVideoCall];
    isConversation = [incomingVideoCall2 isConversation];

    if (isConversation && (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), [v9 incomingVideoCall], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "activeConversationForCall:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v12 = objc_msgSend(v11, "resolvedAudioVideoMode"), v11, v12 == 1))
    {
      return 0;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    incomingCall = [v4 incomingCall];
    v13 = incomingCall == 0;
  }

  return v13;
}

- (void)updateViewForCallState
{
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10004C070;
    v18[3] = &unk_100356988;
    v18[4] = self;
    v3 = objc_retainBlock(v18);
    previousIsCallRinging = [(PHSingleCallParticipantLabelView *)self previousIsCallRinging];

    delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
    isCallRinging = [delegate isCallRinging];
    if (previousIsCallRinging)
    {
      previousIsCallRinging2 = [(PHSingleCallParticipantLabelView *)self previousIsCallRinging];
      bOOLValue = [previousIsCallRinging2 BOOLValue];

      if (isCallRinging != bOOLValue)
      {
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_10004C138;
        v16 = &unk_100356D38;
        v17 = v3;
        [UIView _animateUsingSpringWithDuration:4 delay:&v13 options:&stru_100356D58 mass:0.5 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:37.0 completion:0.0];
        v9 = [(PHAbstractCallParticipantLabelView *)self delegate:v13];
        isCallRinging2 = [v9 isCallRinging];

        if ((isCallRinging2 & 1) == 0)
        {
          [(PHSingleCallParticipantLabelView *)self hideFirstAndLastNameAnimated:1];
        }
      }
    }

    else
    {

      if (isCallRinging)
      {
        (v3[2])(v3);
        [(PHSingleCallParticipantLabelView *)self showFirstAndLastNameAnimated:0];
      }
    }

    delegate2 = [(PHAbstractCallParticipantLabelView *)self delegate];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [delegate2 isCallRinging]);
    [(PHSingleCallParticipantLabelView *)self setPreviousIsCallRinging:v12];
  }
}

- (void)updateLabelAlignmentForCallDisplayStyle:(int64_t)style
{
  [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraints];
  [(PHSingleCallParticipantLabelView *)self updateParticipantMarqueeLabelHorizontalConstraint];
  [(PHSingleCallParticipantLabelView *)self updateSecondaryLabelHorizontalConstraint];
  [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];

  [(PHSingleCallParticipantLabelView *)self updateLabelTextAlignmentForCallDisplayStyle:style];
}

- (void)updateLabelScales
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  if ([callDisplayStyleManager callDisplayStyle])
  {
    callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager2 callDisplayStyle];

    if (callDisplayStyle != 1)
    {
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel setAdjustsFontSizeToFitWidth:1];

      if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
      {
        v7 = 0.37;
      }

      else
      {
        v7 = 0.9;
      }

      participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel2 setMinimumScaleFactor:v7];
      goto LABEL_9;
    }
  }

  else
  {
  }

  participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel2 setAdjustsFontSizeToFitWidth:0];
LABEL_9:
}

- (void)updateLabelFonts
{
  updatedParticipantMarqueeLabelFont = [(PHSingleCallParticipantLabelView *)self updatedParticipantMarqueeLabelFont];
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel setFont:updatedParticipantMarqueeLabelFont];

  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v6 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [callDisplayStyleManager callDisplayStyle]);
  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel setFont:v6];

  callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v8 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [callDisplayStyleManager2 callDisplayStyle]);
  secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  [secondaryInfoLabel setFont:v8];
}

- (void)updateLabelsOrderAndText
{
  [(PHSingleCallParticipantLabelView *)self updateLabelsOrder];

  [(PHSingleCallParticipantLabelView *)self updateStatusLabelText];
}

- (void)updateStatusLabelText
{
  if ([(PHSingleCallParticipantLabelView *)self inBrandedCall])
  {
    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [statusLabel setNumberOfLines:1];
  }

  else
  {
    statusLabel = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    if ([statusLabel callDisplayStyle] == 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [statusLabel2 setNumberOfLines:v3];
  }
}

- (BOOL)inBrandedCall
{
  v2 = +[TUCallCenter sharedInstance];
  frontmostCall = [v2 frontmostCall];

  LOBYTE(v2) = [frontmostCall isBranded];
  return v2;
}

- (BOOL)inCallDirectoryCall
{
  v2 = +[TUCallCenter sharedInstance];
  frontmostCall = [v2 frontmostCall];

  callDirectoryName = [frontmostCall callDirectoryName];
  LOBYTE(v2) = callDirectoryName != 0;

  return v2;
}

- (void)updateLabelTextAlignmentForCallDisplayStyle:(int64_t)style
{
  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    goto LABEL_2;
  }

  if (style)
  {
    avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
    if (avatarView)
    {
    }

    else
    {
      iconView = [(PHSingleCallParticipantLabelView *)self iconView];

      if (!iconView)
      {
LABEL_2:
        v5 = 1;
        goto LABEL_8;
      }
    }
  }

  v5 = 4;
LABEL_8:
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [participantMarqueeLabel setTextAlignment:v5];

  statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [statusLabel setTextAlignment:v5];

  secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  [secondaryInfoLabel setTextAlignment:v5];
}

- (void)updateStackViewHorizontalConstraints
{
  stackViewHorizontalConstraint = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [stackViewHorizontalConstraint setActive:0];

  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient]&& [(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    stackView = [(PHSingleCallParticipantLabelView *)self stackView];
    centerXAnchor = [stackView centerXAnchor];
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    centerXAnchor2 = [participantMarqueeLabel centerXAnchor];
LABEL_8:
    v9 = centerXAnchor2;
    v10 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v10];

    goto LABEL_9;
  }

  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (avatarView || [(PHSingleCallParticipantLabelView *)self isDisplayStyleBanner])
  {

LABEL_7:
    stackView = [(PHSingleCallParticipantLabelView *)self stackView];
    centerXAnchor = [stackView leadingAnchor];
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    centerXAnchor2 = [participantMarqueeLabel leadingAnchor];
    goto LABEL_8;
  }

  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
  {
    goto LABEL_7;
  }

  stackView = [(PHSingleCallParticipantLabelView *)self stackView];
  centerXAnchor = [stackView centerXAnchor];
  participantMarqueeLabel = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
  v9 = [centerXAnchor constraintEqualToAnchor:participantMarqueeLabel];
  [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v9];
LABEL_9:

  stackViewHorizontalConstraint2 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [stackViewHorizontalConstraint2 setActive:1];

  iconView = [(PHSingleCallParticipantLabelView *)self iconView];

  if (iconView)
  {
    [(PHSingleCallParticipantLabelView *)self updateIconSize];
    [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithVoIPAppIcon];
  }

  businessLogoView = [(PHSingleCallParticipantLabelView *)self businessLogoView];

  if (businessLogoView)
  {
    [(PHSingleCallParticipantLabelView *)self updateBusinessLogoSize];

    [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithBusinessLogo];
  }
}

- (void)updateStackViewHorizontalConstraintsWithVoIPAppIcon
{
  appIconViewLeadingAnchor = [(PHSingleCallParticipantLabelView *)self appIconViewLeadingAnchor];
  [appIconViewLeadingAnchor setActive:0];

  appIconLayoutGuide = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];

  if (appIconLayoutGuide)
  {
    appIconLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self removeLayoutGuide:appIconLayoutGuide2];
  }

  appIconLayoutGuideHorizontalAnchor = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuideHorizontalAnchor];
  [appIconLayoutGuideHorizontalAnchor setActive:0];

  image = [(UIImageView *)self->_iconView image];
  if (image)
  {
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v9 = v8;
    [(PHSingleCallParticipantLabelView *)self voipIconMarginH];
    v11 = v9 + v10;
  }

  else
  {
    v11 = 0.0;
  }

  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (avatarView)
  {
  }

  else
  {
    callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle)
    {
      v20 = objc_alloc_init(UILayoutGuide);
      [(PHSingleCallParticipantLabelView *)self setAppIconLayoutGuide:v20];

      appIconLayoutGuide3 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      [(PHSingleCallParticipantLabelView *)self addLayoutGuide:appIconLayoutGuide3];

      leadingAnchor = [(UIImageView *)self->_iconView leadingAnchor];
      appIconLayoutGuide4 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      leadingAnchor2 = [appIconLayoutGuide4 leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(PHSingleCallParticipantLabelView *)self setAppIconViewLeadingAnchor:v25];

      stackViewHorizontalConstraint = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [stackViewHorizontalConstraint setActive:0];

      stackView = [(PHSingleCallParticipantLabelView *)self stackView];
      leadingAnchor3 = [stackView leadingAnchor];
      leadingAnchor4 = [(UIImageView *)self->_iconView leadingAnchor];
      v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v11];
      [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v30];

      stackViewHorizontalConstraint2 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [stackViewHorizontalConstraint2 setActive:1];

      LODWORD(leadingAnchor3) = [(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient];
      appIconLayoutGuide5 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      v33 = appIconLayoutGuide5;
      if (leadingAnchor3)
      {
        leadingAnchor5 = [appIconLayoutGuide5 leadingAnchor];
        [(PHSingleCallParticipantLabelView *)self leadingAnchor];
      }

      else
      {
        leadingAnchor5 = [appIconLayoutGuide5 centerXAnchor];
        [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      }
      v35 = ;
      v36 = [leadingAnchor5 constraintEqualToAnchor:v35];
      [(PHSingleCallParticipantLabelView *)self setAppIconLayoutGuideHorizontalAnchor:v36];

      appIconLayoutGuideHorizontalAnchor2 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuideHorizontalAnchor];
      [appIconLayoutGuideHorizontalAnchor2 setActive:1];

      appIconLayoutGuide6 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      trailingAnchor = [appIconLayoutGuide6 trailingAnchor];
      stackView2 = [(PHSingleCallParticipantLabelView *)self stackView];
      trailingAnchor2 = [stackView2 trailingAnchor];
      v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v41 setActive:1];

      goto LABEL_14;
    }
  }

  leadingAnchor6 = [(UIImageView *)self->_iconView leadingAnchor];
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  leadingAnchor7 = [participantMarqueeLabel leadingAnchor];
  v16 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [(PHSingleCallParticipantLabelView *)self setAppIconViewLeadingAnchor:v16];

  appIconLayoutGuide6 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [appIconLayoutGuide6 setConstant:v11];
LABEL_14:

  appIconViewLeadingAnchor2 = [(PHSingleCallParticipantLabelView *)self appIconViewLeadingAnchor];
  [appIconViewLeadingAnchor2 setActive:1];
}

- (void)updateStackViewHorizontalConstraintsWithBusinessLogo
{
  businessLogoViewLeadingAnchor = [(PHSingleCallParticipantLabelView *)self businessLogoViewLeadingAnchor];
  [businessLogoViewLeadingAnchor setActive:0];

  businessLogoLayoutGuide = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];

  if (businessLogoLayoutGuide)
  {
    businessLogoLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self removeLayoutGuide:businessLogoLayoutGuide2];
  }

  businessLogoLayoutGuideHorizontalAnchor = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuideHorizontalAnchor];
  [businessLogoLayoutGuideHorizontalAnchor setActive:0];

  image = [(UIImageView *)self->_businessLogoView image];
  if (image)
  {
    [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
    v9 = v8;
    [(PHSingleCallParticipantLabelView *)self businessLogoMarginH];
    v11 = v9 + v10;
  }

  else
  {
    v11 = 0.0;
  }

  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (avatarView)
  {
  }

  else
  {
    callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

    if (callDisplayStyle)
    {
      v20 = objc_alloc_init(UILayoutGuide);
      [(PHSingleCallParticipantLabelView *)self setBusinessLogoLayoutGuide:v20];

      businessLogoLayoutGuide3 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      [(PHSingleCallParticipantLabelView *)self addLayoutGuide:businessLogoLayoutGuide3];

      leadingAnchor = [(UIImageView *)self->_businessLogoView leadingAnchor];
      businessLogoLayoutGuide4 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      leadingAnchor2 = [businessLogoLayoutGuide4 leadingAnchor];
      v25 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      [(PHSingleCallParticipantLabelView *)self setBusinessLogoViewLeadingAnchor:v25];

      stackViewHorizontalConstraint = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [stackViewHorizontalConstraint setActive:0];

      stackView = [(PHSingleCallParticipantLabelView *)self stackView];
      leadingAnchor3 = [stackView leadingAnchor];
      leadingAnchor4 = [(UIImageView *)self->_businessLogoView leadingAnchor];
      v30 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:v11];
      [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v30];

      stackViewHorizontalConstraint2 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [stackViewHorizontalConstraint2 setActive:1];

      LODWORD(leadingAnchor3) = [(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient];
      businessLogoLayoutGuide5 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      v33 = businessLogoLayoutGuide5;
      if (leadingAnchor3)
      {
        leadingAnchor5 = [businessLogoLayoutGuide5 leadingAnchor];
        [(PHSingleCallParticipantLabelView *)self leadingAnchor];
      }

      else
      {
        leadingAnchor5 = [businessLogoLayoutGuide5 centerXAnchor];
        [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      }
      v35 = ;
      v36 = [leadingAnchor5 constraintEqualToAnchor:v35];
      [(PHSingleCallParticipantLabelView *)self setBusinessLogoLayoutGuideHorizontalAnchor:v36];

      businessLogoLayoutGuideHorizontalAnchor2 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuideHorizontalAnchor];
      [businessLogoLayoutGuideHorizontalAnchor2 setActive:1];

      businessLogoLayoutGuide6 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      trailingAnchor = [businessLogoLayoutGuide6 trailingAnchor];
      stackView2 = [(PHSingleCallParticipantLabelView *)self stackView];
      trailingAnchor2 = [stackView2 trailingAnchor];
      v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      [v41 setActive:1];

      goto LABEL_14;
    }
  }

  leadingAnchor6 = [(UIImageView *)self->_businessLogoView leadingAnchor];
  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  leadingAnchor7 = [participantMarqueeLabel leadingAnchor];
  v16 = [leadingAnchor6 constraintEqualToAnchor:leadingAnchor7];
  [(PHSingleCallParticipantLabelView *)self setBusinessLogoViewLeadingAnchor:v16];

  businessLogoLayoutGuide6 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [businessLogoLayoutGuide6 setConstant:v11];
LABEL_14:

  businessLogoViewLeadingAnchor2 = [(PHSingleCallParticipantLabelView *)self businessLogoViewLeadingAnchor];
  [businessLogoViewLeadingAnchor2 setActive:1];
}

- (void)updateParticipantMarqueeLabelNumberOfLines
{
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleBanner])
  {
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel setNumberOfLines:2];

    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel2 setMarqueeEnabled:0];

    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    participantMarqueeLabel8 = participantMarqueeLabel3;
    v7 = 0;
  }

  else
  {
    isDisplayStyleAmbient = [(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient];
    participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [participantMarqueeLabel4 setNumberOfLines:1];

    participantMarqueeLabel5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v11 = participantMarqueeLabel5;
    if (isDisplayStyleAmbient)
    {
      [participantMarqueeLabel5 setMarqueeEnabled:0];

      participantMarqueeLabel6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel6 setMarqueeRunning:0];

      participantMarqueeLabel7 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel7 setLineBreakMode:4];

      participantMarqueeLabel8 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [participantMarqueeLabel8 _setExtremeSizingEnabled:1];
      goto LABEL_7;
    }

    [participantMarqueeLabel5 setMarqueeEnabled:1];

    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    participantMarqueeLabel8 = participantMarqueeLabel3;
    v7 = 1;
  }

  [participantMarqueeLabel3 setMarqueeRunning:v7];
LABEL_7:

  v14 = sub_100004F84();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    participantMarqueeLabel9 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    if ([participantMarqueeLabel9 marqueeEnabled])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    participantMarqueeLabel10 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v18 = 138412546;
    v19 = v16;
    v20 = 2048;
    numberOfLines = [participantMarqueeLabel10 numberOfLines];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Marquee enabled = %@, number of lines for particpant name = %ld", &v18, 0x16u);
  }
}

- (void)updateParticipantMarqueeLabelHorizontalConstraint
{
  participantMarqueeLabelHorizontalConstraint = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelHorizontalConstraint];
  [participantMarqueeLabelHorizontalConstraint setActive:0];

  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    trailingSideLayoutGuide = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (trailingSideLayoutGuide)
    {
      participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      centerXAnchor = [participantMarqueeLabel centerXAnchor];
      trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
      centerXAnchor2 = [trailingSideLayoutGuide2 centerXAnchor];
LABEL_14:
      trailingAnchor = centerXAnchor2;
      v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
LABEL_15:
      v15 = v12;
      [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelHorizontalConstraint:v12];

      goto LABEL_16;
    }
  }

  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (avatarView)
  {
    v10 = 10.0;
    if (![(PHSingleCallParticipantLabelView *)self isDisplayStyleBanner])
    {
      if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
      {
        v10 = 28.0;
      }

      else
      {
        v10 = 12.0;
      }
    }

    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    centerXAnchor = [participantMarqueeLabel leadingAnchor];
    trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self avatarView];
    trailingAnchor = [trailingSideLayoutGuide2 trailingAnchor];
    v12 = [centerXAnchor constraintEqualToAnchor:trailingAnchor constant:v10];
    goto LABEL_15;
  }

  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle > 4)
  {
    goto LABEL_17;
  }

  if (((1 << callDisplayStyle) & 0x16) == 0)
  {
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    centerXAnchor = [participantMarqueeLabel leadingAnchor];
    trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
    centerXAnchor2 = [trailingSideLayoutGuide2 leadingAnchor];
    goto LABEL_14;
  }

  participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  centerXAnchor = [participantMarqueeLabel centerXAnchor];
  trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
  trailingAnchor = [centerXAnchor constraintEqualToAnchor:trailingSideLayoutGuide2];
  [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelHorizontalConstraint:trailingAnchor];
LABEL_16:

LABEL_17:
  participantMarqueeLabelHorizontalConstraint2 = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelHorizontalConstraint];
  [participantMarqueeLabelHorizontalConstraint2 setActive:1];
}

- (void)updateSecondaryLabelHorizontalConstraint
{
  secondaryInfoLabelHorizontalConstraint = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelHorizontalConstraint];
  [secondaryInfoLabelHorizontalConstraint setActive:0];

  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    trailingSideLayoutGuide = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (trailingSideLayoutGuide)
    {
      secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      centerXAnchor = [secondaryInfoLabel centerXAnchor];
      trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
      centerXAnchor2 = [trailingSideLayoutGuide2 centerXAnchor];
LABEL_7:
      v11 = centerXAnchor2;
      v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
      [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelHorizontalConstraint:v12];

LABEL_8:
      goto LABEL_9;
    }
  }

  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (avatarView)
  {
    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    centerXAnchor = [secondaryInfoLabel leadingAnchor];
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
LABEL_6:
    trailingSideLayoutGuide2 = participantMarqueeLabel;
    centerXAnchor2 = [participantMarqueeLabel leadingAnchor];
    goto LABEL_7;
  }

  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle <= 4)
  {
    if (((1 << callDisplayStyle) & 0x16) != 0)
    {
      secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      centerXAnchor = [secondaryInfoLabel centerXAnchor];
      trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      v11 = [centerXAnchor constraintEqualToAnchor:trailingSideLayoutGuide2];
      [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelHorizontalConstraint:v11];
      goto LABEL_8;
    }

    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    centerXAnchor = [secondaryInfoLabel leadingAnchor];
    participantMarqueeLabel = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
    goto LABEL_6;
  }

LABEL_9:
  secondaryInfoLabelHorizontalConstraint2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelHorizontalConstraint];
  [secondaryInfoLabelHorizontalConstraint2 setActive:1];
}

- (void)updateAvatarViewConstraints
{
  avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (avatarView)
  {
    avatarViewConstraints = [(PHSingleCallParticipantLabelView *)self avatarViewConstraints];
    [NSLayoutConstraint deactivateConstraints:avatarViewConstraints];

    updatedAvatarViewConstraints = [(PHSingleCallParticipantLabelView *)self updatedAvatarViewConstraints];
    [(PHSingleCallParticipantLabelView *)self setAvatarViewConstraints:updatedAvatarViewConstraints];

    avatarViewConstraints2 = [(PHSingleCallParticipantLabelView *)self avatarViewConstraints];
    [NSLayoutConstraint activateConstraints:avatarViewConstraints2];
  }
}

- (id)updatedAvatarViewConstraints
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  callDisplayStyle = [callDisplayStyleManager callDisplayStyle];

  if (callDisplayStyle <= 1)
  {
    if (!callDisplayStyle)
    {
      avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
      leadingAnchor = [avatarView leadingAnchor];
      layoutMarginsGuide = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
      leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
      v44 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v109[0] = v44;
      avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
      centerYAnchor = [avatarView2 centerYAnchor];
      centerYAnchor2 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
      v46 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
      v109[1] = v46;
      avatarView3 = [(PHSingleCallParticipantLabelView *)self avatarView];
      widthAnchor = [avatarView3 widthAnchor];
      v49 = [widthAnchor constraintEqualToConstant:48.0];
      v109[2] = v49;
      avatarView4 = [(PHSingleCallParticipantLabelView *)self avatarView];
      heightAnchor = [avatarView4 heightAnchor];
      v52 = [heightAnchor constraintEqualToConstant:48.0];
      v109[3] = v52;
      v2 = [NSArray arrayWithObjects:v109 count:4];

      v17 = v44;
      v18 = leadingAnchor2;

      topAnchor = leadingAnchor;
      layoutMarginsGuide2 = layoutMarginsGuide;

      v43 = avatarView2;
      goto LABEL_22;
    }

    if (callDisplayStyle != 1)
    {
      goto LABEL_24;
    }

    avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
    leadingAnchor3 = [avatarView leadingAnchor];
    layoutMarginsGuide2 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
    leadingAnchor4 = [layoutMarginsGuide2 leadingAnchor];
    [(PHSingleCallParticipantLabelView *)self horizontalPaddingForMiniWindow];
    v87 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:?];
    v108[0] = v87;
    avatarView5 = [(PHSingleCallParticipantLabelView *)self avatarView];
    centerYAnchor3 = [avatarView5 centerYAnchor];
    centerYAnchor4 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
    v10 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
    v108[1] = v10;
    avatarView6 = [(PHSingleCallParticipantLabelView *)self avatarView];
    widthAnchor2 = [avatarView6 widthAnchor];
    v13 = [widthAnchor2 constraintEqualToConstant:40.0];
    v108[2] = v13;
    avatarView7 = [(PHSingleCallParticipantLabelView *)self avatarView];
    heightAnchor2 = [avatarView7 heightAnchor];
    v16 = [heightAnchor2 constraintEqualToConstant:40.0];
    v108[3] = v16;
    v2 = [NSArray arrayWithObjects:v108 count:4];

    v17 = v87;
    v18 = leadingAnchor4;

    topAnchor = leadingAnchor3;
    v20 = centerYAnchor3;
LABEL_21:

    v43 = avatarView5;
    goto LABEL_22;
  }

  if (callDisplayStyle == 2)
  {
LABEL_5:
    if ([(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
    {
      if (!self->_subviewLayout)
      {
        callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
        callDisplayStyle2 = [callDisplayStyleManager2 callDisplayStyle];

        if (callDisplayStyle2 == 2)
        {
          v2 = &__NSArray0__struct;
          goto LABEL_24;
        }
      }
    }

    v98 = [NSMutableArray alloc];
    avatarView8 = [(PHSingleCallParticipantLabelView *)self avatarView];
    leadingAnchor5 = [avatarView8 leadingAnchor];
    participantAndStatusRectangle = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    leadingAnchor6 = [participantAndStatusRectangle leadingAnchor];
    v22 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
    v107[0] = v22;
    avatarView9 = [(PHSingleCallParticipantLabelView *)self avatarView];
    widthAnchor3 = [avatarView9 widthAnchor];
    [(PHSingleCallParticipantLabelView *)self avatarDiameterFullScreen];
    v25 = [widthAnchor3 constraintEqualToConstant:?];
    v107[1] = v25;
    avatarView10 = [(PHSingleCallParticipantLabelView *)self avatarView];
    heightAnchor3 = [avatarView10 heightAnchor];
    [(PHSingleCallParticipantLabelView *)self avatarDiameterFullScreen];
    v28 = [heightAnchor3 constraintEqualToConstant:?];
    v107[2] = v28;
    v29 = [NSArray arrayWithObjects:v107 count:3];
    v99 = [v98 initWithArray:v29];

    LODWORD(heightAnchor3) = [(PHSingleCallParticipantLabelView *)self inBrandedCall];
    avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
    if (heightAnchor3)
    {
      topAnchor = [avatarView topAnchor];
      layoutMarginsGuide2 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      [layoutMarginsGuide2 topAnchor];
    }

    else
    {
      topAnchor = [avatarView centerYAnchor];
      layoutMarginsGuide2 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      [layoutMarginsGuide2 centerYAnchor];
    }
    v18 = ;
    v17 = [topAnchor constraintEqualToAnchor:v18];
    v2 = v99;
    [v99 addObject:v17];
    goto LABEL_23;
  }

  if (callDisplayStyle != 3)
  {
    if (callDisplayStyle != 4)
    {
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]!= 1 || ([(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];
    leadingAnchor7 = [avatarView leadingAnchor];
    layoutMarginsGuide2 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    leadingAnchor8 = [layoutMarginsGuide2 leadingAnchor];
    v91 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v105[0] = v91;
    avatarView5 = [(PHSingleCallParticipantLabelView *)self avatarView];
    centerYAnchor5 = [avatarView5 centerYAnchor];
    participantAndStatusRectangle2 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    centerYAnchor6 = [participantAndStatusRectangle2 centerYAnchor];
    v54 = [centerYAnchor5 constraintEqualToAnchor:centerYAnchor6];
    v105[1] = v54;
    avatarView11 = [(PHSingleCallParticipantLabelView *)self avatarView];
    widthAnchor4 = [avatarView11 widthAnchor];
    v57 = [widthAnchor4 constraintEqualToConstant:80.0];
    v105[2] = v57;
    avatarView12 = [(PHSingleCallParticipantLabelView *)self avatarView];
    heightAnchor4 = [avatarView12 heightAnchor];
    v60 = [heightAnchor4 constraintEqualToConstant:80.0];
    v105[3] = v60;
    v2 = [NSArray arrayWithObjects:v105 count:4];

    v17 = v91;
    v18 = leadingAnchor8;

    topAnchor = leadingAnchor7;
    v20 = centerYAnchor5;
    goto LABEL_21;
  }

  avatarView13 = [(PHSingleCallParticipantLabelView *)self avatarView];
  heightAnchor5 = [avatarView13 heightAnchor];
  avatarView = [heightAnchor5 constraintEqualToConstant:1.79769313e308];

  LODWORD(v33) = 1144733696;
  [avatarView setPriority:v33];
  avatarView14 = [(PHSingleCallParticipantLabelView *)self avatarView];
  leadingAnchor9 = [avatarView14 leadingAnchor];
  participantAndStatusRectangle3 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  leadingAnchor10 = [participantAndStatusRectangle3 leadingAnchor];
  v81 = [leadingAnchor9 constraintEqualToAnchor:leadingAnchor10];
  v106[0] = v81;
  avatarView15 = [(PHSingleCallParticipantLabelView *)self avatarView];
  leadingAnchor11 = [avatarView15 leadingAnchor];
  leadingAnchor12 = [(PHSingleCallParticipantLabelView *)self leadingAnchor];
  v75 = [leadingAnchor11 constraintEqualToAnchor:leadingAnchor12];
  v106[1] = v75;
  avatarView16 = [(PHSingleCallParticipantLabelView *)self avatarView];
  trailingAnchor = [avatarView16 trailingAnchor];
  trailingSideLayoutGuide = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
  leadingAnchor13 = [trailingSideLayoutGuide leadingAnchor];
  v70 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor13 constant:-32.0];
  v106[2] = v70;
  avatarView17 = [(PHSingleCallParticipantLabelView *)self avatarView];
  centerYAnchor7 = [avatarView17 centerYAnchor];
  centerYAnchor8 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
  v66 = [centerYAnchor7 constraintEqualToAnchor:centerYAnchor8];
  v106[3] = v66;
  avatarView18 = [(PHSingleCallParticipantLabelView *)self avatarView];
  widthAnchor5 = [avatarView18 widthAnchor];
  avatarView19 = [(PHSingleCallParticipantLabelView *)self avatarView];
  heightAnchor6 = [avatarView19 heightAnchor];
  v34 = [widthAnchor5 constraintEqualToAnchor:heightAnchor6];
  v106[4] = v34;
  avatarView20 = [(PHSingleCallParticipantLabelView *)self avatarView];
  topAnchor2 = [avatarView20 topAnchor];
  topAnchor3 = [(PHSingleCallParticipantLabelView *)self topAnchor];
  v38 = [topAnchor2 constraintGreaterThanOrEqualToAnchor:topAnchor3];
  v106[5] = v38;
  avatarView21 = [(PHSingleCallParticipantLabelView *)self avatarView];
  bottomAnchor = [avatarView21 bottomAnchor];
  bottomAnchor2 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
  v42 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2];
  v106[6] = v42;
  v106[7] = avatarView;
  v2 = [NSArray arrayWithObjects:v106 count:8];

  layoutMarginsGuide2 = leadingAnchor9;
  v17 = leadingAnchor10;

  v18 = participantAndStatusRectangle3;
  topAnchor = avatarView14;

  v43 = v81;
LABEL_22:

LABEL_23:
LABEL_24:

  return v2;
}

- (double)avatarDiameterFullScreen
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if (!usesLargeFormatUI)
  {
    return 60.0;
  }

  v4 = +[UIScreen mainScreen];
  [v4 bounds];
  v6 = v5;
  v8 = v7;

  if (v6 >= v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  return v9 * 0.065;
}

- (double)horizontalPaddingForMiniWindow
{
  v2 = +[PHUIConfiguration screenSize];
  result = 0.0;
  if ((v2 - 10) <= 5)
  {
    return dbl_1002F8F18[(v2 - 10)];
  }

  return result;
}

- (void)updateSubviewWithLayout:(int64_t)layout contact:(id)contact
{
  contactCopy = contact;
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  usesLargeFormatUI = [callDisplayStyleManager usesLargeFormatUI];

  if (usesLargeFormatUI)
  {
    self->_subviewLayout = layout;
    if (layout == 1)
    {
      avatarView = [(PHSingleCallParticipantLabelView *)self avatarView];

      if (!avatarView)
      {
        v10 = [[_TtC13InCallService19BlurrableAvatarView alloc] initWithContact:contactCopy wantsBlur:[(PHSingleCallParticipantLabelView *)self shouldBlurAvatarViewForCurrentContactNickname:contactCopy] isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];
        [(PHSingleCallParticipantLabelView *)self setAvatarView:v10];

        avatarView2 = [(PHSingleCallParticipantLabelView *)self avatarView];
        [avatarView2 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      avatarView3 = [(PHSingleCallParticipantLabelView *)self avatarView];
      [(PHSingleCallParticipantLabelView *)self addSubview:avatarView3];
    }

    else if (!layout)
    {
      avatarView4 = [(PHSingleCallParticipantLabelView *)self avatarView];
      [avatarView4 removeFromSuperview];

      [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    }

    callDisplayStyleManager2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](self, "updateLayoutForCallDisplayStyle:", [callDisplayStyleManager2 callDisplayStyle]);

    [(PHSingleCallParticipantLabelView *)self updateLabelConstraints];
    [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
    [(PHSingleCallParticipantLabelView *)self setNeedsUpdateConstraints];
    [(PHSingleCallParticipantLabelView *)self setNeedsLayout];
    [(PHSingleCallParticipantLabelView *)self layoutIfNeeded];
  }
}

- (void)updateLabelConstraints
{
  labelConstraints = [(PHSingleCallParticipantLabelView *)self labelConstraints];

  if (labelConstraints)
  {
    labelConstraints2 = [(PHSingleCallParticipantLabelView *)self labelConstraints];
    [(PHSingleCallParticipantLabelView *)self removeConstraints:labelConstraints2];
  }

  v28 = objc_alloc_init(NSMutableArray);
  if ([(PHSingleCallParticipantLabelView *)self labelsOrder]== 1)
  {
    participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    topAnchor = [participantMarqueeLabel topAnchor];
    bottomAnchor = [(UIStackView *)self->_stackView bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v8 = [topAnchor constraintEqualToAnchor:bottomAnchor constant:?];
    [v28 addObject:v8];

    participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    topAnchor2 = [participantMarqueeLabel2 topAnchor];
    statusLabel = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    bottomAnchor2 = [statusLabel bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v13 = [topAnchor2 constraintEqualToAnchor:bottomAnchor2 constant:?];
    [v28 addObject:v13];

    topAnchor3 = [(UILabel *)self->_secondaryInfoLabel topAnchor];
    [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  }

  else
  {
    statusLabel2 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    topAnchor4 = [statusLabel2 topAnchor];
    participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    bottomAnchor3 = [participantMarqueeLabel3 bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v19 = [topAnchor4 constraintEqualToAnchor:bottomAnchor3 constant:?];
    [v28 addObject:v19];

    topAnchor5 = [(UIStackView *)self->_stackView topAnchor];
    participantMarqueeLabel4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    bottomAnchor4 = [participantMarqueeLabel4 bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v23 = [topAnchor5 constraintEqualToAnchor:bottomAnchor4 constant:?];
    [v28 addObject:v23];

    topAnchor3 = [(UILabel *)self->_secondaryInfoLabel topAnchor];
    [(PHAbstractCallParticipantLabelView *)self statusLabel];
  }
  v24 = ;
  bottomAnchor5 = [v24 bottomAnchor];
  [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
  v26 = [topAnchor3 constraintEqualToAnchor:bottomAnchor5 constant:?];
  [v28 addObject:v26];

  [(PHSingleCallParticipantLabelView *)self setLabelConstraints:v28];
  labelConstraints3 = [(PHSingleCallParticipantLabelView *)self labelConstraints];
  [NSLayoutConstraint activateConstraints:labelConstraints3];
}

- (void)updateHeightConstraints
{
  heightConstraints = [(PHSingleCallParticipantLabelView *)self heightConstraints];

  if (heightConstraints)
  {
    heightConstraints2 = [(PHSingleCallParticipantLabelView *)self heightConstraints];
    [(PHSingleCallParticipantLabelView *)self removeConstraints:heightConstraints2];
  }

  v5 = 0.0;
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
  {
    if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
    {
      v5 = 18.0;
    }

    else
    {
      v5 = 0.0;
    }
  }

  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleBanner])
  {
    heightAnchor = [(PHSingleCallParticipantLabelView *)self heightAnchor];
    v7 = [heightAnchor constraintEqualToConstant:100.0];
    v52 = v7;
    v8 = &v52;
    v9 = 1;
LABEL_27:
    v37 = [NSArray arrayWithObjects:v8 count:v9, v48, v49, v50, v51, v52];
    v10 = [NSMutableArray arrayWithArray:v37];

    goto LABEL_28;
  }

  if (![(PHSingleCallParticipantLabelView *)self isDisplayStyleMiniWindow])
  {
    secondaryInfoLabel = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (secondaryInfoLabel && (v12 = secondaryInfoLabel, -[PHSingleCallParticipantLabelView secondaryInfoLabel](self, "secondaryInfoLabel"), v13 = objc_claimAutoreleasedReturnValue(), [v13 text], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v12, v15))
    {
      labelsOrder = [(PHSingleCallParticipantLabelView *)self labelsOrder];
      topAnchor = [(PHSingleCallParticipantLabelView *)self topAnchor];
      if (labelsOrder)
      {
        stackView = [(PHSingleCallParticipantLabelView *)self stackView];
        topAnchor2 = [stackView topAnchor];
        [topAnchor constraintEqualToAnchor:topAnchor2 constant:-v5];
      }

      else
      {
        stackView = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        topAnchor2 = [stackView topAnchor];
        [topAnchor constraintEqualToAnchor:topAnchor2];
      }
      heightAnchor = ;

      ambientLayout = [(PHSingleCallParticipantLabelView *)self ambientLayout];
      bottomAnchor = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
      secondaryInfoLabel2 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      bottomAnchor2 = [secondaryInfoLabel2 bottomAnchor];
      if (ambientLayout == 1)
      {
        [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
      }

      else
      {
        [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
      }
      v7 = ;

      v50 = heightAnchor;
      v51 = v7;
      v8 = &v50;
    }

    else
    {
      labelsOrder2 = [(PHSingleCallParticipantLabelView *)self labelsOrder];
      topAnchor3 = [(PHSingleCallParticipantLabelView *)self topAnchor];
      if (labelsOrder2)
      {
        stackView2 = [(PHSingleCallParticipantLabelView *)self stackView];
        topAnchor4 = [stackView2 topAnchor];
        heightAnchor = [topAnchor3 constraintEqualToAnchor:topAnchor4 constant:-v5];

        bottomAnchor3 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
        [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      }

      else
      {
        participantMarqueeLabel = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        topAnchor5 = [participantMarqueeLabel topAnchor];
        heightAnchor = [topAnchor3 constraintEqualToAnchor:topAnchor5];

        bottomAnchor3 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
        [(PHAbstractCallParticipantLabelView *)self statusLabel];
      }
      v27 = ;
      bottomAnchor4 = [v27 bottomAnchor];
      v7 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];

      if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
      {
        bottomAnchor5 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
        stackView3 = [(PHSingleCallParticipantLabelView *)self stackView];
        bottomAnchor6 = [stackView3 bottomAnchor];
        v32 = [bottomAnchor5 constraintGreaterThanOrEqualToAnchor:bottomAnchor6];

        v7 = v32;
      }

      v48 = heightAnchor;
      v49 = v7;
      v8 = &v48;
    }

    v9 = 2;
    goto LABEL_27;
  }

  v10 = +[NSMutableArray array];
LABEL_28:
  v38 = 1144750080;
  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    trailingSideLayoutGuide = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (trailingSideLayoutGuide)
    {
      participantMarqueeLabel2 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      bottomAnchor7 = [participantMarqueeLabel2 bottomAnchor];
      trailingSideLayoutGuide2 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
      bottomAnchor8 = [trailingSideLayoutGuide2 bottomAnchor];
      v44 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
      [v10 addObject:v44];

      v38 = 1132068864;
    }
  }

  participantMarqueeLabel3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  LODWORD(v46) = v38;
  [participantMarqueeLabel3 setContentCompressionResistancePriority:1 forAxis:v46];

  [(PHSingleCallParticipantLabelView *)self setHeightConstraints:v10];
  heightConstraints3 = [(PHSingleCallParticipantLabelView *)self heightConstraints];
  [NSLayoutConstraint activateConstraints:heightConstraints3];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)style toStyle:(int64_t)toStyle
{
  if (style <= 1)
  {
    [(PHSingleCallParticipantLabelView *)self updateLayoutForCallDisplayStyle:toStyle];

    [(PHSingleCallParticipantLabelView *)self updateGestureRecognizersEnabled];
  }
}

- (BOOL)isDisplayStyleBanner
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 0;

  return v3;
}

- (BOOL)isDisplayStyleAmbient
{
  callDisplayStyleManager = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [callDisplayStyleManager callDisplayStyle] == 3;

  return v3;
}

- (void)bannerButtonsView:(id)view didPerformActionType:(int64_t)type
{
  delegate = [(PHAbstractCallParticipantLabelView *)self delegate];
  [delegate participantLabelView:self didPerformActionType:type];
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

- (id)currentIMNicknameMatchingContact:(id)contact
{
  contactCopy = contact;
  selfCopy = self;
  v6 = sub_10022C48C();

  return v6;
}

@end