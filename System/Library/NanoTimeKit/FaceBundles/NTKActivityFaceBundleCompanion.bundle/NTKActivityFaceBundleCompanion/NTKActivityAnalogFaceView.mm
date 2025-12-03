@interface NTKActivityAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (void)_prewarmForDevice:(id)device;
- (CGPoint)_contentCenterOffset;
- (NTKActivityAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_dialScaleForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (double)_ringAlphaForEditMode:(int64_t)mode;
- (double)_verticalPaddingForStatusBar;
- (id)_accentColorForFaceColor:(id)color;
- (id)_activityLabelFontForDigits:(int64_t)digits;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_cachedSchemeForFaceColorPalette:(id)palette;
- (id)_dateLabelFont;
- (id)_highlightImage;
- (id)_newActivityLabelSubview;
- (id)_newFaceViewFactoryForDevice:(id)device;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_addOrRemoveChronoViewsIfNecessary;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyDataModel:(id)model byFraction:(double)fraction updateLabels:(BOOL)labels ignoreScreenBlanked:(BOOL)blanked animated:(BOOL)animated;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyShowsCanonicalContent;
- (void)_applyShowsLockedUI;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureAppropriateChronoDetail;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot;
- (void)_dateComplicationPressed:(id)pressed;
- (void)_enumerateActivityLabels:(id)labels;
- (void)_enumerateChronoViews:(id)views;
- (void)_enumerateRingGroups:(id)groups;
- (void)_launchButtonPressed:(id)pressed;
- (void)_loadChronoViewsIfNecessary;
- (void)_loadDialIfNecessary;
- (void)_loadRingsViewIfNecessary;
- (void)_loadSnapshotContentViews;
- (void)_performWristRaiseAnimation;
- (void)_prepareForEditing;
- (void)_prepareWristRaiseAnimation;
- (void)_setActivityViewsAlpha:(double)alpha includeDateComplication:(BOOL)complication animated:(BOOL)animated;
- (void)_showChronoDetailByFraction:(double)fraction fillRings:(BOOL)rings;
- (void)_unloadSnapshotContentViews;
- (void)_updateActivityLabelColors:(BOOL)colors;
- (void)_updatePausedState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataMode:(int64_t)mode;
@end

@implementation NTKActivityAnalogFaceView

- (id)_newFaceViewFactoryForDevice:(id)device
{
  deviceCopy = device;
  v4 = [[NTKActivityFaceViewFactory alloc] initForAnalog:1 richComplications:0 forDevice:deviceCopy];

  return v4;
}

- (NTKActivityAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKActivityAnalogFaceView;
  v9 = [(NTKActivityAnalogFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v11 = [(NTKActivityAnalogFaceView *)v9 _newFaceViewFactoryForDevice:deviceCopy];
    faceViewFactory = v10->_faceViewFactory;
    v10->_faceViewFactory = v11;

    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setFaceView:v10];
    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setDelegate:v10];
    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setDataMode:[(NTKActivityAnalogFaceView *)v10 dataMode]];
    v13 = +[NSMutableDictionary dictionary];
    faceColorsToSchemes = v10->_faceColorsToSchemes;
    v10->_faceColorsToSchemes = v13;

    v15 = [UIView alloc];
    contentView = [(NTKActivityAnalogFaceView *)v10 contentView];
    [contentView bounds];
    v17 = [v15 initWithFrame:?];
    activityContainerView = v10->_activityContainerView;
    v10->_activityContainerView = v17;

    contentView2 = [(NTKActivityAnalogFaceView *)v10 contentView];
    [contentView2 addSubview:v10->_activityContainerView];

    v10->_innerDialViewScale = 1.0;
    [(NTKActivityAnalogFaceView *)v10 setComplicationFactory:v10->_faceViewFactory];
    v20 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v10;
      _os_log_impl(&dword_0, v20, OS_LOG_TYPE_DEFAULT, "Analog Face Initialized: %@", buf, 0xCu);
    }
  }

  return v10;
}

- (void)dealloc
{
  [(NTKDateComplicationController *)self->_dateComplicationController _deactivate];
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Analog Face Destroyed: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v4 dealloc];
}

- (void)setDataMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton setUserInteractionEnabled:mode == 1];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setDataMode:mode];
}

- (void)_applyShowsCanonicalContent
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _applyShowsCanonicalContent];
  [(NTKActivityAnalogFaceView *)self _loadChronoViewsIfNecessary];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setShowsCanonicalContent:[(NTKActivityAnalogFaceView *)self showsCanonicalContent]];
}

- (void)_launchButtonPressed:(id)pressed
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v16 = 138412546;
    v17 = v6;
    v18 = 1024;
    dataMode = [(NTKActivityAnalogFaceView *)self dataMode];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ launchButtonPressed action with data mode:%u", &v16, 0x12u);
  }

  if ([(NTKActivityAnalogFaceView *)self dataMode]== &dword_0 + 1)
  {
    [(NTKActivityFaceViewFactory *)self->_faceViewFactory launchActivityApp];
    [(NTKRingsMetalQuadView *)self->_ringsView frame];
    [(NTKActivityAnalogFaceView *)self convertRect:self toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    delegate = [(NTKActivityAnalogFaceView *)self delegate];
    [delegate faceViewRequestedLaunchFromRect:{v8, v10, v12, v14}];
  }
}

