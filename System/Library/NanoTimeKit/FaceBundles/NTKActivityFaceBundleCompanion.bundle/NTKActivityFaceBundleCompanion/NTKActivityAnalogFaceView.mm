@interface NTKActivityAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (void)_prewarmForDevice:(id)a3;
- (CGPoint)_contentCenterOffset;
- (NTKActivityAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_dialScaleForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (double)_ringAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_accentColorForFaceColor:(id)a3;
- (id)_activityLabelFontForDigits:(int64_t)a3;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_cachedSchemeForFaceColorPalette:(id)a3;
- (id)_dateLabelFont;
- (id)_highlightImage;
- (id)_newActivityLabelSubview;
- (id)_newFaceViewFactoryForDevice:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_addOrRemoveChronoViewsIfNecessary;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyDataModel:(id)a3 byFraction:(double)a4 updateLabels:(BOOL)a5 ignoreScreenBlanked:(BOOL)a6 animated:(BOOL)a7;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowsCanonicalContent;
- (void)_applyShowsLockedUI;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureAppropriateChronoDetail;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8;
- (void)_dateComplicationPressed:(id)a3;
- (void)_enumerateActivityLabels:(id)a3;
- (void)_enumerateChronoViews:(id)a3;
- (void)_enumerateRingGroups:(id)a3;
- (void)_launchButtonPressed:(id)a3;
- (void)_loadChronoViewsIfNecessary;
- (void)_loadDialIfNecessary;
- (void)_loadRingsViewIfNecessary;
- (void)_loadSnapshotContentViews;
- (void)_performWristRaiseAnimation;
- (void)_prepareForEditing;
- (void)_prepareWristRaiseAnimation;
- (void)_setActivityViewsAlpha:(double)a3 includeDateComplication:(BOOL)a4 animated:(BOOL)a5;
- (void)_showChronoDetailByFraction:(double)a3 fillRings:(BOOL)a4;
- (void)_unloadSnapshotContentViews;
- (void)_updateActivityLabelColors:(BOOL)a3;
- (void)_updatePausedState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataMode:(int64_t)a3;
@end

@implementation NTKActivityAnalogFaceView

- (id)_newFaceViewFactoryForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKActivityFaceViewFactory alloc] initForAnalog:1 richComplications:0 forDevice:v3];

  return v4;
}

- (NTKActivityAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKActivityAnalogFaceView;
  v9 = [(NTKActivityAnalogFaceView *)&v22 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(NTKActivityAnalogFaceView *)v9 _newFaceViewFactoryForDevice:v8];
    faceViewFactory = v10->_faceViewFactory;
    v10->_faceViewFactory = v11;

    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setFaceView:v10];
    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setDelegate:v10];
    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setDataMode:[(NTKActivityAnalogFaceView *)v10 dataMode]];
    v13 = +[NSMutableDictionary dictionary];
    faceColorsToSchemes = v10->_faceColorsToSchemes;
    v10->_faceColorsToSchemes = v13;

    v15 = [UIView alloc];
    v16 = [(NTKActivityAnalogFaceView *)v10 contentView];
    [v16 bounds];
    v17 = [v15 initWithFrame:?];
    activityContainerView = v10->_activityContainerView;
    v10->_activityContainerView = v17;

    v19 = [(NTKActivityAnalogFaceView *)v10 contentView];
    [v19 addSubview:v10->_activityContainerView];

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
    v6 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Analog Face Destroyed: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v4 dealloc];
}

- (void)setDataMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton setUserInteractionEnabled:a3 == 1];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setDataMode:a3];
}

- (void)_applyShowsCanonicalContent
{
  v3.receiver = self;
  v3.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v3 _applyShowsCanonicalContent];
  [(NTKActivityAnalogFaceView *)self _loadChronoViewsIfNecessary];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setShowsCanonicalContent:[(NTKActivityAnalogFaceView *)self showsCanonicalContent]];
}

