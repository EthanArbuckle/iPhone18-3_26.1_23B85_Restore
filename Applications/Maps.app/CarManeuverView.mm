@interface CarManeuverView
- ($3B4E6468B3EC00ED59A5207EEA3643F1)primaryMetrics;
- (BOOL)_isDisplayingStartManeuver;
- (BOOL)_shouldShowLaneGuidance;
- (BOOL)_usesLargeScreenLayout;
- (BOOL)shouldShowLaneGuidance;
- (CGSize)sizeForCompressionStage:(unint64_t)stage;
- (CarManeuverView)initWithGuidance:(id)guidance variant:(unint64_t)variant destination:(unint64_t)destination layoutType:(unint64_t)type sizeDataSource:(id)source;
- (CarManeuverViewAnalyticsDelegate)analyticsDelegate;
- (CarManeuverViewSizeDataSource)sizeDataSource;
- (CarManeuverViewStyle)style;
- (NSDictionary)sizeByCompressionStage;
- (id)_instructionHorizontalPrimaryConstraint;
- (id)_maneuverArtworkForDirection:(int)direction;
- (id)_maneuverBottomPrimaryConstraint;
- (id)_maneuverTopPrimaryConstraint;
- (id)_shieldImage;
- (id)_shieldViewPrimaryLeadingConstraint;
- (int)GEOManeuverTypeForGEOLaneDirection:(int)direction;
- (int)_preferredDirectionForLaneGuidance;
- (unint64_t)compressionStageForSize:(CGSize)size;
- (unint64_t)variant;
- (void)_setupConstraints;
- (void)_setupStyling;
- (void)_setupSubviews;
- (void)_updateConstraints;
- (void)_updateContents;
- (void)_updateLabels;
- (void)_updateManeuverView;
- (void)_updateShield;
- (void)_updateStyling;
- (void)_updateSubviews;
- (void)alignSecondarySignSubviewsToPrimaryManeuverView:(id)view;
- (void)didMoveToWindow;
- (void)hideLaneGuidance;
- (void)layoutSubviews;
- (void)navSignLabel:(id)label didSelectAlternate:(unint64_t)alternate;
- (void)resetCompressionSizes;
- (void)setBlurMode:(int64_t)mode;
- (void)setCompressionStage:(unint64_t)stage;
- (void)setLayoutType:(unint64_t)type;
- (void)setSecondarySignVisible:(BOOL)visible;
- (void)showLaneGuidance:(id)guidance;
- (void)showLaneGuidanceFromManeuver:(id)maneuver;
- (void)traitCollectionDidChange:(id)change;
- (void)updateLaneGuidance:(id)guidance;
@end

@implementation CarManeuverView

- (CarManeuverViewStyle)style
{
  configuredStyle = [(CarManeuverView *)self configuredStyle];
  variant = [configuredStyle variant];

  if (variant == 2 || [(CarManeuverView *)self compressionStage]< 6)
  {
    configuredStyle2 = [(CarManeuverView *)self configuredStyle];
  }

  else
  {
    configuredStyle2 = [(CarManeuverView *)self lowGuidanceStyle];
  }

  return configuredStyle2;
}

- (void)_updateContents
{
  lanes = [(NavSignLaneGuidanceInfo *)self->_laneGuidance lanes];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:lanes];

  [(CarManeuverView *)self _updateManeuverView];
  [(CarManeuverView *)self _updateLabels];
  style = [(CarManeuverView *)self style];
  variant = [style variant];

  if (variant != 1)
  {

    [(CarManeuverView *)self _updateShield];
  }
}

- (void)_updateManeuverView
{
  if ([(NavSignLaneGuidanceInfo *)self->_laneGuidance isForMidStep])
  {
    guidance = [(CarManeuverView *)self _maneuverArtworkForDirection:[(CarManeuverView *)self _preferredDirectionForLaneGuidance]];
    [(GuidanceManeuverView *)self->_arrowView setManeuverArtwork:?];
  }

  else
  {
    guidance = [(CarManeuverView *)self guidance];
    maneuverArtwork = [guidance maneuverArtwork];
    [(GuidanceManeuverView *)self->_arrowView setManeuverArtwork:maneuverArtwork];
  }
}

- (void)_updateShield
{
  _shieldImage = [(CarManeuverView *)self _shieldImage];
  image = [(UIImageView *)self->_shieldView image];
  v4 = [MNComparison isValue:image equalTo:_shieldImage];

  if ((v4 & 1) == 0)
  {
    [(UIImageView *)self->_shieldView setImage:_shieldImage];
  }
}

- (id)_shieldImage
{
  guidance = [(CarManeuverView *)self guidance];
  signID = [guidance signID];

  if (![MNComparison isValue:signID equalTo:self->_lastRenderedShieldSignID])
  {
    objc_storeStrong(&self->_lastRenderedShieldSignID, signID);
    _screen = [(CarManeuverView *)self _screen];
    [_screen scale];
    v7 = v6;

    sizeDataSource = [(CarManeuverView *)self sizeDataSource];
    [sizeDataSource dynamicPointScaleValue];
    v10 = v9;

    destination = [(CarManeuverView *)self destination];
    v12 = destination - 1 < 2 || destination == 4;
    if (destination <= 4 && ((1 << destination) & 0x16) != 0)
    {
      traitCollection = [(CarManeuverView *)self traitCollection];
      v14 = [traitCollection userInterfaceStyle] == 2;
    }

    else
    {
      traitCollection = [(CarManeuverView *)self style];
      v14 = [traitCollection blurMode] == 3;
    }

    v15 = v14;

    guidance2 = [(CarManeuverView *)self guidance];
    shieldInfo = [guidance2 shieldInfo];
    v18 = [shieldInfo _car_shieldImageWithSize:3 scale:v12 useAdaptiveStyling:v15 nightMode:v7];

    if (v18)
    {
      v19 = +[UIImage imageWithCGImage:scale:orientation:](UIImage, "imageWithCGImage:scale:orientation:", [v18 image], 0, v7 / v10);
    }

    else
    {
      v19 = 0;
    }

    objc_storeStrong(&self->_shieldImage, v19);
    if (v18)
    {
    }
  }

  shieldImage = self->_shieldImage;
  v21 = shieldImage;

  return shieldImage;
}

- (void)_updateLabels
{
  laneGuidance = [(CarManeuverView *)self laneGuidance];
  if ([laneGuidance isForMidStep])
  {
    style = [(CarManeuverView *)self style];
    isSecondary = [style isSecondary];

    if ((isSecondary & 1) == 0)
    {
      laneGuidance2 = [(CarManeuverView *)self laneGuidance];
      midStepTitles = [laneGuidance2 midStepTitles];
      v8 = [midStepTitles count];

      if (v8)
      {
        laneGuidance3 = [(CarManeuverView *)self laneGuidance];
        [laneGuidance3 midStepTitles];
      }

      else
      {
        laneGuidance3 = [(CarManeuverView *)self guidance];
        [laneGuidance3 majorTextAlternatives];
      }
      v32 = ;
      [(NavSignLabel *)self->_distanceLabel setTextAlternatives:v32];

      laneGuidance4 = [(CarManeuverView *)self laneGuidance];
      textAlternatives = [laneGuidance4 textAlternatives];
      [(NavSignLabel *)self->_instructionsLabel setTextAlternatives:textAlternatives];

      return;
    }
  }

  else
  {
  }

  if ([(CarManeuverView *)self _isDisplayingStartManeuver])
  {
    style2 = [(CarManeuverView *)self style];
    if ([style2 variant] == 1)
    {
      guidance = [(CarManeuverView *)self guidance];
      majorTextAlternatives = [guidance majorTextAlternatives];
      v13 = [majorTextAlternatives count];

      if (!v13)
      {
        v14 = sub_1000811E8();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Shown 'Start' instruction in low guidance sign", buf, 2u);
        }

        v15 = [MKServerFormattedString alloc];
        v16 = [GEOComposedString alloc];
        v17 = +[NSBundle mainBundle];
        v18 = [v17 localizedStringForKey:@"CarPlay_MiniSign_Start" value:@"localized string not found" table:0];
        v19 = [v16 initWithString:v18];
        v20 = [v15 initWithComposedString:v19];
        v36 = v20;
        v21 = [NSArray arrayWithObjects:&v36 count:1];
        [(NavSignLabel *)self->_distanceLabel setTextAlternatives:v21];

        return;
      }
    }

    else
    {
    }
  }

  guidance2 = [(CarManeuverView *)self guidance];
  majorTextAlternatives2 = [guidance2 majorTextAlternatives];
  [(NavSignLabel *)self->_distanceLabel setTextAlternatives:majorTextAlternatives2];

  guidance3 = [(CarManeuverView *)self guidance];
  minorTextAlternatives = [guidance3 minorTextAlternatives];
  [(NavSignLabel *)self->_instructionsLabel setTextAlternatives:minorTextAlternatives];

  if (self->_destination - 3 <= 1)
  {
    text = [(NavSignLabel *)self->_distanceLabel text];
    v27 = [text length];

    if (v27)
    {
      style3 = [(CarManeuverView *)self style];
      -[NavSignLabel setMaxNumberOfTotalLines:](self->_instructionsLabel, "setMaxNumberOfTotalLines:", [style3 instructionsMaxNumberOfTotalLines]);

      style4 = [(CarManeuverView *)self style];
      -[NavSignLabel setMaxNumberOfLinesWithPreferredFont:](self->_instructionsLabel, "setMaxNumberOfLinesWithPreferredFont:", [style4 instructionsMaxNumberOfLinesWithPreferredFont]);

      instructionsLabel = self->_instructionsLabel;
      v31 = 1;
    }

    else
    {
      [(NavSignLabel *)self->_instructionsLabel setMaxNumberOfTotalLines:2];
      [(NavSignLabel *)self->_instructionsLabel setMaxNumberOfLinesWithPreferredFont:2];
      instructionsLabel = self->_instructionsLabel;
      v31 = 2;
    }

    [(NavSignLabel *)instructionsLabel setMaxNumberOfLinesWithLongestAlternative:v31];
  }
}

- (BOOL)_isDisplayingStartManeuver
{
  guidance = [(CarManeuverView *)self guidance];
  maneuverArtwork = [guidance maneuverArtwork];
  maneuver = [maneuverArtwork maneuver];

  return ((maneuver - 17) & 0xFFFFFFF7) == 0;
}

- (CarManeuverViewAnalyticsDelegate)analyticsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_analyticsDelegate);

  return WeakRetained;
}

- (BOOL)shouldShowLaneGuidance
{
  if ([(CarManeuverView *)self compressionStage]> 4)
  {
    return 0;
  }

  return [(CarManeuverView *)self _shouldShowLaneGuidance];
}