- (void)_applyDataModel:(id)model byFraction:(double)fraction updateLabels:(BOOL)labels ignoreScreenBlanked:(BOOL)blanked animated:(BOOL)animated
{
  animatedCopy = animated;
  modelCopy = model;
  if ([modelCopy activityMoveMode] == &dword_0 + 2)
  {
    [modelCopy appleMoveTimeCompletionPercentage];
  }

  else
  {
    [modelCopy activeEnergyCompletionPercentage];
  }

  v12 = v11;
  v13 = ARUIRingPercentageValueNoRing;
  [modelCopy appleExerciseTimeCompletionPercentage];
  v15 = v14;
  v16 = ARUIRingPercentageValueNoRing;
  v17 = v14 == ARUIRingPercentageValueNoRing;
  [modelCopy appleStandHourCompletionPercentage];
  v19 = v18;
  v20 = ARUIRingPercentageValueNoRing;
  v21 = v18 == ARUIRingPercentageValueNoRing;
  paused = [modelCopy paused];
  v49 = v12 == v13;
  if (v12 == v13)
  {
    v22 = ARUIRingPercentageValueNoRing;
  }

  else
  {
    v22 = v12 * fraction;
  }

  if (self->_ringsView && vabdd_f64(self->_lastMovePercentage, v22) > 2.22044605e-16)
  {
    ringGroups = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    [ringGroups objectAtIndexedSubscript:0];
    v25 = v24 = labels;
    *&v26 = v22;
    [v25 setActiveEnergyPercentage:animatedCopy animated:v26];

    labels = v24;
    self->_lastMovePercentage = v22;
    v27 = 1;
  }

  else
  {
    v27 = 0;
  }

  if (v15 == v16)
  {
    v28 = ARUIRingPercentageValueNoRing;
  }

  else
  {
    [modelCopy appleExerciseTimeCompletionPercentage];
    v28 = v29 * fraction;
  }

  if (self->_ringsView && vabdd_f64(self->_lastExercisePercentage, v28) > 2.22044605e-16)
  {
    ringGroups2 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    v27 = 1;
    [ringGroups2 objectAtIndexedSubscript:1];
    v31 = v17;
    v33 = v32 = labels;
    *&v34 = v28;
    [v33 setExerciseMinutesPercentage:animatedCopy animated:v34];

    labels = v32;
    v17 = v31;
    v21 = v19 == v20;

    self->_lastExercisePercentage = v28;
  }

  if (v19 == v20)
  {
    v35 = ARUIRingPercentageValueNoRing;
  }

  else
  {
    [modelCopy appleStandHourCompletionPercentage];
    v35 = v36 * fraction;
  }

  if (self->_ringsView)
  {
    if (vabdd_f64(self->_lastStandPercentage, v35) <= 2.22044605e-16)
    {
      goto LABEL_23;
    }

    ringGroups3 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    [ringGroups3 objectAtIndexedSubscript:2];
    v38 = v17;
    v40 = v39 = labels;
    *&v41 = v35;
    [v40 setStandHoursPercentage:animatedCopy animated:v41];

    labels = v39;
    v17 = v38;

    self->_lastStandPercentage = v35;
    v27 = 1;
    if (self->_ringsView)
    {
LABEL_23:
      if (self->_lastPausedState != paused)
      {
        self->_lastPausedState = paused;
        ringGroups4 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
        sub_2240(ringGroups4, paused);

        [(NTKActivityAnalogFaceView *)self _updateActivityLabelColors:paused];
        [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
        v44 = v43 = v21;
        _highlightImage = [(NTKActivityAnalogFaceView *)self _highlightImage];
        [v44 setImage:_highlightImage];

        v21 = v43;
      }
    }
  }

  objc_initWeak(location, self);
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_248C;
  v51[3] = &unk_20760;
  objc_copyWeak(v53, location);
  v46 = modelCopy;
  v52 = v46;
  labelsCopy = labels;
  v53[1] = *&v22;
  v53[2] = *&v28;
  v53[3] = *&v35;
  v53[4] = *&fraction;
  v55 = v49;
  v56 = v17;
  v57 = v21;
  v58 = animatedCopy;
  v59 = v27;
  v47 = objc_retainBlock(v51);
  (v47[2])();

  objc_destroyWeak(v53);
  objc_destroyWeak(location);
}

- (void)layoutSubviews
{
  v58.receiver = self;
  v58.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v58 layoutSubviews];
  v57 = 0.0;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  device = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(device, &v43);

  [(NTKActivityAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  ringsView = self->_ringsView;
  y = CGPointZero.y;
  device2 = [(NTKActivityAnalogFaceView *)self device];
  [NTKAnalogUtilities sceneSizeForDevice:device2];
  [(NTKRingsMetalQuadView *)ringsView setBounds:CGPointZero.x, y, v11, v12];

  v13 = v5 * 0.5;
  v14 = v7 * 0.5;
  [(NTKRingsMetalQuadView *)self->_ringsView setCenter:v13, v7 * 0.5];
  [(NTKActivityAnalogFaceView *)self bounds];
  MidX = CGRectGetMidX(v59);
  [(NTKActivityAnalogFaceView *)self bounds];
  MidY = CGRectGetMidY(v60);
  tapToLaunchButton = self->_tapToLaunchButton;
  [(UIView *)self->_activityContainerView bounds];
  v19 = v18 * 0.5;
  [(UIView *)self->_activityContainerView bounds];
  [(NTKFaceViewTapControl *)tapToLaunchButton setCenter:v19, v20 * 0.5];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton sizeToFit];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  *&v27[5] = MidX;
  *&v27[6] = MidY;
  v41 = v56;
  v39 = v54;
  v40 = v55;
  v35 = v50;
  v36 = v51;
  v37 = v52;
  v38 = v53;
  v31 = v46;
  v32 = v47;
  v27[2] = sub_2F54;
  v27[3] = &unk_20788;
  v27[4] = self;
  v42 = v57;
  v33 = v48;
  v34 = v49;
  v28 = v43;
  v29 = v44;
  v30 = v45;
  [(NTKActivityAnalogFaceView *)self _enumerateActivityLabels:v27];
  v21 = v13 + v57;
  [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel sizeThatFits:CGSizeZero.width, CGSizeZero.height];
  _dateLabelFont = [(NTKActivityAnalogFaceView *)self _dateLabelFont];
  [_dateLabelFont lineHeight];

  dateComplicationLabel = self->_dateComplicationLabel;
  device3 = [(NTKActivityAnalogFaceView *)self device];
  CLKPixelAlignRectForDevice();
  [(NTKActivityDateComplicationLabel *)dateComplicationLabel setBounds:?];

  [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setCenter:v21, v14];
  activityContainerView = self->_activityContainerView;
  contentView = [(NTKActivityAnalogFaceView *)self contentView];
  [contentView bounds];
  [(UIView *)activityContainerView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_loadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v7 _loadSnapshotContentViews];
  [(NTKActivityAnalogFaceView *)self _loadRingsViewIfNecessary];
  [(NTKActivityAnalogFaceView *)self _loadDialIfNecessary];
  if (!self->_tapToLaunchButton)
  {
    v3 = objc_opt_new();
    tapToLaunchButton = self->_tapToLaunchButton;
    self->_tapToLaunchButton = v3;

    [(NTKFaceViewTapControl *)self->_tapToLaunchButton addTarget:self action:"_launchButtonPressed:" forControlEvents:64];
    highlightImageView = [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
    _highlightImage = [(NTKActivityAnalogFaceView *)self _highlightImage];
    [highlightImageView setImage:_highlightImage];

    [(UIView *)self->_activityContainerView addSubview:self->_tapToLaunchButton];
  }

  if (self->_isDetailedDensity || [(NTKActivityAnalogFaceView *)self showsCanonicalContent])
  {
    [(NTKActivityAnalogFaceView *)self _loadChronoViewsIfNecessary];
  }

  [(NTKActivityAnalogFaceView *)self _applyCurrentDataModelAnimated:0];
  self->_snapshotContentViewsLoaded = 1;
}

- (void)_loadDialIfNecessary
{
  device = [(NTKActivityAnalogFaceView *)self device];
  [device screenBounds];
  v5 = v4;

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  device2 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(device2, v15);

  if (!self->_dialView)
  {
    [(NTKActivityAnalogFaceView *)self bounds];
    v7 = *(&v16 + 1);
    v9 = v8 + *(&v16 + 1) * -2.0;
    v10 = [NTKActivityDialView alloc];
    device3 = [(NTKActivityAnalogFaceView *)self device];
    v12 = [(NTKActivityDialView *)v10 initWithFrame:device3 forDevice:v7, v5 * 0.5 - v9 * 0.5, v9, v9];
    dialView = self->_dialView;
    self->_dialView = v12;

    [(NTKActivityDialView *)self->_dialView setUserInteractionEnabled:0];
    contentView = [(NTKActivityAnalogFaceView *)self contentView];
    [contentView addSubview:self->_dialView];
  }
}

- (void)_loadRingsViewIfNecessary
{
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  device = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(device, &v20);

  if (!self->_ringsView)
  {
    v19 = objc_alloc_init(NSMutableArray);
    v4 = 0;
    v5 = *(&v21 + 1);
    v6 = *&v22 + *(&v22 + 1);
    v7 = *&v22;
    do
    {
      v8 = [[ARUIRingGroup alloc] initWithNumberOfRings:1];
      [v8 setTranslation:0.0];
      v9 = v5 - v4 * v6;
      *&v9 = v9;
      [v8 setGroupDiameter:v9];
      *&v10 = v7;
      [v8 setThickness:v10];
      [v19 addObject:v8];

      v4 += 2;
    }

    while (v4 != 6);
    v11 = +[NTKActivityFaceViewFactory sharedRingsViewRenderer];
    v12 = [NTKRingsMetalQuadView alloc];
    [(NTKActivityAnalogFaceView *)self bounds];
    v13 = [(NTKRingsMetalQuadView *)v12 initWithFrame:@"ActA" identifier:16 options:1 colorSpace:?];
    ringsView = self->_ringsView;
    self->_ringsView = v13;

    v15 = [[NTKRingsQuad alloc] initWithRingGroups:v19 renderer:v11];
    ringsQuad = self->_ringsQuad;
    self->_ringsQuad = v15;

    [(NTKRingsQuad *)self->_ringsQuad setDelegate:self];
    ringGroups = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    sub_2240(ringGroups, 0);

    [(NTKRingsMetalQuadView *)self->_ringsView addQuad:self->_ringsQuad];
    v18 = self->_ringsView;
    [(UIView *)self->_activityContainerView bounds];
    [(NTKRingsMetalQuadView *)v18 setFrame:?];
    [(UIView *)self->_activityContainerView addSubview:self->_ringsView];
    self->_lastMovePercentage = 0.0;
    self->_lastExercisePercentage = 0.0;
    self->_lastStandPercentage = 0.0;
  }
}

- (void)_loadChronoViewsIfNecessary
{
  if (!self->_dateComplicationLabel)
  {
    v3 = [NTKActivityDateComplicationLabel alloc];
    device = [(NTKActivityAnalogFaceView *)self device];
    v5 = [(NTKActivityDateComplicationLabel *)v3 initWithSizeStyle:1 accentType:0 forDevice:device];
    dateComplicationLabel = self->_dateComplicationLabel;
    self->_dateComplicationLabel = v5;

    faceColorPalette = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    primaryColor = [faceColorPalette primaryColor];

    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAccentColor:primaryColor];
    v9 = self->_dateComplicationLabel;
    _dateLabelFont = [(NTKActivityAnalogFaceView *)self _dateLabelFont];
    [(NTKActivityDateComplicationLabel *)v9 setFont:_dateLabelFont];

    v11 = [NTKDateComplication complicationWithDateStyle:8];
    v12 = self->_dateComplicationLabel;
    device2 = [(NTKActivityAnalogFaceView *)self device];
    v14 = [NTKComplicationController DEPRECATEDControllerForComplication:v11 withLegacyDisplay:v12 forDevice:device2];
    dateComplicationController = self->_dateComplicationController;
    self->_dateComplicationController = v14;

    [(NTKDateComplicationController *)self->_dateComplicationController _activate];
    LOBYTE(v16) = self->_isDetailedDensity;
    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAlpha:v16];
    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel addTarget:self action:"_dateComplicationPressed:" forControlEvents:64];
  }

  if (!self->_moveLabel)
  {
    _newActivityLabelSubview = [(NTKActivityAnalogFaceView *)self _newActivityLabelSubview];
    moveLabel = self->_moveLabel;
    self->_moveLabel = _newActivityLabelSubview;
  }

  if (!self->_exerciseLabel)
  {
    _newActivityLabelSubview2 = [(NTKActivityAnalogFaceView *)self _newActivityLabelSubview];
    exerciseLabel = self->_exerciseLabel;
    self->_exerciseLabel = _newActivityLabelSubview2;
  }

  if (!self->_standLabel)
  {
    _newActivityLabelSubview3 = [(NTKActivityAnalogFaceView *)self _newActivityLabelSubview];
    standLabel = self->_standLabel;
    self->_standLabel = _newActivityLabelSubview3;
  }

  self->_activityViewsAlpha = 1.0;
  [(NTKActivityAnalogFaceView *)self _addOrRemoveChronoViewsIfNecessary];
  lastPausedState = self->_lastPausedState;

  [(NTKActivityAnalogFaceView *)self _updateActivityLabelColors:lastPausedState];
}

