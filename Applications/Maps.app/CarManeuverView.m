@interface CarManeuverView
- ($3B4E6468B3EC00ED59A5207EEA3643F1)primaryMetrics;
- (BOOL)_isDisplayingStartManeuver;
- (BOOL)_shouldShowLaneGuidance;
- (BOOL)_usesLargeScreenLayout;
- (BOOL)shouldShowLaneGuidance;
- (CGSize)sizeForCompressionStage:(unint64_t)a3;
- (CarManeuverView)initWithGuidance:(id)a3 variant:(unint64_t)a4 destination:(unint64_t)a5 layoutType:(unint64_t)a6 sizeDataSource:(id)a7;
- (CarManeuverViewAnalyticsDelegate)analyticsDelegate;
- (CarManeuverViewSizeDataSource)sizeDataSource;
- (CarManeuverViewStyle)style;
- (NSDictionary)sizeByCompressionStage;
- (id)_instructionHorizontalPrimaryConstraint;
- (id)_maneuverArtworkForDirection:(int)a3;
- (id)_maneuverBottomPrimaryConstraint;
- (id)_maneuverTopPrimaryConstraint;
- (id)_shieldImage;
- (id)_shieldViewPrimaryLeadingConstraint;
- (int)GEOManeuverTypeForGEOLaneDirection:(int)a3;
- (int)_preferredDirectionForLaneGuidance;
- (unint64_t)compressionStageForSize:(CGSize)a3;
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
- (void)alignSecondarySignSubviewsToPrimaryManeuverView:(id)a3;
- (void)didMoveToWindow;
- (void)hideLaneGuidance;
- (void)layoutSubviews;
- (void)navSignLabel:(id)a3 didSelectAlternate:(unint64_t)a4;
- (void)resetCompressionSizes;
- (void)setBlurMode:(int64_t)a3;
- (void)setCompressionStage:(unint64_t)a3;
- (void)setLayoutType:(unint64_t)a3;
- (void)setSecondarySignVisible:(BOOL)a3;
- (void)showLaneGuidance:(id)a3;
- (void)showLaneGuidanceFromManeuver:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateLaneGuidance:(id)a3;
@end

@implementation CarManeuverView

- (CarManeuverViewStyle)style
{
  v3 = [(CarManeuverView *)self configuredStyle];
  v4 = [v3 variant];

  if (v4 == 2 || [(CarManeuverView *)self compressionStage]< 6)
  {
    v5 = [(CarManeuverView *)self configuredStyle];
  }

  else
  {
    v5 = [(CarManeuverView *)self lowGuidanceStyle];
  }

  return v5;
}

- (void)_updateContents
{
  v3 = [(NavSignLaneGuidanceInfo *)self->_laneGuidance lanes];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setLanes:v3];

  [(CarManeuverView *)self _updateManeuverView];
  [(CarManeuverView *)self _updateLabels];
  v4 = [(CarManeuverView *)self style];
  v5 = [v4 variant];

  if (v5 != 1)
  {

    [(CarManeuverView *)self _updateShield];
  }
}

- (void)_updateManeuverView
{
  if ([(NavSignLaneGuidanceInfo *)self->_laneGuidance isForMidStep])
  {
    v4 = [(CarManeuverView *)self _maneuverArtworkForDirection:[(CarManeuverView *)self _preferredDirectionForLaneGuidance]];
    [(GuidanceManeuverView *)self->_arrowView setManeuverArtwork:?];
  }

  else
  {
    v4 = [(CarManeuverView *)self guidance];
    v3 = [v4 maneuverArtwork];
    [(GuidanceManeuverView *)self->_arrowView setManeuverArtwork:v3];
  }
}

- (void)_updateShield
{
  v5 = [(CarManeuverView *)self _shieldImage];
  v3 = [(UIImageView *)self->_shieldView image];
  v4 = [MNComparison isValue:v3 equalTo:v5];

  if ((v4 & 1) == 0)
  {
    [(UIImageView *)self->_shieldView setImage:v5];
  }
}

