@interface PHSingleCallParticipantLabelView
- (BOOL)_statusLabelStringWillFit:(id)a3;
- (BOOL)_statusLabelStringWillFit:(id)a3 attributes:(id)a4 padding:(float)a5;
- (BOOL)inBrandedCall;
- (BOOL)inCallDirectoryCall;
- (BOOL)isDisplayStyleAmbient;
- (BOOL)isDisplayStyleBanner;
- (BOOL)isDisplayStyleMiniWindow;
- (BOOL)setUpFirstAndLastNameLabelsIfPossible;
- (BOOL)shouldBlurAvatarViewForCurrentContactNickname:(id)a3;
- (BOOL)shouldUseHeroImageLayout;
- (BOOL)showPostersEnabledForiPad;
- (BOOL)showsCallDetailsViewButton;
- (CNContact)contact;
- (PHPosterNameViewModel)posterNameViewModel;
- (PHSingleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)a3 delegate:(id)a4;
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
- (id)currentIMNicknameMatchingContact:(id)a3;
- (id)gameControllerContext;
- (id)updatedAvatarViewConstraints;
- (id)updatedParticipantMarqueeLabelFont;
- (int64_t)numberOfLinesInStatusLabel;
- (unint64_t)ambientLayout;
- (unint64_t)initialStateForBannerButtonsView;
- (void)animateToFirstLabel;
- (void)animateToNextLabel;
- (void)bannerButtonsView:(id)a3 didPerformActionType:(int64_t)a4;
- (void)callDetailsGestureRecognizerTapped:(id)a3;
- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4;
- (void)deactivateLayoutGuideConstraints;
- (void)dealloc;
- (void)fadeStatusLabelToAttributedOrPlainString:(id)a3;
- (void)gameControllerDidChangeContext;
- (void)hideBadgesOnly;
- (void)hideFirstAndLastNameAnimated:(BOOL)a3;
- (void)infoButtonTapped:(id)a3;
- (void)invalidateStatusLabelTimer;
- (void)layoutSubviews;
- (void)scheduleStatusLabelTimer;
- (void)setActivityState:(unsigned __int16)a3 animated:(BOOL)a4;
- (void)setBannerAudioRouteButtonSelected:(BOOL)a3;
- (void)setBannerButtonsState:(unint64_t)a3;
- (void)setBusinessLogo:(id)a3 isPerson:(BOOL)a4;
- (void)setContact:(id)a3;
- (void)setCustomAvatar:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setHidesLabel:(BOOL)a3;
- (void)setIcon:(id)a3;
- (void)setLabelDescriptor:(id)a3;
- (void)setLabelLayoutState:(int64_t)a3 animated:(BOOL)a4;
- (void)setParticipantMarqueeLabelFont:(id)a3;
- (void)setParticipantMarqueeLabelTextColor:(id)a3;
- (void)setPosterBadgeView:(id)a3;
- (void)setPosterNameViewModel:(id)a3;
- (void)setShowsCallDetailsViewButton:(BOOL)a3;
- (void)setShowsConferenceParticipantsButton:(BOOL)a3;
- (void)setStatusLabelTextColor:(id)a3;
- (void)setStatusLabelTextFont:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTrailingSideLayoutGuide:(id)a3;
- (void)setUpCallDetailsViewButton;
- (void)showFirstAndLastNameAnimated:(BOOL)a3;
- (void)statusLabelTapped:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateAvatarViewConstraints;
- (void)updateBannerButtonsViewForCallDisplayStyle:(int64_t)a3;
- (void)updateBusinessLogoSize;
- (void)updateGestureRecognizersEnabled;
- (void)updateHeightConstraints;
- (void)updateIconSize;
- (void)updateLabelAlignmentForCallDisplayStyle:(int64_t)a3;
- (void)updateLabelConstraints;
- (void)updateLabelFonts;
- (void)updateLabelScales;
- (void)updateLabelTextAlignmentForCallDisplayStyle:(int64_t)a3;
- (void)updateLabelTrailingConstraints;
- (void)updateLabelsOrder;
- (void)updateLabelsOrderAndLayout;
- (void)updateLabelsOrderAndText;
- (void)updateLayoutForCallDisplayStyle:(int64_t)a3;
- (void)updateLayoutGuide;
- (void)updateParticipantMarqueeLabelHorizontalConstraint;
- (void)updateParticipantMarqueeLabelNumberOfLines;
- (void)updatePosterBadgeView;
- (void)updateSecondaryLabelHorizontalConstraint;
- (void)updateStackViewHorizontalConstraints;
- (void)updateStackViewHorizontalConstraintsWithBusinessLogo;
- (void)updateStackViewHorizontalConstraintsWithVoIPAppIcon;
- (void)updateStatusLabelText;
- (void)updateSubviewWithLayout:(int64_t)a3 contact:(id)a4;
- (void)updateViewForCallState;
@end

@implementation PHSingleCallParticipantLabelView

- (void)updatePosterBadgeView
{
  v3 = [(PHSingleCallParticipantLabelView *)self posterBadgeView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v8 = [(PHSingleCallParticipantLabelView *)self posterBadgeView];
  if (isKindOfClass)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self badgeView];
    v6 = [v5 title];
    [v8 setTitle:v6];
  }

  else
  {
    objc_opt_class();
    v7 = objc_opt_isKindOfClass();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v8 = [(PHSingleCallParticipantLabelView *)self posterBadgeView];
    v5 = [(PHSingleCallParticipantLabelView *)self iconView];
    v6 = [v5 image];
    [v8 setImage:v6];
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
  v3 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 == 3)
  {
    v10 = +[PHUIConfiguration singleCallParticipantLabelAmbientFont];
    v11 = [(PHAbstractCallParticipantLabelView *)self delegate];
    v12 = objc_opt_respondsToSelector();

    if (v12)
    {
      v13 = [(PHAbstractCallParticipantLabelView *)self delegate];
      v14 = [v13 customFontForParticipantLabel];
      v15 = v14;
      if (v14)
      {
        v16 = v14;
      }

      else
      {
        v16 = v10;
      }

      v17 = v16;

      v10 = v17;
    }

    v18 = [(PHSingleCallParticipantLabelView *)self ambientLayout];
    v19 = 60.0;
    if (v18 == 1)
    {
      v19 = 90.0;
    }

    v9 = [v10 fontWithSize:v19];
  }

  else if (v4 == 1)
  {
    v9 = +[PHUIConfiguration singleCallParticipantLabelMiniWindowFont];
  }

  else
  {
    if (v4)
    {
      v5 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
      v9 = +[PHUIConfiguration singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:](PHUIConfiguration, "singleCallParticipantLabelFullscreenFontUsesLargeFormatUI:", [v5 usesLargeFormatUI]);
    }

    else
    {
      v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      v6 = [v5 text];
      v7 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v7 bounds];
      v9 = [PHUIConfiguration singleCallParticipantLabelBannerFontForText:v6 availableWidth:v8];
    }
  }

  return v9;
}

- (unint64_t)ambientLayout
{
  v2 = [(PHAbstractCallParticipantLabelView *)self delegate];
  v3 = [v2 participantLabelShouldShowLargeAvatar];

  return v3;
}

- (BOOL)setUpFirstAndLastNameLabelsIfPossible
{
  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    v3 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (v3)
    {
      v4 = [(PHSingleCallParticipantLabelView *)self contact];
      v5 = [CNContactFormatter posterNameComponentsForContact:v4];

      v6 = [v5 secondNameComponent];
      LOBYTE(v3) = v6 != 0;

      if (v6)
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
            v76 = [(UILabel *)self->_firstNameLabel topAnchor];
            v75 = [(PHSingleCallParticipantLabelView *)self topAnchor];
            v74 = [v76 constraintGreaterThanOrEqualToAnchor:v75];
            v79[0] = v74;
            v72 = [(UILabel *)self->_firstNameLabel leadingAnchor];
            v73 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v71 = [v73 leadingAnchor];
            v70 = [v72 constraintGreaterThanOrEqualToAnchor:v71];
            v79[1] = v70;
            v68 = [(UILabel *)self->_firstNameLabel centerXAnchor];
            v69 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v67 = [v69 centerXAnchor];
            v66 = [v68 constraintEqualToAnchor:v67];
            v79[2] = v66;
            v64 = [(UILabel *)self->_firstNameLabel trailingAnchor];
            v65 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v63 = [v65 trailingAnchor];
            v62 = [v64 constraintLessThanOrEqualToAnchor:v63];
            v79[3] = v62;
            v61 = [(UILabel *)self->_firstNameLabel trailingAnchor];
            v60 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
            v59 = [v61 constraintEqualToAnchor:v60];
            v79[4] = v59;
            v58 = [(UILabel *)self->_firstNameLabel bottomAnchor];
            v57 = [(UILabel *)self->_lastNameLabel topAnchor];
            v56 = [v58 constraintEqualToAnchor:v57 constant:16.0];
            v79[5] = v56;
            v54 = [(UILabel *)self->_lastNameLabel leadingAnchor];
            v55 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v53 = [v55 leadingAnchor];
            v52 = [v54 constraintGreaterThanOrEqualToAnchor:v53];
            v79[6] = v52;
            v50 = [(UILabel *)self->_lastNameLabel centerXAnchor];
            v51 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v49 = [v51 centerXAnchor];
            v48 = [v50 constraintEqualToAnchor:v49];
            v79[7] = v48;
            v46 = [(UILabel *)self->_lastNameLabel trailingAnchor];
            v47 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v45 = [v47 trailingAnchor];
            v44 = [v46 constraintLessThanOrEqualToAnchor:v45];
            v79[8] = v44;
            v42 = [(UILabel *)self->_lastNameLabel firstBaselineAnchor];
            v43 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
            v41 = [v43 firstBaselineAnchor];
            v12 = [v42 constraintEqualToAnchor:v41];
            v79[9] = v12;
            v13 = [(UILabel *)self->_lastNameLabel bottomAnchor];
            v14 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
            v15 = [v14 bottomAnchor];
            v16 = [v13 constraintLessThanOrEqualToAnchor:v15];
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
        v23 = [(PHSingleCallParticipantLabelView *)self updatedParticipantMarqueeLabelFont];
        v24 = [v23 fontWithSize:48.0];
        [(UILabel *)v22 setFont:v24];

        v25 = [(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad];
        v26 = 35.0;
        if (!v25)
        {
          v26 = 25.0;
        }

        [(UILabel *)v22 setMinimumFontSize:v26];
        v27 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        v28 = [v27 textColor];
        [(UILabel *)v22 setTextColor:v28];

        LODWORD(v29) = 1132134400;
        [(UILabel *)v22 setContentCompressionResistancePriority:1 forAxis:v29];
        [(UILabel *)v20 setFont:v23];
        [(UILabel *)v20 setMinimumFontSize:38.0];
        v30 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        v31 = [v30 textColor];
        [(UILabel *)v20 setTextColor:v31];

        LODWORD(v32) = 1132068864;
        [(UILabel *)v20 setContentCompressionResistancePriority:1 forAxis:v32];
        v33 = [v5 firstNameComponent];
        [(UILabel *)self->_firstNameLabel setText:v33];

        v34 = [v5 secondNameComponent];
        [(UILabel *)self->_lastNameLabel setText:v34];

        v35 = [v5 firstNameComponent];
        v77[0] = v35;
        v36 = [v5 secondNameComponent];
        v77[1] = v36;
        v37 = [NSArray arrayWithObjects:v77 count:2];
        v38 = [v37 objectAtIndexedSubscript:{objc_msgSend(v5, "singleNameComponentIndex")}];
        v39 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        [v39 setText:v38];
      }
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)shouldUseHeroImageLayout
{
  v2 = +[CNKFeatures sharedInstance];
  v3 = [v2 isHeroImageEnabled];

  return v3;
}

- (void)invalidateStatusLabelTimer
{
  v3 = [(PHSingleCallParticipantLabelView *)self statusLabelTimer];

  if (v3)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self statusLabelTimer];
    [v4 invalidate];

    [(PHSingleCallParticipantLabelView *)self setStatusLabelTimer:0];
  }
}