- (id)_newActivityLabelSubview
{
  v3 = [NTKActivityAnalogFaceBundle localizedStringForKey:@"ACTIVITY_INVALID_DATA" comment:@"---"];
  v4 = objc_opt_new();
  v5 = +[UIColor clearColor];
  [v4 setBackgroundColor:v5];

  v6 = -[NTKActivityAnalogFaceView _activityLabelFontForDigits:](self, "_activityLabelFontForDigits:", [v3 length]);
  [v4 setFont:v6];

  [v4 setTextAlignment:1];
  [v4 setText:v3];
  LOBYTE(v7) = self->_isDetailedDensity;
  [v4 setAlpha:v7];

  return v4;
}

- (void)_dateComplicationPressed:(id)pressed
{
  if ([(NTKDateComplicationController *)self->_dateComplicationController hasTapAction])
  {
    [(NTKDateComplicationController *)self->_dateComplicationController performTapActionForDisplayWrapper:0];
    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel frame];
    [(NTKActivityAnalogFaceView *)self convertRect:self toView:?];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    delegate = [(NTKActivityAnalogFaceView *)self delegate];
    [delegate faceViewRequestedLaunchFromRect:{v5, v7, v9, v11}];
  }
}

- (void)_addOrRemoveChronoViewsIfNecessary
{
  if (self->_isDetailedDensity || ([(NTKActivityAnalogFaceView *)self editing]& 1) != 0)
  {
    showsCanonicalContent = 1;
  }

  else
  {
    showsCanonicalContent = [(NTKActivityAnalogFaceView *)self showsCanonicalContent];
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3B58;
  v4[3] = &unk_207B0;
  v5 = showsCanonicalContent;
  v4[4] = self;
  [(NTKActivityAnalogFaceView *)self _enumerateChronoViews:v4];
}

- (void)_updateActivityLabelColors:(BOOL)colors
{
  if (colors)
  {
    v6 = NTKPausedNonGradientTextColor();
    v4 = NTKPausedNonGradientTextColor();
    NTKPausedNonGradientTextColor();
  }

  else
  {
    v6 = NTKMoveNonGradientTextColor();
    v4 = NTKExerciseNonGradientTextColor();
    NTKStandNonGradientTextColor();
  }
  v5 = ;
  [(UILabel *)self->_moveLabel setTextColor:v6];
  [(UILabel *)self->_exerciseLabel setTextColor:v4];
  [(UILabel *)self->_standLabel setTextColor:v5];
}

- (CGPoint)_contentCenterOffset
{
  delegate = [(NTKActivityAnalogFaceView *)self delegate];
  v4 = [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottomCenter];

  device = [(NTKActivityAnalogFaceView *)self device];
  v6 = device;
  if (v4)
  {
    sub_72E0(device, v14);
    v7 = v15;
    v8 = &v16;
  }

  else
  {
    sub_72E0(device, v12);
    v7 = *&v12[19];
    v8 = &v13;
  }

  v9 = *v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(device, v5);
  v3 = v6;

  return v3;
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _applyFrozen];
  [(NTKActivityAnalogFaceView *)self _updatePausedState];
}