- (BOOL)_shouldShowLaneGuidance
{
  laneGuidance = [(CarManeuverView *)self laneGuidance];
  if (laneGuidance)
  {
    v4 = ![(NavSignLaneGuidanceView *)self->_laneGuidanceView highlightedLanesNotInVisibleRange];
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4;
}

- (BOOL)_usesLargeScreenLayout
{
  style = [(CarManeuverView *)self style];
  v3 = [style layoutType] == 1;

  return v3;
}

- (NSDictionary)sizeByCompressionStage
{
  sizeByCompressionStage = self->_sizeByCompressionStage;
  if (!sizeByCompressionStage)
  {
    v4 = sub_10007E168();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      variant = [(CarManeuverView *)self variant];
      if (variant > 2)
      {
        v6 = @".Unknown";
      }

      else
      {
        v6 = *(&off_101656248 + variant);
      }

      v7 = v6;
      *buf = 138412546;
      v62 = v7;
      v63 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, sizing calculations began ----------------------------------", buf, 0x16u);
    }

    v8 = objc_opt_new();
    v9 = [UIView alloc];
    sizeDataSource = [(CarManeuverView *)self sizeDataSource];
    [sizeDataSource availableWidth];
    v12 = [v9 initWithFrame:{0.0, 0.0, v11, 1.79769313e308}];

    v13 = [CarManeuverView alloc];
    guidance = [(CarManeuverView *)self guidance];
    configuredStyle = [(CarManeuverView *)self configuredStyle];
    variant2 = [configuredStyle variant];
    selfCopy2 = self;
    destination = [(CarManeuverView *)self destination];
    configuredStyle2 = [(CarManeuverView *)self configuredStyle];
    layoutType = [configuredStyle2 layoutType];
    selfCopy3 = self;
    sizeDataSource2 = [(CarManeuverView *)self sizeDataSource];
    v21 = v13;
    v22 = guidance;
    v23 = [(CarManeuverView *)v21 initWithGuidance:guidance variant:variant2 destination:destination layoutType:layoutType sizeDataSource:sizeDataSource2];

    [(CarManeuverView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarManeuverView *)v23 setLabelLineBreakMode:0];
    [(CarManeuverView *)v23 showLaneGuidanceFromManeuver:selfCopy2];
    [v12 addSubview:v23];
    topAnchor = [(CarManeuverView *)v23 topAnchor];
    topAnchor2 = [v12 topAnchor];
    v56 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v67[0] = v56;
    leadingAnchor = [(CarManeuverView *)v23 leadingAnchor];
    leadingAnchor2 = [v12 leadingAnchor];
    v26 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v67[1] = v26;
    trailingAnchor = [(CarManeuverView *)v23 trailingAnchor];
    trailingAnchor2 = [v12 trailingAnchor];
    v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v67[2] = v29;
    v30 = [NSArray arrayWithObjects:v67 count:3];
    [NSLayoutConstraint activateConstraints:v30];

    style = [(CarManeuverView *)selfCopy3 style];
    LODWORD(trailingAnchor2) = [style isSecondary];

    v32 = 0;
    if (trailingAnchor2)
    {
      v33 = 2;
    }

    else
    {
      v33 = 6;
    }

    do
    {
      v34 = objc_autoreleasePoolPush();
      [(CarManeuverView *)v23 setCompressionStage:v32];
      [v12 setNeedsLayout];
      [v12 layoutIfNeeded];
      [(CarManeuverView *)v23 frame];
      v37 = [NSValue valueWithSize:v35, v36];
      v38 = [NSNumber numberWithUnsignedInteger:v32];
      [v8 setObject:v37 forKeyedSubscript:v38];

      objc_autoreleasePoolPop(v34);
      ++v32;
    }

    while (v33 != v32);
    style2 = [(CarManeuverView *)selfCopy3 style];
    isSecondary = [style2 isSecondary];

    if ((isSecondary & 1) == 0)
    {
      sizeDataSource3 = [(CarManeuverView *)selfCopy3 sizeDataSource];
      [sizeDataSource3 availableWidth];
      v42 = [NSValue valueWithSize:?];
      v43 = [NSNumber numberWithUnsignedInteger:v33];
      [v8 setObject:v42 forKeyedSubscript:v43];

      v33 |= 1uLL;
    }

    v44 = [NSValue valueWithSize:CGSizeZero.width, CGSizeZero.height];
    v45 = [NSNumber numberWithUnsignedInteger:v33];
    [v8 setObject:v44 forKeyedSubscript:v45];

    objc_storeStrong(&selfCopy3->_sizeByCompressionStage, v8);
    v46 = sub_10007E168();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      variant3 = [(CarManeuverView *)selfCopy3 variant];
      if (variant3 > 2)
      {
        v48 = @".Unknown";
      }

      else
      {
        v48 = *(&off_101656248 + variant3);
      }

      v49 = v48;
      v50 = [v8 description];
      *buf = 138412802;
      v62 = v49;
      v63 = 2048;
      selfCopy = selfCopy3;
      v65 = 2112;
      v66 = v50;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, building sizeByCompressionStage: %@", buf, 0x20u);
    }

    v51 = sub_10007E168();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      variant4 = [(CarManeuverView *)selfCopy3 variant];
      if (variant4 > 2)
      {
        v53 = @".Unknown";
      }

      else
      {
        v53 = *(&off_101656248 + variant4);
      }

      v54 = v53;
      *buf = 138412546;
      v62 = v54;
      v63 = 2048;
      selfCopy = selfCopy3;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, sizing calculations ended ----------------------------------", buf, 0x16u);
    }

    sizeByCompressionStage = selfCopy3->_sizeByCompressionStage;
  }

  return sizeByCompressionStage;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CarManeuverView;
  [(CarManeuverView *)&v5 didMoveToWindow];
  window = [(CarManeuverView *)self window];
  -[CarManeuverViewStyle setAlignmentStyle:](self->_configuredStyle, "setAlignmentStyle:", [window _car_hybridInstrumentClusterAlignmentStyle]);

  window2 = [(CarManeuverView *)self window];
  -[CarManeuverViewStyle setAlignmentStyle:](self->_lowGuidanceStyle, "setAlignmentStyle:", [window2 _car_hybridInstrumentClusterAlignmentStyle]);

  [(CarManeuverView *)self resetCompressionSizes];
  [(CarManeuverView *)self _setupConstraints];
  [(CarManeuverView *)self _updateConstraints];
  [(CarManeuverView *)self _setupStyling];
}

- (void)resetCompressionSizes
{
  v3 = sub_10007E168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    variant = [(CarManeuverView *)self variant];
    if (variant > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + variant);
    }

    v6 = v5;
    [(CarManeuverView *)self frame];
    v7 = NSStringFromCGRect(v15);
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    selfCopy = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, resetting compression sizes. (current frame: %@)", &v9, 0x20u);
  }

  sizeByCompressionStage = self->_sizeByCompressionStage;
  self->_sizeByCompressionStage = 0;
}

- (unint64_t)variant
{
  configuredStyle = [(CarManeuverView *)self configuredStyle];
  variant = [configuredStyle variant];

  return variant;
}