- (id)_shieldImage
{
  v3 = [(CarManeuverView *)self guidance];
  v4 = [v3 signID];

  if (![MNComparison isValue:v4 equalTo:self->_lastRenderedShieldSignID])
  {
    objc_storeStrong(&self->_lastRenderedShieldSignID, v4);
    v5 = [(CarManeuverView *)self _screen];
    [v5 scale];
    v7 = v6;

    v8 = [(CarManeuverView *)self sizeDataSource];
    [v8 dynamicPointScaleValue];
    v10 = v9;

    v11 = [(CarManeuverView *)self destination];
    v12 = v11 - 1 < 2 || v11 == 4;
    if (v11 <= 4 && ((1 << v11) & 0x16) != 0)
    {
      v13 = [(CarManeuverView *)self traitCollection];
      v14 = [v13 userInterfaceStyle] == 2;
    }

    else
    {
      v13 = [(CarManeuverView *)self style];
      v14 = [v13 blurMode] == 3;
    }

    v15 = v14;

    v16 = [(CarManeuverView *)self guidance];
    v17 = [v16 shieldInfo];
    v18 = [v17 _car_shieldImageWithSize:3 scale:v12 useAdaptiveStyling:v15 nightMode:v7];

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
  v3 = [(CarManeuverView *)self laneGuidance];
  if ([v3 isForMidStep])
  {
    v4 = [(CarManeuverView *)self style];
    v5 = [v4 isSecondary];

    if ((v5 & 1) == 0)
    {
      v6 = [(CarManeuverView *)self laneGuidance];
      v7 = [v6 midStepTitles];
      v8 = [v7 count];

      if (v8)
      {
        v9 = [(CarManeuverView *)self laneGuidance];
        [v9 midStepTitles];
      }

      else
      {
        v9 = [(CarManeuverView *)self guidance];
        [v9 majorTextAlternatives];
      }
      v32 = ;
      [(NavSignLabel *)self->_distanceLabel setTextAlternatives:v32];

      v34 = [(CarManeuverView *)self laneGuidance];
      v33 = [v34 textAlternatives];
      [(NavSignLabel *)self->_instructionsLabel setTextAlternatives:v33];

      return;
    }
  }

  else
  {
  }

  if ([(CarManeuverView *)self _isDisplayingStartManeuver])
  {
    v10 = [(CarManeuverView *)self style];
    if ([v10 variant] == 1)
    {
      v11 = [(CarManeuverView *)self guidance];
      v12 = [v11 majorTextAlternatives];
      v13 = [v12 count];

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

  v22 = [(CarManeuverView *)self guidance];
  v23 = [v22 majorTextAlternatives];
  [(NavSignLabel *)self->_distanceLabel setTextAlternatives:v23];

  v24 = [(CarManeuverView *)self guidance];
  v25 = [v24 minorTextAlternatives];
  [(NavSignLabel *)self->_instructionsLabel setTextAlternatives:v25];

  if (self->_destination - 3 <= 1)
  {
    v26 = [(NavSignLabel *)self->_distanceLabel text];
    v27 = [v26 length];

    if (v27)
    {
      v28 = [(CarManeuverView *)self style];
      -[NavSignLabel setMaxNumberOfTotalLines:](self->_instructionsLabel, "setMaxNumberOfTotalLines:", [v28 instructionsMaxNumberOfTotalLines]);

      v29 = [(CarManeuverView *)self style];
      -[NavSignLabel setMaxNumberOfLinesWithPreferredFont:](self->_instructionsLabel, "setMaxNumberOfLinesWithPreferredFont:", [v29 instructionsMaxNumberOfLinesWithPreferredFont]);

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
  v2 = [(CarManeuverView *)self guidance];
  v3 = [v2 maneuverArtwork];
  v4 = [v3 maneuver];

  return ((v4 - 17) & 0xFFFFFFF7) == 0;
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
  v3 = [(CarManeuverView *)self laneGuidance];
  if (v3)
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
  v2 = [(CarManeuverView *)self style];
  v3 = [v2 layoutType] == 1;

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
      v5 = [(CarManeuverView *)self variant];
      if (v5 > 2)
      {
        v6 = @".Unknown";
      }

      else
      {
        v6 = *(&off_101656248 + v5);
      }

      v7 = v6;
      *buf = 138412546;
      v62 = v7;
      v63 = 2048;
      v64 = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, sizing calculations began ----------------------------------", buf, 0x16u);
    }

    v8 = objc_opt_new();
    v9 = [UIView alloc];
    v10 = [(CarManeuverView *)self sizeDataSource];
    [v10 availableWidth];
    v12 = [v9 initWithFrame:{0.0, 0.0, v11, 1.79769313e308}];

    v13 = [CarManeuverView alloc];
    v14 = [(CarManeuverView *)self guidance];
    v15 = [(CarManeuverView *)self configuredStyle];
    v58 = [v15 variant];
    v16 = self;
    v17 = [(CarManeuverView *)self destination];
    v18 = [(CarManeuverView *)self configuredStyle];
    v19 = [v18 layoutType];
    v60 = self;
    v20 = [(CarManeuverView *)self sizeDataSource];
    v21 = v13;
    v22 = v14;
    v23 = [(CarManeuverView *)v21 initWithGuidance:v14 variant:v58 destination:v17 layoutType:v19 sizeDataSource:v20];

    [(CarManeuverView *)v23 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(CarManeuverView *)v23 setLabelLineBreakMode:0];
    [(CarManeuverView *)v23 showLaneGuidanceFromManeuver:v16];
    [v12 addSubview:v23];
    v59 = [(CarManeuverView *)v23 topAnchor];
    v57 = [v12 topAnchor];
    v56 = [v59 constraintEqualToAnchor:v57];
    v67[0] = v56;
    v24 = [(CarManeuverView *)v23 leadingAnchor];
    v25 = [v12 leadingAnchor];
    v26 = [v24 constraintEqualToAnchor:v25];
    v67[1] = v26;
    v27 = [(CarManeuverView *)v23 trailingAnchor];
    v28 = [v12 trailingAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v67[2] = v29;
    v30 = [NSArray arrayWithObjects:v67 count:3];
    [NSLayoutConstraint activateConstraints:v30];

    v31 = [(CarManeuverView *)v60 style];
    LODWORD(v28) = [v31 isSecondary];

    v32 = 0;
    if (v28)
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
    v39 = [(CarManeuverView *)v60 style];
    v40 = [v39 isSecondary];

    if ((v40 & 1) == 0)
    {
      v41 = [(CarManeuverView *)v60 sizeDataSource];
      [v41 availableWidth];
      v42 = [NSValue valueWithSize:?];
      v43 = [NSNumber numberWithUnsignedInteger:v33];
      [v8 setObject:v42 forKeyedSubscript:v43];

      v33 |= 1uLL;
    }

    v44 = [NSValue valueWithSize:CGSizeZero.width, CGSizeZero.height];
    v45 = [NSNumber numberWithUnsignedInteger:v33];
    [v8 setObject:v44 forKeyedSubscript:v45];

    objc_storeStrong(&v60->_sizeByCompressionStage, v8);
    v46 = sub_10007E168();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
    {
      v47 = [(CarManeuverView *)v60 variant];
      if (v47 > 2)
      {
        v48 = @".Unknown";
      }

      else
      {
        v48 = *(&off_101656248 + v47);
      }

      v49 = v48;
      v50 = [v8 description];
      *buf = 138412802;
      v62 = v49;
      v63 = 2048;
      v64 = v60;
      v65 = 2112;
      v66 = v50;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, building sizeByCompressionStage: %@", buf, 0x20u);
    }

    v51 = sub_10007E168();
    if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
    {
      v52 = [(CarManeuverView *)v60 variant];
      if (v52 > 2)
      {
        v53 = @".Unknown";
      }

      else
      {
        v53 = *(&off_101656248 + v52);
      }

      v54 = v53;
      *buf = 138412546;
      v62 = v54;
      v63 = 2048;
      v64 = v60;
      _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, sizing calculations ended ----------------------------------", buf, 0x16u);
    }

    sizeByCompressionStage = v60->_sizeByCompressionStage;
  }

  return sizeByCompressionStage;
}

- (void)didMoveToWindow
{
  v5.receiver = self;
  v5.super_class = CarManeuverView;
  [(CarManeuverView *)&v5 didMoveToWindow];
  v3 = [(CarManeuverView *)self window];
  -[CarManeuverViewStyle setAlignmentStyle:](self->_configuredStyle, "setAlignmentStyle:", [v3 _car_hybridInstrumentClusterAlignmentStyle]);

  v4 = [(CarManeuverView *)self window];
  -[CarManeuverViewStyle setAlignmentStyle:](self->_lowGuidanceStyle, "setAlignmentStyle:", [v4 _car_hybridInstrumentClusterAlignmentStyle]);

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
    v4 = [(CarManeuverView *)self variant];
    if (v4 > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + v4);
    }

    v6 = v5;
    [(CarManeuverView *)self frame];
    v7 = NSStringFromCGRect(v15);
    v9 = 138412802;
    v10 = v6;
    v11 = 2048;
    v12 = self;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, resetting compression sizes. (current frame: %@)", &v9, 0x20u);
  }

  sizeByCompressionStage = self->_sizeByCompressionStage;
  self->_sizeByCompressionStage = 0;
}

- (unint64_t)variant
{
  v2 = [(CarManeuverView *)self configuredStyle];
  v3 = [v2 variant];

  return v3;
}

- (void)_setupConstraints
{
  v3 = sub_10007E168();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(CarManeuverView *)self variant];
    if (v4 > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + v4);
    }

    v6 = v5;
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2048;
    *&buf[14] = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, _setupConstraints", buf, 0x16u);
  }

  v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v8 = [(CarManeuverView *)self myConstraints];
  [NSLayoutConstraint deactivateConstraints:v8];

  v9 = [(CarManeuverView *)self dynamicConstraints];
  [v9 enumerateKeysAndObjectsUsingBlock:&stru_101650340];

  v10 = [(CarManeuverView *)self dynamicConstraints];
  [v10 removeAllObjects];

  v11 = objc_opt_new();
  v12 = [(UIImageView *)self->_shieldView heightAnchor];
  v13 = [(CarManeuverView *)self sizeDataSource];
  [v13 dynamicPointScaleValue];
  v15 = v14;

  v16 = [v12 constraintLessThanOrEqualToConstant:v15 * 16.0];
  v254 = v16;
  v17 = 1;
  v18 = [NSArray arrayWithObjects:&v254 count:1];
  [v11 addObjectsFromArray:v18];

  v19 = [(CarManeuverView *)self laneGuidance];
  v20 = [v19 midStepTitles];
  if (![v20 count])
  {
    v21 = [(CarManeuverView *)self guidance];
    v22 = [v21 majorTextAlternatives];
    v17 = [v22 count] != 0;
  }

  v23 = [(CarManeuverView *)self style];
  v24 = [v23 variant];

  if (v24 == 2)
  {
    v216 = [(NavSignLabel *)self->_instructionsLabel topAnchor];
    v211 = [v216 maps_uniqueKey];
    v228[0] = v211;
    v207 = [(NavSignLabel *)self->_instructionsLabel topAnchor];
    v201 = [(CarManeuverView *)self topAnchor];
    [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
    LODWORD(v60) = 1148846080;
    v61 = [v207 constraintEqualToAnchor:v201 constant:v59 + 6.0 priority:v60];
    v229[0] = v61;
    v62 = [(NavSignLabel *)self->_instructionsLabel bottomAnchor];
    v63 = [v62 maps_uniqueKey];
    v228[1] = v63;
    v64 = [(CarManeuverView *)self bottomAnchor];
    v65 = [(NavSignLabel *)self->_instructionsLabel bottomAnchor];
    [(NavSignLabel *)self->_instructionsLabel inlineShieldLastBaselineBottomOffset];
    LODWORD(v67) = 1148846080;
    [v64 constraintEqualToAnchor:v65 constant:v66 + 6.0 priority:v67];
    v68 = v224 = v11;
    v229[1] = v68;
    v69 = [NSDictionary dictionaryWithObjects:v229 forKeys:v228 count:2];
    v70 = [(CarManeuverView *)self dynamicConstraints];
    [v70 setObject:v69 forKeyedSubscript:@"SecondaryLabelsBaselines"];

    v71 = [(CarManeuverView *)self dynamicConstraints];
    v72 = [v71 objectForKeyedSubscript:@"SecondaryLabelsBaselines"];
    v73 = [v72 allValues];
    [v224 addObjectsFromArray:v73];

    v217 = [(GuidanceManeuverView *)self->_arrowView centerXAnchor];
    v212 = [v217 maps_uniqueKey];
    v226[0] = v212;
    v208 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    v202 = [(CarManeuverView *)self leadingAnchor];
    v195 = [v208 constraintEqualToAnchor:v202 constant:13.0];
    v227[0] = v195;
    v74 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
    v75 = [v74 maps_uniqueKey];
    v226[1] = v75;
    v76 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
    v77 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v78 = [v76 constraintEqualToAnchor:v77 constant:9.0];
    v227[1] = v78;
    v79 = [NSDictionary dictionaryWithObjects:v227 forKeys:v226 count:2];
    v80 = [(CarManeuverView *)self dynamicConstraints];
    [v80 setObject:v79 forKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];

    v81 = [(CarManeuverView *)self dynamicConstraints];
    v82 = [v81 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
    v83 = [v82 allValues];
    [v224 addObjectsFromArray:v83];

    v218 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v213 = [v218 constraintEqualToConstant:18.0];
    v225[0] = v213;
    v84 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    v85 = [v84 constraintGreaterThanOrEqualToConstant:13.0];
    v225[1] = v85;
    v86 = [(GuidanceManeuverView *)self->_arrowView centerYAnchor];
    v87 = [(CarManeuverView *)self centerYAnchor];
    v88 = [v86 constraintEqualToAnchor:v87];
    v225[2] = v88;
    v89 = [(NavSignLabel *)self->_instructionsLabel trailingAnchor];
    v90 = [(CarManeuverView *)self trailingAnchor];
    v91 = [v89 constraintEqualToAnchor:v90 constant:-11.0];
    v225[3] = v91;
    v92 = [NSArray arrayWithObjects:v225 count:4];
    [v224 addObjectsFromArray:v92];

    v11 = v224;
    v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;

    v58 = v218;
LABEL_17:

    goto LABEL_25;
  }

  if (v24 == 1)
  {
    v223 = [(CarManeuverView *)self widthAnchor];
    v221 = [v223 constraintGreaterThanOrEqualToConstant:100.0];
    v230[0] = v221;
    v215 = [(GuidanceManeuverView *)self->_arrowView topAnchor];
    v206 = [(CarManeuverView *)self topAnchor];
    v200 = [v215 constraintEqualToAnchor:v206 constant:11.0];
    v230[1] = v200;
    v194 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    v189 = [(CarManeuverView *)self leadingAnchor];
    v185 = [v194 constraintEqualToAnchor:v189 constant:7.5];
    v230[2] = v185;
    v181 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v177 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v173 = [v181 constraintEqualToAnchor:v177 constant:-7.0];
    v230[3] = v173;
    v169 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v165 = [v169 constraintEqualToConstant:23.0];
    v230[4] = v165;
    v161 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    v158 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v155 = [v161 constraintEqualToAnchor:v158];
    v230[5] = v155;
    v152 = [(GuidanceManeuverView *)self->_arrowView bottomAnchor];
    v150 = [(CarManeuverView *)self bottomAnchor];
    v148 = [v152 constraintEqualToAnchor:v150 constant:-11.0];
    v230[6] = v148;
    v146 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
    v144 = [(CarManeuverView *)self topAnchor];
    v47 = [v146 constraintEqualToAnchor:v144 constant:29.0];
    v230[7] = v47;
    v48 = [(NavSignLabel *)self->_distanceLabel lastBaselineAnchor];
    [(CarManeuverView *)self bottomAnchor];
    v50 = v49 = v17;
    v51 = [v48 constraintEqualToAnchor:v50 constant:-16.0];
    v230[8] = v51;
    [(NavSignLabel *)self->_distanceLabel trailingAnchor];
    v53 = v52 = v11;
    v54 = [(CarManeuverView *)self trailingAnchor];
    v55 = -4.0;
    if (v49)
    {
      v55 = -11.0;
    }

    v56 = [v53 constraintEqualToAnchor:v54 constant:v55];
    v230[9] = v56;
    v57 = [NSArray arrayWithObjects:v230 count:10];
    [v52 addObjectsFromArray:v57];

    v11 = v52;
    v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;

    v58 = v223;
    goto LABEL_17;
  }

  if (!v24)
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
    v219 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView leadingAnchor];
    v214 = [(CarManeuverView *)self leadingAnchor];
    v205 = [v219 constraintEqualToAnchor:v214 constant:*(&v252 + 1)];
    v242[0] = v205;
    v198 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView trailingAnchor];
    v192 = [(CarManeuverView *)self trailingAnchor];
    v25 = [v198 constraintEqualToAnchor:v192 constant:v253];
    v242[1] = v25;
    v26 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView topAnchor];
    v27 = [(CarManeuverView *)self topAnchor];
    v28 = [v26 constraintEqualToAnchor:v27 constant:*&v252];
    v242[2] = v28;
    v29 = [(NavSignLaneGuidanceView *)self->_laneGuidanceView heightAnchor];
    v30 = [v29 constraintLessThanOrEqualToConstant:*(&v251 + 1)];
    v242[3] = v30;
    v31 = [NSArray arrayWithObjects:v242 count:4];
    v222 = v11;
    [v11 addObjectsFromArray:v31];

    v220 = +[NSMutableDictionary dictionary];
    v199 = [(UIImageView *)self->_shieldView leadingAnchor];
    v193 = [v199 maps_uniqueKey];
    v240[0] = v193;
    v188 = [(CarManeuverView *)self _shieldViewPrimaryLeadingConstraint];
    v241[0] = v188;
    v184 = [(UIImageView *)self->_shieldView trailingAnchor];
    v180 = [v184 maps_uniqueKey];
    v240[1] = v180;
    v176 = [(UIImageView *)self->_shieldView trailingAnchor];
    v172 = [(CarManeuverView *)self trailingAnchor];
    v168 = [v176 constraintEqualToAnchor:v172 constant:*&v249];
    v241[1] = v168;
    v164 = [(GuidanceManeuverView *)self->_arrowView topAnchor];
    v160 = [v164 maps_uniqueKey];
    v240[2] = v160;
    v157 = [(CarManeuverView *)self _maneuverTopPrimaryConstraint];
    v241[2] = v157;
    v154 = [(GuidanceManeuverView *)self->_arrowView bottomAnchor];
    v151 = [v154 maps_uniqueKey];
    v240[3] = v151;
    v149 = [(CarManeuverView *)self _maneuverBottomPrimaryConstraint];
    v241[3] = v149;
    v147 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    v145 = [v147 maps_uniqueKey];
    v240[4] = v145;
    v143 = [(GuidanceManeuverView *)self->_arrowView leadingAnchor];
    v142 = [(CarManeuverView *)self leadingAnchor];
    v141 = [v143 constraintEqualToAnchor:v142 constant:*&buf[16]];
    v241[4] = v141;
    v140 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v139 = [v140 maps_uniqueKey];
    v240[5] = v139;
    v32 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v33 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v34 = [v32 constraintEqualToAnchor:v33 constant:*&buf[24]];
    v241[5] = v34;
    v35 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    v36 = [v35 maps_uniqueKey];
    v240[6] = v36;
    v37 = [(GuidanceManeuverView *)self->_arrowView widthAnchor];
    v38 = [v37 constraintGreaterThanOrEqualToConstant:*(&v244 + 1)];
    v241[6] = v38;
    v39 = [NSDictionary dictionaryWithObjects:v241 forKeys:v240 count:7];
    [v220 addEntriesFromDictionary:v39];

    LODWORD(v37) = _os_feature_enabled_impl();
    v40 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
    v41 = [v40 maps_uniqueKey];
    v42 = v41;
    if (v37)
    {
      v238 = v41;
      v43 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
      v44 = [v43 constraintGreaterThanOrEqualToConstant:*&v244];
      v239 = v44;
      v45 = &v239;
      v46 = &v238;
    }

    else
    {
      v236 = v41;
      v43 = [(GuidanceManeuverView *)self->_arrowView heightAnchor];
      v44 = [v43 constraintEqualToConstant:*&v244];
      v237 = v44;
      v45 = &v237;
      v46 = &v236;
    }

    v93 = [NSDictionary dictionaryWithObjects:v45 forKeys:v46 count:1];
    [v220 addEntriesFromDictionary:v93];

    if ([(CarManeuverView *)self _usesLargeScreenLayout]|| !v210)
    {
      v94 = [(GuidanceManeuverView *)self->_arrowView centerYAnchor];
      v95 = [(CarManeuverView *)self centerYAnchor];
      v96 = [v94 constraintEqualToAnchor:v95];
      v97 = [(GuidanceManeuverView *)self->_arrowView centerYAnchor];
      v98 = [v97 maps_uniqueKey];
      [v220 setObject:v96 forKey:v98];
    }

    v99 = [v220 copy];
    v100 = [(CarManeuverView *)self dynamicConstraints];
    [v100 setObject:v99 forKeyedSubscript:@"PrimaryManeuverView"];

    v203 = [(UIImageView *)self->_shieldView leadingAnchor];
    v196 = [v203 maps_uniqueKey];
    v234[0] = v196;
    v186 = [(UIImageView *)self->_shieldView leadingAnchor];
    v190 = [(NavSignLabel *)self->_distanceLabel textTrailingLayoutGuide];
    v182 = [v190 trailingAnchor];
    v178 = [v186 constraintGreaterThanOrEqualToAnchor:v182 constant:*buf];
    v235[0] = v178;
    v174 = [(UIImageView *)self->_shieldView trailingAnchor];
    v170 = [v174 maps_uniqueKey];
    v234[1] = v170;
    v166 = [(UIImageView *)self->_shieldView trailingAnchor];
    v162 = [(CarManeuverView *)self trailingAnchor];
    v101 = [v166 constraintEqualToAnchor:v162 constant:*&v249];
    v235[1] = v101;
    v102 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v103 = [v102 maps_uniqueKey];
    v234[2] = v103;
    v104 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v105 = [(CarManeuverView *)self leadingAnchor];
    v106 = [v104 constraintEqualToAnchor:v105 constant:*&v245];
    v235[2] = v106;
    v107 = [NSDictionary dictionaryWithObjects:v235 forKeys:v234 count:3];
    v108 = [(CarManeuverView *)self dynamicConstraints];
    [v108 setObject:v107 forKeyedSubscript:@"PrimaryNoManeuverView"];

    v204 = [(UIImageView *)self->_shieldView topAnchor];
    v197 = [v204 maps_uniqueKey];
    v232[0] = v197;
    v209 = [(UIImageView *)self->_shieldView topAnchor];
    v191 = [(CarManeuverView *)self topAnchor];
    v187 = [v209 constraintEqualToAnchor:v191 constant:*(&v245 + 1)];
    v233[0] = v187;
    v183 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
    v179 = [v183 maps_uniqueKey];
    v232[1] = v179;
    v175 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
    v171 = [(CarManeuverView *)self topAnchor];
    v167 = [v175 constraintEqualToAnchor:v171 constant:*(&v246 + 1)];
    v233[1] = v167;
    v163 = [(NavSignLabel *)self->_instructionsLabel firstBaselineAnchor];
    v159 = [v163 maps_uniqueKey];
    v232[2] = v159;
    v156 = [(NavSignLabel *)self->_instructionsLabel firstBaselineAnchor];
    v153 = [(CarManeuverView *)self topAnchor];
    v109 = *&v248;
    [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
    LODWORD(v111) = 1148846080;
    v112 = [v156 constraintEqualToAnchor:v153 constant:v110 + v109 priority:v111];
    v233[2] = v112;
    v113 = [(NavSignLabel *)self->_instructionsLabel lastBaselineAnchor];
    v114 = [v113 maps_uniqueKey];
    v232[3] = v114;
    v115 = [(NavSignLabel *)self->_instructionsLabel lastBaselineAnchor];
    v116 = [(CarManeuverView *)self bottomAnchor];
    v117 = *(&v250 + 1);
    [(NavSignLabel *)self->_instructionsLabel inlineShieldLastBaselineBottomOffset];
    LODWORD(v119) = 1148846080;
    v120 = [v115 constraintEqualToAnchor:v116 constant:v118 + v117 priority:v119];
    v233[3] = v120;
    v121 = [NSDictionary dictionaryWithObjects:v233 forKeys:v232 count:4];
    v122 = [(CarManeuverView *)self dynamicConstraints];
    [v122 setObject:v121 forKeyedSubscript:@"PrimaryLabelsBaselines"];

    v123 = [(CarManeuverView *)self dynamicConstraints];
    v124 = [v123 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
    v125 = [v124 allValues];
    v11 = v222;
    [v222 addObjectsFromArray:v125];

    v126 = [(NavSignLabel *)self->_distanceLabel trailingAnchor];
    v127 = [(CarManeuverView *)self trailingAnchor];
    v128 = [v126 constraintEqualToAnchor:v127 constant:*&v249];
    v231[0] = v128;
    v129 = [(CarManeuverView *)self _instructionHorizontalPrimaryConstraint];
    v231[1] = v129;
    v130 = [(NavSignLabel *)self->_instructionsLabel trailingAnchor];
    v131 = [(CarManeuverView *)self trailingAnchor];
    v132 = [v130 constraintEqualToAnchor:v131 constant:*&v250];
    v231[2] = v132;
    v133 = [NSArray arrayWithObjects:v231 count:3];
    [v222 addObjectsFromArray:v133];

    if (!v210)
    {
      v134 = [(NavSignLabel *)self->_instructionsLabel centerYAnchor];
      v135 = [(CarManeuverView *)self centerYAnchor];
      v136 = [v134 constraintEqualToAnchor:v135];
      [v222 addObject:v136];
    }

    v7 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  }

LABEL_25:
  [(CarManeuverView *)self setMyConstraints:v11];
  v137 = v7[433];
  v138 = [(CarManeuverView *)self myConstraints];
  [v137 activateConstraints:v138];
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
    v4 = [(CarManeuverView *)self variant];
    if (v4 > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + v4);
    }

    v6 = v5;
    v7 = [(CarManeuverView *)self style];
    v8 = [v7 variant];
    v9 = [(CarManeuverView *)self shouldShowLaneGuidance];
    v10 = @"NO";
    if (v9)
    {
      v10 = @"YES";
    }

    v11 = v10;
    *v89 = 138413058;
    *&v89[4] = v6;
    *&v89[12] = 2048;
    *&v89[14] = self;
    v90 = 2048;
    v91 = v8;
    v92 = 2112;
    v93 = v11;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, _updateConstraints. variant: %lu, shouldShowLaneGuidance: %@", v89, 0x2Au);
  }

  v12 = [(CarManeuverView *)self style];
  v13 = [v12 variant];

  if (v13 == 2)
  {
    LODWORD(v14) = 1148829696;
    [(CarManeuverView *)self setContentCompressionResistancePriority:1 forAxis:v14];
    v40 = [(NavSignLabel *)self->_instructionsLabel lineCount];
    instructionsLabel = self->_instructionsLabel;
    if (v40 == 1)
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
    v46 = [(CarManeuverView *)self dynamicConstraints];
    v47 = [v46 objectForKeyedSubscript:@"SecondaryLabelsBaselines"];
    v48 = [(NavSignLabel *)self->_instructionsLabel firstBaselineAnchor];
    v49 = [v48 maps_uniqueKey];
    v50 = [v47 objectForKeyedSubscript:v49];
    [v50 setConstant:v42];

    v51 = [(CarManeuverView *)self dynamicConstraints];
    v52 = [v51 objectForKeyedSubscript:@"SecondaryLabelsBaselines"];
    v53 = [(NavSignLabel *)self->_instructionsLabel lastBaselineAnchor];
    v54 = [v53 maps_uniqueKey];
    v55 = [v52 objectForKeyedSubscript:v54];
    [v55 setConstant:v45];
  }

  else if (v13 == 1)
  {
    LODWORD(v14) = 1148846080;
    [(CarManeuverView *)self setContentCompressionResistancePriority:1 forAxis:v14];
  }

  else if (!v13)
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
    v15 = [(CarManeuverView *)self shouldShowLaneGuidance];
    v16 = [(CarManeuverView *)self dynamicConstraints];
    v17 = v16;
    if (v15)
    {
      v18 = v100;
      v19 = [v16 objectForKeyedSubscript:@"PrimaryManeuverView"];
      v20 = [v19 allValues];
      [NSLayoutConstraint deactivateConstraints:v20];

      v21 = [(CarManeuverView *)self dynamicConstraints];
      v22 = [v21 objectForKeyedSubscript:@"PrimaryNoManeuverView"];
      v23 = [v22 allValues];
      [NSLayoutConstraint activateConstraints:v23];

      v24 = *&v95;
      v25 = [(CarManeuverView *)self dynamicConstraints];
      v26 = [v25 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      v27 = [(UIImageView *)self->_shieldView topAnchor];
      v28 = [v27 maps_uniqueKey];
      v29 = [v26 objectForKeyedSubscript:v28];
      [v29 setConstant:v24];

      v30 = *&v96;
      v31 = [(CarManeuverView *)self dynamicConstraints];
      v32 = [v31 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      v33 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
      v34 = [v33 maps_uniqueKey];
      v35 = [v32 objectForKeyedSubscript:v34];
      [v35 setConstant:v30];

      v36 = *(&v97 + 1);
      p_instructionsLabel = &self->_instructionsLabel;
      [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
      v39 = v38 + v36;
    }

    else
    {
      v18 = &v99 + 1;
      v56 = [v16 objectForKeyedSubscript:@"PrimaryNoManeuverView"];
      v57 = [v56 allValues];
      [NSLayoutConstraint deactivateConstraints:v57];

      v58 = [(CarManeuverView *)self dynamicConstraints];
      v59 = [v58 objectForKeyedSubscript:@"PrimaryManeuverView"];
      v60 = [v59 allValues];
      [NSLayoutConstraint activateConstraints:v60];

      v61 = *(&v94 + 1);
      v62 = [(CarManeuverView *)self dynamicConstraints];
      v63 = [v62 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      v64 = [(UIImageView *)self->_shieldView topAnchor];
      v65 = [v64 maps_uniqueKey];
      v66 = [v63 objectForKeyedSubscript:v65];
      [v66 setConstant:v61];

      v67 = [(CarManeuverView *)self _shieldImage];
      v68 = &v96 + 1;
      if (!v67)
      {
        v68 = &v95 + 1;
      }

      v69 = *v68;
      v70 = [(CarManeuverView *)self dynamicConstraints];
      v71 = [v70 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
      v72 = [(NavSignLabel *)self->_distanceLabel firstBaselineAnchor];
      v73 = [v72 maps_uniqueKey];
      v74 = [v71 objectForKeyedSubscript:v73];
      [v74 setConstant:v69];

      p_instructionsLabel = &self->_instructionsLabel;
      [(NavSignLabel *)self->_instructionsLabel inlineShieldFirstBaselineTopOffset];
      v39 = *&v97 + v75;
    }

    v76 = [(CarManeuverView *)self dynamicConstraints];
    v77 = [v76 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
    v78 = [(NavSignLabel *)*p_instructionsLabel firstBaselineAnchor];
    v79 = [v78 maps_uniqueKey];
    v80 = [v77 objectForKeyedSubscript:v79];
    [v80 setConstant:v39];

    v81 = *v18;
    [(NavSignLabel *)*p_instructionsLabel inlineShieldLastBaselineBottomOffset];
    v83 = v82 + v81;
    v84 = [(CarManeuverView *)self dynamicConstraints];
    v85 = [v84 objectForKeyedSubscript:@"PrimaryLabelsBaselines"];
    v86 = [(NavSignLabel *)*p_instructionsLabel lastBaselineAnchor];
    v87 = [v86 maps_uniqueKey];
    v88 = [v85 objectForKeyedSubscript:v87];
    [v88 setConstant:v83];
  }
}

- (void)_setupStyling
{
  v3 = [(CarManeuverView *)self style];
  self->_labelLineBreakMode = [v3 labelLineBreakMode];
  v4 = [(CarManeuverView *)self sizeDataSource];
  [v4 dynamicPointScaleValue];

  memset(__src, 0, sizeof(__src));
  if (v3)
  {
    [v3 arrowMetrics];
    MKGuidanceManeuverArrowMetricsApplyScale();
    memset(v16, 0, sizeof(v16));
    [v3 junctionArrowMetrics];
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
  -[GuidanceManeuverView setFraming:](self->_arrowView, "setFraming:", [v3 desiredFraming]);
  v5 = [v3 arrowMainColor];
  [(GuidanceManeuverView *)self->_arrowView setArrowColor:v5];

  v6 = [v3 arrowAccentColor];
  [(GuidanceManeuverView *)self->_arrowView setAccentColor:v6];

  v7 = [(CarManeuverView *)self sizeDataSource];
  [v7 dynamicPointScaleValue];
  v9 = v8;

  v10 = [v3 instructionsPreferredFont];
  v11 = [v10 _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setPreferredFont:v11];

  v12 = [v3 instructionsAlternateFont];
  v13 = [v12 _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setAlternateFont:v13];

  [v3 instructionsAlternateFontLineSpacing];
  [(NavSignLabel *)self->_instructionsLabel setAlternateFontLineSpacing:?];
  -[NavSignLabel setMaxNumberOfLinesWithPreferredFont:](self->_instructionsLabel, "setMaxNumberOfLinesWithPreferredFont:", [v3 instructionsMaxNumberOfLinesWithPreferredFont]);
  -[NavSignLabel setMaxNumberOfTotalLines:](self->_instructionsLabel, "setMaxNumberOfTotalLines:", [v3 instructionsMaxNumberOfTotalLines]);
  v14 = [v3 instructionsColor];
  [(NavSignLabel *)self->_instructionsLabel setTextColor:v14];

  [(NavSignLabel *)self->_instructionsLabel setParagraphLineBreakMode:[(CarManeuverView *)self labelLineBreakMode]];
  [(NavSignLabel *)self->_instructionsLabel updateLabelIfNeeded];
  [(CarManeuverView *)self _updateStyling];
}

- (void)_updateStyling
{
  v3 = [(CarManeuverView *)self style];
  [v3 setHasLaneGuidance:{-[CarManeuverView shouldShowLaneGuidance](self, "shouldShowLaneGuidance")}];
  v4 = [(CarManeuverView *)self _shieldImage];
  [v3 setHasShield:v4 != 0];

  [v3 setSecondarySignVisible:{-[CarManeuverView secondarySignVisible](self, "secondarySignVisible")}];
  [v3 setCompressionStage:{-[CarManeuverView compressionStage](self, "compressionStage")}];
  v5 = [(CarManeuverView *)self style];
  v6 = [v5 invalidArrowColor];

  [(GuidanceManeuverView *)self->_arrowView setAccentColor:v6];
  [(NavSignLaneGuidanceView *)self->_laneGuidanceView setInvalidArrowColor:v6];
  v7 = [(CarManeuverView *)self sizeDataSource];
  [v7 dynamicPointScaleValue];
  v9 = v8;

  v10 = [v3 distanceFont];
  v11 = [v10 _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_distanceLabel setPreferredFont:v11];

  v12 = [(NavSignLabel *)self->_distanceLabel font];
  [v12 pointSize];
  distanceLabel = self->_distanceLabel;
  if (10.0 / v13 > 1.0)
  {
    [(NavSignLabel *)distanceLabel setPreferredFontMinimumScaleFactor:1.0];
  }

  else
  {
    v15 = [(NavSignLabel *)distanceLabel font];
    [v15 pointSize];
    [(NavSignLabel *)self->_distanceLabel setPreferredFontMinimumScaleFactor:10.0 / v16];
  }

  v17 = [v3 distanceColor];
  [(NavSignLabel *)self->_distanceLabel setTextColor:v17];

  [(NavSignLabel *)self->_distanceLabel updateLabelIfNeeded];
  -[NavSignLabel setMaxNumberOfTotalLines:](self->_instructionsLabel, "setMaxNumberOfTotalLines:", [v3 instructionsMaxNumberOfTotalLines]);
  [(NavSignLabel *)self->_instructionsLabel setParagraphLineBreakMode:[(CarManeuverView *)self labelLineBreakMode]];
  v18 = [v3 instructionsPreferredFont];
  v19 = [v18 _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setPreferredFont:v19];

  v20 = [v3 instructionsAlternateFont];
  v21 = [v20 _maps_scaledFontForScaleFactor:v9];
  [(NavSignLabel *)self->_instructionsLabel setAlternateFont:v21];

  -[NavSignLabel setShouldRemoveTextStartingAtFirstNewline:](self->_instructionsLabel, "setShouldRemoveTextStartingAtFirstNewline:", [v3 isSecondary]);
  -[NavSignLabel setPerferredFontAdjustsFontSizeToFitWidth:](self->_instructionsLabel, "setPerferredFontAdjustsFontSizeToFitWidth:", [v3 shouldScaleInstructionsPreferredFont]);
  [(NavSignLabel *)self->_instructionsLabel updateLabelIfNeeded];
  v22 = sub_10007E168();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = [(CarManeuverView *)self variant];
    if (v23 > 2)
    {
      v24 = @".Unknown";
    }

    else
    {
      v24 = *(&off_101656248 + v23);
    }

    v25 = v24;
    v26 = [(CarManeuverView *)self compressionStage];
    v27 = [(CarManeuverView *)self style];
    v28 = [v27 variant];
    v29 = [(NavSignLabel *)self->_instructionsLabel maxNumberOfTotalLines];
    v30 = 138413570;
    v31 = v25;
    v32 = 2048;
    v33 = self;
    v34 = 2048;
    v35 = v26;
    v36 = 2048;
    v37 = v28;
    v38 = 2048;
    v39 = v29;
    v40 = 2048;
    v41 = [(CarManeuverView *)self labelLineBreakMode];
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, _updateStyling. compressionStage: %lu, variant: %lu, instructionMaxLines: %ld, lineBreakMode: %ld", &v30, 0x3Eu);
  }
}

- ($3B4E6468B3EC00ED59A5207EEA3643F1)primaryMetrics
{
  v5 = [(CarManeuverView *)self style];
  v6 = [v5 layoutType];

  if (v6 == 2)
  {
    v8 = &xmmword_1012159F0;
  }

  else
  {
    if (v6 == 1)
    {
      v9 = [(CarManeuverView *)self sizeDataSource];
      [v9 dynamicPointScaleValue];
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

    if (v6)
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
  v3 = [(CarManeuverView *)self _usesLargeScreenLayout];
  v4 = [(UIImageView *)self->_shieldView leadingAnchor];
  if (v3)
  {
    v5 = [(NavSignLabel *)self->_distanceLabel textTrailingLayoutGuide];
    v6 = [v5 trailingAnchor];
    v7 = [v4 constraintGreaterThanOrEqualToAnchor:v6 constant:12.0];
  }

  else
  {
    v5 = [(GuidanceManeuverView *)self->_arrowView trailingAnchor];
    v7 = [v4 constraintGreaterThanOrEqualToAnchor:v5 constant:12.0];
  }

  return v7;
}

- (id)_maneuverTopPrimaryConstraint
{
  v3 = [(CarManeuverView *)self _usesLargeScreenLayout];
  v4 = [(GuidanceManeuverView *)self->_arrowView topAnchor];
  v5 = [(CarManeuverView *)self topAnchor];
  if (v3)
  {
    [v4 constraintGreaterThanOrEqualToAnchor:v5 constant:12.0];
  }

  else
  {
    [v4 constraintEqualToAnchor:v5 constant:11.0];
  }
  v6 = ;

  return v6;
}

- (id)_maneuverBottomPrimaryConstraint
{
  v3 = [(CarManeuverView *)self _usesLargeScreenLayout];
  v4 = [(GuidanceManeuverView *)self->_arrowView bottomAnchor];
  v5 = [(CarManeuverView *)self bottomAnchor];
  v6 = -11.0;
  if (v3)
  {
    v6 = -12.0;
  }

  v7 = [v4 constraintLessThanOrEqualToAnchor:v5 constant:v6];

  return v7;
}

- (id)_instructionHorizontalPrimaryConstraint
{
  v3 = [(CarManeuverView *)self laneGuidance];
  v4 = [v3 midStepTitles];
  if ([v4 count])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CarManeuverView *)self guidance];
    v7 = [v6 majorTextAlternatives];
    v5 = [v7 count] == 0;
  }

  v8 = [(CarManeuverView *)self _usesLargeScreenLayout];
  v9 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
  if ((v8 & 1) != 0 || v5)
  {
    v10 = [(NavSignLabel *)self->_distanceLabel leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
  }

  else
  {
    v10 = [(CarManeuverView *)self leadingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10 constant:11.0];
  }

  v12 = v11;

  return v12;
}

- (void)navSignLabel:(id)a3 didSelectAlternate:(unint64_t)a4
{
  v6 = a3;
  distanceLabel = self->_distanceLabel;
  if (distanceLabel == v6 || self->_instructionsLabel == v6)
  {
    v8 = distanceLabel == v6;
    v12 = v6;
    v9 = [(CarManeuverView *)self analyticsDelegate];
    v10 = [(CarManeuverView *)self guidance];
    v11 = [v10 signID];
    [v9 carManeuverView:self didSelectAlternate:a4 forPrimaryString:v8 inSign:v11];

    v6 = v12;
  }
}

- (int)GEOManeuverTypeForGEOLaneDirection:(int)a3
{
  if (a3 == 256)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if (a3 == 128)
  {
    v4 = 62;
  }

  else
  {
    v4 = v3;
  }

  if (a3 == 64)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a3 == 32)
  {
    v6 = 60;
  }

  else
  {
    v6 = 3;
  }

  if (a3 == 16)
  {
    v7 = 4;
  }

  else
  {
    v7 = v6;
  }

  if (a3 <= 63)
  {
    v5 = v7;
  }

  if (a3 == 8)
  {
    v8 = 61;
  }

  else
  {
    v8 = 3;
  }

  if (a3 == 4)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (a3 == 2)
  {
    v10 = 63;
  }

  else
  {
    v10 = 3;
  }

  if (!a3)
  {
    v10 = 0;
  }

  if (a3 > 3)
  {
    v10 = v9;
  }

  if (a3 <= 15)
  {
    return v10;
  }

  else
  {
    return v5;
  }
}

- (id)_maneuverArtworkForDirection:(int)a3
{
  v3 = [(CarManeuverView *)self GEOManeuverTypeForGEOLaneDirection:*&a3];

  return [GuidanceManeuverArtwork artworkWithManeuver:v3];
}

- (int)_preferredDirectionForLaneGuidance
{
  v3 = [(NavSignLaneGuidanceInfo *)self->_laneGuidance highlightedLanes];
  v4 = [v3 firstObject];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [(NavSignLaneGuidanceInfo *)self->_laneGuidance highlightedLanes];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isPreferredLaneForManeuver])
        {
          v11 = v10;

          v4 = v11;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = [v4 directions];
  v13 = [v12 count];

  if (v13)
  {
    v14 = [v4 directions];
    v15 = [v14 firstObject];
    v16 = [v15 direction];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)showLaneGuidanceFromManeuver:(id)a3
{
  v6 = a3;
  v4 = [v6 laneGuidance];

  if (v4)
  {
    v5 = [v6 laneGuidance];
    [(CarManeuverView *)self showLaneGuidance:v5];
  }
}

- (void)hideLaneGuidance
{
  v3 = [(CarManeuverView *)self style];
  v4 = [v3 variant];

  if (v4 != 2 && self->_laneGuidance)
  {
    v5 = sub_10007E168();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = [(CarManeuverView *)self variant];
      if (v6 > 2)
      {
        v7 = @".Unknown";
      }

      else
      {
        v7 = *(&off_101656248 + v6);
      }

      v8 = v7;
      v11 = 138412546;
      v12 = v8;
      v13 = 2048;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, hideLaneGuidance", &v11, 0x16u);
    }

    v9 = [(CarManeuverView *)self sizeByCompressionStage];

    if (v9)
    {
      [(CarManeuverView *)self setSizeByCompressionStage:0];
    }

    laneGuidance = self->_laneGuidance;
    self->_laneGuidance = 0;

    [(CarManeuverView *)self _updateContents];
  }
}

- (void)updateLaneGuidance:(id)a3
{
  objc_storeStrong(&self->_laneGuidance, a3);

  [(CarManeuverView *)self _updateLabels];
}

- (void)showLaneGuidance:(id)a3
{
  v5 = a3;
  if (v5)
  {
    v6 = [(CarManeuverView *)self style];
    v7 = [v6 isSecondary];

    if ((v7 & 1) == 0)
    {
      v8 = [v5 laneInfoId];
      v9 = [(NavSignLaneGuidanceInfo *)self->_laneGuidance laneInfoId];
      v10 = [v8 isEqual:v9];

      if ((v10 & 1) == 0)
      {
        v11 = sub_10007E168();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = [(CarManeuverView *)self variant];
          if (v12 > 2)
          {
            v13 = @".Unknown";
          }

          else
          {
            v13 = *(&off_101656248 + v12);
          }

          v14 = v13;
          v16 = 138412546;
          v17 = v14;
          v18 = 2048;
          v19 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, showLaneGuidance", &v16, 0x16u);
        }

        v15 = [(CarManeuverView *)self sizeByCompressionStage];

        if (v15)
        {
          [(CarManeuverView *)self setSizeByCompressionStage:0];
        }

        objc_storeStrong(&self->_laneGuidance, a3);
        [(CarManeuverView *)self _updateContents];
      }
    }
  }
}

- (void)traitCollectionDidChange:(id)a3
{
  v10.receiver = self;
  v10.super_class = CarManeuverView;
  v4 = a3;
  [(CarManeuverView *)&v10 traitCollectionDidChange:v4];
  v5 = [v4 userInterfaceStyle];

  v6 = [(CarManeuverView *)self traitCollection];
  v7 = [v6 userInterfaceStyle];

  if (v5 != v7)
  {
    lastRenderedShieldSignID = self->_lastRenderedShieldSignID;
    self->_lastRenderedShieldSignID = 0;

    v9 = [(CarManeuverView *)self _shieldImage];
    [(UIImageView *)self->_shieldView setImage:v9];
  }
}

- (void)setLayoutType:(unint64_t)a3
{
  v5 = [(CarManeuverView *)self configuredStyle];
  v6 = [v5 layoutType];

  if (v6 != a3)
  {
    v7 = [(CarManeuverView *)self configuredStyle];
    [v7 setLayoutType:a3];

    v8 = [(CarManeuverView *)self lowGuidanceStyle];
    [v8 setLayoutType:a3];

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
  v4 = [v3 userInterfaceLayoutDirection];

  v5 = [(CarManeuverView *)self style];
  v6 = [v5 variant];

  if (v6 == 2)
  {
    v10 = 1;
    [(NavSignLaneGuidanceView *)self->_laneGuidanceView setHidden:1];
    [(NavSignLabel *)self->_distanceLabel setHidden:1];
    v12 = 0;
    v9 = 0;
    v11 = &OBJC_IVAR___CarManeuverView__shieldView;
  }

  else if (v6 == 1)
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
    if (v6)
    {
      return;
    }

    v7 = [(CarManeuverView *)self shouldShowLaneGuidance];
    laneGuidanceView = self->_laneGuidanceView;
    if (!v7)
    {
      [(NavSignLaneGuidanceView *)laneGuidanceView setHidden:1];
      [(NavSignLabel *)self->_distanceLabel setHidden:0];
      if ([(CarManeuverView *)self _usesLargeScreenLayout]&& v4 == 1)
      {
        v15 = 2;
      }

      else
      {
        v16 = [(CarManeuverView *)self _usesLargeScreenLayout];
        if (v4 == 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
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

- (void)alignSecondarySignSubviewsToPrimaryManeuverView:(id)a3
{
  v4 = a3;
  v5 = [(CarManeuverView *)self style];
  v6 = [v5 isSecondary];

  if (v6)
  {
    if (([v4 shouldShowLaneGuidance] & 1) == 0)
    {
      v7 = [v4 maneuverViewCenteringAnchor];
      if (v7)
      {
        v8 = v7;
        v9 = [v4 instructionsLabelLeadingAnchor];

        if (v9)
        {
          v10 = [(CarManeuverView *)self dynamicConstraints];
          v11 = [v10 objectForKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];
          v12 = [v11 allValues];
          [NSLayoutConstraint deactivateConstraints:v12];

          v13 = [(CarManeuverView *)self dynamicConstraints];
          v14 = [v13 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
          v15 = [v14 allValues];
          [NSLayoutConstraint deactivateConstraints:v15];

          v16 = [[NSMutableDictionary alloc] initWithCapacity:2];
          v17 = [(GuidanceManeuverView *)self->_arrowView centerXAnchor];
          v18 = [v4 maneuverViewCenteringAnchor];
          v19 = [v17 constraintEqualToAnchor:v18];
          v20 = [(GuidanceManeuverView *)self->_arrowView centerXAnchor];
          v21 = [v20 maps_uniqueKey];
          [v16 setObject:v19 forKeyedSubscript:v21];

          if ([(CarManeuverView *)self _usesLargeScreenLayout])
          {
            v22 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
            v23 = [v4 instructionsLabelLeadingAnchor];
            v24 = [v22 constraintEqualToAnchor:v23];
            v25 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
            v26 = [v25 maps_uniqueKey];
            [v16 setObject:v24 forKeyedSubscript:v26];
          }

          else
          {
            v36 = [(CarManeuverView *)self dynamicConstraints];
            v37 = [v36 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
            v38 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
            v39 = [v38 maps_uniqueKey];
            v22 = [v37 objectForKeyedSubscript:v39];

            if (v22)
            {
              v23 = [(NavSignLabel *)self->_instructionsLabel leadingAnchor];
              v24 = [v23 maps_uniqueKey];
              [v16 setObject:v22 forKeyedSubscript:v24];
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

              v23 = sub_10006D178();
              if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
              {
LABEL_20:

LABEL_21:
                v40 = [v16 copy];
                v41 = [(CarManeuverView *)self dynamicConstraints];
                [v41 setObject:v40 forKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];

                v42 = [(CarManeuverView *)self dynamicConstraints];
                v43 = [v42 objectForKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];
                v44 = [v43 allValues];
                [NSLayoutConstraint activateConstraints:v44];

                goto LABEL_16;
              }

              v24 = +[NSThread callStackSymbols];
              v46 = 138412290;
              v47 = v24;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@", &v46, 0xCu);
            }
          }

          goto LABEL_20;
        }
      }
    }

    v31 = [(CarManeuverView *)self dynamicConstraints];
    v32 = [v31 objectForKeyedSubscript:@"SecondaryAligningConstraintsLargeScreen"];
    v33 = [v32 allValues];
    [NSLayoutConstraint deactivateConstraints:v33];

    v29 = [(CarManeuverView *)self dynamicConstraints];
    v34 = [v29 objectForKeyedSubscript:@"SecondaryAligningConstraintsSmallScreen"];
    v35 = [v34 allValues];
    [NSLayoutConstraint activateConstraints:v35];

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
    v29 = sub_10006D178();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v30 = +[NSThread callStackSymbols];
      v46 = 138412290;
      v47 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "%@", &v46, 0xCu);
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
  v14 = [(GuidanceManeuverView *)v10 initWithFrame:CGRectZero.origin.x, y, width, height];
  arrowView = self->_arrowView;
  self->_arrowView = v14;

  [(GuidanceManeuverView *)self->_arrowView setShieldIdiom:1];
  [(GuidanceManeuverView *)self->_arrowView setTranslatesAutoresizingMaskIntoConstraints:0];
  LODWORD(v16) = 1144733696;
  [(GuidanceManeuverView *)self->_arrowView setContentCompressionResistancePriority:0 forAxis:v16];
  LODWORD(v17) = 1148846080;
  [(GuidanceManeuverView *)self->_arrowView setContentCompressionResistancePriority:1 forAxis:v17];
  LODWORD(v18) = 1148846080;
  [(GuidanceManeuverView *)self->_arrowView setContentHuggingPriority:0 forAxis:v18];
  v19 = [(CarManeuverView *)self style];
  v20 = [v19 variant];

  if (v20 != 2)
  {
    LODWORD(v21) = 1148846080;
    [(GuidanceManeuverView *)self->_arrowView setContentHuggingPriority:1 forAxis:v21];
  }

  [(CarManeuverView *)self addSubview:self->_arrowView];
  v22 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  distanceLabel = self->_distanceLabel;
  self->_distanceLabel = v22;

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
  v27 = [(NavSignLabel *)self->_distanceLabel font];
  [v27 pointSize];
  v29 = self->_distanceLabel;
  if (10.0 / v28 > 1.0)
  {
    [(NavSignLabel *)v29 setPreferredFontMinimumScaleFactor:1.0];
  }

  else
  {
    v30 = [(NavSignLabel *)v29 font];
    [v30 pointSize];
    [(NavSignLabel *)self->_distanceLabel setPreferredFontMinimumScaleFactor:10.0 / v31];
  }

  [(NavSignLabel *)self->_distanceLabel setInlineShieldSize:4];
  [(NavSignLabel *)self->_distanceLabel setDelegate:self];
  [(CarManeuverView *)self addSubview:self->_distanceLabel];
  v32 = [[NavSignLabel alloc] initWithFrame:CGRectZero.origin.x, y, width, height];
  instructionsLabel = self->_instructionsLabel;
  self->_instructionsLabel = v32;

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
    v37 = [(NavSignLabel *)self->_instructionsLabel font];
    [v37 pointSize];
    v39 = self->_instructionsLabel;
    if (10.0 / v38 > 1.0)
    {
      [(NavSignLabel *)v39 setPreferredFontMinimumScaleFactor:1.0];
    }

    else
    {
      v40 = [(NavSignLabel *)v39 font];
      [v40 pointSize];
      [(NavSignLabel *)self->_instructionsLabel setPreferredFontMinimumScaleFactor:10.0 / v41];
    }
  }

  v42 = [(CarManeuverView *)self style];
  if ([v42 isSecondary])
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

- (CGSize)sizeForCompressionStage:(unint64_t)a3
{
  v5 = [(CarManeuverView *)self sizeByCompressionStage];
  v6 = [v5 count];

  if (v6 <= a3)
  {
    v7 = [(CarManeuverView *)self sizeByCompressionStage];
    a3 = [v7 count] - 1;
  }

  v8 = [(CarManeuverView *)self sizeByCompressionStage];
  v9 = [NSNumber numberWithUnsignedInteger:a3];
  v10 = [v8 objectForKeyedSubscript:v9];

  [v10 CGSizeValue];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.height = v16;
  result.width = v15;
  return result;
}

- (unint64_t)compressionStageForSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CarManeuverView *)self style];
  if ([v6 isSecondary])
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
    v9 = [(CarManeuverView *)self sizeByCompressionStage];
    v10 = [NSNumber numberWithUnsignedInteger:v8];
    v11 = [v9 objectForKeyedSubscript:v10];
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
    v17 = [(CarManeuverView *)self variant];
    if (v17 > 2)
    {
      v18 = @".Unknown";
    }

    else
    {
      v18 = *(&off_101656248 + v17);
    }

    v19 = v18;
    v30.width = width;
    v30.height = height;
    v20 = NSStringFromCGSize(v30);
    v22 = 138413058;
    v23 = v19;
    v24 = 2048;
    v25 = self;
    v26 = 2112;
    v27 = v20;
    v28 = 2048;
    v29 = v8;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, compressionStageForSize: %@, desiredStage: %lu", &v22, 0x2Au);
  }

  return v8;
}

- (void)setBlurMode:(int64_t)a3
{
  v5 = [(CarManeuverView *)self style];
  v6 = [v5 blurMode];

  if (v6 != a3)
  {
    v7 = [(CarManeuverView *)self style];
    [v7 setBlurMode:a3];

    [(CarManeuverView *)self _updateStyling];
  }
}

- (void)setCompressionStage:(unint64_t)a3
{
  if (self->_compressionStage != a3)
  {
    if ([(CarManeuverView *)self stopUpdatingCompressionStage])
    {
      v5 = sub_10007E168();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = [(CarManeuverView *)self variant];
        if (v6 > 2)
        {
          v7 = @".Unknown";
        }

        else
        {
          v7 = *(&off_101656248 + v6);
        }

        v15 = v7;
        compressionStage = self->_compressionStage;
        v20 = 138413058;
        v21 = v15;
        v22 = 2048;
        v23 = self;
        v24 = 2048;
        v25 = compressionStage;
        v26 = 2048;
        v27 = a3;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, Tried to change compressionStage from: %lu to %lu, but stopUpdatingCompressionStage was set, so ignoring the call.", &v20, 0x2Au);
      }
    }

    else
    {
      v8 = [(CarManeuverView *)self configuredStyle];
      v9 = [v8 variant] != 2 && (a3 == 6 || self->_compressionStage == 6);

      self->_compressionStage = a3;
      v11 = [(CarManeuverView *)self style];
      [v11 setCompressionStage:a3];

      if (v9)
      {
        [(CarManeuverView *)self _setupConstraints];
        [(CarManeuverView *)self _updateConstraints];
      }

      v12 = sub_10007E168();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = [(CarManeuverView *)self variant];
        if (v13 > 2)
        {
          v14 = @".Unknown";
        }

        else
        {
          v14 = *(&off_101656248 + v13);
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
        v23 = self;
        v24 = 2048;
        v25 = a3;
        v26 = 2112;
        v27 = v19;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, setCompressionStage %lu. redoingConstraints: %@", &v20, 0x2Au);
      }

      [(CarManeuverView *)self setNeedsLayout];
      [(CarManeuverView *)self layoutIfNeeded];
    }
  }
}

- (void)setSecondarySignVisible:(BOOL)a3
{
  if (self->_secondarySignVisible != a3)
  {
    self->_secondarySignVisible = a3;
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
    v4 = [(CarManeuverView *)self variant];
    if (v4 > 2)
    {
      v5 = @".Unknown";
    }

    else
    {
      v5 = *(&off_101656248 + v4);
    }

    v6 = v5;
    [(CarManeuverView *)self frame];
    v7 = NSStringFromCGRect(v59);
    v8 = [(CarManeuverView *)self compressionStage];
    v9 = [(CarManeuverView *)self style];
    v10 = [v9 variant];
    v11 = [(NavSignLabel *)self->_instructionsLabel maxNumberOfTotalLines];
    v12 = [(CarManeuverView *)self labelLineBreakMode];
    v13 = [(CarManeuverView *)self _shouldShowLaneGuidance];
    v14 = @"YES";
    if (!v13)
    {
      v14 = @"NO";
    }

    v15 = v14;
    *buf = 138414082;
    v44 = v6;
    v45 = 2048;
    v46 = self;
    v47 = 2112;
    v48 = v7;
    v49 = 2048;
    v50 = v8;
    v51 = 2048;
    v52 = v10;
    v53 = 2048;
    v54 = v11;
    v55 = 2048;
    v56 = v12;
    v57 = 2112;
    v58 = v15;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, layoutSubviews before updating styles, frame: %@, compressionStage: %lu, variant: %lu, instructionMaxLines: %ld, lineBreakMode: %ld, shouldShowLaneGuidance: %@", buf, 0x52u);
  }

  [(CarManeuverView *)self _updateStyling];
  [(CarManeuverView *)self _updateSubviews];
  [(CarManeuverView *)self _updateConstraints];
  [(NavSignLabel *)self->_distanceLabel updateLabelIfNeeded];
  [(NavSignLabel *)self->_instructionsLabel updateLabelIfNeeded];
  v16 = [(CarManeuverView *)self style];
  if ([v16 variant])
  {
    goto LABEL_9;
  }

  v20 = [(UIImageView *)self->_shieldView image];
  if (!v20)
  {
    goto LABEL_9;
  }

  v21 = v20;
  v22 = [(UIImageView *)self->_shieldView image];
  [v22 size];
  v24 = v23;

  if (v24 > 0.0)
  {
    [(UIImageView *)self->_shieldView frame];
    v26 = v25;
    v27 = [(UIImageView *)self->_shieldView image];
    [v27 size];
    [(UIImageView *)self->_shieldView setHidden:v26 / v28 < 0.779999971];

    if ([(UIImageView *)self->_shieldView isHidden])
    {
      v16 = sub_10007E168();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v29 = [(CarManeuverView *)self variant];
        if (v29 > 2)
        {
          v30 = @".Unknown";
        }

        else
        {
          v30 = *(&off_101656248 + v29);
        }

        v41 = v30;
        *buf = 138412546;
        v44 = v41;
        v45 = 2048;
        v46 = self;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, Hide exit shield because it scaled below the min threshold to fit with content.", buf, 0x16u);
      }

LABEL_9:
    }
  }

  v17 = sub_10007E168();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = [(CarManeuverView *)self variant];
    if (v18 > 2)
    {
      v19 = @".Unknown";
    }

    else
    {
      v19 = *(&off_101656248 + v18);
    }

    v31 = v19;
    [(CarManeuverView *)self frame];
    v32 = NSStringFromCGRect(v60);
    v33 = [(CarManeuverView *)self compressionStage];
    v34 = [(CarManeuverView *)self style];
    v35 = [v34 variant];
    v36 = [(NavSignLabel *)self->_instructionsLabel maxNumberOfTotalLines];
    v37 = [(CarManeuverView *)self labelLineBreakMode];
    v38 = [(CarManeuverView *)self _shouldShowLaneGuidance];
    v39 = @"YES";
    if (!v38)
    {
      v39 = @"NO";
    }

    v40 = v39;
    *buf = 138414082;
    v44 = v31;
    v45 = 2048;
    v46 = self;
    v47 = 2112;
    v48 = v32;
    v49 = 2048;
    v50 = v33;
    v51 = 2048;
    v52 = v35;
    v53 = 2048;
    v54 = v36;
    v55 = 2048;
    v56 = v37;
    v57 = 2112;
    v58 = v40;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "%@ maneuverView: %p, layoutSubviews after updating styles, frame: %@, compressionStage: %lu, variant: %lu, instructionMaxLines: %ld, lineBreakMode: %ld, shouldShowLaneGuidance: %@", buf, 0x52u);
  }
}