- (void)updateLabelTrailingConstraints
{
  v3 = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelTrailingConstraint];
  [v3 setActive:0];

  v4 = [(PHSingleCallParticipantLabelView *)self stackViewTrailingConstraint];
  [v4 setActive:0];

  v5 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelTrailingConstraint];
  [v5 setActive:0];

  v6 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelLeadingConstraint];
  [v6 setActive:0];

  v7 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  if ([v7 callDisplayStyle])
  {
  }

  else
  {
    v23 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];

    if (v23)
    {
      v24 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      v25 = [v24 trailingAnchor];
      v26 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      v27 = [v26 leadingAnchor];
      v28 = [v25 constraintEqualToAnchor:v27 constant:-10.0];
      [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelTrailingConstraint:v28];

      v29 = [(PHSingleCallParticipantLabelView *)self stackView];
      v30 = [v29 trailingAnchor];
      v31 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      v32 = [v31 leadingAnchor];
      v33 = [v30 constraintLessThanOrEqualToAnchor:v32 constant:-10.0];
      [(PHSingleCallParticipantLabelView *)self setStackViewTrailingConstraint:v33];

      v34 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      v35 = [v34 trailingAnchor];
      v36 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      v37 = [v36 leadingAnchor];
      v38 = [v35 constraintLessThanOrEqualToAnchor:v37 constant:-10.0];
      [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelTrailingConstraint:v38];

LABEL_13:
      goto LABEL_15;
    }
  }

  [(PHSingleCallParticipantLabelView *)self horizontalPaddingConstantForTrailingConstraints];
  v9 = v8;
  v10 = -v8;
  v11 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
  if (v11 || ([(PHSingleCallParticipantLabelView *)self callDetailsViewButton], (v11 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v12 = v11;
    v13 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v14 = [v13 trailingAnchor];
    v15 = [v12 leadingAnchor];
    v16 = [v14 constraintLessThanOrEqualToAnchor:v15 constant:-10.0];
    [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelTrailingConstraint:v16];
  }

  else
  {
    v12 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v13 = [v12 trailingAnchor];
    v14 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    v15 = [v13 constraintLessThanOrEqualToAnchor:v14 constant:v10];
    [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelTrailingConstraint:v15];
  }

  v17 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];

  v18 = [(PHSingleCallParticipantLabelView *)self stackView];
  v19 = [v18 trailingAnchor];
  if (v17)
  {
    v20 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    v21 = [v20 leadingAnchor];
    v22 = [v19 constraintLessThanOrEqualToAnchor:v21 constant:-10.0];
    [(PHSingleCallParticipantLabelView *)self setStackViewTrailingConstraint:v22];
  }

  else
  {
    v20 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    v21 = [v19 constraintLessThanOrEqualToAnchor:v20 constant:v10];
    [(PHSingleCallParticipantLabelView *)self setStackViewTrailingConstraint:v21];
  }

  if ([(PHSingleCallParticipantLabelView *)self labelLayoutState]== 2)
  {
    v39 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    v40 = [v39 trailingAnchor];
    v41 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    v42 = [v40 constraintLessThanOrEqualToAnchor:v41 constant:v9 * -2.0];
    [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelTrailingConstraint:v42];

    v34 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    v35 = [v34 leadingAnchor];
    v36 = [(PHSingleCallParticipantLabelView *)self leadingAnchor];
    v37 = [v35 constraintLessThanOrEqualToAnchor:v36 constant:-(v9 * -2.0)];
    [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelLeadingConstraint:v37];
    goto LABEL_13;
  }

  v43 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  v44 = [v43 trailingAnchor];
  v45 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  v46 = [v45 trailingAnchor];
  v47 = [v44 constraintLessThanOrEqualToAnchor:v46 constant:v10];
  [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelTrailingConstraint:v47];

  [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelLeadingConstraint:0];
LABEL_15:
  v48 = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelTrailingConstraint];
  [v48 setActive:1];

  v49 = [(PHSingleCallParticipantLabelView *)self stackViewTrailingConstraint];
  [v49 setActive:1];

  v50 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelLeadingConstraint];
  [v50 setActive:1];

  v51 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelTrailingConstraint];
  [v51 setActive:1];
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
    v5 = [v4 userInterfaceIdiom];

    result = 20.0;
    if ((v5 & 0xFFFFFFFFFFFFFFFBLL) == 1)
    {
      return 0.0;
    }
  }

  return result;
}

- (BOOL)isDisplayStyleMiniWindow
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 1;

  return v3;
}

- (void)updateGestureRecognizersEnabled
{
  v3 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v4 = [v3 callDisplayStyle];

  if (v4 < 2)
  {
    v8 = [(PHSingleCallParticipantLabelView *)self callDetailsGestureRecognizer];
    [v8 setEnabled:0];

    v7 = 0;
  }

  else
  {
    v5 = [(PHSingleCallParticipantLabelView *)self showsCallDetailsViewButton];
    v6 = [(PHSingleCallParticipantLabelView *)self callDetailsGestureRecognizer];
    [v6 setEnabled:v5];

    v7 = [(PHSingleCallParticipantLabelView *)self showsCallDetailsViewButton]^ 1;
  }

  v9 = [(PHSingleCallParticipantLabelView *)self statusLabelTapRecognizer];
  [v9 setEnabled:v7];

  v12 = [(PHSingleCallParticipantLabelView *)self statusLabelTapRecognizer];
  v10 = [v12 isEnabled];
  v11 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v11 setUserInteractionEnabled:v10];
}

- (BOOL)showsCallDetailsViewButton
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
  v3 = v2 != 0;

  return v3;
}

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = PHSingleCallParticipantLabelView;
  [(PHSingleCallParticipantLabelView *)&v14 layoutSubviews];
  v3 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  if (![v3 callDisplayStyle])
  {
    [(PHSingleCallParticipantLabelView *)self cachedBannerParticipantLabelWidth];
    v5 = v4;
    v6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v6 bounds];
    v8 = v7;

    if (v5 == v8)
    {
      goto LABEL_5;
    }

    v9 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v9 bounds];
    [(PHSingleCallParticipantLabelView *)self setCachedBannerParticipantLabelWidth:v10];

    v3 = [(PHSingleCallParticipantLabelView *)self updatedParticipantMarqueeLabelFont];
    v11 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v11 setFont:v3];
  }

LABEL_5:
  v12 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v13 = [v12 callDisplayStyle];

  if (v13 == 3)
  {
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
    [(PHSingleCallParticipantLabelView *)self updateLabelAlignmentForCallDisplayStyle:3];
    [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
    [(PHSingleCallParticipantLabelView *)self updateViewForCallState];
  }
}

- (PHSingleCallParticipantLabelView)initWithCallDisplayStyleManager:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v67.receiver = self;
  v67.super_class = PHSingleCallParticipantLabelView;
  v8 = [(PHAbstractCallParticipantLabelView *)&v67 initWithCallDisplayStyleManager:v7 delegate:a4];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_callDisplayStyleManager, a3);
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
    v13 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
    [v13 setTextColor:v12];

    [(PHSingleCallParticipantLabelView *)v9 updateLabelScales];
    v14 = objc_alloc_init(UILabel);
    [(PHAbstractCallParticipantLabelView *)v9 setStatusLabel:v14];

    v15 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v15 setAccessibilityIdentifier:@"PHSingleCallParticipantLabelView_StatusLabel"];

    v16 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
    v17 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v16 callDisplayStyle]);
    v18 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v18 setFont:v17];

    v19 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v19 setAdjustsFontSizeToFitWidth:1];

    v20 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v20 setMinimumScaleFactor:0.75999999];

    if ([v7 callDisplayStyle] == 3)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    v22 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v22 setNumberOfLines:v21];

    v23 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    if ([(PHSingleCallParticipantLabelView *)v9 showPostersEnabledForiPad])
    {
      v24 = +[UIColor systemWhiteColor];
      v25 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v25 setTextColor:v24];

      v26 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v26 setMarqueeEnabled:1];

      v27 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v27 setMarqueeRunning:1];

      v28 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v28 setPreferredVibrancy:1];

      v29 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v29 setAdjustsFontForContentSizeCategory:1];

      v30 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v30 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraLarge];

      v31 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v31 setMinimumContentSizeCategory:UIContentSizeCategoryMedium];

      v32 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [v32 setPreferredVibrancy:1];

      v33 = +[UIColor systemWhiteColor];
      v34 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [v34 setTextColor:v33];

      v35 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [v35 setAdjustsFontForContentSizeCategory:1];

      v36 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [v36 setMaximumContentSizeCategory:UIContentSizeCategoryAccessibilityExtraExtraExtraLarge];

      v37 = [(PHAbstractCallParticipantLabelView *)v9 participantMarqueeLabel];
      [v37 setMinimumContentSizeCategory:UIContentSizeCategoryLarge];
    }

    else
    {
      v37 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
      v38 = +[PHUIConfiguration statusLabelFontColorForCallDisplayStyle:](PHUIConfiguration, "statusLabelFontColorForCallDisplayStyle:", [v37 callDisplayStyle]);
      v39 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
      [v39 setTextColor:v38];
    }

    v40 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v41) = 1144750080;
    [v40 setContentCompressionResistancePriority:0 forAxis:v41];

    v42 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v43) = 1148846080;
    [v42 setContentCompressionResistancePriority:1 forAxis:v43];

    v44 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v45) = 1148846080;
    [v44 setContentHuggingPriority:0 forAxis:v45];

    v46 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    LODWORD(v47) = 1148846080;
    [v46 setContentHuggingPriority:1 forAxis:v47];

    v48 = [(PHSingleCallParticipantLabelView *)v9 stackView];
    v49 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v48 addArrangedSubview:v49];

    v50 = [[UITapGestureRecognizer alloc] initWithTarget:v9 action:"statusLabelTapped:"];
    statusLabelTapRecognizer = v9->_statusLabelTapRecognizer;
    v9->_statusLabelTapRecognizer = v50;

    [(UITapGestureRecognizer *)v9->_statusLabelTapRecognizer setNumberOfTapsRequired:1];
    v52 = [(PHAbstractCallParticipantLabelView *)v9 statusLabel];
    [v52 addGestureRecognizer:v9->_statusLabelTapRecognizer];

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
    v59 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
    v60 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v59 callDisplayStyle]);
    [(UILabel *)v9->_secondaryInfoLabel setFont:v60];

    [(UILabel *)v9->_secondaryInfoLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v9->_secondaryInfoLabel setAlpha:0.0];
    v61 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
    LODWORD(v59) = [v61 usesLargeFormatUI];

    if (v59)
    {
      [(UILabel *)v9->_secondaryInfoLabel setPreferredVibrancy:1];
      v62 = [(UILabel *)v9->_secondaryInfoLabel layer];
      [v62 setAllowsGroupBlending:1];

      [(UILabel *)v9->_secondaryInfoLabel setAdjustsFontForContentSizeCategory:1];
      v63 = +[UIColor tertiaryLabelColor];
      [(UILabel *)v9->_secondaryInfoLabel setTextColor:v63];
    }

    else
    {
      v63 = [(PHSingleCallParticipantLabelView *)v9 callDisplayStyleManager];
      v64 = +[PHUIConfiguration statusLabelFontColorForCallDisplayStyle:](PHUIConfiguration, "statusLabelFontColorForCallDisplayStyle:", [v63 callDisplayStyle]);
      [(UILabel *)v9->_secondaryInfoLabel setTextColor:v64];
    }

    [(PHSingleCallParticipantLabelView *)v9 addSubview:v9->_secondaryInfoLabel];
    -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](v9, "updateLayoutForCallDisplayStyle:", [v7 callDisplayStyle]);
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

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = PHSingleCallParticipantLabelView;
  [(PHAbstractCallParticipantLabelView *)&v5 setDelegate:a3];
  v4 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](self, "updateLayoutForCallDisplayStyle:", [v4 callDisplayStyle]);
}

- (double)labelsVerticalOffset
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  result = 2.0;
  if (v3 == 3)
  {
    result = -2.0;
  }

  if (v3 == 1)
  {
    return 0.0;
  }

  return result;
}