- (void)_setupConstraints
{
  v3 = sub_10007E168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    variant = [(CarManeuverView *)self variant];
    if (variant > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + variant);
    }

    v6 = v5;
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, _setupConstraints", buf, 0x16u);
  }

  v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  myConstraints = [(CarManeuverView *)self myConstraints];
  [NSLayoutConstraint deactivateConstraints:myConstraints];

  dynamicConstraints = [(CarManeuverView *)self dynamicConstraints];
  [dynamicConstraints enumerateKeysAndObjectsUsingBlock:&stru_101650340];

  dynamicConstraints2 = [(CarManeuverView *)self dynamicConstraints];
  [dynamicConstraints2 removeAllObjects];

  v11 = objc_opt_new();
  heightAnchor = [(UIImageView *)self->_shieldView heightAnchor];
  sizeDataSource = [(CarManeuverView *)self sizeDataSource];
  [sizeDataSource dynamicPointScaleValue];
  v15 = v14;

  v16 = [heightAnchor constraintLessThanOrEqualToConstant:v15 * 16.0];
  v254 = v16;
  v17 = 1;
  v18 = [NSArray arrayWithObjects:&v254 count:1];
  [v11 addObjectsFromArray:v18];

  laneGuidance = [(CarManeuverView *)self laneGuidance];
  midStepTitles = [laneGuidance midStepTitles];
  if (![midStepTitles count])
  {
    guidance = [(CarManeuverView *)self guidance];
    majorTextAlternatives = [guidance majorTextAlternatives];
    v17 = [majorTextAlternatives count] != 0;
  }

  style = [(CarManeuverView *)self style];
  variant2 = [style variant];

  if (variant2 == 2)
  {
    topAnchor = [(NavSignLabel *)self->_instructionsLabel topAnchor];
    maps_uniqueKey = [topAnchor maps_uniqueKey];
    v228[0] = maps_uniqueKey;
    topAnchor2 = [(NavSignLabel *)self->_instructionsLabel topAnchor];
    topAnchor3 = [(CarManeuverView *)self topAnchor];
    [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
    LODWORD(v60) = 1148846080;
    v61 = [topAnchor2 constraintEqualToAnchor:topAnchor3 constant:v59 + 6.0 priority:v60];
    v229[0] = v61;
    bottomAnchor = [(NavSignLabel *)self->_instructionsLabel bottomAnchor];
    maps_uniqueKey2 = [bottomAnchor maps_uniqueKey];
    v228[1] = maps_uniqueKey2;
    bottomAnchor2 = [(CarManeuverView *)self bottomAnchor];
    bottomAnchor3 = [(NavSignLabel *)self->_instructionsLabel bottomAnchor];
    [(NavSignLabel *)self->_instructionsLabel inlineShieldLastBaselineBottomOffset];
    LODWORD(v67) = 1148846080;
    [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3 constant:v66 + 6.0 priority:v67];
    v68 = v224 = v11;
    v229[1] = v68;
    v69 = [NSDictionary dictionaryWithObjects:v229 forKeys:v228 count:2];
    dynamicConstraints3 = [(CarManeuverView *)self dynamicConstraints];
    [dynamicConstraints3 setObject:v69 forKeyedSubscript:@"SecondaryLabelsBaselines"];

    dynamicConstraints4 = [(CarManeuverView *)self dynamicConstraints];
    v72 = [dynamicConstraints4 objectForKeyedSubscript:@"SecondaryLabelsBaselines"];
    allValues = [v72 allValues];
    [v224 addObjectsFromArray:allValues];

    centerXAnchor = [(GuidanceManeuverView *)self->_arrowView centerXAnchor];
    maps_uniqueKey3 = [centerXAnchor maps_uniqueKey];
    v226[0] = maps_uniqueKey3;
    leadingAnchor = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    leadingAnchor2 = [(CarManeuverView *)self leadingAnchor];
    v195 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:13.0];
    v227[0] = v195;
    leadingAnchor3 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
    maps_uniqueKey4 = [leadingAnchor3 maps_uniqueKey];
    v226[1] = maps_uniqueKey4;
    leadingAnchor4 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
    trailingAnchor = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v78 = [leadingAnchor4 constraintEqualToAnchor:trailingAnchor constant:9.0];
    v227[1] = v78;
    v79 = [NSDictionary dictionaryWithObjects:v227 forKeys:v226 count:2];
    dynamicConstraints5 = [(CarManeuverView *)self dynamicConstraints];
    [dynamicConstraints5 setObject:v79 forKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];

    dynamicConstraints6 = [(CarManeuverView *)self dynamicConstraints];
    v82 = [dynamicConstraints6 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
    allValues2 = [v82 allValues];
    [v224 addObjectsFromArray:allValues2];

    heightAnchor2 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v213 = [heightAnchor2 constraintEqualToConstant:18.0];
    v225[0] = v213;
    widthAnchor = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    v85 = [widthAnchor constraintGreaterThanOrEqualToConstant:13.0];
    v225[1] = v85;
    centerYAnchor = [(GuidanceManeuverView *)self->_arrowView centerYAnchor];
    centerYAnchor2 = [(CarManeuverView *)self centerYAnchor];
    v88 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v225[2] = v88;
    trailingAnchor2 = [(NavSignLabel *)self->_instructionsLabel trailingAnchor];
    trailingAnchor3 = [(CarManeuverView *)self trailingAnchor];
    v91 = [trailingAnchor2 constraintEqualToAnchor:trailingAnchor3 constant:-11.0];
    v225[3] = v91;
    v92 = [NSArray arrayWithObjects:v225 count:4];
    [v224 addObjectsFromArray:v92];

    v11 = v224;
    v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;

    v58 = heightAnchor2;
LABEL_17:

    goto LABEL_25;
  }

  if (variant2 == 1)
  {
    widthAnchor2 = [(CarManeuverView *)self widthAnchor];
    v221 = [widthAnchor2 constraintGreaterThanOrEqualToConstant:100.0];
    v230[0] = v221;
    topAnchor4 = [(GuidanceManeuverView *)self->_arrowView topAnchor];
    topAnchor5 = [(CarManeuverView *)self topAnchor];
    v200 = [topAnchor4 constraintEqualToAnchor:topAnchor5 constant:11.0];
    v230[1] = v200;
    leadingAnchor5 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    leadingAnchor6 = [(CarManeuverView *)self leadingAnchor];
    v185 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6 constant:7.5];
    v230[2] = v185;
    trailingAnchor4 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    leadingAnchor7 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v173 = [trailingAnchor4 constraintEqualToAnchor:leadingAnchor7 constant:-7.0];
    v230[3] = v173;
    heightAnchor3 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v165 = [heightAnchor3 constraintEqualToConstant:23.0];
    v230[4] = v165;
    widthAnchor3 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    heightAnchor4 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v155 = [widthAnchor3 constraintEqualToAnchor:heightAnchor4];
    v230[5] = v155;
    bottomAnchor4 = [(GuidanceManeuverView *)self->_arrowView bottomAnchor];
    bottomAnchor5 = [(CarManeuverView *)self bottomAnchor];
    v148 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5 constant:-11.0];
    v230[6] = v148;
    firstBaselineAnchor = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
    topAnchor6 = [(CarManeuverView *)self topAnchor];
    v47 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor6 constant:29.0];
    v230[7] = v47;
    lastBaselineAnchor = [(NavSignLabel *)self->_distanceLabel lastBaselineAnchor];
    [(CarManeuverView *)self bottomAnchor];
    v50 = v49 = v17;
    v51 = [lastBaselineAnchor constraintEqualToAnchor:v50 constant:-16.0];
    v230[8] = v51;
    [(NavSignLabel *)self->_distanceLabel trailingAnchor];
    v53 = v52 = v11;
    trailingAnchor5 = [(CarManeuverView *)self trailingAnchor];
    v55 = -4.0;
    if (v49)
    {
      v55 = -11.0;
    }

    v56 = [v53 constraintEqualToAnchor:trailingAnchor5 constant:v55];
    v230[9] = v56;
    v57 = [NSArray arrayWithObjects:v230 count:10];
    [v52 addObjectsFromArray:v57];

    v11 = v52;
    v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;

    v58 = widthAnchor2;
    goto LABEL_17;
  }

  if (!variant2)
  {
    v210 = v17;
    v253 = 0.0;
    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    v247 = 0u;
    v248 = 0u;
    v245 = 0u;
    v246 = 0u;
    v244 = 0u;
    memset(buf, 0, sizeof(buf));
    [(CarManeuverView *)self primaryMetrics];
    leadingAnchor8 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView leadingAnchor];
    leadingAnchor9 = [(CarManeuverView *)self leadingAnchor];
    v205 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:*(&v252 + 1)];
    v242[0] = v205;
    trailingAnchor6 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView trailingAnchor];
    trailingAnchor7 = [(CarManeuverView *)self trailingAnchor];
    v25 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:v253];
    v242[1] = v25;
    topAnchor7 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView topAnchor];
    topAnchor8 = [(CarManeuverView *)self topAnchor];
    v28 = [topAnchor7 constraintEqualToAnchor:topAnchor8 constant:*&v252];
    v242[2] = v28;
    heightAnchor5 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView heightAnchor];
    v30 = [heightAnchor5 constraintLessThanOrEqualToConstant:*(&v251 + 1)];
    v242[3] = v30;
    v31 = [NSArray arrayWithObjects:v242 count:4];
    v222 = v11;
    [v11 addObjectsFromArray:v31];

    v220 = +[NSMutableDictionary dictionary];
    leadingAnchor10 = [(UIImageView *)self->_shieldView leadingAnchor];
    maps_uniqueKey5 = [leadingAnchor10 maps_uniqueKey];
    v240[0] = maps_uniqueKey5;
    _shieldViewPrimaryLeadingConstraint = [(CarManeuverView *)self _shieldViewPrimaryLeadingConstraint];
    v241[0] = _shieldViewPrimaryLeadingConstraint;
    trailingAnchor8 = [(UIImageView *)self->_shieldView trailingAnchor];
    maps_uniqueKey6 = [trailingAnchor8 maps_uniqueKey];
    v240[1] = maps_uniqueKey6;
    trailingAnchor9 = [(UIImageView *)self->_shieldView trailingAnchor];
    trailingAnchor10 = [(CarManeuverView *)self trailingAnchor];
    v168 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10 constant:*&v249];
    v241[1] = v168;
    topAnchor9 = [(GuidanceManeuverView *)self->_arrowView topAnchor];
    maps_uniqueKey7 = [topAnchor9 maps_uniqueKey];
    v240[2] = maps_uniqueKey7;
    _maneuverTopPrimaryConstraint = [(CarManeuverView *)self _maneuverTopPrimaryConstraint];
    v241[2] = _maneuverTopPrimaryConstraint;
    bottomAnchor6 = [(GuidanceManeuverView *)self->_arrowView bottomAnchor];
    maps_uniqueKey8 = [bottomAnchor6 maps_uniqueKey];
    v240[3] = maps_uniqueKey8;
    _maneuverBottomPrimaryConstraint = [(CarManeuverView *)self _maneuverBottomPrimaryConstraint];
    v241[3] = _maneuverBottomPrimaryConstraint;
    leadingAnchor11 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    maps_uniqueKey9 = [leadingAnchor11 maps_uniqueKey];
    v240[4] = maps_uniqueKey9;
    leadingAnchor12 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    leadingAnchor13 = [(CarManeuverView *)self leadingAnchor];
    v141 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13 constant:*&buf[16]];
    v241[4] = v141;
    trailingAnchor11 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    maps_uniqueKey10 = [trailingAnchor11 maps_uniqueKey];
    v240[5] = maps_uniqueKey10;
    trailingAnchor12 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    leadingAnchor14 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v34 = [trailingAnchor12 constraintEqualToAnchor:leadingAnchor14 constant:*&buf[24]];
    v241[5] = v34;
    widthAnchor4 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    maps_uniqueKey11 = [widthAnchor4 maps_uniqueKey];
    v240[6] = maps_uniqueKey11;
    widthAnchor5 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    v38 = [widthAnchor5 constraintGreaterThanOrEqualToConstant:*(&v244 + 1)];
    v241[6] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:7];
    [v220 addEntriesFromDictionary:v39];

    LODWORD(widthAnchor5) = _os_feature_enabled_impl();
    heightAnchor6 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    maps_uniqueKey12 = [heightAnchor6 maps_uniqueKey];
    v42 = maps_uniqueKey12;
    if (widthAnchor5)
    {
      v238 = maps_uniqueKey12;
      heightAnchor7 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
      v44 = [heightAnchor7 constraintGreaterThanOrEqualToConstant:*&v244];
      v239 = v44;
      v45 = &v239;
      v46 = &v238;
    }

    else
    {
      v236 = maps_uniqueKey12;
      heightAnchor7 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
      v44 = [heightAnchor7 constraintEqualToConstant:*&v244];
      v237 = v44;
      v45 = &v237;
      v46 = &v236;
    }

    v93 = [NSDictionary dictionaryWithObjects:v45 forKeys:v46 count:1];
    [v220 addEntriesFromDictionary:v93];

    if ([(CarManeuverView *)self _usesLargeScreenLayout]|| !v210)
    {
      centerYAnchor3 = [(GuidanceManeuverView *)self->_arrowView centerYAnchor];
      centerYAnchor4 = [(CarManeuverView *)self centerYAnchor];
      v96 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
      centerYAnchor5 = [(GuidanceManeuverView *)self->_arrowView centerYAnchor];
      maps_uniqueKey13 = [centerYAnchor5 maps_uniqueKey];
      [v220 setObject:v96 forKey:maps_uniqueKey13];
    }

    v99 = [v220 copy];
    dynamicConstraints7 = [(CarManeuverView *)self dynamicConstraints];
    [dynamicConstraints7 setObject:v99 forKeyedSubscript:@"PrimaryManeuverView"];

    leadingAnchor15 = [(UIImageView *)self->_shieldView leadingAnchor];
    maps_uniqueKey14 = [leadingAnchor15 maps_uniqueKey];
    v234[0] = maps_uniqueKey14;
    leadingAnchor16 = [(UIImageView *)self->_shieldView leadingAnchor];
    textTrailingLayoutGuide = [(NavSignLabel *)self->_distanceLabel textTrailingLayoutGuide];
    trailingAnchor13 = [textTrailingLayoutGuide trailingAnchor];
    v178 = [leadingAnchor16 constraintGreaterThanOrEqualToAnchor:trailingAnchor13 constant:*buf];
    v235[0] = v178;
    trailingAnchor14 = [(UIImageView *)self->_shieldView trailingAnchor];
    maps_uniqueKey15 = [trailingAnchor14 maps_uniqueKey];
    v234[1] = maps_uniqueKey15;
    trailingAnchor15 = [(UIImageView *)self->_shieldView trailingAnchor];
    trailingAnchor16 = [(CarManeuverView *)self trailingAnchor];
    v101 = [trailingAnchor15 constraintEqualToAnchor:trailingAnchor16 constant:*&v249];
    v235[1] = v101;
    leadingAnchor17 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    maps_uniqueKey16 = [leadingAnchor17 maps_uniqueKey];
    v234[2] = maps_uniqueKey16;
    leadingAnchor18 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    leadingAnchor19 = [(CarManeuverView *)self leadingAnchor];
    v106 = [leadingAnchor18 constraintEqualToAnchor:leadingAnchor19 constant:*&v245];
    v235[2] = v106;
    v107 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:3];
    dynamicConstraints8 = [(CarManeuverView *)self dynamicConstraints];
    [dynamicConstraints8 setObject:v107 forKeyedSubscript:@"PrimaryNoManeuverView"];

    topAnchor10 = [(UIImageView *)self->_shieldView topAnchor];
    maps_uniqueKey17 = [topAnchor10 maps_uniqueKey];
    v232[0] = maps_uniqueKey17;
    topAnchor11 = [(UIImageView *)self->_shieldView topAnchor];
    topAnchor12 = [(CarManeuverView *)self topAnchor];
    v187 = [topAnchor11 constraintEqualToAnchor:topAnchor12 constant:*(&v245 + 1)];
    v233[0] = v187;
    firstBaselineAnchor2 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
    maps_uniqueKey18 = [firstBaselineAnchor2 maps_uniqueKey];
    v232[1] = maps_uniqueKey18;
    firstBaselineAnchor3 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
    topAnchor13 = [(CarManeuverView *)self topAnchor];
    v167 = [firstBaselineAnchor3 constraintEqualToAnchor:topAnchor13 constant:*(&v246 + 1)];
    v233[1] = v167;
    firstBaselineAnchor4 = [(NavSignLabel *)self->_instructionsLabel firstBaselineAnchor];
    maps_uniqueKey19 = [firstBaselineAnchor4 maps_uniqueKey];
    v232[2] = maps_uniqueKey19;
    firstBaselineAnchor5 = [(NavSignLabel *)self->_instructionsLabel firstBaselineAnchor];
    topAnchor14 = [(CarManeuverView *)self topAnchor];
    v109 = *&v248;
    [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
    LODWORD(v111) = 1148846080;
    v112 = [firstBaselineAnchor5 constraintEqualToAnchor:topAnchor14 constant:v110 + v109 priority:v111];
    v233[2] = v112;
    lastBaselineAnchor2 = [(NavSignLabel *)self->_instructionsLabel lastBaselineAnchor];
    maps_uniqueKey20 = [lastBaselineAnchor2 maps_uniqueKey];
    v232[3] = maps_uniqueKey20;
    lastBaselineAnchor3 = [(NavSignLabel *)self->_instructionsLabel lastBaselineAnchor];
    bottomAnchor7 = [(CarManeuverView *)self bottomAnchor];
    v117 = *(&v250 + 1);
    [(NavSignLabel *)self->_instructionsLabel inlineShieldLastBaselineBottomOffset];
    LODWORD(v119) = 1148846080;
    v120 = [lastBaselineAnchor3 constraintEqualToAnchor:bottomAnchor7 constant:v118 + v117 priority:v119];
    v233[3] = v120;
    v121 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:4];
    dynamicConstraints9 = [(CarManeuverView *)self dynamicConstraints];
    [dynamicConstraints9 setObject:v121 forKeyedSubscript:@"PrimaryLabelsBaselines"];

    dynamicConstraints10 = [(CarManeuverView *)self dynamicConstraints];
    v124 = [dynamicConstraints10 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
    allValues3 = [v124 allValues];
    v11 = v222;
    [v222 addObjectsFromArray:allValues3];

    trailingAnchor17 = [(NavSignLabel *)self->_distanceLabel trailingAnchor];
    trailingAnchor18 = [(CarManeuverView *)self trailingAnchor];
    v128 = [trailingAnchor17 constraintEqualToAnchor:trailingAnchor18 constant:*&v249];
    v231[0] = v128;
    _instructionHorizontalPrimaryConstraint = [(CarManeuverView *)self _instructionHorizontalPrimaryConstraint];
    v231[1] = _instructionHorizontalPrimaryConstraint;
    trailingAnchor19 = [(NavSignLabel *)self->_instructionsLabel trailingAnchor];
    trailingAnchor20 = [(CarManeuverView *)self trailingAnchor];
    v132 = [trailingAnchor19 constraintEqualToAnchor:trailingAnchor20 constant:*&v250];
    v231[2] = v132;
    v133 = [NSArray arrayWithObjects:v231 count:3];
    [v222 addObjectsFromArray:v133];

    if (!v210)
    {
      centerYAnchor6 = [(NavSignLabel *)self->_instructionsLabel centerYAnchor];
      centerYAnchor7 = [(CarManeuverView *)self centerYAnchor];
      v136 = [centerYAnchor6 constraintEqualToAnchor:centerYAnchor7];
      [v222 addObject:v136];
    }

    v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  }