- (void)_applySlow
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _applySlow];
  [(NTKActivityAnalogFaceView *)self _updatePausedState];
}

- (void)_updatePausedState
{
  dataMode = [(NTKActivityAnalogFaceView *)self dataMode];
  isFrozen = [(NTKActivityAnalogFaceView *)self isFrozen];
  v5 = NTKIsScreenOn();
  animating = [(NTKRingsQuad *)self->_ringsQuad animating];
  if ([(NTKActivityAnalogFaceView *)self editing])
  {
    ringsView = self->_ringsView;
    v8 = animating ^ 1;
  }

  else
  {
    ringsView = self->_ringsView;
    v8 = (dataMode != &dword_0 + 1) | isFrozen & 1 | ((v5 & animating & 1) == 0);
  }

  [(NTKRingsMetalQuadView *)ringsView setPaused:v8];
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _applyDataMode];
  [(NTKActivityAnalogFaceView *)self _updatePausedState];
}

- (void)_unloadSnapshotContentViews
{
  [(NTKActivityDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;

  [(NTKRingsMetalQuadView *)self->_ringsView removeFromSuperview];
  ringsView = self->_ringsView;
  self->_ringsView = 0;

  [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel removeFromSuperview];
  dateComplicationLabel = self->_dateComplicationLabel;
  self->_dateComplicationLabel = 0;

  [(UILabel *)self->_moveLabel removeFromSuperview];
  moveLabel = self->_moveLabel;
  self->_moveLabel = 0;

  [(UILabel *)self->_exerciseLabel removeFromSuperview];
  exerciseLabel = self->_exerciseLabel;
  self->_exerciseLabel = 0;

  [(UILabel *)self->_standLabel removeFromSuperview];
  standLabel = self->_standLabel;
  self->_standLabel = 0;

  [(NTKFaceViewTapControl *)self->_tapToLaunchButton removeFromSuperview];
  tapToLaunchButton = self->_tapToLaunchButton;
  self->_tapToLaunchButton = 0;

  self->_snapshotContentViewsLoaded = 0;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  slotCopy = slot;
  if ([slotCopy isEqual:NTKComplicationSlotDate])
  {
    complicationFactory = [(NTKActivityFaceViewFactory *)self->_faceViewFactory complicationFactory];
    v11 = [complicationFactory newViewForComplication:complicationCopy family:family forSlot:12];

    [(NTKActivityAnalogFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKActivityAnalogFaceView;
    v11 = [(NTKActivityAnalogFaceView *)&v13 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  }

  return v11;
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKActivityAnalogFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [slotCopy isEqualToString:NTKComplicationSlotBottomCenter];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)radius centerAngle:(double *)angle maxAngularWidth:(double *)width circleCenter:(CGPoint *)center interior:(BOOL *)interior forSlot:(id)slot
{
  slotCopy = slot;
  if ([(NTKActivityAnalogFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    [(NTKActivityFaceViewFactory *)self->_faceViewFactory curvedCircleRadius:radius centerAngle:angle maxAngularWidth:width circleCenter:center interior:interior forSlot:slotCopy];
  }
}

- (void)_applyShowsLockedUI
{
  v4.receiver = self;
  v4.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v4 _applyShowsLockedUI];
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[NTKActivityAnalogFaceView _applyShowsLockedUI]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setShowsLockedContent:[(NTKActivityAnalogFaceView *)self showsLockedUI]];
}

- (void)_prepareWristRaiseAnimation
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _prepareWristRaiseAnimation];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory prepareWristRaiseAnimation];
}

- (void)_performWristRaiseAnimation
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _performWristRaiseAnimation];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory performWristRaiseAnimation];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v4 _prepareForEditing];
  [(NTKActivityAnalogFaceView *)self _loadChronoViewsIfNecessary];
  v3 = +[FIUIActivityDataModel idealizedModel];
  [(NTKActivityAnalogFaceView *)self _applyDataModel:v3 byFraction:1 updateLabels:0 ignoreScreenBlanked:0 animated:1.0];

  [(NTKActivityAnalogFaceView *)self _updatePausedState];
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _cleanupAfterEditing];
  [(NTKActivityAnalogFaceView *)self _addOrRemoveChronoViewsIfNecessary];
  [(NTKActivityAnalogFaceView *)self _applyCurrentDataModelAnimated:0];
  [(NTKActivityAnalogFaceView *)self _updatePausedState];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    faceColorPalette = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v12 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:faceColorPalette];

    [(NTKActivityDialView *)self->_dialView setColorScheme:v12];
    faceColorPalette2 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v14 = [(NTKActivityAnalogFaceView *)self _accentColorForFaceColor:faceColorPalette2];

    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAccentColor:v14];
    timeView = [(NTKActivityAnalogFaceView *)self timeView];
    [timeView applySecondHandColor:v14];
  }

  else if (mode == 11)
  {
    self->_isDetailedDensity = [optionCopy density] == &dword_0 + 3;
    highlightImageView = [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
    _highlightImage = [(NTKActivityAnalogFaceView *)self _highlightImage];
    [highlightImageView setImage:_highlightImage];

    if (self->_snapshotContentViewsLoaded)
    {
      [(NTKActivityAnalogFaceView *)self _loadChronoViewsIfNecessary];
    }

    [(NTKActivityAnalogFaceView *)self _configureAppropriateChronoDetail];
  }
}