- (CarManeuverView)initWithGuidance:(id)a3 variant:(unint64_t)a4 destination:(unint64_t)a5 layoutType:(unint64_t)a6 sizeDataSource:(id)a7
{
  v13 = a3;
  v14 = a7;
  v38.receiver = self;
  v38.super_class = CarManeuverView;
  v15 = [(CarManeuverView *)&v38 initWithFrame:CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height];
  v16 = v15;
  if (v15)
  {
    [(CarManeuverView *)v15 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeWeak(&v16->_sizeDataSource, v14);
    v17 = objc_opt_new();
    dynamicConstraints = v16->_dynamicConstraints;
    v16->_dynamicConstraints = v17;

    v16->_destination = a5;
    objc_storeStrong(&v16->_guidance, a3);
    v19 = [CarManeuverViewStyle styleWithVariant:a4 destination:a5 layoutType:a6];
    configuredStyle = v16->_configuredStyle;
    v16->_configuredStyle = v19;

    v21 = [CarManeuverViewStyle styleWithVariant:1 destination:a5 layoutType:0];
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

    v30 = [(CarManeuverView *)v24 variant];
    if (v30 > 2)
    {
      v31 = @".Unknown";
    }

    else
    {
      v31 = *(&off_101656248 + v30);
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
    v36 = [v13 signID];
    *buf = 138544386;
    v40 = v29;
    v41 = 2112;
    v42 = v32;
    v43 = 2112;
    v44 = v35;
    v45 = 2112;
    v46 = v13;
    v47 = 2114;
    v48 = v36;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "[%{public}@] Initialized variant: %@, destination: %@, guidance: %@, %{public}@", buf, 0x34u);

    goto LABEL_15;
  }

LABEL_16:

  return v16;
}

@end