LABEL_25:
  [(CarManeuverView *)self setMyConstraints:v11];
  v137 = v7[433];
  myConstraints2 = [(CarManeuverView *)self myConstraints];
  [v137 activateConstraints:myConstraints2];
}

- (CarManeuverViewSizeDataSource)sizeDataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_sizeDataSource);

  return WeakRetained;
}

- (void)_updateConstraints
{
  v3 = sub_10007E168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    variant = [(CarManeuverView *)self variant];
    if (variant > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + variant);
    }

    v6 = v5;
    style = [(CarManeuverView *)self style];
    variant2 = [style variant];
    shouldShowLaneGuidance = [(CarManeuverView *)self shouldShowLaneGuidance];
    v10 = @"NO";
    if (shouldShowLaneGuidance)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *v89 = 138413058;
    *&v89[4] = v6;
    *&v89[12] = 2048;
    *&v89[14] = self;
    v90 = 2048;
    v91 = variant2;
    v92 = 2112;
    v93 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, _updateConstraints. variant: %lu, shouldShowLaneGuidance: %@", v89, 0x2Au);
  }

  style2 = [(CarManeuverView *)self style];
  variant3 = [style2 variant];

  if (variant3 == 2)
  {
    LODWORD(v14) = 1148829696;
    [(CarManeuverView *)self setContentCompressionResistancePriority:1 forAxis:v14];
    lineCount = [(NavSignLabel *)self->_instructionsLabel lineCount];
    instructionsLabel = self->_instructionsLabel;
    if (lineCount == 1)
    {
      v42 = 6.0;
    }

    else
    {
      [(NavSignLabel *)instructionsLabel inlineShieldFirstBaselineTopOffset];
      v42 = v43 + 6.0;
      instructionsLabel = self->_instructionsLabel;
    }

    [(NavSignLabel *)instructionsLabel inlineShieldLastBaselineBottomOffset];
    v45 = v44 + 6.0;
    dynamicConstraints = [(CarManeuverView *)self dynamicConstraints];
    v47 = [dynamicConstraints objectForKeyedSubscript:@"SecondaryLabelsBaselines"];
    firstBaselineAnchor = [(NavSignLabel *)self->_instructionsLabel firstBaselineAnchor];
    maps_uniqueKey = [firstBaselineAnchor maps_uniqueKey];
    v50 = [v47 objectForKeyedSubscript:maps_uniqueKey];
    [v50 setConstant:v42];

    dynamicConstraints2 = [(CarManeuverView *)self dynamicConstraints];
    v52 = [dynamicConstraints2 objectForKeyedSubscript:@"SecondaryLabelsBaselines"];
    lastBaselineAnchor = [(NavSignLabel *)self->_instructionsLabel lastBaselineAnchor];
    maps_uniqueKey2 = [lastBaselineAnchor maps_uniqueKey];
    v55 = [v52 objectForKeyedSubscript:maps_uniqueKey2];
    [v55 setConstant:v45];
  }

  else if (variant3 == 1)
  {
    LODWORD(v14) = 1148846080;
    [(CarManeuverView *)self setContentCompressionResistancePriority:1 forAxis:v14];
  }

  else if (!variant3)
  {
    LODWORD(v14) = 1148829696;
    [(CarManeuverView *)self setContentCompressionResistancePriority:1 forAxis:v14];
    v101 = 0;
    memset(v100, 0, sizeof(v100));
    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    [(CarManeuverView *)self primaryMetrics:0];
    shouldShowLaneGuidance2 = [(CarManeuverView *)self shouldShowLaneGuidance];
    dynamicConstraints3 = [(CarManeuverView *)self dynamicConstraints];
    v17 = dynamicConstraints3;
    if (shouldShowLaneGuidance2)
    {
      v18 = v100;
      v19 = [dynamicConstraints3 objectForKeyedSubscript:@"PrimaryManeuverView"];
      allValues = [v19 allValues];
      [NSLayoutConstraint deactivateConstraints:allValues];

      dynamicConstraints4 = [(CarManeuverView *)self dynamicConstraints];
      v22 = [dynamicConstraints4 objectForKeyedSubscript:@"PrimaryNoManeuverView"];
      allValues2 = [v22 allValues];
      [NSLayoutConstraint activateConstraints:allValues2];

      v24 = *&v95;
      dynamicConstraints5 = [(CarManeuverView *)self dynamicConstraints];
      v26 = [dynamicConstraints5 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      topAnchor = [(UIImageView *)self->_shieldView topAnchor];
      maps_uniqueKey3 = [topAnchor maps_uniqueKey];
      v29 = [v26 objectForKeyedSubscript:maps_uniqueKey3];
      [v29 setConstant:v24];

      v30 = *&v96;
      dynamicConstraints6 = [(CarManeuverView *)self dynamicConstraints];
      v32 = [dynamicConstraints6 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      firstBaselineAnchor2 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
      maps_uniqueKey4 = [firstBaselineAnchor2 maps_uniqueKey];
      v35 = [v32 objectForKeyedSubscript:maps_uniqueKey4];
      [v35 setConstant:v30];

      v36 = *(&v97 + 1);
      p_instructionsLabel = &self->_instructionsLabel;
      [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
      v39 = v38 + v36;
    }

    else
    {
      v18 = &v99 + 1;
      v56 = [dynamicConstraints3 objectForKeyedSubscript:@"PrimaryNoManeuverView"];
      allValues3 = [v56 allValues];
      [NSLayoutConstraint deactivateConstraints:allValues3];

      dynamicConstraints7 = [(CarManeuverView *)self dynamicConstraints];
      v59 = [dynamicConstraints7 objectForKeyedSubscript:@"PrimaryManeuverView"];
      allValues4 = [v59 allValues];
      [NSLayoutConstraint activateConstraints:allValues4];

      v61 = *(&v94 + 1);
      dynamicConstraints8 = [(CarManeuverView *)self dynamicConstraints];
      v63 = [dynamicConstraints8 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      topAnchor2 = [(UIImageView *)self->_shieldView topAnchor];
      maps_uniqueKey5 = [topAnchor2 maps_uniqueKey];
      v66 = [v63 objectForKeyedSubscript:maps_uniqueKey5];
      [v66 setConstant:v61];

      _shieldImage = [(CarManeuverView *)self _shieldImage];
      v68 = &v96 + 1;
      if (!_shieldImage)
      {
        v68 = &v95 + 1;
      }

      v69 = *v68;
      dynamicConstraints9 = [(CarManeuverView *)self dynamicConstraints];
      v71 = [dynamicConstraints9 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      firstBaselineAnchor3 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
      maps_uniqueKey6 = [firstBaselineAnchor3 maps_uniqueKey];
      v74 = [v71 objectForKeyedSubscript:maps_uniqueKey6];
      [v74 setConstant:v69];

      p_instructionsLabel = &self->_instructionsLabel;
      [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
      v39 = *&v97 + v75;
    }

    dynamicConstraints10 = [(CarManeuverView *)self dynamicConstraints];
    v77 = [dynamicConstraints10 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
    firstBaselineAnchor4 = [(NavSignLabel *)*p_instructionsLabel firstBaselineAnchor];
    maps_uniqueKey7 = [firstBaselineAnchor4 maps_uniqueKey];
    v80 = [v77 objectForKeyedSubscript:maps_uniqueKey7];
    [v80 setConstant:v39];

    v81 = *v18;
    [(NavSignLabel *)*p_instructionsLabel inlineShieldLastBaselineBottomOffset];
    v83 = v82 + v81;
    dynamicConstraints11 = [(CarManeuverView *)self dynamicConstraints];
    v85 = [dynamicConstraints11 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
    lastBaselineAnchor2 = [(NavSignLabel *)*p_instructionsLabel lastBaselineAnchor];
    maps_uniqueKey8 = [lastBaselineAnchor2 maps_uniqueKey];
    v88 = [v85 objectForKeyedSubscript:maps_uniqueKey8];
    [v88 setConstant:v83];
  }
}

- (void)_setupStyling
{
  style = [(CarManeuverView *)self style];
  self->_labelLineBreakMode = [style labelLineBreakMode];
  sizeDataSource = [(CarManeuverView *)self sizeDataSource];
  [sizeDataSource dynamicPointScaleValue];

  memset(__src, 0, sizeof(__src));
  if (style)
  {
    [style arrowMetrics];
    MKGuidanceManeuverArrowMetricsApplyScale();
    memset(v16, 0, sizeof(v16));
    [style junctionArrowMetrics];
  }

  else
  {
    MKGuidanceManeuverArrowMetricsApplyScale();
    memset(v16, 0, sizeof(v16));
    memset(v15, 0, sizeof(v15));
  }

  MKGuidanceManeuverArrowMetricsApplyScale();
  memcpy(v15, __src, sizeof(v15));
  [(GuidanceManeuverView *)self->_arrowView setArrowMetrics:v15];
  memcpy(v15, v16, sizeof(v15));
  [(GuidanceManeuverView *)self->_arrowView setJunctionArrowMetrics:v15];
  -[GuidanceManeuverView setFraming:](self->_arrowView, "setFraming:", [style desiredFraming]);
  arrowMainColor = [style arrowMainColor];
  [(GuidanceManeuverView *)self->_arrowView setArrowColor:arrowMainColor];

  arrowAccentColor = [style arrowAccentColor];
  [(GuidanceManeuverView *)self->_arrowView setAccentColor:arrowAccentColor];

  sizeDataSource2 = [(CarManeuverView *)self sizeDataSource];
  [sizeDataSource2 dynamicPointScaleValue];
  v9 = v8;

  instructionsPreferredFont = [style instructionsPreferredFont];
  v11 = [instructionsPreferredFont _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setPreferredFont:v11];

  instructionsAlternateFont = [style instructionsAlternateFont];
  v13 = [instructionsAlternateFont _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setAlternateFont:v13];

  [style instructionsAlternateFontLineSpacing];
  [(NavSignLabel *)self->_instructionsLabel setAlternateFontLineSpacing:?];
  -[NavSignLabel setMaxNumberOfLinesWithPreferredFont:](self->_instructionsLabel, "setMaxNumberOfLinesWithPreferredFont:", [style instructionsMaxNumberOfLinesWithPreferredFont]);
  -[NavSignLabel setMaxNumberOfTotalLines:](self->_instructionsLabel, "setMaxNumberOfTotalLines:", [style instructionsMaxNumberOfTotalLines]);
  instructionsColor = [style instructionsColor];
  [(NavSignLabel *)self->_instructionsLabel setTextColor:instructionsColor];

  [(NavSignLabel *)self->_instructionsLabel setParagraphLineBreakMode:[(CarManeuverView *)self labelLineBreakMode]];
  [(NavSignLabel *)self->_instructionsLabel updateLabelIfNeeded];
  [(CarManeuverView *)self _updateStyling];
}

- (void)_updateStyling
{
  style = [(CarManeuverView *)self style];
  [style setHasLaneGuidance:{-[CarManeuverView shouldShowLaneGuidance](self, "shouldShowLaneGuidance")}];
  _shieldImage = [(CarManeuverView *)self _shieldImage];
  [style setHasShield:_shieldImage != 0];

  [style setSecondarySignVisible:{-[CarManeuverView secondarySignVisible](self, "secondarySignVisible")}];
  [style setCompressionStage:{-[CarManeuverView compressionStage](self, "compressionStage")}];
  style2 = [(CarManeuverView *)self style];
  invalidArrowColor = [style2 invalidArrowColor];

  [(GuidanceManeuverView *)self->_arrowView setAccentColor:invalidArrowColor];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setInvalidArrowColor:invalidArrowColor];
  sizeDataSource = [(CarManeuverView *)self sizeDataSource];
  [sizeDataSource dynamicPointScaleValue];
  v9 = v8;

  distanceFont = [style distanceFont];
  v11 = [distanceFont _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_distanceLabel setPreferredFont:v11];

  font = [(NavSignLabel *)self->_distanceLabel font];
  [font pointSize];
  distanceLabel = self->_distanceLabel;
  if (10.0 / v13 > 1.0)
  {
    [(NavSignLabel *)distanceLabel setPreferredFontMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(NavSignLabel *)distanceLabel font];
    [font2 pointSize];
    [(NavSignLabel *)self->_distanceLabel setPreferredFontMinimumScaleFactor:10.0 / v16];
  }

  distanceColor = [style distanceColor];
  [(NavSignLabel *)self->_distanceLabel setTextColor:distanceColor];

  [(NavSignLabel *)self->_distanceLabel updateLabelIfNeeded];
  -[NavSignLabel setMaxNumberOfTotalLines:](self->_instructionsLabel, "setMaxNumberOfTotalLines:", [style instructionsMaxNumberOfTotalLines]);
  [(NavSignLabel *)self->_instructionsLabel setParagraphLineBreakMode:[(CarManeuverView *)self labelLineBreakMode]];
  instructionsPreferredFont = [style instructionsPreferredFont];
  v19 = [instructionsPreferredFont _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setPreferredFont:v19];

  instructionsAlternateFont = [style instructionsAlternateFont];
  v21 = [instructionsAlternateFont _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setAlternateFont:v21];

  -[NavSignLabel setShouldRemoveTextStartingAtFirstNewline:](self->_instructionsLabel, "setShouldRemoveTextStartingAtFirstNewline:", [style isSecondary]);
  -[NavSignLabel setPerferredFontAdjustsFontSizeToFitWidth:](self->_instructionsLabel, "setPerferredFontAdjustsFontSizeToFitWidth:", [style shouldScaleInstructionsPreferredFont]);
  [(NavSignLabel *)self->_instructionsLabel updateLabelIfNeeded];
  v22 = sub_10007E168();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    variant = [(CarManeuverView *)self variant];
    if (variant > 2)
    {
      v24 = @".Unknown";
    }

    else
    {
      v24 = *(&off_101656248 + variant);
    }

    v25 = v24;
    compressionStage = [(CarManeuverView *)self compressionStage];
    style3 = [(CarManeuverView *)self style];
    variant2 = [style3 variant];
    maxNumberOfTotalLines = [(NavSignLabel *)self->_instructionsLabel maxNumberOfTotalLines];
    v30 = 138413570;
    v31 = v25;
    v32 = 2048;
    selfCopy = self;
    v34 = 2048;
    v35 = compressionStage;
    v36 = 2048;
    v37 = variant2;
    v38 = 2048;
    v39 = maxNumberOfTotalLines;
    v40 = 2048;
    labelLineBreakMode = [(CarManeuverView *)self labelLineBreakMode];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, _updateStyling. compressionStage: %lu, variant: %lu, instructionMaxLines: %ld, lineBreakMode: %ld", &v30, 0x3Eu);
  }
}

- ($3B4E6468B3EC00ED59A5207EEA3643F1)primaryMetrics
{
  style = [(CarManeuverView *)self style];
  layoutType = [style layoutType];

  if (layoutType == 2)
  {
    v8 = &xmmword_1012159F0;
  }

  else
  {
    if (layoutType == 1)
    {
      sizeDataSource = [(CarManeuverView *)self sizeDataSource];
      [sizeDataSource dynamicPointScaleValue];
      v20 = v10;

      v11 = vmulq_n_f64(xmmword_101212A50, v20);
      v12 = vdupq_lane_s64(v11.i64[0], 0);
      *&retstr->var0 = v12;
      *&retstr->var2 = v11;
      *&retstr->var4 = vmulq_n_f64(xmmword_101212A60, v20);
      *&retstr->var6 = v12;
      retstr->var8 = v20 * 46.0;
      v13 = vmulq_n_f64(xmmword_101212A70, v20);
      *&retstr->var9 = v13;
      retstr->var11 = v13.f64[0];
      v14 = vmulq_n_f64(xmmword_101212A90, v20);
      *&retstr->var12 = vmulq_n_f64(xmmword_101212A80, v20);
      *&retstr->var14 = vzip1q_s64(v14, v11);
      *&retstr->var16 = v14;
      *&retstr->var18 = v14.i64[0];
      retstr->var19 = v20 * 29.0;
      *&retstr->var20 = v11.i64[0];
      *&retstr->var21 = xmmword_1012159E0;
      return result;
    }

    if (layoutType)
    {
      return result;
    }

    v8 = &xmmword_101215880;
  }

  v15 = v8[9];
  *&retstr->var16 = v8[8];
  *&retstr->var18 = v15;
  *&retstr->var20 = v8[10];
  retstr->var22 = *(v8 + 22);
  v16 = v8[5];
  *&retstr->var8 = v8[4];
  *&retstr->var10 = v16;
  v17 = v8[7];
  *&retstr->var12 = v8[6];
  *&retstr->var14 = v17;
  v18 = v8[1];
  *&retstr->var0 = *v8;
  *&retstr->var2 = v18;
  v19 = v8[3];
  *&retstr->var4 = v8[2];
  *&retstr->var6 = v19;
  return result;
}

- (id)_shieldViewPrimaryLeadingConstraint
{
  _usesLargeScreenLayout = [(CarManeuverView *)self _usesLargeScreenLayout];
  leadingAnchor = [(UIImageView *)self->_shieldView leadingAnchor];
  if (_usesLargeScreenLayout)
  {
    textTrailingLayoutGuide = [(NavSignLabel *)self->_distanceLabel textTrailingLayoutGuide];
    trailingAnchor = [textTrailingLayoutGuide trailingAnchor];
    v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:trailingAnchor constant:12.0];
  }

  else
  {
    textTrailingLayoutGuide = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v7 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:textTrailingLayoutGuide constant:12.0];
  }

  return v7;
}

- (id)_maneuverTopPrimaryConstraint
{
  _usesLargeScreenLayout = [(CarManeuverView *)self _usesLargeScreenLayout];
  topAnchor = [(GuidanceManeuverView *)self->_arrowView topAnchor];
  topAnchor2 = [(CarManeuverView *)self topAnchor];
  if (_usesLargeScreenLayout)
  {
    [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:12.0];
  }

  else
  {
    [topAnchor constraintEqualToAnchor:topAnchor2 constant:11.0];
  }
  v6 = ;

  return v6;
}

- (id)_maneuverBottomPrimaryConstraint
{
  _usesLargeScreenLayout = [(CarManeuverView *)self _usesLargeScreenLayout];
  bottomAnchor = [(GuidanceManeuverView *)self->_arrowView bottomAnchor];
  bottomAnchor2 = [(CarManeuverView *)self bottomAnchor];
  v6 = -11.0;
  if (_usesLargeScreenLayout)
  {
    v6 = -12.0;
  }

  v7 = [bottomAnchor constraintLessThanOrEqualToAnchor:bottomAnchor2 constant:v6];

  return v7;
}

- (id)_instructionHorizontalPrimaryConstraint
{
  laneGuidance = [(CarManeuverView *)self laneGuidance];
  midStepTitles = [laneGuidance midStepTitles];
  if ([midStepTitles count])
  {
    v5 = 0;
  }

  else
  {
    guidance = [(CarManeuverView *)self guidance];
    majorTextAlternatives = [guidance majorTextAlternatives];
    v5 = [majorTextAlternatives count] == 0;
  }

  _usesLargeScreenLayout = [(CarManeuverView *)self _usesLargeScreenLayout];
  leadingAnchor = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
  if ((_usesLargeScreenLayout & 1) != 0 || v5)
  {
    leadingAnchor2 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  }

  else
  {
    leadingAnchor2 = [(CarManeuverView *)self leadingAnchor];
    v11 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:11.0];
  }

  v12 = v11;

  return v12;
}

- (void)navSignLabel:(id)label didSelectAlternate:(unint64_t)alternate
{
  labelCopy = label;
  distanceLabel = self->_distanceLabel;
  if (distanceLabel == labelCopy || self->_instructionsLabel == labelCopy)
  {
    v8 = distanceLabel == labelCopy;
    v12 = labelCopy;
    analyticsDelegate = [(CarManeuverView *)self analyticsDelegate];
    guidance = [(CarManeuverView *)self guidance];
    signID = [guidance signID];
    [analyticsDelegate carManeuverView:self didSelectAlternate:alternate forPrimaryString:v8 inSign:signID];

    labelCopy = v12;
  }
}

- (int)GEOManeuverTypeForGEOLaneDirection:(int)direction
{
  if (direction == 256)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (direction == 128)
  {
    v4 = 62;
  }

  else
  {
    v4 = v3;
  }

  if (direction == 64)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (direction == 32)
  {
    v6 = 60;
  }

  else
  {
    v6 = 3;
  }

  if (direction == 16)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (direction <= 63)
  {
    v5 = v7;
  }

  if (direction == 8)
  {
    v8 = 61;
  }

  else
  {
    v8 = 3;
  }

  if (direction == 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (direction == 2)
  {
    v10 = 63;
  }

  else
  {
    v10 = 3;
  }

  if (!direction)
  {
    v10 = 0;
  }

  if (direction > 3)
  {
    v10 = v9;
  }

  if (direction <= 15)
  {
    return v10;
  }

  else
  {
    return v5;
  }
}

- (id)_maneuverArtworkForDirection:(int)direction
{
  v3 = [(CarManeuverView *)self GEOManeuverTypeForGEOLaneDirection:*&direction];

  return [GuidanceManeuverArtwork artworkWithManeuver:v3];
}

- (int)_preferredDirectionForLaneGuidance
{
  highlightedLanes = [(NavSignLaneGuidanceInfo *)self->_laneGuidance highlightedLanes];
  firstObject = [highlightedLanes firstObject];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  highlightedLanes2 = [(NavSignLaneGuidanceInfo *)self->_laneGuidance highlightedLanes];
  v6 = [highlightedLanes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(highlightedLanes2);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isPreferredLaneForManeuver])
        {
          v11 = v10;

          firstObject = v11;
          goto LABEL_11;
        }
      }

      v7 = [highlightedLanes2 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  directions = [firstObject directions];
  v13 = [directions count];

  if (v13)
  {
    directions2 = [firstObject directions];
    firstObject2 = [directions2 firstObject];
    direction = [firstObject2 direction];
  }

  else
  {
    direction = 0;
  }

  return direction;
}

- (void)showLaneGuidanceFromManeuver:(id)maneuver
{
  maneuverCopy = maneuver;
  laneGuidance = [maneuverCopy laneGuidance];

  if (laneGuidance)
  {
    laneGuidance2 = [maneuverCopy laneGuidance];
    [(CarManeuverView *)self showLaneGuidance:laneGuidance2];
  }
}

- (void)hideLaneGuidance
{
  style = [(CarManeuverView *)self style];
  variant = [style variant];

  if (variant != 2 && self->_laneGuidance)
  {
    v5 = sub_10007E168();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      variant2 = [(CarManeuverView *)self variant];
      if (variant2 > 2)
      {
        v7 = @".Unknown";
      }

      else
      {
        v7 = *(&off_101656248 + variant2);
      }

      v8 = v7;
      v11 = 138412546;
      v12 = v8;
      v13 = 2048;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, hideLaneGuidance", &v11, 0x16u);
    }

    sizeByCompressionStage = [(CarManeuverView *)self sizeByCompressionStage];

    if (sizeByCompressionStage)
    {
      [(CarManeuverView *)self setSizeByCompressionStage:0];
    }

    laneGuidance = self->_laneGuidance;
    self->_laneGuidance = 0;

    [(CarManeuverView *)self _updateContents];
  }
}

- (void)updateLaneGuidance:(id)guidance
{
  objc_storeStrong(&self->_laneGuidance, guidance);

  [(CarManeuverView *)self _updateLabels];
}

- (void)showLaneGuidance:(id)guidance
{
  guidanceCopy = guidance;
  if (guidanceCopy)
  {
    style = [(CarManeuverView *)self style];
    isSecondary = [style isSecondary];

    if ((isSecondary & 1) == 0)
    {
      laneInfoId = [guidanceCopy laneInfoId];
      laneInfoId2 = [(NavSignLaneGuidanceInfo *)self->_laneGuidance laneInfoId];
      v10 = [laneInfoId isEqual:laneInfoId2];

      if ((v10 & 1) == 0)
      {
        v11 = sub_10007E168();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          variant = [(CarManeuverView *)self variant];
          if (variant > 2)
          {
            v13 = @".Unknown";
          }

          else
          {
            v13 = *(&off_101656248 + variant);
          }

          v14 = v13;
          v16 = 138412546;
          v17 = v14;
          v18 = 2048;
          selfCopy = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, showLaneGuidance", &v16, 0x16u);
        }

        sizeByCompressionStage = [(CarManeuverView *)self sizeByCompressionStage];

        if (sizeByCompressionStage)
        {
          [(CarManeuverView *)self setSizeByCompressionStage:0];
        }

        objc_storeStrong(&self->_laneGuidance, guidance);
        [(CarManeuverView *)self _updateContents];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)change
{
  v10.receiver = self;
  v10.super_class = CarManeuverView;
  changeCopy = change;
  [(CarManeuverView *)&v10 traitCollectionDidChange:changeCopy];
  userInterfaceStyle = [changeCopy userInterfaceStyle];

  traitCollection = [(CarManeuverView *)self traitCollection];
  userInterfaceStyle2 = [traitCollection userInterfaceStyle];

  if (userInterfaceStyle != userInterfaceStyle2)
  {
    lastRenderedShieldSignID = self->_lastRenderedShieldSignID;
    self->_lastRenderedShieldSignID = 0;

    _shieldImage = [(CarManeuverView *)self _shieldImage];
    [(UIImageView *)self->_shieldView setImage:_shieldImage];
  }
}

- (void)setLayoutType:(unint64_t)type
{
  configuredStyle = [(CarManeuverView *)self configuredStyle];
  layoutType = [configuredStyle layoutType];

  if (layoutType != type)
  {
    configuredStyle2 = [(CarManeuverView *)self configuredStyle];
    [configuredStyle2 setLayoutType:type];

    lowGuidanceStyle = [(CarManeuverView *)self lowGuidanceStyle];
    [lowGuidanceStyle setLayoutType:type];

    [(CarManeuverView *)self resetCompressionSizes];
    [(CarManeuverView *)self _setupConstraints];
    [(CarManeuverView *)self _updateConstraints];
    [(CarManeuverView *)self _updateStyling];

    [(CarManeuverView *)self _updateSubviews];
  }
}

- (void)_updateSubviews
{
  v3 = +[UIApplication sharedApplication];
  userInterfaceLayoutDirection = [v3 userInterfaceLayoutDirection];

  style = [(CarManeuverView *)self style];
  variant = [style variant];

  if (variant == 2)
  {
    v10 = 1;
    [(NavSignLaneGuidanceView *)self->_laneGuidanceView setHidden:1];
    [(NavSignLabel *)self->_distanceLabel setHidden:1];
    v12 = 0;
    v9 = 0;
    v11 = &OBJC_IVAR___CarManeuverView__shieldView;
  }

  else if (variant == 1)
  {
    v9 = 1;
    [(NavSignLaneGuidanceView *)self->_laneGuidanceView setHidden:1];
    [(NavSignLabel *)self->_distanceLabel setHidden:0];
    [(NavSignLabel *)self->_distanceLabel setTextAlignment:4];
    v12 = 0;
    v11 = &OBJC_IVAR___CarManeuverView__shieldView;
    v10 = 1;
  }

  else
  {
    if (variant)
    {
      return;
    }

    shouldShowLaneGuidance = [(CarManeuverView *)self shouldShowLaneGuidance];
    laneGuidanceView = self->_laneGuidanceView;
    if (!shouldShowLaneGuidance)
    {
      [(NavSignLaneGuidanceView *)laneGuidanceView setHidden:1];
      [(NavSignLabel *)self->_distanceLabel setHidden:0];
      if ([(CarManeuverView *)self _usesLargeScreenLayout]&& userInterfaceLayoutDirection == 1)
      {
        v15 = 2;
      }

      else
      {
        _usesLargeScreenLayout = [(CarManeuverView *)self _usesLargeScreenLayout];
        if (userInterfaceLayoutDirection == 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = _usesLargeScreenLayout;
        }

        if (v17)
        {
          v15 = 0;
        }

        else
        {
          v15 = 2;
        }
      }

      [(NavSignLabel *)self->_distanceLabel setTextAlignment:v15];
      v12 = 0;
      v9 = 0;
      v10 = 0;
      v11 = &OBJC_IVAR___CarManeuverView__instructionsLabel;
      v13 = &OBJC_IVAR___CarManeuverView__shieldView;
      goto LABEL_9;
    }

    [(NavSignLaneGuidanceView *)laneGuidanceView setHidden:0];
    [(NavSignLabel *)self->_distanceLabel setHidden:0];
    [(NavSignLabel *)self->_distanceLabel setTextAlignment:4];
    v9 = 0;
    v10 = 0;
    v11 = &OBJC_IVAR___CarManeuverView__shieldView;
    v12 = 1;
  }

  v13 = &OBJC_IVAR___CarManeuverView__instructionsLabel;
LABEL_9:
  [(GuidanceManeuverView *)self->_arrowView setHidden:v12];
  [*(&self->super.super.super.isa + *v13) setHidden:v9];
  v14 = *(&self->super.super.super.isa + *v11);

  [v14 setHidden:v10];
}

- (void)alignSecondarySignSubviewsToPrimaryManeuverView:(id)view
{
  viewCopy = view;
  style = [(CarManeuverView *)self style];
  isSecondary = [style isSecondary];

  if (isSecondary)
  {
    if (([viewCopy shouldShowLaneGuidance] & 1) == 0)
    {
      maneuverViewCenteringAnchor = [viewCopy maneuverViewCenteringAnchor];
      if (maneuverViewCenteringAnchor)
      {
        v8 = maneuverViewCenteringAnchor;
        instructionsLabelLeadingAnchor = [viewCopy instructionsLabelLeadingAnchor];

        if (instructionsLabelLeadingAnchor)
        {
          dynamicConstraints = [(CarManeuverView *)self dynamicConstraints];
          v11 = [dynamicConstraints objectForKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];
          allValues = [v11 allValues];
          [NSLayoutConstraint deactivateConstraints:allValues];

          dynamicConstraints2 = [(CarManeuverView *)self dynamicConstraints];
          v14 = [dynamicConstraints2 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
          allValues2 = [v14 allValues];
          [NSLayoutConstraint deactivateConstraints:allValues2];

          v16 = [[NSMutableDictionary alloc] initWithCapacity:2];
          centerXAnchor = [(GuidanceManeuverView *)self->_arrowView centerXAnchor];
          maneuverViewCenteringAnchor2 = [viewCopy maneuverViewCenteringAnchor];
          v19 = [centerXAnchor constraintEqualToAnchor:maneuverViewCenteringAnchor2];
          centerXAnchor2 = [(GuidanceManeuverView *)self->_arrowView centerXAnchor];
          maps_uniqueKey = [centerXAnchor2 maps_uniqueKey];
          [v16 setObject:v19 forKeyedSubscript:maps_uniqueKey];

          if ([(CarManeuverView *)self _usesLargeScreenLayout])
          {
            leadingAnchor = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
            instructionsLabelLeadingAnchor2 = [viewCopy instructionsLabelLeadingAnchor];
            maps_uniqueKey4 = [leadingAnchor constraintEqualToAnchor:instructionsLabelLeadingAnchor2];
            leadingAnchor2 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
            maps_uniqueKey2 = [leadingAnchor2 maps_uniqueKey];
            [v16 setObject:maps_uniqueKey4 forKeyedSubscript:maps_uniqueKey2];
          }

          else
          {
            dynamicConstraints3 = [(CarManeuverView *)self dynamicConstraints];
            v37 = [dynamicConstraints3 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
            leadingAnchor3 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
            maps_uniqueKey3 = [leadingAnchor3 maps_uniqueKey];
            leadingAnchor = [v37 objectForKeyedSubscript:maps_uniqueKey3];

            if (leadingAnchor)
            {
              instructionsLabelLeadingAnchor2 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
              maps_uniqueKey4 = [instructionsLabelLeadingAnchor2 maps_uniqueKey];
              [v16 setObject:leadingAnchor forKeyedSubscript:maps_uniqueKey4];
            }

            else
            {
              v45 = sub_10006D178();
              if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
              {
                v46 = 136315906;
                v47 = "[CarManeuverView alignSecondarySignSubviewsToPrimaryManeuverView:]";
                v48 = 2080;
                v49 = "CarManeuverView.m";
                v50 = 1024;
                v51 = 768;
                v52 = 2080;
                v53 = "constraint != nil";
                _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion: (%s)", &v46, 0x26u);
              }

              if (!sub_100E03634())
              {
                goto LABEL_21;
              }

              instructionsLabelLeadingAnchor2 = sub_10006D178();
              if (!os_log_type_enabled(instructionsLabelLeadingAnchor2, OS_LOG_TYPE_ERROR))
              {
LABEL_20:

LABEL_21:
                v40 = [v16 copy];
                dynamicConstraints4 = [(CarManeuverView *)self dynamicConstraints];
                [dynamicConstraints4 setObject:v40 forKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];

                dynamicConstraints5 = [(CarManeuverView *)self dynamicConstraints];
                v43 = [dynamicConstraints5 objectForKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];
                allValues3 = [v43 allValues];
                [NSLayoutConstraint activateConstraints:allValues3];

                goto LABEL_16;
              }

              maps_uniqueKey4 = +[NSThread callStackSymbols];
              v46 = 138412290;
              v47 = maps_uniqueKey4;
              _os_log_impl(&_mh_execute_header, instructionsLabelLeadingAnchor2, OS_LOG_TYPE_ERROR, "%@", &v46, 0xCu);
            }
          }

          goto LABEL_20;
        }
      }
    }

    dynamicConstraints6 = [(CarManeuverView *)self dynamicConstraints];
    v32 = [dynamicConstraints6 objectForKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];
    allValues4 = [v32 allValues];
    [NSLayoutConstraint deactivateConstraints:allValues4];

    dynamicConstraints7 = [(CarManeuverView *)self dynamicConstraints];
    v34 = [dynamicConstraints7 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
    allValues5 = [v34 allValues];
    [NSLayoutConstraint activateConstraints:allValues5];

    goto LABEL_15;
  }

  v27 = sub_10007E168();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v46) = 0;
    _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "Failed to align primary and secondary CarManeuverViews, reason: called on primary view.", &v46, 2u);
  }

  v28 = sub_10006D178();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    v46 = 136315650;
    v47 = "[CarManeuverView alignSecondarySignSubviewsToPrimaryManeuverView:]";
    v48 = 2080;
    v49 = "CarManeuverView.m";
    v50 = 1024;
    v51 = 750;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s [%s:%d] Assertion reached unexpectedly!", &v46, 0x1Cu);
  }

  if (sub_100E03634())
  {
    dynamicConstraints7 = sub_10006D178();
    if (os_log_type_enabled(dynamicConstraints7, OS_LOG_TYPE_ERROR))
    {
      v30 = +[NSThread callStackSymbols];
      v46 = 138412290;
      v47 = v30;
      _os_log_impl(&_mh_execute_header, dynamicConstraints7, OS_LOG_TYPE_ERROR, "%@", &v46, 0xCu);
    }

LABEL_15:
  }

LABEL_16:
}

- (void)_setupSubviews
{
  v3 = [NavSignLaneGuidanceView alloc];
  v4 = [(CarManeuverView *)self destination]- 1;
  if (v4 > 3)
  {
    v5 = 1;
  }

  else
  {
    v5 = qword_101215AA8[v4];
  }

  v6 = [(NavSignLaneGuidanceView *)v3 initWithLaneStyle:v5];
  laneGuidanceView = self->_laneGuidanceView;
  self->_laneGuidanceView = v6;

  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v8) = 1148846080;
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setContentHuggingPriority:1 forAxis:v8];
  LODWORD(v9) = 1148846080;
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setContentCompressionResistancePriority:1 forAxis:v9];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setHidden:1];
  [(CarManeuverView *)self addSubview:self->_laneGuidanceView];
  v10 = [GuidanceManeuverView alloc];
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(GuidanceManeuverView *)v10 initWithFrame:CGRectZero.origin.x, y, width, height];
  arrowView = self->_arrowView;
  self->_arrowView = height;

  [(GuidanceManeuverView *)self->_arrowView setShieldIdiom:1];
  [(GuidanceManeuverView *)self->_arrowView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v16) = 1144733696;
  [(GuidanceManeuverView *)self->_arrowView setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(GuidanceManeuverView *)self->_arrowView setContentCompressionResistancePriority:1 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [(GuidanceManeuverView *)self->_arrowView setContentHuggingPriority:0 forAxis:v18];
  style = [(CarManeuverView *)self style];
  variant = [style variant];

  if (variant != 2)
  {
    LODWORD(v21) = 1148846080;
    [(GuidanceManeuverView *)self->_arrowView setContentHuggingPriority:1 forAxis:v21];
  }

  [(CarManeuverView *)self addSubview:self->_arrowView];
  height2 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  distanceLabel = self->_distanceLabel;
  self->_distanceLabel = height2;

  [(NavSignLabel *)self->_distanceLabel setAccessibilityIdentifier:@"DistanceLabel"];
  [(NavSignLabel *)self->_distanceLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v24) = *"";
  [(NavSignLabel *)self->_distanceLabel setContentCompressionResistancePriority:0 forAxis:v24];
  LODWORD(v25) = 1148846080;
  [(NavSignLabel *)self->_distanceLabel setContentCompressionResistancePriority:1 forAxis:v25];
  LODWORD(v26) = 1144750080;
  [(NavSignLabel *)self->_distanceLabel setContentHuggingPriority:0 forAxis:v26];
  [(NavSignLabel *)self->_distanceLabel setMaxNumberOfLinesWithPreferredFont:1];
  [(NavSignLabel *)self->_distanceLabel setMaxNumberOfLinesWithLongestAlternative:1];
  [(NavSignLabel *)self->_distanceLabel setMaxNumberOfTotalLines:1];
  [(NavSignLabel *)self->_distanceLabel setPerferredFontAdjustsFontSizeToFitWidth:1];
  font = [(NavSignLabel *)self->_distanceLabel font];
  [font pointSize];
  v29 = self->_distanceLabel;
  if (10.0 / v28 > 1.0)
  {
    [(NavSignLabel *)v29 setPreferredFontMinimumScaleFactor:1.0];
  }

  else
  {
    font2 = [(NavSignLabel *)v29 font];
    [font2 pointSize];
    [(NavSignLabel *)self->_distanceLabel setPreferredFontMinimumScaleFactor:10.0 / v31];
  }

  [(NavSignLabel *)self->_distanceLabel setInlineShieldSize:4];
  [(NavSignLabel *)self->_distanceLabel setDelegate:self];
  [(CarManeuverView *)self addSubview:self->_distanceLabel];
  height3 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  instructionsLabel = self->_instructionsLabel;
  self->_instructionsLabel = height3;

  [(NavSignLabel *)self->_instructionsLabel setAccessibilityIdentifier:@"InstructionsLabel"];
  [(NavSignLabel *)self->_instructionsLabel setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v34) = 1148846080;
  [(NavSignLabel *)self->_instructionsLabel setContentHuggingPriority:1 forAxis:v34];
  LODWORD(v35) = 1132068864;
  [(NavSignLabel *)self->_instructionsLabel setContentCompressionResistancePriority:0 forAxis:v35];
  LODWORD(v36) = 1148846080;
  [(NavSignLabel *)self->_instructionsLabel setContentCompressionResistancePriority:1 forAxis:v36];
  if (self->_destination - 3 <= 1)
  {
    [(NavSignLabel *)self->_instructionsLabel setMaxNumberOfLinesWithLongestAlternative:1];
    font3 = [(NavSignLabel *)self->_instructionsLabel font];
    [font3 pointSize];
    v39 = self->_instructionsLabel;
    if (10.0 / v38 > 1.0)
    {
      [(NavSignLabel *)v39 setPreferredFontMinimumScaleFactor:1.0];
    }

    else
    {
      font4 = [(NavSignLabel *)v39 font];
      [font4 pointSize];
      [(NavSignLabel *)self->_instructionsLabel setPreferredFontMinimumScaleFactor:10.0 / v41];
    }
  }

  style2 = [(CarManeuverView *)self style];
  if ([style2 isSecondary])
  {
    v43 = 3;
  }

  else
  {
    v43 = 4;
  }

  [(NavSignLabel *)self->_instructionsLabel setInlineShieldSize:v43];

  [(NavSignLabel *)self->_instructionsLabel setDelegate:self];
  if (_os_feature_enabled_impl())
  {
    [(NavSignLabel *)self->_instructionsLabel setAdjustsFontForContentSizeCategory:self->_destination - 5 < 0xFFFFFFFFFFFFFFFELL];
  }

  [(CarManeuverView *)self addSubview:self->_instructionsLabel];
  v44 = [[UIImageView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
  shieldView = self->_shieldView;
  self->_shieldView = v44;

  [(UIImageView *)self->_shieldView setAccessibilityIdentifier:@"ShieldView"];
  [(UIImageView *)self->_shieldView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIImageView *)self->_shieldView setContentMode:1];
  LODWORD(v46) = 1132068864;
  [(UIImageView *)self->_shieldView setContentCompressionResistancePriority:1 forAxis:v46];
  LODWORD(v47) = 1132068864;
  [(UIImageView *)self->_shieldView setContentCompressionResistancePriority:0 forAxis:v47];
  LODWORD(v48) = 1144750080;
  [(UIImageView *)self->_shieldView setContentHuggingPriority:0 forAxis:v48];
  v49 = self->_shieldView;

  [(CarManeuverView *)self addSubview:v49];
}

- (CGSize)sizeForCompressionStage:(unint64_t)stage
{
  sizeByCompressionStage = [(CarManeuverView *)self sizeByCompressionStage];
  v6 = [sizeByCompressionStage count];

  if (v6 <= stage)
  {
    sizeByCompressionStage2 = [(CarManeuverView *)self sizeByCompressionStage];
    stage = [sizeByCompressionStage2 count] - 1;
  }

  sizeByCompressionStage3 = [(CarManeuverView *)self sizeByCompressionStage];
  v9 = [NSNumber numberWithUnsignedInteger:stage];
  v10 = [sizeByCompressionStage3 objectForKeyedSubscript:v9];

  [v10 CGSizeValue];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (unint64_t)compressionStageForSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  style = [(CarManeuverView *)self style];
  if ([style isSecondary])
  {
    v7 = 2;
  }

  else
  {
    v7 = 6;
  }

  v8 = 0;
  while (1)
  {
    sizeByCompressionStage = [(CarManeuverView *)self sizeByCompressionStage];
    v10 = [NSNumber numberWithUnsignedInteger:v8];
    v11 = [sizeByCompressionStage objectForKeyedSubscript:v10];
    [v11 CGSizeValue];
    v13 = v12;

    v14 = vabdd_f64(v13, height);
    if (v13 < height || v14 <= 2.22044605e-16)
    {
      break;
    }

    if (v7 == ++v8)
    {
      v8 = v7;
      break;
    }
  }

  v16 = sub_10007E168();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    variant = [(CarManeuverView *)self variant];
    if (variant > 2)
    {
      v18 = @".Unknown";
    }

    else
    {
      v18 = *(&off_101656248 + variant);
    }

    v19 = v18;
    v30.width = width;
    v30.height = height;
    v20 = NSStringFromCGSize(v30);
    v22 = 138413058;
    v23 = v19;
    v24 = 2048;
    selfCopy = self;
    v26 = 2112;
    v27 = v20;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, compressionStageForSize: %@, desiredStage: %lu", &v22, 0x2Au);
  }

  return v8;
}