- (void)setLabelLayoutState:(int64_t)a3 animated:(BOOL)a4
{
  if (self->_labelLayoutState != a3)
  {
    v18[5] = v4;
    v18[6] = v5;
    v6 = a4;
    self->_labelLayoutState = a3;
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
    if (v6)
    {
      if ((a3 - 1) > 2)
      {
        v9 = &stru_100356B30;
      }

      else
      {
        v9 = off_100356D78[a3 - 1];
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
      if ((a3 - 1) > 2)
      {
        v10 = &stru_100356B30;
      }

      else
      {
        v10 = off_100356D78[a3 - 1];
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

- (void)setLabelDescriptor:(id)a3
{
  v4 = a3;
  v5 = [v4 strings];
  v6 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
  v7 = [v5 isEqualToArray:v6];

  if (v7)
  {
    goto LABEL_20;
  }

  [(PHSingleCallParticipantLabelView *)self setStatusLabelsArray:v5];
  if ([v5 count] < 2)
  {
    v13 = +[CNKFeatures sharedInstance];
    v14 = [v13 isHeroImageEnabled];

    if ((v14 & 1) == 0)
    {
      v15 = [(PHSingleCallParticipantLabelView *)self traitCollection];
      v16 = [v15 _backlightLuminance];

      if (v16 == 1)
      {
        v17 = 0.0;
      }

      else
      {
        v17 = 1.0;
      }

      v18 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      [v18 setAlpha:v17];
    }

    [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];
    [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:0];
    v19 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v20 = [v4 strings];
    v21 = [v20 firstObject];
    [v19 setAttributedOrPlainText:v21];

    v22 = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];
    v23 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v24 = [v23 text];
    [v22 updateStatus:v24];

    v25 = [v4 strings];
    v26 = [v25 firstObject];
    objc_opt_class();
    LOBYTE(v24) = objc_opt_isKindOfClass();

    if ((v24 & 1) == 0)
    {
      goto LABEL_16;
    }

    v27 = [v4 strings];
    v28 = [v27 firstObject];

    v29 = +[NSBundle mainBundle];
    v30 = [v29 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
    if ([v28 isEqualToString:v30])
    {
      v31 = [(PHSingleCallParticipantLabelView *)self numberOfLinesInStatusLabel];

      if (v31 < 3)
      {
LABEL_15:

LABEL_16:
        v36 = [v4 layoutState] - 1;
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

      v32 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v33 = +[NSBundle mainBundle];
      v34 = [v33 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_100361FD0 table:@"Localizable-Stewie"];
      [v32 setAttributedOrPlainText:v34];

      v29 = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];
      v30 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v35 = [v30 text];
      [v29 updateStatus:v35];
    }

    goto LABEL_15;
  }

  v8 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  v9 = [v5 firstObject];
  [v8 setAttributedOrPlainText:v9];

  v10 = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];
  v11 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  v12 = [v11 text];
  [v10 updateStatus:v12];

  [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:0];
  [(PHSingleCallParticipantLabelView *)self invalidateStatusLabelTimer];
  if ([v5 count] >= 2)
  {
    [(PHSingleCallParticipantLabelView *)self scheduleStatusLabelTimer];
  }

LABEL_20:
  v39 = [v4 sourceString];

  if (v39)
  {
    v40 = [v4 sourceString];
LABEL_24:
    v42 = v40;
    v43 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    v44 = [v43 text];
    v45 = v42;
    goto LABEL_25;
  }

  v41 = [v4 secondaryString];

  if (v41)
  {
    v40 = [v4 secondaryString];
    goto LABEL_24;
  }

  v65 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  v66 = [v65 text];

  if (!v66)
  {
    [v5 count];
    goto LABEL_34;
  }

  v42 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  v43 = [v42 text];
  v44 = [v4 secondaryString];
  v45 = v43;
LABEL_25:
  v46 = [v45 isEqualToString:v44];

  if ([v5 count] <= 1 && (v46 & 1) == 0)
  {
    v47 = [v4 sourceString];

    v48 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (v47)
    {
      [v4 sourceString];
    }

    else
    {
      [v4 secondaryString];
    }
    v49 = ;
    [v48 setText:v49];

    v50 = [v4 layoutState] - 1;
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
  v53 = [v4 localizedSenderIdentity];
  v54 = [v53 length];

  if (v54)
  {
    v55 = [(PHSingleCallParticipantLabelView *)self badgeView];

    if (v55)
    {
      v56 = [v4 localizedSenderIdentity];
      v57 = [(PHSingleCallParticipantLabelView *)self badgeView];
      [v57 setTitle:v56];
    }

    else
    {
      v58 = [TPBadgeView alloc];
      v59 = [v4 localizedSenderIdentity];
      v56 = [v58 initWithTitle:v59 theme:1];

      [v56 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v56 setHidden:{-[PHAbstractCallParticipantLabelView hidesLabel](self, "hidesLabel")}];
      v60 = [(PHSingleCallParticipantLabelView *)self stackView];
      v61 = [v60 arrangedSubviews];
      v62 = [v61 firstObject];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        v64 = [(PHSingleCallParticipantLabelView *)self stackView];
        [v64 insertArrangedSubview:v56 atIndex:0];
      }

      [(PHSingleCallParticipantLabelView *)self setBadgeView:v56];
    }

    [(PHSingleCallParticipantLabelView *)self updatePosterBadgeView];
  }

  -[PHSingleCallParticipantLabelView setLabelLayoutState:animated:](self, "setLabelLayoutState:animated:", [v4 layoutState], 1);
}

- (int64_t)numberOfLinesInStatusLabel
{
  [(PHSingleCallParticipantLabelView *)self frame];
  v4 = v3 + -48.0;
  v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  v6 = [v5 font];
  [v6 lineHeight];
  v8 = v7;

  v9 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  v10 = [v9 text];

  v17 = NSFontAttributeName;
  v11 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  v12 = [v11 font];
  v18 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
  [v10 boundingRectWithSize:1 options:v13 attributes:0 context:{v4, 1.79769313e308}];
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
  v3 = [(PHAbstractCallParticipantLabelView *)self statusLabel];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v4 intrinsicContentSize];
  v6 = v5;

  return v6;
}

- (double)getParticipantsMarqueeLabelHeight
{
  v3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];

  if (!v3)
  {
    return 0.0;
  }

  v4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v4 intrinsicContentSize];
  v6 = v5;

  return v6;
}

- (void)traitCollectionDidChange:(id)a3
{
  v21.receiver = self;
  v21.super_class = PHSingleCallParticipantLabelView;
  v4 = a3;
  [(PHSingleCallParticipantLabelView *)&v21 traitCollectionDidChange:v4];
  v5 = [v4 _backlightLuminance];

  v6 = [(PHSingleCallParticipantLabelView *)self traitCollection];
  v7 = [v6 _backlightLuminance];

  if (v5 != v7)
  {
    v8 = [(PHSingleCallParticipantLabelView *)self traitCollection];
    v9 = [v8 _backlightLuminance];

    v10 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v11 = v10;
    if (v9 == 1)
    {
      v12 = 0.0;
LABEL_4:
      [v10 setAlpha:v12];
LABEL_7:

      return;
    }

    v13 = [v10 text];
    v14 = +[NSBundle mainBundle];
    v15 = [v14 localizedStringForKey:@"ALERT_ERROR_LABEL" value:&stru_100361FD0 table:@"Localizable-Stewie"];
    if ([v13 isEqualToString:v15])
    {

      goto LABEL_7;
    }

    v16 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v17 = [v16 text];
    v18 = +[NSBundle mainBundle];
    v19 = [v18 localizedStringForKey:@"ALERT_ERROR_LABEL_NO_LINE_BREAK" value:&stru_100361FD0 table:@"Localizable-Stewie"];
    v20 = [v17 isEqualToString:v19];

    if ((v20 & 1) == 0)
    {
      v10 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      v11 = v10;
      v12 = 1.0;
      goto LABEL_4;
    }
  }
}

- (void)setHidesLabel:(BOOL)a3
{
  v3 = a3;
  if ([(PHAbstractCallParticipantLabelView *)self hidesLabel]!= a3)
  {
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100047A94;
    v6[3] = &unk_100356BB8;
    v6[4] = self;
    v7 = v3;
    [UIView performWithoutAnimation:v6];
    v5.receiver = self;
    v5.super_class = PHSingleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v5 setHidesLabel:v3];
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

- (void)setActivityState:(unsigned __int16)a3 animated:(BOOL)a4
{
  v4 = a3;
  if ([(PHAbstractCallParticipantLabelView *)self activityState:a3]!= a3)
  {
    [(PHAbstractCallParticipantLabelView *)self setUserInteractionEnabled:v4 > 1];
    v6.receiver = self;
    v6.super_class = PHSingleCallParticipantLabelView;
    [(PHAbstractCallParticipantLabelView *)&v6 setActivityState:v4];
  }
}

- (void)setShowsConferenceParticipantsButton:(BOOL)a3
{
  v3 = a3;
  if (![(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {
    v5 = [(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout];
    v6 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];

    if (v5 || !v3)
    {
      if (v6)
      {
        v26 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
        [v26 removeFromSuperview];

        [(PHSingleCallParticipantLabelView *)self setConferenceParticipantsButton:0];

        [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];
      }
    }

    else if (!v6)
    {
      v7 = [UIButton buttonWithType:3];
      [(PHSingleCallParticipantLabelView *)self setConferenceParticipantsButton:v7];

      v8 = +[UIColor systemTealColor];
      v9 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [v9 setTintColor:v8];

      v10 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

      v11 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      LODWORD(v12) = 1148846080;
      [v11 setContentCompressionResistancePriority:0 forAxis:v12];

      v13 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      LODWORD(v14) = 1148846080;
      [v13 setContentCompressionResistancePriority:1 forAxis:v14];

      v15 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [v15 addTarget:self action:"infoButtonTapped:" forControlEvents:64];

      v16 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      [(PHSingleCallParticipantLabelView *)self addSubview:v16];

      v32 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      v30 = [v32 bottomAnchor];
      v31 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      v29 = [v31 firstBaselineAnchor];
      v28 = [v30 constraintEqualToAnchor:v29];
      v33[0] = v28;
      v27 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      v17 = [v27 trailingAnchor];
      v18 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      v19 = [v18 leadingAnchor];
      v20 = [v17 constraintEqualToAnchor:v19 constant:-10.0];
      v33[1] = v20;
      v21 = [(PHSingleCallParticipantLabelView *)self conferenceParticipantsButton];
      v22 = [v21 trailingAnchor];
      v23 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
      v24 = [v22 constraintLessThanOrEqualToAnchor:v23 constant:-24.0];
      v33[2] = v24;
      v25 = [NSArray arrayWithObjects:v33 count:3];
      [(PHSingleCallParticipantLabelView *)self addConstraints:v25];

      [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];
    }
  }
}

- (void)infoButtonTapped:(id)a3
{
  v4 = [(PHAbstractCallParticipantLabelView *)self delegate];
  [v4 callLabelInfoLabelWasTappedForLabel:self];
}

- (void)setShowsCallDetailsViewButton:(BOOL)a3
{
  v3 = a3;
  if ([(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {

    [(PHSingleCallParticipantLabelView *)self setCallDetailsViewButton:0];
  }

  else
  {
    if (v3 && ![(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
    {
      v6 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];

      if (v6)
      {
        return;
      }

      [(PHSingleCallParticipantLabelView *)self setUpCallDetailsViewButton];
    }

    else
    {
      v5 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
      [v5 removeFromSuperview];

      [(PHSingleCallParticipantLabelView *)self setCallDetailsViewButton:0];
    }

    [(PHSingleCallParticipantLabelView *)self updateGestureRecognizersEnabled];

    [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];
  }
}

- (BOOL)showPostersEnabledForiPad
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 usesLargeFormatUI];

  return v3;
}

- (void)setUpCallDetailsViewButton
{
  if (![(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {
    v3 = [UIButton buttonWithType:4];
    [(PHSingleCallParticipantLabelView *)self setCallDetailsViewButton:v3];

    v4 = +[UIColor secondaryLabelColor];
    v5 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [v5 setTintColor:v4];

    v6 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [v6 setUserInteractionEnabled:0];

    v7 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    LODWORD(v9) = 1148846080;
    [v8 setContentCompressionResistancePriority:0 forAxis:v9];

    v10 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    LODWORD(v11) = 1148846080;
    [v10 setContentCompressionResistancePriority:1 forAxis:v11];

    v12 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    [(PHSingleCallParticipantLabelView *)self addSubview:v12];

    v13 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    v14 = [v13 centerYAnchor];
    v15 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v22[0] = v16;
    v17 = [(PHSingleCallParticipantLabelView *)self callDetailsViewButton];
    v18 = [v17 trailingAnchor];
    v19 = [(PHSingleCallParticipantLabelView *)self trailingAnchor];
    v20 = [v18 constraintEqualToAnchor:v19 constant:-20.0];
    v22[1] = v20;
    v21 = [NSArray arrayWithObjects:v22 count:2];
    [(PHSingleCallParticipantLabelView *)self addConstraints:v21];
  }
}

- (void)showFirstAndLastNameAnimated:(BOOL)a3
{
  if (self->_firstNameLabel && self->_lastNameLabel)
  {
    if (a3)
    {
      CGAffineTransformMakeScale(&v16, 0.9, 0.9);
      v4 = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
      v15 = v16;
      [v4 setTransform:&v15];

      CGAffineTransformMakeScale(&v14, 0.9, 0.9);
      v5 = [(PHSingleCallParticipantLabelView *)self lastNameLabel];
      v15 = v14;
      [v5 setTransform:&v15];

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
      v6 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
      [v6 setAlpha:0.0];

      v7 = [(PHSingleCallParticipantLabelView *)self badgeView];
      [v7 setAlpha:0.0];

      v8 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v8 setAlpha:0.0];

      v9 = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
      [v9 setAlpha:1.0];

      v10 = [(PHSingleCallParticipantLabelView *)self lastNameLabel];
      [v10 setAlpha:1.0];
    }
  }
}

- (void)hideFirstAndLastNameAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
  if (v5)
  {
    v6 = v5;
    v7 = [(PHSingleCallParticipantLabelView *)self lastNameLabel];

    if (v7)
    {
      if (v3)
      {
        CGAffineTransformMakeScale(&v20, 0.9, 0.9);
        v8 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        v19 = v20;
        [v8 setTransform:&v19];

        v9 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        [v9 setAlpha:0.0];

        v10 = [(PHSingleCallParticipantLabelView *)self badgeView];
        [v10 setAlpha:0.0];

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
        v11 = [(PHSingleCallParticipantLabelView *)self firstNameLabel];
        [v11 setAlpha:0.0];

        v12 = [(PHSingleCallParticipantLabelView *)self lastNameLabel];
        [v12 setAlpha:0.0];

        v13 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
        [v13 setAlpha:1.0];

        v14 = [(PHSingleCallParticipantLabelView *)self badgeView];
        [v14 setAlpha:1.0];

        v15 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        [v15 setAlpha:1.0];
      }
    }
  }
}

- (void)callDetailsGestureRecognizerTapped:(id)a3
{
  v4 = [(PHAbstractCallParticipantLabelView *)self delegate];
  [v4 callLabelDetailsGestureRecognizerTappedForLabel:self];
}

- (void)setTextColor:(id)a3
{
  v8.receiver = self;
  v8.super_class = PHSingleCallParticipantLabelView;
  v4 = a3;
  [(PHAbstractCallParticipantLabelView *)&v8 setTextColor:v4];
  v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel:v8.receiver];
  [v5 setTextColor:v4];

  v6 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v6 setTextColor:v4];

  v7 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  [v7 setTextColor:v4];
}

- (void)setStatusLabelTextColor:(id)a3
{
  v6 = a3;
  v4 = [(PHSingleCallParticipantLabelView *)self posterNameViewModel];

  if (!v4)
  {
    v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [v5 setTextColor:v6];
  }
}

- (void)setParticipantMarqueeLabelTextColor:(id)a3
{
  v4 = a3;
  v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v5 setTextColor:v4];
}

- (void)setStatusLabelTextFont:(id)a3
{
  v4 = a3;
  v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v5 setFont:v4];
}

- (void)setParticipantMarqueeLabelFont:(id)a3
{
  v4 = a3;
  v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v5 setFont:v4];
}

- (CNContact)contact
{
  v3 = [(PHSingleCallParticipantLabelView *)self avatarView];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (isKindOfClass)
  {
    goto LABEL_4;
  }

  objc_opt_class();
  v6 = objc_opt_isKindOfClass();

  if (v6)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self avatarView];
LABEL_4:
    v7 = [v5 contact];

    goto LABEL_6;
  }

  v7 = 0;
LABEL_6:

  return v7;
}

- (BOOL)shouldBlurAvatarViewForCurrentContactNickname:(id)a3
{
  v3 = [(PHSingleCallParticipantLabelView *)self currentIMNicknameMatchingContact:a3];
  if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
  {
    v4 = [v3 avatar];
    v5 = [v4 contentIsSensitive];

    v6 = sub_100004F84();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10[0] = 67109120;
      v10[1] = v5;
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

    LOBYTE(v5) = 0;
  }

  v7 = +[ICSPreferences sharedPreferences];
  v8 = [v7 forceBlurCurrentPoster];

  return (v8 | v5) & 1;
}

- (void)setContact:(id)a3
{
  v4 = a3;
  v5 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v6 = v5;
  if (!v4)
  {
    if (!v5)
    {
      goto LABEL_22;
    }

    v7 = [(PHSingleCallParticipantLabelView *)self avatarView];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
    }

    else
    {
      v16 = [(PHSingleCallParticipantLabelView *)self avatarView];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        goto LABEL_22;
      }
    }

    v18 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [v18 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
LABEL_20:
    v14 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    -[PHSingleCallParticipantLabelView updateLabelAlignmentForCallDisplayStyle:](self, "updateLabelAlignmentForCallDisplayStyle:", [v14 callDisplayStyle]);
    goto LABEL_21;
  }

  if (!v5)
  {
    if (![v4 imageDataAvailable])
    {
      goto LABEL_10;
    }

    v8 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    v9 = [v8 callDisplayStyle];

    if (v9 == 3)
    {
      v10 = [[_TtC13InCallService17AmbientAvatarView alloc] initWithContact:v4];
    }

    else
    {
      v10 = [[_TtC13InCallService19BlurrableAvatarView alloc] initWithContact:v4 wantsBlur:[(PHSingleCallParticipantLabelView *)self shouldBlurAvatarViewForCurrentContactNickname:v4] isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];
      v19 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
      v20 = [v19 usesLargeFormatUI];

      if (v20)
      {
        v21 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
        v22 = [v21 callDisplayStyle];

        if (v22)
        {
          goto LABEL_19;
        }
      }
    }

    [(PHSingleCallParticipantLabelView *)self setAvatarView:v10];
LABEL_19:

    v23 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [v23 setTranslatesAutoresizingMaskIntoConstraints:0];

    v24 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [(PHSingleCallParticipantLabelView *)self addSubview:v24];

    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
    goto LABEL_20;
  }

LABEL_10:
  v11 = [(PHSingleCallParticipantLabelView *)self avatarView];
  objc_opt_class();
  v12 = objc_opt_isKindOfClass();

  v13 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v14 = v13;
  if (v12)
  {
LABEL_13:
    [v13 setContact:v4];
LABEL_21:

    goto LABEL_22;
  }

  objc_opt_class();
  v15 = objc_opt_isKindOfClass();

  if (v15)
  {
    v13 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v14 = v13;
    goto LABEL_13;
  }

LABEL_22:
  [(PHSingleCallParticipantLabelView *)self setUpFirstAndLastNameLabelsIfPossible];
  if ([(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
  {
    v25 = +[CNKFeatures sharedInstance];
    v26 = [v25 isNameAndPhotoC3Enabled];

    if (v26)
    {
      v27 = +[TUCallCenter sharedInstance];
      v28 = [v27 frontmostCall];

      if (v4)
      {
        if (v28)
        {
          if ([v28 status] == 1)
          {
            v29 = [(PHSingleCallParticipantLabelView *)self avatarView];
            if (v29)
            {
              v30 = v29;
              v31 = [(PHSingleCallParticipantLabelView *)self avatarView];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v32 = +[TUCallCenter sharedInstance];
                v33 = [v32 currentCallCount];

                if (v33 == 1)
                {
                  v34 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];

                  if (!v34)
                  {
                    v35 = sub_100004F84();
                    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                    {
                      v36 = [v28 contactIdentifier];
                      *buf = 138739971;
                      v62[0] = v36;
                      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "SNAP: creating a new oracle for contactIdentifier: %{sensitive}@", buf, 0xCu);
                    }

                    v37 = [CNContactStoreConfiguration tu_contactStoreConfigurationForCall:v28];
                    v38 = [[CNContactStore alloc] initWithConfiguration:v37];
                    v39 = [[CNSharedProfileStateOracle alloc] initWithContact:v4 contactStore:v38];
                    [(PHSingleCallParticipantLabelView *)self setSharedProfileStateOracle:v39];
                  }

                  v40 = [(PHSingleCallParticipantLabelView *)self avatarView];
                  v41 = [v40 cnAvatarView];
                  v42 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];
                  [v41 setSharedProfileStateOracle:v42];

                  v43 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];
                  v44 = [v43 pendingNickname];
                  v45 = [v44 avatar];

                  if (+[_TtC13InCallService23SensitivityFeatureFlags isSensitivityAvatarTreatmentEnabled])
                  {
                    v46 = [v45 contentIsSensitive];
                    v47 = sub_100004F84();
                    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
                    {
                      v48 = [v40 wantsBlur];
                      *buf = 67109376;
                      LODWORD(v62[0]) = v46;
                      WORD2(v62[0]) = 1024;
                      *(v62 + 6) = v48;
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

                    v46 = 0;
                  }

                  v49 = +[ICSPreferences sharedPreferences];
                  v50 = [v49 forceBlurNewPoster];

                  v51 = 0;
                  if (!v45 || ((v50 | v46) & 1) == 0)
                  {
                    goto LABEL_49;
                  }

                  if ([v40 wantsBlur])
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
                    v58 = v40;
                    v59 = v41;
                    v55 = v41;
                    v56 = v40;
                    [v55 performTransitionAnimationWithCompletion:v57];

                    goto LABEL_52;
                  }

                  v52 = [(PHSingleCallParticipantLabelView *)self sharedProfileStateOracle];
                  v53 = [v52 avatarViewAnimationTypeForEffectiveState];

                  v51 = 0;
                  if (v53)
                  {
                    if (v53 != 1)
                    {
                      goto LABEL_49;
                    }

                    v51 = 1;
                  }

                  [v40 setWantsBlur:1];
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
  v3 = [(PHSingleCallParticipantLabelView *)self labelsOrder];
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
  {
    v4 = [(PHSingleCallParticipantLabelView *)self ambientLayout]== 1;
    goto LABEL_13;
  }

  if ([(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
  {
    v5 = [(PHSingleCallParticipantLabelView *)self inBrandedCall]|| [(PHSingleCallParticipantLabelView *)self inCallDirectoryCall];
    v9 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [v9 setMarqueeEnabled:v5];

    v10 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [v10 setMarqueeRunning:v5];

    v11 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    [v11 setMarqueeEnabled:v5];

    v12 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    [v12 setMarqueeRunning:v5];

    goto LABEL_12;
  }

  if (![(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
  {
LABEL_9:
    v4 = 0;
    goto LABEL_13;
  }

  v6 = [(PHAbstractCallParticipantLabelView *)self delegate];
  if ([v6 isCallRinging])
  {
    v7 = [(PHAbstractCallParticipantLabelView *)self delegate];
    v8 = [v7 isKnownCaller];

    if (v8)
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
  if (v3 != [(PHSingleCallParticipantLabelView *)self labelsOrder])
  {

    [(PHSingleCallParticipantLabelView *)self updateLabelConstraints];
  }
}

- (double)_distanceFromParticipantNameBaseLineToStatus
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  if (!v3)
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

- (BOOL)_statusLabelStringWillFit:(id)a3
{
  v10 = NSFontAttributeName;
  v4 = a3;
  v5 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v6 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v5 callDisplayStyle]);
  v11 = v6;
  v7 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  LODWORD(v8) = 15.0;
  LOBYTE(self) = [(PHSingleCallParticipantLabelView *)self _statusLabelStringWillFit:v4 attributes:v7 padding:v8];

  return self;
}

- (BOOL)_statusLabelStringWillFit:(id)a3 attributes:(id)a4 padding:(float)a5
{
  [a3 sizeWithAttributes:a4];
  v8 = v7;
  [(PHSingleCallParticipantLabelView *)self intrinsicContentSize];
  v10 = v9 + -48.0;
  v11 = [(PHSingleCallParticipantLabelView *)self avatarView];
  [v11 bounds];
  v13 = v10 - (v12 + a5);

  return v13 > v8;
}

- (void)setIcon:(id)a3
{
  v4 = a3;
  iconView = self->_iconView;
  v20 = v4;
  if (v4 && !iconView)
  {
    v6 = objc_alloc_init(UIImageView);
    v7 = self->_iconView;
    self->_iconView = v6;

    [(UIImageView *)self->_iconView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(PHSingleCallParticipantLabelView *)self addSubview:self->_iconView];
    v8 = [(PHSingleCallParticipantLabelView *)self iconView];
    v9 = [v8 heightAnchor];
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v10 = [v9 constraintEqualToConstant:?];
    [(PHSingleCallParticipantLabelView *)self setAppIconHeightConstraint:v10];

    v11 = [(PHSingleCallParticipantLabelView *)self appIconHeightConstraint];
    [v11 setActive:1];

    v12 = [(PHSingleCallParticipantLabelView *)self iconView];
    v13 = [v12 widthAnchor];
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v14 = [v13 constraintEqualToConstant:?];
    [(PHSingleCallParticipantLabelView *)self setAppIconWidthConstraint:v14];

    v15 = [(PHSingleCallParticipantLabelView *)self appIconWidthConstraint];
    [v15 setActive:1];

    v16 = [(UIImageView *)self->_iconView centerYAnchor];
    v17 = [(UIStackView *)self->_stackView centerYAnchor];
    v18 = [v16 constraintEqualToAnchor:v17];
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
  v19 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLabelTextAlignmentForCallDisplayStyle:](self, "updateLabelTextAlignmentForCallDisplayStyle:", [v19 callDisplayStyle]);
}

- (void)updateIconSize
{
  v3 = [(PHSingleCallParticipantLabelView *)self iconView];

  if (v3)
  {
    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v5 = v4;
    v6 = [(PHSingleCallParticipantLabelView *)self appIconHeightConstraint];
    [v6 setConstant:v5];

    [(PHSingleCallParticipantLabelView *)self voipIconEdge];
    v8 = v7;
    v9 = [(PHSingleCallParticipantLabelView *)self appIconWidthConstraint];
    [v9 setConstant:v8];
  }
}

- (double)voipIconEdge
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  result = 16.0;
  if (v3 == 3)
  {
    result = 26.0;
  }

  if (!v3)
  {
    return 13.0;
  }

  return result;
}

- (double)voipIconMarginH
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  result = 5.0;
  if (v3 == 3)
  {
    result = 8.0;
  }

  if (!v3)
  {
    return 4.0;
  }

  return result;
}

- (void)setBusinessLogo:(id)a3 isPerson:(BOOL)a4
{
  v4 = a4;
  v37 = a3;
  if (![(PHSingleCallParticipantLabelView *)self shouldUseHeroImageLayout])
  {
    v6 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    v7 = [v6 callDisplayStyle];

    if (v7 != 3)
    {
      businessLogoView = self->_businessLogoView;
      if (v37 && !businessLogoView)
      {
        v17 = objc_alloc_init(UIImageView);
        v18 = self->_businessLogoView;
        self->_businessLogoView = v17;

        [(UIImageView *)self->_businessLogoView setTranslatesAutoresizingMaskIntoConstraints:0];
        [(PHSingleCallParticipantLabelView *)self addSubview:self->_businessLogoView];
        v19 = [(PHSingleCallParticipantLabelView *)self businessLogoView];
        v20 = [v19 heightAnchor];
        [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
        v21 = [v20 constraintEqualToConstant:?];
        [(PHSingleCallParticipantLabelView *)self setBusinessLogoHeightConstraint:v21];

        v22 = [(PHSingleCallParticipantLabelView *)self businessLogoHeightConstraint];
        [v22 setActive:1];

        v23 = [(PHSingleCallParticipantLabelView *)self businessLogoView];
        v24 = [v23 widthAnchor];
        [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
        v25 = [v24 constraintEqualToConstant:?];
        [(PHSingleCallParticipantLabelView *)self setBusinessLogoWidthConstraint:v25];

        v26 = [(PHSingleCallParticipantLabelView *)self businessLogoWidthConstraint];
        [v26 setActive:1];

        v27 = [(UIImageView *)self->_businessLogoView centerYAnchor];
        v28 = [(UIStackView *)self->_stackView centerYAnchor];
        v29 = [v27 constraintEqualToAnchor:v28];
        [v29 setActive:1];

        [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithBusinessLogo];
        businessLogoView = self->_businessLogoView;
      }

      if (businessLogoView)
      {
        if (v37)
        {
          [(UIImageView *)businessLogoView setImage:?];
          [(PHSingleCallParticipantLabelView *)self businessLogoCornerRadius];
          v31 = v30;
          v32 = [(UIImageView *)self->_businessLogoView layer];
          [v32 setCornerRadius:v31];

          v33 = [(UIImageView *)self->_businessLogoView layer];
          [v33 setMasksToBounds:1];

          [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithBusinessLogo];
        }

        else
        {
          v34 = [(PHSingleCallParticipantLabelView *)self businessLogoHeightConstraint];
          [v34 setActive:0];

          v35 = [(PHSingleCallParticipantLabelView *)self businessLogoWidthConstraint];
          [v35 setActive:0];

          [(UIImageView *)self->_businessLogoView removeFromSuperview];
          v36 = self->_businessLogoView;
          self->_businessLogoView = 0;
        }
      }

      v12 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
      -[PHSingleCallParticipantLabelView updateLabelTextAlignmentForCallDisplayStyle:](self, "updateLabelTextAlignmentForCallDisplayStyle:", [v12 callDisplayStyle]);
      goto LABEL_20;
    }
  }

  v8 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (v37 && !v8)
  {
    v9 = [[_TtC13InCallService13LogoImageView alloc] initWithImage:v37 style:!v4];
    [(PHSingleCallParticipantLabelView *)self setAvatarView:v9];

    v10 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [v10 setTranslatesAutoresizingMaskIntoConstraints:0];

    v11 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [(PHSingleCallParticipantLabelView *)self addSubview:v11];

    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
LABEL_6:
    v12 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    -[PHSingleCallParticipantLabelView updateLabelAlignmentForCallDisplayStyle:](self, "updateLabelAlignmentForCallDisplayStyle:", [v12 callDisplayStyle]);
    goto LABEL_20;
  }

  v13 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (!v13)
  {
    goto LABEL_21;
  }

  v14 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (!v37)
  {
    [v14 removeFromSuperview];

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

  v12 = [(PHSingleCallParticipantLabelView *)self avatarView];
  [v12 setImage:v37];
LABEL_20:

LABEL_21:
}

- (void)updateBusinessLogoSize
{
  v3 = [(PHSingleCallParticipantLabelView *)self businessLogoView];

  if (v3)
  {
    [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
    v5 = v4;
    v6 = [(PHSingleCallParticipantLabelView *)self businessLogoHeightConstraint];
    [v6 setConstant:v5];

    [(PHSingleCallParticipantLabelView *)self businessLogoEdge];
    v8 = v7;
    v9 = [(PHSingleCallParticipantLabelView *)self businessLogoWidthConstraint];
    [v9 setConstant:v8];
  }
}

- (double)businessLogoEdge
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  result = 22.0;
  if (v3 == 3)
  {
    result = 26.0;
  }

  if (!v3)
  {
    return 16.0;
  }

  return result;
}

- (double)businessLogoMarginH
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  result = 8.0;
  if (!v3)
  {
    return 6.0;
  }

  return result;
}

- (double)businessLogoCornerRadius
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle];

  result = 4.0;
  if (v3 == 3)
  {
    result = 6.0;
  }

  if (!v3)
  {
    return 3.0;
  }

  return result;
}

- (void)setBannerButtonsState:(unint64_t)a3
{
  v4 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [v4 setState:a3];
}

- (void)setBannerAudioRouteButtonSelected:(BOOL)a3
{
  v3 = a3;
  v4 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [v4 setAudioRouteButtonSelected:v3];
}

- (void)setTrailingSideLayoutGuide:(id)a3
{
  objc_storeWeak(&self->_trailingSideLayoutGuide, a3);
  v4 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](self, "updateLayoutForCallDisplayStyle:", [v4 callDisplayStyle]);
}

- (void)setCustomAvatar:(id)a3
{
  v11 = a3;
  v4 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (v4)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [v5 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
  }

  if (v11)
  {
    v6 = [[UIImageView alloc] initWithImage:v11];
    [(PHSingleCallParticipantLabelView *)self setAvatarView:v6];

    v7 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [v7 setTranslatesAutoresizingMaskIntoConstraints:0];

    v8 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [(PHSingleCallParticipantLabelView *)self addSubview:v8];

    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
  }

  else
  {
    v9 = [(PHSingleCallParticipantLabelView *)self avatarView];
    [v9 removeFromSuperview];

    [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    [(PHSingleCallParticipantLabelView *)self updateLayoutGuide];
  }

  v10 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  -[PHSingleCallParticipantLabelView updateLabelAlignmentForCallDisplayStyle:](self, "updateLabelAlignmentForCallDisplayStyle:", [v10 callDisplayStyle]);
}

- (void)setPosterNameViewModel:(id)a3
{
  v7 = a3;
  v4 = objc_storeWeak(&self->_posterNameViewModel, v7);
  v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  v6 = [v5 text];
  [v7 updateStatus:v6];
}

- (void)setPosterBadgeView:(id)a3
{
  objc_storeWeak(&self->_posterBadgeView, a3);

  [(PHSingleCallParticipantLabelView *)self updatePosterBadgeView];
}

- (void)statusLabelTapped:(id)a3
{
  v4 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
  if (v4)
  {
    v5 = v4;
    v6 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
    v7 = [v6 count];

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
  v3 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
  if (v3)
  {
    v4 = v3;
    v5 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
    v6 = [v5 count];

    if (v6 >= 2)
    {
      [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:[(PHSingleCallParticipantLabelView *)self currentStatusLabelIndex]+ 1];
      v7 = [(PHSingleCallParticipantLabelView *)self currentStatusLabelIndex];
      v8 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
      v9 = [v8 count];

      if (v7 >= v9)
      {
        [(PHSingleCallParticipantLabelView *)self setCurrentStatusLabelIndex:0];
      }

      v11 = [(PHSingleCallParticipantLabelView *)self statusLabelsArray];
      v10 = [v11 objectAtIndex:{-[PHSingleCallParticipantLabelView currentStatusLabelIndex](self, "currentStatusLabelIndex")}];
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

- (void)fadeStatusLabelToAttributedOrPlainString:(id)a3
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
  v5 = a3;
  v3 = v5;
  [UIView animateWithDuration:v6 animations:v4 completion:0.200000003];
}

- (void)updateLayoutForCallDisplayStyle:(int64_t)a3
{
  v5 = sub_100004F84();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager callDisplayStyle];
    v10 = 134217984;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Updating single-participant label for presentation mode %ld", &v10, 0xCu);
  }

  [(PHSingleCallParticipantLabelView *)self updateParticipantMarqueeLabelNumberOfLines];
  [(PHSingleCallParticipantLabelView *)self updateLabelsOrderAndLayout];
  [(PHSingleCallParticipantLabelView *)self updateBannerButtonsViewForCallDisplayStyle:a3];
  [(PHSingleCallParticipantLabelView *)self updateAvatarViewConstraints];
  [(PHSingleCallParticipantLabelView *)self updateLabelAlignmentForCallDisplayStyle:a3];
  [(PHSingleCallParticipantLabelView *)self updateLabelScales];
  [(PHSingleCallParticipantLabelView *)self updateLabelFonts];
  v7 = [(PHAbstractCallParticipantLabelView *)self delegate];
  if (v7)
  {
    v5 = [(PHAbstractCallParticipantLabelView *)self delegate];
    v8 = [v5 shouldShowParticipantLabel];
  }

  else
  {
    v8 = 1.0;
  }

  v9 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v9 setAlpha:v8];

  if (v7)
  {
  }
}

- (void)deactivateLayoutGuideConstraints
{
  v3 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMinLeadingConstraint];
  [v3 setActive:0];

  v4 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMaxLeadingConstraint];
  [v4 setActive:0];

  v5 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTrailingConstraint];
  [v5 setActive:0];

  v6 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterXConstraint];
  [v6 setActive:0];

  v7 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterYConstraint];
  [v7 setActive:0];

  v8 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTopConstraint];
  [v8 setActive:0];

  v9 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleBottomConstraint];
  [v9 setActive:0];
}

- (void)updateLayoutGuide
{
  [(PHSingleCallParticipantLabelView *)self deactivateLayoutGuideConstraints];
  v3 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  v4 = [v3 centerYAnchor];
  v5 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleCenterYConstraint:v6];

  v7 = [(PHSingleCallParticipantLabelView *)self labelsOrder];
  v8 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  v9 = [v8 topAnchor];
  if (v7 == 1)
  {
    v10 = [(PHSingleCallParticipantLabelView *)self stackView];
    v11 = [v10 topAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleTopConstraint:v12];

    v13 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (!v13 || (-[PHSingleCallParticipantLabelView secondaryInfoLabel](self, "secondaryInfoLabel"), v9 = objc_claimAutoreleasedReturnValue(), [v9 text], v11 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v11, "length")))
    {
      v17 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      goto LABEL_10;
    }
  }

  else
  {
    v14 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v11 = [v14 topAnchor];
    v15 = [v9 constraintEqualToAnchor:v11];
    [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleTopConstraint:v15];

    v13 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (!v13 || (-[PHSingleCallParticipantLabelView secondaryInfoLabel](self, "secondaryInfoLabel"), v9 = objc_claimAutoreleasedReturnValue(), [v9 text], v11 = objc_claimAutoreleasedReturnValue(), !objc_msgSend(v11, "length")))
    {
      v17 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
LABEL_10:
      v16 = v17;
      if (!v13)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }
  }

  v16 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
LABEL_11:

LABEL_12:
  v18 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  v19 = [v18 bottomAnchor];
  v20 = [v16 bottomAnchor];
  v21 = [v19 constraintEqualToAnchor:v20];
  [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleBottomConstraint:v21];

  v22 = [(PHSingleCallParticipantLabelView *)self ambientLayout]== 0;
  v23 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterYConstraint];
  [v23 setActive:v22];

  v24 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTopConstraint];
  [v24 setActive:1];

  v25 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleBottomConstraint];
  [v25 setActive:1];

  v26 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v27 = [v26 callDisplayStyle];

  if ((v27 - 1) <= 3)
  {
    v28 = +[UIDevice currentDevice];
    v29 = [v28 userInterfaceIdiom];

    v30 = v29 & 0xFFFFFFFFFFFFFFFBLL;
    v31 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    v32 = [v31 leadingAnchor];
    v33 = [(PHSingleCallParticipantLabelView *)self leadingAnchor];
    if (v30 == 1)
    {
      v34 = [v32 constraintGreaterThanOrEqualToAnchor:v33];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleMinLeadingConstraint:v34];

      v35 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      v36 = [v35 leadingAnchor];
      v37 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      v38 = [v36 constraintLessThanOrEqualToAnchor:v37 constant:-130.0];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleMaxLeadingConstraint:v38];

      v39 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      v40 = [v39 centerXAnchor];
      v41 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      v42 = [v40 constraintEqualToAnchor:v41];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleCenterXConstraint:v42];

      v43 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      [v43 intrinsicContentSize];
      v45 = v44;
      v46 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v46 intrinsicContentSize];
      if (v45 > v47)
      {
        [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      }

      else
      {
        [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      }
      v31 = ;

      v49 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      v50 = [v49 trailingAnchor];
      v51 = [v31 trailingAnchor];
      v52 = [v50 constraintEqualToAnchor:v51];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleTrailingConstraint:v52];

      v53 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMaxLeadingConstraint];
      LODWORD(v54) = 1148846080;
      [v53 setPriority:v54];

      v55 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMaxLeadingConstraint];
      v56 = 1;
      [v55 setActive:1];

      v57 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleCenterXConstraint];
      [v57 setActive:1];

      if ([(ICSCallDisplayStyleManager *)self->_callDisplayStyleManager usesLargeFormatUI])
      {
        v56 = self->_subviewLayout == 1;
      }

      v32 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleTrailingConstraint];
      [v32 setActive:v56];
    }

    else
    {
      v48 = [v32 constraintEqualToAnchor:v33 constant:20.0];
      [(PHSingleCallParticipantLabelView *)self setParticipantAndStatusRectangleMinLeadingConstraint:v48];
    }

    v58 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangleMinLeadingConstraint];
    [v58 setActive:1];
  }
}