- (void)_launchButtonPressed:(id)a3
{
  v4 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v16 = 138412546;
    v17 = v6;
    v18 = 1024;
    v19 = [(NTKActivityAnalogFaceView *)self dataMode];
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
    v15 = [(NTKActivityAnalogFaceView *)self delegate];
    [v15 faceViewRequestedLaunchFromRect:{v8, v10, v12, v14}];
  }
}

- (void)_applyDataModel:(id)a3 byFraction:(double)a4 updateLabels:(BOOL)a5 ignoreScreenBlanked:(BOOL)a6 animated:(BOOL)a7
{
  v50 = a7;
  v10 = a3;
  if ([v10 activityMoveMode] == &dword_0 + 2)
  {
    [v10 appleMoveTimeCompletionPercentage];
  }

  else
  {
    [v10 activeEnergyCompletionPercentage];
  }

  v12 = v11;
  v13 = ARUIRingPercentageValueNoRing;
  [v10 appleExerciseTimeCompletionPercentage];
  v15 = v14;
  v16 = ARUIRingPercentageValueNoRing;
  v17 = v14 == ARUIRingPercentageValueNoRing;
  [v10 appleStandHourCompletionPercentage];
  v19 = v18;
  v20 = ARUIRingPercentageValueNoRing;
  v21 = v18 == ARUIRingPercentageValueNoRing;
  v48 = [v10 paused];
  v49 = v12 == v13;
  if (v12 == v13)
  {
    v22 = ARUIRingPercentageValueNoRing;
  }

  else
  {
    v22 = v12 * a4;
  }

  if (self->_ringsView && vabdd_f64(self->_lastMovePercentage, v22) > 2.22044605e-16)
  {
    v23 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    [v23 objectAtIndexedSubscript:0];
    v25 = v24 = a5;
    *&v26 = v22;
    [v25 setActiveEnergyPercentage:v50 animated:v26];

    a5 = v24;
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
    [v10 appleExerciseTimeCompletionPercentage];
    v28 = v29 * a4;
  }

  if (self->_ringsView && vabdd_f64(self->_lastExercisePercentage, v28) > 2.22044605e-16)
  {
    v30 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    v27 = 1;
    [v30 objectAtIndexedSubscript:1];
    v31 = v17;
    v33 = v32 = a5;
    *&v34 = v28;
    [v33 setExerciseMinutesPercentage:v50 animated:v34];

    a5 = v32;
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
    [v10 appleStandHourCompletionPercentage];
    v35 = v36 * a4;
  }

  if (self->_ringsView)
  {
    if (vabdd_f64(self->_lastStandPercentage, v35) <= 2.22044605e-16)
    {
      goto LABEL_23;
    }

    v37 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    [v37 objectAtIndexedSubscript:2];
    v38 = v17;
    v40 = v39 = a5;
    *&v41 = v35;
    [v40 setStandHoursPercentage:v50 animated:v41];

    a5 = v39;
    v17 = v38;

    self->_lastStandPercentage = v35;
    v27 = 1;
    if (self->_ringsView)
    {
LABEL_23:
      if (self->_lastPausedState != v48)
      {
        self->_lastPausedState = v48;
        v42 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
        sub_2240(v42, v48);

        [(NTKActivityAnalogFaceView *)self _updateActivityLabelColors:v48];
        [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
        v44 = v43 = v21;
        v45 = [(NTKActivityAnalogFaceView *)self _highlightImage];
        [v44 setImage:v45];

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
  v46 = v10;
  v52 = v46;
  v54 = a5;
  v53[1] = *&v22;
  v53[2] = *&v28;
  v53[3] = *&v35;
  v53[4] = *&a4;
  v55 = v49;
  v56 = v17;
  v57 = v21;
  v58 = v50;
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
  v3 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(v3, &v43);

  [(NTKActivityAnalogFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  ringsView = self->_ringsView;
  y = CGPointZero.y;
  v10 = [(NTKActivityAnalogFaceView *)self device];
  [NTKAnalogUtilities sceneSizeForDevice:v10];
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
  v22 = [(NTKActivityAnalogFaceView *)self _dateLabelFont];
  [v22 lineHeight];

  dateComplicationLabel = self->_dateComplicationLabel;
  v24 = [(NTKActivityAnalogFaceView *)self device];
  CLKPixelAlignRectForDevice();
  [(NTKActivityDateComplicationLabel *)dateComplicationLabel setBounds:?];

  [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setCenter:v21, v14];
  activityContainerView = self->_activityContainerView;
  v26 = [(NTKActivityAnalogFaceView *)self contentView];
  [v26 bounds];
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
    v5 = [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
    v6 = [(NTKActivityAnalogFaceView *)self _highlightImage];
    [v5 setImage:v6];

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
  v3 = [(NTKActivityAnalogFaceView *)self device];
  [v3 screenBounds];
  v5 = v4;

  v19 = 0;
  v17 = 0u;
  v18 = 0u;
  v16 = 0u;
  memset(v15, 0, sizeof(v15));
  v6 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(v6, v15);

  if (!self->_dialView)
  {
    [(NTKActivityAnalogFaceView *)self bounds];
    v7 = *(&v16 + 1);
    v9 = v8 + *(&v16 + 1) * -2.0;
    v10 = [NTKActivityDialView alloc];
    v11 = [(NTKActivityAnalogFaceView *)self device];
    v12 = [(NTKActivityDialView *)v10 initWithFrame:v11 forDevice:v7, v5 * 0.5 - v9 * 0.5, v9, v9];
    dialView = self->_dialView;
    self->_dialView = v12;

    [(NTKActivityDialView *)self->_dialView setUserInteractionEnabled:0];
    v14 = [(NTKActivityAnalogFaceView *)self contentView];
    [v14 addSubview:self->_dialView];
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
  v3 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(v3, &v20);

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
    v17 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    sub_2240(v17, 0);

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
    v4 = [(NTKActivityAnalogFaceView *)self device];
    v5 = [(NTKActivityDateComplicationLabel *)v3 initWithSizeStyle:1 accentType:0 forDevice:v4];
    dateComplicationLabel = self->_dateComplicationLabel;
    self->_dateComplicationLabel = v5;

    v7 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v8 = [v7 primaryColor];

    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAccentColor:v8];
    v9 = self->_dateComplicationLabel;
    v10 = [(NTKActivityAnalogFaceView *)self _dateLabelFont];
    [(NTKActivityDateComplicationLabel *)v9 setFont:v10];

    v11 = [NTKDateComplication complicationWithDateStyle:8];
    v12 = self->_dateComplicationLabel;
    v13 = [(NTKActivityAnalogFaceView *)self device];
    v14 = [NTKComplicationController DEPRECATEDControllerForComplication:v11 withLegacyDisplay:v12 forDevice:v13];
    dateComplicationController = self->_dateComplicationController;
    self->_dateComplicationController = v14;

    [(NTKDateComplicationController *)self->_dateComplicationController _activate];
    LOBYTE(v16) = self->_isDetailedDensity;
    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAlpha:v16];
    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel addTarget:self action:"_dateComplicationPressed:" forControlEvents:64];
  }

  if (!self->_moveLabel)
  {
    v17 = [(NTKActivityAnalogFaceView *)self _newActivityLabelSubview];
    moveLabel = self->_moveLabel;
    self->_moveLabel = v17;
  }

  if (!self->_exerciseLabel)
  {
    v19 = [(NTKActivityAnalogFaceView *)self _newActivityLabelSubview];
    exerciseLabel = self->_exerciseLabel;
    self->_exerciseLabel = v19;
  }

  if (!self->_standLabel)
  {
    v21 = [(NTKActivityAnalogFaceView *)self _newActivityLabelSubview];
    standLabel = self->_standLabel;
    self->_standLabel = v21;
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

- (void)_dateComplicationPressed:(id)a3
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
    v12 = [(NTKActivityAnalogFaceView *)self delegate];
    [v12 faceViewRequestedLaunchFromRect:{v5, v7, v9, v11}];
  }
}

- (void)_addOrRemoveChronoViewsIfNecessary
{
  if (self->_isDetailedDensity || ([(NTKActivityAnalogFaceView *)self editing]& 1) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = [(NTKActivityAnalogFaceView *)self showsCanonicalContent];
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_3B58;
  v4[3] = &unk_207B0;
  v5 = v3;
  v4[4] = self;
  [(NTKActivityAnalogFaceView *)self _enumerateChronoViews:v4];
}

- (void)_updateActivityLabelColors:(BOOL)a3
{
  if (a3)
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
  v3 = [(NTKActivityAnalogFaceView *)self delegate];
  v4 = [v3 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottomCenter];

  v5 = [(NTKActivityAnalogFaceView *)self device];
  v6 = v5;
  if (v4)
  {
    sub_72E0(v5, v14);
    v7 = v15;
    v8 = &v16;
  }

  else
  {
    sub_72E0(v5, v12);
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
  v2 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(v2, v5);
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
  v3 = [(NTKActivityAnalogFaceView *)self dataMode];
  v4 = [(NTKActivityAnalogFaceView *)self isFrozen];
  v5 = NTKIsScreenOn();
  v6 = [(NTKRingsQuad *)self->_ringsQuad animating];
  if ([(NTKActivityAnalogFaceView *)self editing])
  {
    ringsView = self->_ringsView;
    v8 = v6 ^ 1;
  }

  else
  {
    ringsView = self->_ringsView;
    v8 = (v3 != &dword_0 + 1) | v4 & 1 | ((v5 & v6 & 1) == 0);
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

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v9 isEqual:NTKComplicationSlotDate])
  {
    v10 = [(NTKActivityFaceViewFactory *)self->_faceViewFactory complicationFactory];
    v11 = [v10 newViewForComplication:v8 family:a4 forSlot:12];

    [(NTKActivityAnalogFaceView *)self _configureComplicationView:v11 forSlot:v9];
  }

  else
  {
    v13.receiver = self;
    v13.super_class = NTKActivityAnalogFaceView;
    v11 = [(NTKActivityAnalogFaceView *)&v13 _newLegacyViewForComplication:v8 family:a4 slot:v9];
  }

  return v11;
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKActivityAnalogFaceView *)self device];
  if ([v5 deviceCategory] == &dword_0 + 1)
  {

LABEL_5:
    v7 = 0;
    goto LABEL_6;
  }

  v6 = [v4 isEqualToString:NTKComplicationSlotBottomCenter];

  if ((v6 & 1) == 0)
  {
    goto LABEL_5;
  }

  v7 = 1;
LABEL_6:

  return v7;
}

- (void)_curvedComplicationCircleRadius:(double *)a3 centerAngle:(double *)a4 maxAngularWidth:(double *)a5 circleCenter:(CGPoint *)a6 interior:(BOOL *)a7 forSlot:(id)a8
{
  v14 = a8;
  if ([(NTKActivityAnalogFaceView *)self _layoutStyleForSlot:?]== &dword_0 + 1)
  {
    [(NTKActivityFaceViewFactory *)self->_faceViewFactory curvedCircleRadius:a3 centerAngle:a4 maxAngularWidth:a5 circleCenter:a6 interior:a7 forSlot:v14];
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

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v16 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    v11 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v12 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:v11];

    [(NTKActivityDialView *)self->_dialView setColorScheme:v12];
    v13 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v14 = [(NTKActivityAnalogFaceView *)self _accentColorForFaceColor:v13];

    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAccentColor:v14];
    v15 = [(NTKActivityAnalogFaceView *)self timeView];
    [v15 applySecondHandColor:v14];
  }

  else if (a4 == 11)
  {
    self->_isDetailedDensity = [v16 density] == &dword_0 + 3;
    v9 = [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
    v10 = [(NTKActivityAnalogFaceView *)self _highlightImage];
    [v9 setImage:v10];

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

- (id)_accentColorForFaceColor:(id)a3
{
  v4 = a3;
  if ([v4 isWhiteColor])
  {
    v5 = +[UIColor systemOrangeColor];
  }

  else
  {
    v6 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:v4];
    v5 = [v6 foregroundColor];
  }

  return v5;
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v26 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 10)
  {
    v14 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v15 = [v14 copy];

    v16 = [v26 pigmentEditOption];
    [v15 setPigmentEditOption:v16];

    v17 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
    v18 = [v17 copy];

    v19 = [v12 pigmentEditOption];
    [v18 setPigmentEditOption:v19];

    v20 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:v15];
    v21 = [(NTKActivityAnalogFaceView *)self _cachedSchemeForFaceColorPalette:v18];
    [(NTKActivityDialView *)self->_dialView applyTransitionFromScheme:v20 toScheme:v21 fraction:a3];
    v22 = [(NTKActivityAnalogFaceView *)self _accentColorForFaceColor:v15];
    v23 = [(NTKActivityAnalogFaceView *)self _accentColorForFaceColor:v18];
    v24 = NTKInterpolateBetweenColors();

    v25 = [(NTKActivityAnalogFaceView *)self timeView];
    [v25 applySecondHandColor:v24];

    [(NTKActivityDateComplicationLabel *)self->_dateComplicationLabel setAccentColor:v24];
  }

  else if (a6 == 11)
  {
    [v26 density];
    [v12 density];
    CLKInterpolateBetweenFloatsClipped();
    [(NTKActivityAnalogFaceView *)self _showChronoDetailByFraction:1 fillRings:?];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v15.receiver = self;
  v15.super_class = NTKActivityAnalogFaceView;
  [NTKActivityAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v8 = [(NTKActivityAnalogFaceView *)self timeView];
  [(NTKActivityAnalogFaceView *)self _handAlphaForEditMode:a4];
  [(NTKActivityAnalogFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  dialView = self->_dialView;
  [(NTKActivityAnalogFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKActivityAnalogFaceView *)self _dialAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKActivityDialView *)dialView setAlpha:?];
  [(NTKActivityAnalogFaceView *)self _dialScaleForEditMode:a4];
  [(NTKActivityAnalogFaceView *)self _dialScaleForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v11 = v10;
  activityContainerView = self->_activityContainerView;
  CGAffineTransformMakeScale(&v14, v10, v10);
  [(UIView *)activityContainerView setTransform:&v14];
  v13 = self->_dialView;
  CGAffineTransformMakeScale(&v14, v11, v11);
  [(NTKActivityDialView *)v13 setTransform:&v14];
  self->_contentScale = v11;
  [(NTKActivityAnalogFaceView *)self _ringAlphaForEditMode:a4];
  [(NTKActivityAnalogFaceView *)self _ringAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKActivityAnalogFaceView *)self _setActivityViewsAlpha:1 includeDateComplication:0 animated:?];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v20.receiver = self;
  v20.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v20 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  NTKScaleForRubberBandingFraction();
  v8 = v7;
  NTKAlphaForRubberBandingFraction();
  v10 = v9;
  if (a4 == 11)
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
    if (a4 == 10)
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

    if (a4)
    {
      return;
    }

    memset(&v19, 0, sizeof(v19));
    CGAffineTransformMakeScale(&v19, v8, v8);
    v11 = [(NTKActivityAnalogFaceView *)self contentView];
    v18 = v19;
    [v11 setTransform:&v18];

    v12 = [(NTKActivityAnalogFaceView *)self timeView];
    v18 = v19;
    [v12 setTransform:&v18];

    v13 = [(NTKActivityAnalogFaceView *)self timeView];
    [v13 setAlpha:v10];
  }

  [(NTKActivityAnalogFaceView *)self _setActivityViewsAlpha:1 includeDateComplication:0 animated:v10];
}

- (void)_setActivityViewsAlpha:(double)a3 includeDateComplication:(BOOL)a4 animated:(BOOL)a5
{
  v5 = a5;
  self->_activityViewsAlpha = a3;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_4F98;
  v17[3] = &unk_207F8;
  v17[4] = self;
  *&v17[5] = a3;
  v18 = a4;
  v8 = objc_retainBlock(v17);
  v9 = v8;
  if (v5)
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

  *v10 = a3;
  [(NTKActivityAnalogFaceView *)self _enumerateRingGroups:v11, v12, v13, v14];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v17.receiver = self;
  v17.super_class = NTKActivityAnalogFaceView;
  [(NTKActivityAnalogFaceView *)&v17 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    v11 = [(NTKActivityAnalogFaceView *)self device];
    sub_72E0(v11, v14);
    v12 = (a3 + -0.5 + a3 + -0.5) * v15 + 1.0;

    v9 = v12 * self->_contentScale;
    v10 = 72;
  }

  else
  {
    if (a4 != 11)
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

- (id)_cachedSchemeForFaceColorPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 configuration];
  v6 = [v5 uniqueId];

  v7 = [(NSMutableDictionary *)self->_faceColorsToSchemes objectForKeyedSubscript:v6];
  if (!v7)
  {
    v8 = [(NTKActivityAnalogFaceView *)self device];
    v9 = [(NTKActivityAnalogFaceView *)self device];
    sub_72E0(v9, v11);
    v7 = [NTKFaceColorScheme colorSchemeForDevice:v8 withFaceColorPalette:v4 units:v12];

    [(NSMutableDictionary *)self->_faceColorsToSchemes setObject:v7 forKeyedSubscript:v6];
  }

  return v7;
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  result = 0.0;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  v3 = a3 == 10 || a3 == 0;
  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_ringAlphaForEditMode:(int64_t)a3
{
  v3 = a3 == 11 || a3 == 0;
  result = NTKEditModeDimmedAlpha;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialScaleForEditMode:(int64_t)a3
{
  result = 0.83;
  if (a3 != 10)
  {
    return 1.0;
  }

  return result;
}

- (void)_showChronoDetailByFraction:(double)a3 fillRings:(BOOL)a4
{
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v7 = a3 < 0.5;
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
  v8 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(v8, &v34);

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
  *&v16[6] = a3;
  v31 = v48;
  v19 = v36;
  v33 = a4;
  v16[4] = self;
  v16[5] = 0x3FE0000000000000;
  [(NTKActivityAnalogFaceView *)self _enumerateRingGroups:v16];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_5810;
  v15[3] = &unk_208B0;
  *&v15[6] = a3;
  v15[4] = self;
  v15[5] = 0x3FE0000000000000;
  [(NTKActivityAnalogFaceView *)self _enumerateActivityLabels:v15];
  v9 = 0.0;
  if (a3 >= 0.6875)
  {
    v9 = 1.0;
    if (a3 <= 0.9375)
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

+ (void)_prewarmForDevice:(id)a3
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___NTKActivityAnalogFaceView;
  v3 = a3;
  objc_msgSendSuper2(&v4, "_prewarmForDevice:", v3);
  [NTKActivityFaceViewFactory prewarmForDevice:v3, v4.receiver, v4.super_class];
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKActivityFaceViewFactory prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)_enumerateRingGroups:(id)a3
{
  v4 = a3;
  v5 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_5A44;
  v7[3] = &unk_208D8;
  v8 = v4;
  v6 = v4;
  [v5 enumerateObjectsUsingBlock:v7];
}

- (void)_enumerateActivityLabels:(id)a3
{
  moveLabel = self->_moveLabel;
  v5 = (a3 + 16);
  v6 = *(a3 + 2);
  v7 = a3;
  v6();
  (*v5)(v7, self->_exerciseLabel, 1);
  (*v5)(v7, self->_standLabel, 2);
}

- (void)_enumerateChronoViews:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_5BA8;
  v5[3] = &unk_20900;
  v6 = a3;
  v4 = v6;
  [(NTKActivityAnalogFaceView *)self _enumerateActivityLabels:v5];
  v4[2](v4, self->_dateComplicationLabel);
}

- (id)_highlightImage
{
  if (self->_isDetailedDensity)
  {
    lastPausedState = self->_lastPausedState;
    v3 = [(NTKActivityAnalogFaceView *)self device];
    v4 = v3;
    if (lastPausedState)
    {
      sub_7B6C(v3, v3);
      v5 = &qword_28DE8;
    }

    else
    {
      sub_7DB8(v3, v3);
      v5 = &qword_28E10;
    }
  }

  else
  {
    v4 = [(NTKActivityAnalogFaceView *)self device];
    sub_8038(v4, v4);
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

- (id)_activityLabelFontForDigits:(int64_t)a3
{
  v4 = [(NTKActivityAnalogFaceView *)self device];
  v5 = v4;
  if (a3 > 2)
  {
    if (a3 != 3)
    {
      if (a3 == 4)
      {
        sub_72E0(v4, v17);
        v6 = &v18;
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    sub_72E0(v4, v15);
    v6 = &v16;
  }

  else
  {
    if (a3 != 1)
    {
      if (a3 == 2)
      {
        sub_72E0(v4, v13);
        v6 = &v14;
        goto LABEL_11;
      }

LABEL_8:
      sub_72E0(v4, v9);
      v6 = &v10;
      goto LABEL_11;
    }

    sub_72E0(v4, v11);
    v6 = &v12;
  }

LABEL_11:
  v7 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:*v6 design:UIFontWeightSemibold];

  return v7;
}

- (id)_dateLabelFont
{
  v2 = [(NTKActivityAnalogFaceView *)self device];
  sub_72E0(v2, v5);
  v3 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v5[0] design:UIFontWeightSemibold];

  return v3;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    return &off_21B18;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (a4 == 11)
  {
    v10 = v8;
    v11 = [a5 objectForKeyedSubscript:&off_21550];
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
      v16 = [(NTKActivityAnalogFaceView *)self faceColorPalette];
      v17 = [v16 copy];

      v51 = v11;
      v18 = [v11 pigmentEditOption];
      [v17 setPigmentEditOption:v18];

      v19 = [(NTKActivityAnalogFaceView *)self device];
      v20 = [(NTKActivityAnalogFaceView *)self device];
      sub_72E0(v20, v62);
      v21 = [NTKFaceColorScheme colorSchemeForDevice:v19 withFaceColorPalette:v17 units:v63];

      v22 = [NTKActivityAnalogFaceBundle imageWithName:@"Swatch-Activity-Ring"];
      v23 = [v21 shiftedBackgroundColor];
      v24 = [v22 _flatImageWithColor:v23];

      v25 = [NTKActivityAnalogFaceBundle imageWithName:@"Swatch-Activity-Notches"];
      v54 = v21;
      v26 = [v21 activityTickColor];
      v50 = [v25 _flatImageWithColor:v26];

      v27 = [v10 density];
      v52 = v10;
      v53 = v17;
      if (v27 == &dword_0 + 3)
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

      else if (v27 == &dword_0 + 1)
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
    v15 = [(NTKActivityAnalogFaceView *)&v55 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:a5];
  }

  return v15;
}

@end