- (void)setBlurMode:(int64_t)mode
{
  style = [(CarManeuverView *)self style];
  blurMode = [style blurMode];

  if (blurMode != mode)
  {
    style2 = [(CarManeuverView *)self style];
    [style2 setBlurMode:mode];

    [(CarManeuverView *)self _updateStyling];
  }
}

- (void)setCompressionStage:(unint64_t)stage
{
  if (self->_compressionStage != stage)
  {
    if ([(CarManeuverView *)self stopUpdatingCompressionStage])
    {
      v5 = sub_10007E168();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        variant = [(CarManeuverView *)self variant];
        if (variant > 2)
        {
          v7 = @".Unknown";
        }

        else
        {
          v7 = *(&off_101656248 + variant);
        }

        v15 = v7;
        compressionStage = self->_compressionStage;
        v20 = 138413058;
        v21 = v15;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2048;
        stageCopy2 = compressionStage;
        v26 = 2048;
        stageCopy = stage;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, Tried to change compressionStage from: %lu to %lu, but stopUpdatingCompressionStage was set, so ignoring the call.", &v20, 0x2Au);
      }
    }

    else
    {
      configuredStyle = [(CarManeuverView *)self configuredStyle];
      v9 = [configuredStyle variant] != 2 && (stage == 6 || self->_compressionStage == 6);

      self->_compressionStage = stage;
      style = [(CarManeuverView *)self style];
      [style setCompressionStage:stage];

      if (v9)
      {
        [(CarManeuverView *)self _setupConstraints];
        [(CarManeuverView *)self _updateConstraints];
      }

      v12 = sub_10007E168();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        variant2 = [(CarManeuverView *)self variant];
        if (variant2 > 2)
        {
          v14 = @".Unknown";
        }

        else
        {
          v14 = *(&off_101656248 + variant2);
        }

        v17 = v14;
        v18 = @"NO";
        if (v9)
        {
          v18 = @"YES";
        }

        v19 = v18;
        v20 = 138413058;
        v21 = v17;
        v22 = 2048;
        selfCopy2 = self;
        v24 = 2048;
        stageCopy2 = stage;
        v26 = 2112;
        stageCopy = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, setCompressionStage %lu. redoingConstraints: %@", &v20, 0x2Au);
      }

      [(CarManeuverView *)self setNeedsLayout];
      [(CarManeuverView *)self layoutIfNeeded];
    }
  }
}