- (void)gameControllerDidChangeContext
{
  v4 = [(PHSingleCallParticipantLabelView *)self gameControllerContext];
  v3 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [v3 setGameControllerContext:v4];
}

- (id)gameControllerContext
{
  v2 = +[CNKGameControllerManager shared];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 gameControllerContext];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)updateBannerButtonsViewForCallDisplayStyle:(int64_t)a3
{
  if (!a3)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
    v6 = [v5 superview];

    if (!v6)
    {
      v22 = [(PHSingleCallParticipantLabelView *)self gameControllerContext];
      v7 = [[PHBannerButtonsView alloc] initWithState:[(PHSingleCallParticipantLabelView *)self initialStateForBannerButtonsView] gameControllerContext:v22];
      [(PHSingleCallParticipantLabelView *)self setBannerButtonsView:v7];

      v8 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      [v8 setDelegate:self];

      v9 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

      v10 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      [(PHSingleCallParticipantLabelView *)self addSubview:v10];

      v21 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      v20 = [v21 centerYAnchor];
      v11 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
      v12 = [v20 constraintEqualToAnchor:v11];
      v23[0] = v12;
      v13 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
      v14 = [v13 trailingAnchor];
      v15 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
      v16 = [v15 trailingAnchor];
      v17 = [v14 constraintEqualToAnchor:v16];
      v23[1] = v17;
      v18 = [NSArray arrayWithObjects:v23 count:2];
      [(PHSingleCallParticipantLabelView *)self addConstraints:v18];
    }
  }

  v19 = [(PHSingleCallParticipantLabelView *)self bannerButtonsView];
  [v19 setHidden:a3 != 0];
}