- (void)_configureAppropriateChronoDetail
{
  v2 = 0.0;
  if (self->_isDetailedDensity)
  {
    v2 = 1.0;
  }

  [(NTKActivityAnalogFaceView *)self _showChronoDetailByFraction:0 fillRings:v2];
}

- (id)_accentColorForFaceColor:(id)color
{
  colorCopy = color;
  if ([colorCopy isWhiteColor])
  {
    foregroundColor = +[UIColor systemOrangeColor];
  }

  else
  {
    v6 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:colorCopy];
    foregroundColor = [v6 foregroundColor];
  }

  return foregroundColor;
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    faceColorPalette = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v15 = [faceColorPalette copy];

    pigmentEditOption = [optionCopy pigmentEditOption];
    [v15 setPigmentEditOption:pigmentEditOption];

    faceColorPalette2 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v18 = [faceColorPalette2 copy];

    pigmentEditOption2 = [toOptionCopy pigmentEditOption];
    [v18 setPigmentEditOption:pigmentEditOption2];

    v20 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:v15];
    v21 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:v18];
    [(NTKActivityDialView *)self->_dialView applyTransitionFromScheme:v20 toScheme:v21 fraction:fraction];
    v22 = [(NTKActivityAnalogFaceView *)self _accentColorForFaceColor:v15];
    v23 = [(NTKActivityAnalogFaceView *)self _accentColorForFaceColor:v18];
    v24 = NTKInterpolateBetweenColors();

    timeView = [(NTKActivityAnalogFaceView *)self timeView];
    [timeView applySecondHandColor:v24];

    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAccentColor:v24];
  }

  else if (mode == 11)
  {
    [optionCopy density];
    [toOptionCopy density];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKActivityAnalogFaceView *)self _showChronoDetailByFraction:1 fillRings:?];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v15.receiver = self;
  v15.super_class = NTKActivityAnalogFaceView;
  [NTKActivityAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  timeView = [(NTKActivityAnalogFaceView *)self timeView];
  [(NTKActivityAnalogFaceView *)self _handAlphaForEditMode:mode];
  [(NTKActivityAnalogFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  dialView = self->_dialView;
  [(NTKActivityAnalogFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKActivityAnalogFaceView *)self _dialAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKActivityDialView *)dialView setAlpha:?];
  [(NTKActivityAnalogFaceView *)self _dialScaleForEditMode:mode];
  [(NTKActivityAnalogFaceView *)self _dialScaleForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  activityContainerView = self->_activityContainerView;
  CGAffineTransformMakeScale(&v14, v10, v10);
  [(UIView *)activityContainerView setTransform:&v14];
  v13 = self->_dialView;
  CGAffineTransformMakeScale(&v14, v11, v11);
  [(NTKActivityDialView *)v13 setTransform:&v14];
  self->_contentScale = v11;
  [(NTKActivityAnalogFaceView *)self _ringAlphaForEditMode:mode];
  [(NTKActivityAnalogFaceView *)self _ringAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKActivityAnalogFaceView *)self _setActivityViewsAlpha:1 includeDateComplication:0 animated:?];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v20.receiver = self;
  v20.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v20 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  NTKScaleForRubberBandingFraction();
  v8 = v7;
  NTKAlphaForRubberBandingFraction();
  v10 = v9;
  if (mode == 11)
  {
    v16 = v8 * self->_contentScale;
    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, v16, v16);
    activityContainerView = self->_activityContainerView;
    v18 = v19;
    [(UIView *)activityContainerView setTransform:&v18];
  }

  else
  {
    if (mode == 10)
    {
      v14 = v8 * self->_contentScale;
      memset(&v19, 0, sizeof(v19));
      CGAffineTransformMakeScale(&v19, v14, v14);
      dialView = self->_dialView;
      v18 = v19;
      [(NTKActivityDialView *)dialView setTransform:&v18];
      [(NTKActivityDialView *)self->_dialView setAlpha:v10];
      return;
    }

    if (mode)
    {
      return;
    }

    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, v8, v8);
    contentView = [(NTKActivityAnalogFaceView *)self contentView];
    v18 = v19;
    [contentView setTransform:&v18];

    timeView = [(NTKActivityAnalogFaceView *)self timeView];
    v18 = v19;
    [timeView setTransform:&v18];

    timeView2 = [(NTKActivityAnalogFaceView *)self timeView];
    [timeView2 setAlpha:v10];
  }

  [(NTKActivityAnalogFaceView *)self _setActivityViewsAlpha:1 includeDateComplication:0 animated:v10];
}