- (void)setSecondarySignVisible:(BOOL)visible
{
  if (self->_secondarySignVisible != visible)
  {
    self->_secondarySignVisible = visible;
    [(CarManeuverView *)self setNeedsLayout];

    [(CarManeuverView *)self layoutIfNeeded];
  }
}

- (void)layoutSubviews
{
  v42.receiver = self;
  v42.super_class = CarManeuverView;
  [(CarManeuverView *)&v42 layoutSubviews];
  v3 = sub_10007E168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    variant = [(CarManeuverView *)self variant];
    if (variant > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + variant);
    }

    v6 = v5;
    [(CarManeuverView *)self frame];
    v7 = NSStringFromCGRect(v59);
    compressionStage = [(CarManeuverView *)self compressionStage];
    style = [(CarManeuverView *)self style];
    variant2 = [style variant];
    maxNumberOfTotalLines = [(NavSignLabel *)self->_instructionsLabel maxNumberOfTotalLines];
    labelLineBreakMode = [(CarManeuverView *)self labelLineBreakMode];
    _shouldShowLaneGuidance = [(CarManeuverView *)self _shouldShowLaneGuidance];
    v14 = @"YES";
    if (!_shouldShowLaneGuidance)
    {
      v14 = @"NO";
    }

    v15 = v14;
    *buf = 138414082;
    v44 = v6;
    v45 = 2048;
    selfCopy3 = self;
    v47 = 2112;
    v48 = v7;
    v49 = 2048;
    v50 = compressionStage;
    v51 = 2048;
    v52 = variant2;
    v53 = 2048;
    v54 = maxNumberOfTotalLines;
    v55 = 2048;
    v56 = labelLineBreakMode;
    v57 = 2112;
    v58 = v15;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, layoutSubviews before updating styles, frame: %@, compressionStage: %lu, variant: %lu, instructionMaxLines: %ld, lineBreakMode: %ld, shouldShowLaneGuidance: %@", buf, 0x52u);
  }

  [(CarManeuverView *)self _updateStyling];
  [(CarManeuverView *)self _updateSubviews];
  [(CarManeuverView *)self _updateConstraints];
  [(NavSignLabel *)self->_distanceLabel updateLabelIfNeeded];
  [(NavSignLabel *)self->_instructionsLabel updateLabelIfNeeded];
  style2 = [(CarManeuverView *)self style];
  if ([style2 variant])
  {
    goto LABEL_9;
  }

  image = [(UIImageView *)self->_shieldView image];
  if (!image)
  {
    goto LABEL_9;
  }

  v21 = image;
  image2 = [(UIImageView *)self->_shieldView image];
  [image2 size];
  v24 = v23;

  if (v24 > 0.0)
  {
    [(UIImageView *)self->_shieldView frame];
    v26 = v25;
    image3 = [(UIImageView *)self->_shieldView image];
    [image3 size];
    [(UIImageView *)self->_shieldView setHidden:v26 / v28 < 0.779999971];

    if ([(UIImageView *)self->_shieldView isHidden])
    {
      style2 = sub_10007E168();
      if (os_log_type_enabled(style2, OS_LOG_TYPE_INFO))
      {
        variant3 = [(CarManeuverView *)self variant];
        if (variant3 > 2)
        {
          v30 = @".Unknown";
        }

        else
        {
          v30 = *(&off_101656248 + variant3);
        }

        v41 = v30;
        *buf = 138412546;
        v44 = v41;
        v45 = 2048;
        selfCopy3 = self;
        _os_log_impl(&_mh_execute_header, style2, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, Hide exit shield because it scaled below the min threshold to fit with content.", buf, 0x16u);
      }

LABEL_9:
    }
  }

  v17 = sub_10007E168();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    variant4 = [(CarManeuverView *)self variant];
    if (variant4 > 2)
    {
      v19 = @".Unknown";
    }

    else
    {
      v19 = *(&off_101656248 + variant4);
    }

    v31 = v19;
    [(CarManeuverView *)self frame];
    v32 = NSStringFromCGRect(v60);
    compressionStage2 = [(CarManeuverView *)self compressionStage];
    style3 = [(CarManeuverView *)self style];
    variant5 = [style3 variant];
    maxNumberOfTotalLines2 = [(NavSignLabel *)self->_instructionsLabel maxNumberOfTotalLines];
    labelLineBreakMode2 = [(CarManeuverView *)self labelLineBreakMode];
    _shouldShowLaneGuidance2 = [(CarManeuverView *)self _shouldShowLaneGuidance];
    v39 = @"YES";
    if (!_shouldShowLaneGuidance2)
    {
      v39 = @"NO";
    }

    v40 = v39;
    *buf = 138414082;
    v44 = v31;
    v45 = 2048;
    selfCopy3 = self;
    v47 = 2112;
    v48 = v32;
    v49 = 2048;
    v50 = compressionStage2;
    v51 = 2048;
    v52 = variant5;
    v53 = 2048;
    v54 = maxNumberOfTotalLines2;
    v55 = 2048;
    v56 = labelLineBreakMode2;
    v57 = 2112;
    v58 = v40;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, layoutSubviews after updating styles, frame: %@, compressionStage: %lu, variant: %lu, instructionMaxLines: %ld, lineBreakMode: %ld, shouldShowLaneGuidance: %@", buf, 0x52u);
  }
}