- (unint64_t)initialStateForBannerButtonsView
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 incomingVideoCall];

  v4 = +[TUCallCenter sharedInstance];
  v5 = v4;
  if (v3)
  {
    v6 = [v4 incomingVideoCall];
    v7 = [v6 isConversation];

    if (v7 && (+[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v8 = objc_claimAutoreleasedReturnValue(), +[TUCallCenter sharedInstance](TUCallCenter, "sharedInstance"), v9 = objc_claimAutoreleasedReturnValue(), [v9 incomingVideoCall], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "activeConversationForCall:", v10), v11 = objc_claimAutoreleasedReturnValue(), v10, v9, v8, v12 = objc_msgSend(v11, "resolvedAudioVideoMode"), v11, v12 == 1))
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
    v14 = [v4 incomingCall];
    v13 = v14 == 0;
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
    v4 = [(PHSingleCallParticipantLabelView *)self previousIsCallRinging];

    v5 = [(PHAbstractCallParticipantLabelView *)self delegate];
    v6 = [v5 isCallRinging];
    if (v4)
    {
      v7 = [(PHSingleCallParticipantLabelView *)self previousIsCallRinging];
      v8 = [v7 BOOLValue];

      if (v6 != v8)
      {
        v13 = _NSConcreteStackBlock;
        v14 = 3221225472;
        v15 = sub_10004C138;
        v16 = &unk_100356D38;
        v17 = v3;
        [UIView _animateUsingSpringWithDuration:4 delay:&v13 options:&stru_100356D58 mass:0.5 stiffness:0.0 damping:2.0 initialVelocity:300.0 animations:37.0 completion:0.0];
        v9 = [(PHAbstractCallParticipantLabelView *)self delegate:v13];
        v10 = [v9 isCallRinging];

        if ((v10 & 1) == 0)
        {
          [(PHSingleCallParticipantLabelView *)self hideFirstAndLastNameAnimated:1];
        }
      }
    }

    else
    {

      if (v6)
      {
        (v3[2])(v3);
        [(PHSingleCallParticipantLabelView *)self showFirstAndLastNameAnimated:0];
      }
    }

    v11 = [(PHAbstractCallParticipantLabelView *)self delegate];
    v12 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v11 isCallRinging]);
    [(PHSingleCallParticipantLabelView *)self setPreviousIsCallRinging:v12];
  }
}