- (void)_setActivityViewsAlpha:(double)alpha includeDateComplication:(BOOL)complication animated:(BOOL)animated
{
  animatedCopy = animated;
  self->_activityViewsAlpha = alpha;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4F98;
  v17[3] = &unk_207F8;
  v17[4] = self;
  *&v17[5] = alpha;
  complicationCopy = complication;
  v8 = objc_retainBlock(v17);
  v9 = v8;
  if (animatedCopy)
  {
    [UIView animateWithDuration:v8 animations:0.2];
    v15[1] = _NSConcreteStackBlock;
    v15[2] = 3221225472;
    v15[3] = sub_505C;
    v15[4] = &unk_20840;
    v15[5] = 0x3FC999999999999ALL;
    v10 = &v16;
  }

  else
  {
    (v8[2])(v8);
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_5120;
    v14 = &unk_20860;
    v10 = v15;
  }

  *v10 = alpha;
  [(NTKActivityAnalogFaceView *)self _enumerateRingGroups:v11, v12, v13, v14];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v17.receiver = self;
  v17.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v17 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    device = [(NTKActivityAnalogFaceView *)self device];
    sub_72E0(device, v14);
    v12 = (fraction + -0.5 + fraction + -0.5) * v15 + 1.0;

    v9 = v12 * self->_contentScale;
    v10 = 72;
  }

  else
  {
    if (mode != 11)
    {
      return;
    }

    NTKLargeElementScaleForBreathingFraction();
    v9 = v8 * self->_contentScale;
    v10 = 40;
  }

  v13 = *&self->NTKAnalogFaceView_opaque[v10];
  CGAffineTransformMakeScale(&v16, v9, v9);
  [v13 setTransform:&v16];
}