- (CarManeuverView)initWithGuidance:(id)guidance variant:(unint64_t)variant destination:(unint64_t)destination layoutType:(unint64_t)type sizeDataSource:(id)source
{
  guidanceCopy = guidance;
  sourceCopy = source;
  v38.receiver = self;
  v38.super_class = CarManeuverView;
  v15 = [(CarManeuverView *)&v38 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v16 = v15;
  if (v15)
  {
    [(CarManeuverView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeWeak(&v16->_sizeDataSource, sourceCopy);
    v17 = objc_opt_new();
    dynamicConstraints = v16->_dynamicConstraints;
    v16->_dynamicConstraints = v17;

    v16->_destination = destination;
    objc_storeStrong(&v16->_guidance, guidance);
    v19 = [CarManeuverViewStyle styleWithVariant:variant destination:destination layoutType:type];
    configuredStyle = v16->_configuredStyle;
    v16->_configuredStyle = v19;

    v21 = [CarManeuverViewStyle styleWithVariant:1 destination:destination layoutType:0];
    lowGuidanceStyle = v16->_lowGuidanceStyle;
    v16->_lowGuidanceStyle = v21;

    [(NavSignManeuverGuidanceInfo *)v16->_guidance addGuidanceObserver:v16];
    [(CarManeuverView *)v16 _setupSubviews];
    [(CarManeuverView *)v16 _setupStyling];
    [(CarManeuverView *)v16 _setupConstraints];
    [(CarManeuverView *)v16 _updateContents];
    v23 = sub_10007E168();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
LABEL_15:

      goto LABEL_16;
    }

    v24 = v16;
    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(CarManeuverView *)v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_8;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_8:

    variant = [(CarManeuverView *)v24 variant];
    if (variant > 2)
    {
      v31 = @".Unknown";
    }

    else
    {
      v31 = *(&off_101656248 + variant);
    }

    v32 = v31;
    destination = v16->_destination;
    if (destination > 4)
    {
      v34 = @".Unknown";
    }

    else
    {
      v34 = *(&off_101623A48 + destination);
    }

    v35 = v34;
    signID = [guidanceCopy signID];
    *buf = 138544386;
    v40 = v29;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v35;
    v45 = 2112;
    v46 = guidanceCopy;
    v47 = 2114;
    v48 = signID;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] Initialized variant: %@, destination: %@, guidance: %@, %{public}@", buf, 0x34u);

    goto LABEL_15;
  }

LABEL_16:

  return v16;
}

@end