- (void)updateLabelAlignmentForCallDisplayStyle:(int64_t)a3
{
  [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraints];
  [(PHSingleCallParticipantLabelView *)self updateParticipantMarqueeLabelHorizontalConstraint];
  [(PHSingleCallParticipantLabelView *)self updateSecondaryLabelHorizontalConstraint];
  [(PHSingleCallParticipantLabelView *)self updateLabelTrailingConstraints];

  [(PHSingleCallParticipantLabelView *)self updateLabelTextAlignmentForCallDisplayStyle:a3];
}

- (void)updateLabelScales
{
  v3 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  if ([v3 callDisplayStyle])
  {
    v4 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    v5 = [v4 callDisplayStyle];

    if (v5 != 1)
    {
      v6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v6 setAdjustsFontSizeToFitWidth:1];

      if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
      {
        v7 = 0.37;
      }

      else
      {
        v7 = 0.9;
      }

      v8 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v8 setMinimumScaleFactor:v7];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v8 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v8 setAdjustsFontSizeToFitWidth:0];
LABEL_9:
}

- (void)updateLabelFonts
{
  v3 = [(PHSingleCallParticipantLabelView *)self updatedParticipantMarqueeLabelFont];
  v4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v4 setFont:v3];

  v5 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v6 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v5 callDisplayStyle]);
  v7 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v7 setFont:v6];

  v10 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v8 = +[PHUIConfiguration singleCallStatusLabelFontForCallDisplayStyle:](PHUIConfiguration, "singleCallStatusLabelFontForCallDisplayStyle:", [v10 callDisplayStyle]);
  v9 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  [v9 setFont:v8];
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
    v5 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [v5 setNumberOfLines:1];
  }

  else
  {
    v5 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    if ([v5 callDisplayStyle] == 3)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v4 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    [v4 setNumberOfLines:v3];
  }
}

- (BOOL)inBrandedCall
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostCall];

  LOBYTE(v2) = [v3 isBranded];
  return v2;
}

- (BOOL)inCallDirectoryCall
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 frontmostCall];

  v4 = [v3 callDirectoryName];
  LOBYTE(v2) = v4 != 0;

  return v2;
}

- (void)updateLabelTextAlignmentForCallDisplayStyle:(int64_t)a3
{
  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    goto LABEL_2;
  }

  if (a3)
  {
    v6 = [(PHSingleCallParticipantLabelView *)self avatarView];
    if (v6)
    {
    }

    else
    {
      v7 = [(PHSingleCallParticipantLabelView *)self iconView];

      if (!v7)
      {
LABEL_2:
        v5 = 1;
        goto LABEL_8;
      }
    }
  }

  v5 = 4;
LABEL_8:
  v8 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  [v8 setTextAlignment:v5];

  v9 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
  [v9 setTextAlignment:v5];

  v10 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
  [v10 setTextAlignment:v5];
}

- (void)updateStackViewHorizontalConstraints
{
  v3 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [v3 setActive:0];

  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient]&& [(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self stackView];
    v5 = [v4 centerXAnchor];
    v6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v7 = [v6 centerXAnchor];
LABEL_8:
    v9 = v7;
    v10 = [v5 constraintEqualToAnchor:v7];
    [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v10];

    goto LABEL_9;
  }

  v8 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (v8 || [(PHSingleCallParticipantLabelView *)self isDisplayStyleBanner])
  {

LABEL_7:
    v4 = [(PHSingleCallParticipantLabelView *)self stackView];
    v5 = [v4 leadingAnchor];
    v6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v7 = [v6 leadingAnchor];
    goto LABEL_8;
  }

  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient])
  {
    goto LABEL_7;
  }

  v4 = [(PHSingleCallParticipantLabelView *)self stackView];
  v5 = [v4 centerXAnchor];
  v6 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
  v9 = [v5 constraintEqualToAnchor:v6];
  [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v9];
LABEL_9:

  v11 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [v11 setActive:1];

  v12 = [(PHSingleCallParticipantLabelView *)self iconView];

  if (v12)
  {
    [(PHSingleCallParticipantLabelView *)self updateIconSize];
    [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithVoIPAppIcon];
  }

  v13 = [(PHSingleCallParticipantLabelView *)self businessLogoView];

  if (v13)
  {
    [(PHSingleCallParticipantLabelView *)self updateBusinessLogoSize];

    [(PHSingleCallParticipantLabelView *)self updateStackViewHorizontalConstraintsWithBusinessLogo];
  }
}