- (id)_cachedSchemeForFaceColorPalette:(id)palette
{
  paletteCopy = palette;
  configuration = [paletteCopy configuration];
  uniqueId = [configuration uniqueId];

  v7 = [(NSMutableDictionary *)self->_faceColorsToSchemes objectForKeyedSubscript:uniqueId];
  if (!v7)
  {
    device = [(NTKActivityAnalogFaceView *)self device];
    device2 = [(NTKActivityAnalogFaceView *)self device];
    sub_72E0(device2, v11);
    v7 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:paletteCopy units:v12];

    [(NSMutableDictionary *)self->_faceColorsToSchemes setObject:v7 forKeyedSubscript:uniqueId];
  }

  return v7;
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  result = 0.0;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  v3 = mode == 10 || mode == 0;
  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_ringAlphaForEditMode:(int64_t)mode
{
  v3 = mode == 11 || mode == 0;
  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialScaleForEditMode:(int64_t)mode
{
  result = 0.83;
  if (mode != 10)
  {
    return 1.0;
  }

  return result;
}

- (void)_showChronoDetailByFraction:(double)fraction fillRings:(BOOL)rings
{
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v7 = fraction < 0.5;
  v44 = 0uLL;
  v45 = 0uLL;
  v42 = 0uLL;
  v43 = 0uLL;
  v40 = 0uLL;
  v41 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v36 = 0uLL;
  v37 = 0uLL;
  v34 = 0uLL;
  v35 = 0uLL;
  device = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(device, &v34);

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v30 = v47;
  v28 = v45;
  v29 = v46;
  v24 = v41;
  v25 = v42;
  v26 = v43;
  v27 = v44;
  v20 = v37;
  v21 = v38;
  v22 = v39;
  v23 = v40;
  v17 = v34;
  v18 = v35;
  v16[2] = sub_55E4;
  v16[3] = &unk_20888;
  v32 = v7;
  *&v16[6] = fraction;
  v31 = v48;
  v19 = v36;
  ringsCopy = rings;
  v16[4] = self;
  v16[5] = 0x3FE0000000000000;
  [(NTKActivityAnalogFaceView *)self _enumerateRingGroups:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_5810;
  v15[3] = &unk_208B0;
  *&v15[6] = fraction;
  v15[4] = self;
  v15[5] = 0x3FE0000000000000;
  [(NTKActivityAnalogFaceView *)self _enumerateActivityLabels:v15];
  v9 = 0.0;
  if (fraction >= 0.6875)
  {
    v9 = 1.0;
    if (fraction <= 0.9375)
    {
      CLKCompressFraction();
      v9 = v10;
    }
  }

  [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAlpha:v9 * self->_activityViewsAlpha];
  innerDialViewScale = self->_innerDialViewScale;
  CLKInterpolateBetweenFloatsClipped();
  dateComplicationLabel = self->_dateComplicationLabel;
  CGAffineTransformMakeScale(&v14, v13, v13);
  [(NTKActivityDateComplicationLabel *)dateComplicationLabel setTransform:&v14];
}

+ (void)_prewarmForDevice:(id)device
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___NTKActivityAnalogFaceView;
  deviceCopy = device;
  objc_msgSendSuper2(&v4, "_prewarmForDevice:", deviceCopy);
  [NTKActivityFaceViewFactory prewarmForDevice:deviceCopy, v4.receiver, v4.super_class];
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKActivityFaceViewFactory prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)_enumerateRingGroups:(id)groups
{
  groupsCopy = groups;
  ringGroups = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5A44;
  v7[3] = &unk_208D8;
  v8 = groupsCopy;
  v6 = groupsCopy;
  [ringGroups enumerateObjectsUsingBlock:v7];
}

- (void)_enumerateActivityLabels:(id)labels
{
  moveLabel = self->_moveLabel;
  v5 = (labels + 16);
  v6 = *(labels + 2);
  labelsCopy = labels;
  v6();
  (*v5)(labelsCopy, self->_exerciseLabel, 1);
  (*v5)(labelsCopy, self->_standLabel, 2);
}

- (void)_enumerateChronoViews:(id)views
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5BA8;
  v5[3] = &unk_20900;
  viewsCopy = views;
  v4 = viewsCopy;
  [(NTKActivityAnalogFaceView *)self _enumerateActivityLabels:v5];
  v4[2](v4, self->_dateComplicationLabel);
}