- (void)updateStackViewHorizontalConstraintsWithVoIPAppIcon
{
  v3 = [(PHSingleCallParticipantLabelView *)self appIconViewLeadingAnchor];
  [v3 setActive:0];

  v4 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];

  if (v4)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self removeLayoutGuide:v5];
  }

  v6 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuideHorizontalAnchor];
  [v6 setActive:0];

  v7 = [(UIImageView *)self->_iconView image];
  if (v7)
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

  v12 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (v12)
  {
  }

  else
  {
    v18 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    v19 = [v18 callDisplayStyle];

    if (v19)
    {
      v20 = objc_alloc_init(UILayoutGuide);
      [(PHSingleCallParticipantLabelView *)self setAppIconLayoutGuide:v20];

      v21 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      [(PHSingleCallParticipantLabelView *)self addLayoutGuide:v21];

      v22 = [(UIImageView *)self->_iconView leadingAnchor];
      v23 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      v24 = [v23 leadingAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      [(PHSingleCallParticipantLabelView *)self setAppIconViewLeadingAnchor:v25];

      v26 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [v26 setActive:0];

      v27 = [(PHSingleCallParticipantLabelView *)self stackView];
      v28 = [v27 leadingAnchor];
      v29 = [(UIImageView *)self->_iconView leadingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:v11];
      [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v30];

      v31 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [v31 setActive:1];

      LODWORD(v28) = [(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient];
      v32 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      v33 = v32;
      if (v28)
      {
        v34 = [v32 leadingAnchor];
        [(PHSingleCallParticipantLabelView *)self leadingAnchor];
      }

      else
      {
        v34 = [v32 centerXAnchor];
        [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      }
      v35 = ;
      v36 = [v34 constraintEqualToAnchor:v35];
      [(PHSingleCallParticipantLabelView *)self setAppIconLayoutGuideHorizontalAnchor:v36];

      v37 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuideHorizontalAnchor];
      [v37 setActive:1];

      v17 = [(PHSingleCallParticipantLabelView *)self appIconLayoutGuide];
      v38 = [v17 trailingAnchor];
      v39 = [(PHSingleCallParticipantLabelView *)self stackView];
      v40 = [v39 trailingAnchor];
      v41 = [v38 constraintEqualToAnchor:v40];
      [v41 setActive:1];

      goto LABEL_14;
    }
  }

  v13 = [(UIImageView *)self->_iconView leadingAnchor];
  v14 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [(PHSingleCallParticipantLabelView *)self setAppIconViewLeadingAnchor:v16];

  v17 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [v17 setConstant:v11];
LABEL_14:

  v42 = [(PHSingleCallParticipantLabelView *)self appIconViewLeadingAnchor];
  [v42 setActive:1];
}

- (void)updateStackViewHorizontalConstraintsWithBusinessLogo
{
  v3 = [(PHSingleCallParticipantLabelView *)self businessLogoViewLeadingAnchor];
  [v3 setActive:0];

  v4 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];

  if (v4)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
    [(PHSingleCallParticipantLabelView *)self removeLayoutGuide:v5];
  }

  v6 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuideHorizontalAnchor];
  [v6 setActive:0];

  v7 = [(UIImageView *)self->_businessLogoView image];
  if (v7)
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

  v12 = [(PHSingleCallParticipantLabelView *)self avatarView];
  if (v12)
  {
  }

  else
  {
    v18 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    v19 = [v18 callDisplayStyle];

    if (v19)
    {
      v20 = objc_alloc_init(UILayoutGuide);
      [(PHSingleCallParticipantLabelView *)self setBusinessLogoLayoutGuide:v20];

      v21 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      [(PHSingleCallParticipantLabelView *)self addLayoutGuide:v21];

      v22 = [(UIImageView *)self->_businessLogoView leadingAnchor];
      v23 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      v24 = [v23 leadingAnchor];
      v25 = [v22 constraintEqualToAnchor:v24];
      [(PHSingleCallParticipantLabelView *)self setBusinessLogoViewLeadingAnchor:v25];

      v26 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [v26 setActive:0];

      v27 = [(PHSingleCallParticipantLabelView *)self stackView];
      v28 = [v27 leadingAnchor];
      v29 = [(UIImageView *)self->_businessLogoView leadingAnchor];
      v30 = [v28 constraintEqualToAnchor:v29 constant:v11];
      [(PHSingleCallParticipantLabelView *)self setStackViewHorizontalConstraint:v30];

      v31 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
      [v31 setActive:1];

      LODWORD(v28) = [(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient];
      v32 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      v33 = v32;
      if (v28)
      {
        v34 = [v32 leadingAnchor];
        [(PHSingleCallParticipantLabelView *)self leadingAnchor];
      }

      else
      {
        v34 = [v32 centerXAnchor];
        [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      }
      v35 = ;
      v36 = [v34 constraintEqualToAnchor:v35];
      [(PHSingleCallParticipantLabelView *)self setBusinessLogoLayoutGuideHorizontalAnchor:v36];

      v37 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuideHorizontalAnchor];
      [v37 setActive:1];

      v17 = [(PHSingleCallParticipantLabelView *)self businessLogoLayoutGuide];
      v38 = [v17 trailingAnchor];
      v39 = [(PHSingleCallParticipantLabelView *)self stackView];
      v40 = [v39 trailingAnchor];
      v41 = [v38 constraintEqualToAnchor:v40];
      [v41 setActive:1];

      goto LABEL_14;
    }
  }

  v13 = [(UIImageView *)self->_businessLogoView leadingAnchor];
  v14 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  v15 = [v14 leadingAnchor];
  v16 = [v13 constraintEqualToAnchor:v15];
  [(PHSingleCallParticipantLabelView *)self setBusinessLogoViewLeadingAnchor:v16];

  v17 = [(PHSingleCallParticipantLabelView *)self stackViewHorizontalConstraint];
  [v17 setConstant:v11];
LABEL_14:

  v42 = [(PHSingleCallParticipantLabelView *)self businessLogoViewLeadingAnchor];
  [v42 setActive:1];
}

- (void)updateParticipantMarqueeLabelNumberOfLines
{
  if ([(PHSingleCallParticipantLabelView *)self isDisplayStyleBanner])
  {
    v3 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v3 setNumberOfLines:2];

    v4 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v4 setMarqueeEnabled:0];

    v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v6 = v5;
    v7 = 0;
  }

  else
  {
    v8 = [(PHSingleCallParticipantLabelView *)self isDisplayStyleAmbient];
    v9 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    [v9 setNumberOfLines:1];

    v10 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v11 = v10;
    if (v8)
    {
      [v10 setMarqueeEnabled:0];

      v12 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v12 setMarqueeRunning:0];

      v13 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v13 setLineBreakMode:4];

      v6 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      [v6 _setExtremeSizingEnabled:1];
      goto LABEL_7;
    }

    [v10 setMarqueeEnabled:1];

    v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v6 = v5;
    v7 = 1;
  }

  [v5 setMarqueeRunning:v7];
LABEL_7:

  v14 = sub_100004F84();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    if ([v15 marqueeEnabled])
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    v17 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v18 = 138412546;
    v19 = v16;
    v20 = 2048;
    v21 = [v17 numberOfLines];
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Marquee enabled = %@, number of lines for particpant name = %ld", &v18, 0x16u);
  }
}

- (void)updateParticipantMarqueeLabelHorizontalConstraint
{
  v3 = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelHorizontalConstraint];
  [v3 setActive:0];

  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (v4)
    {
      v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      v6 = [v5 centerXAnchor];
      v7 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
      v8 = [v7 centerXAnchor];
LABEL_14:
      v11 = v8;
      v12 = [v6 constraintEqualToAnchor:v8];
LABEL_15:
      v15 = v12;
      [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelHorizontalConstraint:v12];

      goto LABEL_16;
    }
  }

  v9 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (v9)
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

    v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v6 = [v5 leadingAnchor];
    v7 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v11 = [v7 trailingAnchor];
    v12 = [v6 constraintEqualToAnchor:v11 constant:v10];
    goto LABEL_15;
  }

  v13 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v14 = [v13 callDisplayStyle];

  if (v14 > 4)
  {
    goto LABEL_17;
  }

  if (((1 << v14) & 0x16) == 0)
  {
    v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v6 = [v5 leadingAnchor];
    v7 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
    v8 = [v7 leadingAnchor];
    goto LABEL_14;
  }

  v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  v6 = [v5 centerXAnchor];
  v7 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
  v11 = [v6 constraintEqualToAnchor:v7];
  [(PHSingleCallParticipantLabelView *)self setParticipantMarqueeLabelHorizontalConstraint:v11];
LABEL_16:

LABEL_17:
  v16 = [(PHSingleCallParticipantLabelView *)self participantMarqueeLabelHorizontalConstraint];
  [v16 setActive:1];
}

- (void)updateSecondaryLabelHorizontalConstraint
{
  v3 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelHorizontalConstraint];
  [v3 setActive:0];

  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (v4)
    {
      v5 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      v6 = [v5 centerXAnchor];
      v7 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
      v8 = [v7 centerXAnchor];
LABEL_7:
      v11 = v8;
      v12 = [v6 constraintEqualToAnchor:v8];
      [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelHorizontalConstraint:v12];

LABEL_8:
      goto LABEL_9;
    }
  }

  v9 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (v9)
  {
    v5 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    v6 = [v5 leadingAnchor];
    v10 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
LABEL_6:
    v7 = v10;
    v8 = [v10 leadingAnchor];
    goto LABEL_7;
  }

  v13 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v14 = [v13 callDisplayStyle];

  if (v14 <= 4)
  {
    if (((1 << v14) & 0x16) != 0)
    {
      v5 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      v6 = [v5 centerXAnchor];
      v7 = [(PHSingleCallParticipantLabelView *)self centerXAnchor];
      v11 = [v6 constraintEqualToAnchor:v7];
      [(PHSingleCallParticipantLabelView *)self setSecondaryInfoLabelHorizontalConstraint:v11];
      goto LABEL_8;
    }

    v5 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    v6 = [v5 leadingAnchor];
    v10 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
    goto LABEL_6;
  }

LABEL_9:
  v15 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabelHorizontalConstraint];
  [v15 setActive:1];
}

- (void)updateAvatarViewConstraints
{
  v3 = [(PHSingleCallParticipantLabelView *)self avatarView];

  if (v3)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self avatarViewConstraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    v5 = [(PHSingleCallParticipantLabelView *)self updatedAvatarViewConstraints];
    [(PHSingleCallParticipantLabelView *)self setAvatarViewConstraints:v5];

    v6 = [(PHSingleCallParticipantLabelView *)self avatarViewConstraints];
    [NSLayoutConstraint activateConstraints:v6];
  }
}