- (id)_highlightImage
{
  if (self->_isDetailedDensity)
  {
    lastPausedState = self->_lastPausedState;
    device = [(NTKActivityAnalogFaceView *)self device];
    device2 = device;
    if (lastPausedState)
    {
      sub_7B6C(device, device);
      v5 = &qword_28DE8;
    }

    else
    {
      sub_7DB8(device, device);
      v5 = &qword_28E10;
    }
  }

  else
  {
    device2 = [(NTKActivityAnalogFaceView *)self device];
    sub_8038(device2, device2);
    if (qword_28E60 != -1)
    {
      sub_13144();
    }

    v5 = &qword_28E38;
  }

  v6 = *v5;
  v7 = *v5;

  return v6;
}

- (id)_activityLabelFontForDigits:(int64_t)digits
{
  device = [(NTKActivityAnalogFaceView *)self device];
  v5 = device;
  if (digits > 2)
  {
    if (digits != 3)
    {
      if (digits == 4)
      {
        sub_72E0(device, v17);
        v6 = &v18;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_72E0(device, v15);
    v6 = &v16;
  }

  else
  {
    if (digits != 1)
    {
      if (digits == 2)
      {
        sub_72E0(device, v13);
        v6 = &v14;
        goto LABEL_11;
      }

LABEL_8:
      sub_72E0(device, v9);
      v6 = &v10;
      goto LABEL_11;
    }

    sub_72E0(device, v11);
    v6 = &v12;
  }

LABEL_11:
  v7 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*v6 design:UIFontWeightSemibold];

  return v7;
}

- (id)_dateLabelFont
{
  device = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(device, v5);
  v3 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v5[0] design:UIFontWeightSemibold];

  return v3;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 11)
  {
    return &off_21B18;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  v9 = optionCopy;
  if (mode == 11)
  {
    v10 = optionCopy;
    v11 = [options objectForKeyedSubscript:&off_21550];
    if (!qword_28CE0)
    {
      v12 = objc_opt_new();
      v13 = qword_28CE0;
      qword_28CE0 = v12;
    }

    v14 = [NSString stringWithFormat:@"%@-%@", v10, v11];
    v15 = [qword_28CE0 objectForKey:v14];
    if (!v15)
    {
      faceColorPalette = [(NTKActivityAnalogFaceView *)self faceColorPalette];
      v17 = [faceColorPalette copy];

      v51 = v11;
      pigmentEditOption = [v11 pigmentEditOption];
      [v17 setPigmentEditOption:pigmentEditOption];

      device = [(NTKActivityAnalogFaceView *)self device];
      device2 = [(NTKActivityAnalogFaceView *)self device];
      sub_72E0(device2, v62);
      v21 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:v17 units:v63];

      v22 = [NTKActivityAnalogFaceBundle imageWithName:@"Swatch-Activity-Ring"];
      shiftedBackgroundColor = [v21 shiftedBackgroundColor];
      v24 = [v22 _flatImageWithColor:shiftedBackgroundColor];

      v25 = [NTKActivityAnalogFaceBundle imageWithName:@"Swatch-Activity-Notches"];
      v54 = v21;
      activityTickColor = [v21 activityTickColor];
      v50 = [v25 _flatImageWithColor:activityTickColor];

      density = [v10 density];
      v52 = v10;
      v53 = v17;
      if (density == &dword_0 + 3)
      {
        v30 = CLKLocaleNumberSystemPrefix();
        if (CLKLocaleCurrentNumberSystem())
        {
          v31 = @"Swatch-Activity-Face2";
        }

        else
        {
          v32 = +[NSLocale currentLocale];
          v33 = [v32 objectForKey:NSLocaleLanguageCode];
          v34 = [v33 isEqualToString:@"en"];

          v35 = @"Non";
          if (v34)
          {
            v35 = &stru_20E98;
          }

          v31 = [@"Swatch-Activity-Face2" stringByAppendingFormat:@"-%@En", v35];
        }

        v36 = [(__CFString *)v31 stringByAppendingFormat:@"-%@", v30];
        v28 = [NTKActivityAnalogFaceBundle imageWithName:v36];

        v37 = [NSString stringWithFormat:@"Swatch-Activity-Date-%@", v30];
        v29 = [NTKActivityAnalogFaceBundle imageWithName:v37];

        v17 = v53;
      }

      else if (density == &dword_0 + 1)
      {
        v28 = [NTKActivityAnalogFaceBundle imageWithName:@"Swatch-Activity-Face1"];
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v28 = 0;
      }

      if ([v17 isWhiteColor])
      {
        +[UIColor systemOrangeColor];
      }

      else
      {
        [v54 foregroundColor];
      }
      v38 = ;
      if (v29)
      {
        v39 = [v29 _flatImageWithColor:v38];
      }

      else
      {
        v39 = 0;
      }

      v40 = NTKImageNamed();
      v41 = [v40 _flatImageWithColor:v38];

      v42 = [UIGraphicsImageRenderer alloc];
      [v24 size];
      v43 = [v42 initWithSize:?];
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_6614;
      v56[3] = &unk_20950;
      v57 = v39;
      v58 = v24;
      v59 = v50;
      v60 = v28;
      v61 = v41;
      v44 = v41;
      v45 = v28;
      v46 = v50;
      v47 = v24;
      v48 = v39;
      v15 = [v43 imageWithActions:v56];
      [qword_28CE0 setObject:v15 forKey:v14];

      v11 = v51;
      v10 = v52;
    }
  }

  else
  {
    v55.receiver = self;
    v55.super_class = NTKActivityAnalogFaceView;
    v15 = [(NTKActivityAnalogFaceView *)&v55 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v15;
}

@end