- (id)updatedAvatarViewConstraints
{
  v4 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v5 = [v4 callDisplayStyle];

  if (v5 <= 1)
  {
    if (!v5)
    {
      v103 = [(PHSingleCallParticipantLabelView *)self avatarView];
      v101 = [v103 leadingAnchor];
      v86 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
      v95 = [v86 leadingAnchor];
      v44 = [v101 constraintEqualToAnchor:v95];
      v109[0] = v44;
      v90 = [(PHSingleCallParticipantLabelView *)self avatarView];
      v82 = [v90 centerYAnchor];
      v45 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
      v46 = [v82 constraintEqualToAnchor:v45];
      v109[1] = v46;
      v47 = [(PHSingleCallParticipantLabelView *)self avatarView];
      v48 = [v47 widthAnchor];
      v49 = [v48 constraintEqualToConstant:48.0];
      v109[2] = v49;
      v50 = [(PHSingleCallParticipantLabelView *)self avatarView];
      v51 = [v50 heightAnchor];
      v52 = [v51 constraintEqualToConstant:48.0];
      v109[3] = v52;
      v2 = [NSArray arrayWithObjects:v109 count:4];

      v17 = v44;
      v18 = v95;

      v19 = v101;
      v8 = v86;

      v43 = v90;
      goto LABEL_22;
    }

    if (v5 != 1)
    {
      goto LABEL_24;
    }

    v103 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v97 = [v103 leadingAnchor];
    v8 = [(PHSingleCallParticipantLabelView *)self layoutMarginsGuide];
    v92 = [v8 leadingAnchor];
    [(PHSingleCallParticipantLabelView *)self horizontalPaddingForMiniWindow];
    v87 = [v97 constraintEqualToAnchor:v92 constant:?];
    v108[0] = v87;
    v84 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v80 = [v84 centerYAnchor];
    v9 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
    v10 = [v80 constraintEqualToAnchor:v9];
    v108[1] = v10;
    v11 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v12 = [v11 widthAnchor];
    v13 = [v12 constraintEqualToConstant:40.0];
    v108[2] = v13;
    v14 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v15 = [v14 heightAnchor];
    v16 = [v15 constraintEqualToConstant:40.0];
    v108[3] = v16;
    v2 = [NSArray arrayWithObjects:v108 count:4];

    v17 = v87;
    v18 = v92;

    v19 = v97;
    v20 = v80;
LABEL_21:

    v43 = v84;
    goto LABEL_22;
  }

  if (v5 == 2)
  {
LABEL_5:
    if ([(PHSingleCallParticipantLabelView *)self showPostersEnabledForiPad])
    {
      if (!self->_subviewLayout)
      {
        v6 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
        v7 = [v6 callDisplayStyle];

        if (v7 == 2)
        {
          v2 = &__NSArray0__struct;
          goto LABEL_24;
        }
      }
    }

    v98 = [NSMutableArray alloc];
    v104 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v88 = [v104 leadingAnchor];
    v93 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    v21 = [v93 leadingAnchor];
    v22 = [v88 constraintEqualToAnchor:v21];
    v107[0] = v22;
    v23 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v24 = [v23 widthAnchor];
    [(PHSingleCallParticipantLabelView *)self avatarDiameterFullScreen];
    v25 = [v24 constraintEqualToConstant:?];
    v107[1] = v25;
    v26 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v27 = [v26 heightAnchor];
    [(PHSingleCallParticipantLabelView *)self avatarDiameterFullScreen];
    v28 = [v27 constraintEqualToConstant:?];
    v107[2] = v28;
    v29 = [NSArray arrayWithObjects:v107 count:3];
    v99 = [v98 initWithArray:v29];

    LODWORD(v27) = [(PHSingleCallParticipantLabelView *)self inBrandedCall];
    v103 = [(PHSingleCallParticipantLabelView *)self avatarView];
    if (v27)
    {
      v19 = [v103 topAnchor];
      v8 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      [v8 topAnchor];
    }

    else
    {
      v19 = [v103 centerYAnchor];
      v8 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
      [v8 centerYAnchor];
    }
    v18 = ;
    v17 = [v19 constraintEqualToAnchor:v18];
    v2 = v99;
    [v99 addObject:v17];
    goto LABEL_23;
  }

  if (v5 != 3)
  {
    if (v5 != 4)
    {
      goto LABEL_24;
    }

    goto LABEL_5;
  }

  if ([(PHSingleCallParticipantLabelView *)self ambientLayout]!= 1 || ([(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide], v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    v103 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v102 = [v103 leadingAnchor];
    v8 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    v96 = [v8 leadingAnchor];
    v91 = [v102 constraintEqualToAnchor:v96];
    v105[0] = v91;
    v84 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v79 = [v84 centerYAnchor];
    v83 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
    v53 = [v83 centerYAnchor];
    v54 = [v79 constraintEqualToAnchor:v53];
    v105[1] = v54;
    v55 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v56 = [v55 widthAnchor];
    v57 = [v56 constraintEqualToConstant:80.0];
    v105[2] = v57;
    v58 = [(PHSingleCallParticipantLabelView *)self avatarView];
    v59 = [v58 heightAnchor];
    v60 = [v59 constraintEqualToConstant:80.0];
    v105[3] = v60;
    v2 = [NSArray arrayWithObjects:v105 count:4];

    v17 = v91;
    v18 = v96;

    v19 = v102;
    v20 = v79;
    goto LABEL_21;
  }

  v31 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v32 = [v31 heightAnchor];
  v103 = [v32 constraintEqualToConstant:1.79769313e308];

  LODWORD(v33) = 1144733696;
  [v103 setPriority:v33];
  v100 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v85 = [v100 leadingAnchor];
  v94 = [(PHSingleCallParticipantLabelView *)self participantAndStatusRectangle];
  v89 = [v94 leadingAnchor];
  v81 = [v85 constraintEqualToAnchor:v89];
  v106[0] = v81;
  v78 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v77 = [v78 leadingAnchor];
  v76 = [(PHSingleCallParticipantLabelView *)self leadingAnchor];
  v75 = [v77 constraintEqualToAnchor:v76];
  v106[1] = v75;
  v74 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v72 = [v74 trailingAnchor];
  v73 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
  v71 = [v73 leadingAnchor];
  v70 = [v72 constraintLessThanOrEqualToAnchor:v71 constant:-32.0];
  v106[2] = v70;
  v69 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v68 = [v69 centerYAnchor];
  v67 = [(PHSingleCallParticipantLabelView *)self centerYAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v106[3] = v66;
  v65 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v63 = [v65 widthAnchor];
  v64 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v62 = [v64 heightAnchor];
  v34 = [v63 constraintEqualToAnchor:v62];
  v106[4] = v34;
  v35 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v36 = [v35 topAnchor];
  v37 = [(PHSingleCallParticipantLabelView *)self topAnchor];
  v38 = [v36 constraintGreaterThanOrEqualToAnchor:v37];
  v106[5] = v38;
  v39 = [(PHSingleCallParticipantLabelView *)self avatarView];
  v40 = [v39 bottomAnchor];
  v41 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
  v42 = [v40 constraintLessThanOrEqualToAnchor:v41];
  v106[6] = v42;
  v106[7] = v103;
  v2 = [NSArray arrayWithObjects:v106 count:8];

  v8 = v85;
  v17 = v89;

  v18 = v94;
  v19 = v100;

  v43 = v81;
LABEL_22:

LABEL_23:
LABEL_24:

  return v2;
}

- (double)avatarDiameterFullScreen
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 usesLargeFormatUI];

  if (!v3)
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

- (void)updateSubviewWithLayout:(int64_t)a3 contact:(id)a4
{
  v14 = a4;
  v6 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v7 = [v6 usesLargeFormatUI];

  if (v7)
  {
    self->_subviewLayout = a3;
    if (a3 == 1)
    {
      v9 = [(PHSingleCallParticipantLabelView *)self avatarView];

      if (!v9)
      {
        v10 = [[_TtC13InCallService19BlurrableAvatarView alloc] initWithContact:v14 wantsBlur:[(PHSingleCallParticipantLabelView *)self shouldBlurAvatarViewForCurrentContactNickname:v14] isCommunicationSafetyEnabled:+[_TtC13InCallService23SensitivityFeatureFlags isCommunicationSafetyEnabled]];
        [(PHSingleCallParticipantLabelView *)self setAvatarView:v10];

        v11 = [(PHSingleCallParticipantLabelView *)self avatarView];
        [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
      }

      v12 = [(PHSingleCallParticipantLabelView *)self avatarView];
      [(PHSingleCallParticipantLabelView *)self addSubview:v12];
    }

    else if (!a3)
    {
      v8 = [(PHSingleCallParticipantLabelView *)self avatarView];
      [v8 removeFromSuperview];

      [(PHSingleCallParticipantLabelView *)self setAvatarView:0];
    }

    v13 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
    -[PHSingleCallParticipantLabelView updateLayoutForCallDisplayStyle:](self, "updateLayoutForCallDisplayStyle:", [v13 callDisplayStyle]);

    [(PHSingleCallParticipantLabelView *)self updateLabelConstraints];
    [(PHSingleCallParticipantLabelView *)self updateHeightConstraints];
    [(PHSingleCallParticipantLabelView *)self setNeedsUpdateConstraints];
    [(PHSingleCallParticipantLabelView *)self setNeedsLayout];
    [(PHSingleCallParticipantLabelView *)self layoutIfNeeded];
  }
}

- (void)updateLabelConstraints
{
  v3 = [(PHSingleCallParticipantLabelView *)self labelConstraints];

  if (v3)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self labelConstraints];
    [(PHSingleCallParticipantLabelView *)self removeConstraints:v4];
  }

  v28 = objc_alloc_init(NSMutableArray);
  if ([(PHSingleCallParticipantLabelView *)self labelsOrder]== 1)
  {
    v5 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v6 = [v5 topAnchor];
    v7 = [(UIStackView *)self->_stackView bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v8 = [v6 constraintEqualToAnchor:v7 constant:?];
    [v28 addObject:v8];

    v9 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v10 = [v9 topAnchor];
    v11 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v12 = [v11 bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v13 = [v10 constraintEqualToAnchor:v12 constant:?];
    [v28 addObject:v13];

    v14 = [(UILabel *)self->_secondaryInfoLabel topAnchor];
    [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  }

  else
  {
    v15 = [(PHAbstractCallParticipantLabelView *)self statusLabel];
    v16 = [v15 topAnchor];
    v17 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v18 = [v17 bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v19 = [v16 constraintEqualToAnchor:v18 constant:?];
    [v28 addObject:v19];

    v20 = [(UIStackView *)self->_stackView topAnchor];
    v21 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
    v22 = [v21 bottomAnchor];
    [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
    v23 = [v20 constraintEqualToAnchor:v22 constant:?];
    [v28 addObject:v23];

    v14 = [(UILabel *)self->_secondaryInfoLabel topAnchor];
    [(PHAbstractCallParticipantLabelView *)self statusLabel];
  }
  v24 = ;
  v25 = [v24 bottomAnchor];
  [(PHSingleCallParticipantLabelView *)self labelsVerticalOffset];
  v26 = [v14 constraintEqualToAnchor:v25 constant:?];
  [v28 addObject:v26];

  [(PHSingleCallParticipantLabelView *)self setLabelConstraints:v28];
  v27 = [(PHSingleCallParticipantLabelView *)self labelConstraints];
  [NSLayoutConstraint activateConstraints:v27];
}

- (void)updateHeightConstraints
{
  v3 = [(PHSingleCallParticipantLabelView *)self heightConstraints];

  if (v3)
  {
    v4 = [(PHSingleCallParticipantLabelView *)self heightConstraints];
    [(PHSingleCallParticipantLabelView *)self removeConstraints:v4];
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
    v6 = [(PHSingleCallParticipantLabelView *)self heightAnchor];
    v7 = [v6 constraintEqualToConstant:100.0];
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
    v11 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
    if (v11 && (v12 = v11, -[PHSingleCallParticipantLabelView secondaryInfoLabel](self, "secondaryInfoLabel"), v13 = objc_claimAutoreleasedReturnValue(), [v13 text], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "length"), v14, v13, v12, v15))
    {
      v16 = [(PHSingleCallParticipantLabelView *)self labelsOrder];
      v17 = [(PHSingleCallParticipantLabelView *)self topAnchor];
      if (v16)
      {
        v18 = [(PHSingleCallParticipantLabelView *)self stackView];
        v19 = [v18 topAnchor];
        [v17 constraintEqualToAnchor:v19 constant:-v5];
      }

      else
      {
        v18 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        v19 = [v18 topAnchor];
        [v17 constraintEqualToAnchor:v19];
      }
      v6 = ;

      v33 = [(PHSingleCallParticipantLabelView *)self ambientLayout];
      v34 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
      v35 = [(PHSingleCallParticipantLabelView *)self secondaryInfoLabel];
      v36 = [v35 bottomAnchor];
      if (v33 == 1)
      {
        [v34 constraintGreaterThanOrEqualToAnchor:v36];
      }

      else
      {
        [v34 constraintEqualToAnchor:v36];
      }
      v7 = ;

      v50 = v6;
      v51 = v7;
      v8 = &v50;
    }

    else
    {
      v20 = [(PHSingleCallParticipantLabelView *)self labelsOrder];
      v21 = [(PHSingleCallParticipantLabelView *)self topAnchor];
      if (v20)
      {
        v22 = [(PHSingleCallParticipantLabelView *)self stackView];
        v23 = [v22 topAnchor];
        v6 = [v21 constraintEqualToAnchor:v23 constant:-v5];

        v24 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
        [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      }

      else
      {
        v25 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
        v26 = [v25 topAnchor];
        v6 = [v21 constraintEqualToAnchor:v26];

        v24 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
        [(PHAbstractCallParticipantLabelView *)self statusLabel];
      }
      v27 = ;
      v28 = [v27 bottomAnchor];
      v7 = [v24 constraintEqualToAnchor:v28];

      if ([(PHSingleCallParticipantLabelView *)self ambientLayout]== 1)
      {
        v29 = [(PHSingleCallParticipantLabelView *)self bottomAnchor];
        v30 = [(PHSingleCallParticipantLabelView *)self stackView];
        v31 = [v30 bottomAnchor];
        v32 = [v29 constraintGreaterThanOrEqualToAnchor:v31];

        v7 = v32;
      }

      v48 = v6;
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
    v39 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];

    if (v39)
    {
      v40 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
      v41 = [v40 bottomAnchor];
      v42 = [(PHSingleCallParticipantLabelView *)self trailingSideLayoutGuide];
      v43 = [v42 bottomAnchor];
      v44 = [v41 constraintLessThanOrEqualToAnchor:v43];
      [v10 addObject:v44];

      v38 = 1132068864;
    }
  }

  v45 = [(PHAbstractCallParticipantLabelView *)self participantMarqueeLabel];
  LODWORD(v46) = v38;
  [v45 setContentCompressionResistancePriority:1 forAxis:v46];

  [(PHSingleCallParticipantLabelView *)self setHeightConstraints:v10];
  v47 = [(PHSingleCallParticipantLabelView *)self heightConstraints];
  [NSLayoutConstraint activateConstraints:v47];
}

- (void)callDisplayStyleDidChangeFromStyle:(int64_t)a3 toStyle:(int64_t)a4
{
  if (a3 <= 1)
  {
    [(PHSingleCallParticipantLabelView *)self updateLayoutForCallDisplayStyle:a4];

    [(PHSingleCallParticipantLabelView *)self updateGestureRecognizersEnabled];
  }
}

- (BOOL)isDisplayStyleBanner
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 0;

  return v3;
}

- (BOOL)isDisplayStyleAmbient
{
  v2 = [(PHSingleCallParticipantLabelView *)self callDisplayStyleManager];
  v3 = [v2 callDisplayStyle] == 3;

  return v3;
}

- (void)bannerButtonsView:(id)a3 didPerformActionType:(int64_t)a4
{
  v6 = [(PHAbstractCallParticipantLabelView *)self delegate];
  [v6 participantLabelView:self didPerformActionType:a4];
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

- (id)currentIMNicknameMatchingContact:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10022C48C();

  return v6;
}

@end