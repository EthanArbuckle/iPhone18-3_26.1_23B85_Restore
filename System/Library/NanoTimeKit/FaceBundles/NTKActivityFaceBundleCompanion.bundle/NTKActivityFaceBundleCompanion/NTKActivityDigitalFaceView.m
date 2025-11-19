@interface NTKActivityDigitalFaceView
+ (id)_newRingsQuad;
- ($070E75FE9C89E6C9B32F698ACB560C0E)_layoutConstants;
- (CGPoint)_ringCenterForLayout:(RingLayout *)a3;
- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (CGRect)_timeViewBackgroundRect;
- (NTKActivityDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_blinkerAndSecondsWidth;
- (double)_rightTimeViewInsetForEditMode:(int64_t)a3;
- (double)_ringAlphaForEditMode:(int64_t)a3;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (id)_labelFontMonospaced:(BOOL)a3;
- (id)_newActivityLabelSubview;
- (id)_newFaceViewFactoryForDevice:(id)a3;
- (id)_swatchColorForColorOption:(id)a3;
- (int64_t)_polygonIndexForAccuracy:(unint64_t)a3;
- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyCurrentRingLayout;
- (void)_applyDataMode;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyShowsCanonicalContent;
- (void)_applyShowsLockedUI;
- (void)_applySlow;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanUpAfterDetailEditing;
- (void)_cleanupAfterEditing;
- (void)_configureForDetailEditing;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_createActivityRelatedUIs;
- (void)_createTimeViewIfNecessary;
- (void)_enumerateActivityLabels:(id)a3;
- (void)_launchButtonPressed:(id)a3;
- (void)_layoutForegroundContainerView;
- (void)_loadSnapshotContentViews;
- (void)_performWristRaiseAnimation;
- (void)_prepareForEditing;
- (void)_prepareWristRaiseAnimation;
- (void)_removeActivityRelatedUIs;
- (void)_setActivityViewsAlpha:(double)a3 animated:(BOOL)a4;
- (void)_unloadSnapshotContentViews;
- (void)_updateActivityLabelColors:(BOOL)a3;
- (void)_updateCurrentRingLayoutIfNecessary;
- (void)_updatePausedState;
- (void)_updateTimeViewSecondsDisplayState;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setRightTimeViewInset:(double)a3;
- (void)timeTravelDateEnteredOrExitedTimelineBounds:(BOOL)a3;
@end

@implementation NTKActivityDigitalFaceView

- (id)_newFaceViewFactoryForDevice:(id)a3
{
  v3 = a3;
  v4 = [[NTKActivityFaceViewFactory alloc] initForAnalog:0 richComplications:0 forDevice:v3];

  return v4;
}

- (NTKActivityDigitalFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v15.receiver = self;
  v15.super_class = NTKActivityDigitalFaceView;
  v9 = [(NTKActivityDigitalFaceView *)&v15 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(NTKActivityDigitalFaceView *)v9 _newFaceViewFactoryForDevice:v8];
    faceViewFactory = v10->_faceViewFactory;
    v10->_faceViewFactory = v11;

    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setFaceView:v10];
    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setDelegate:v10];
    [(NTKActivityFaceViewFactory *)v10->_faceViewFactory setDataMode:[(NTKActivityDigitalFaceView *)v10 dataMode]];
    [(NTKActivityDigitalFaceView *)v10 setComplicationFactory:v10->_faceViewFactory];
    v13 = _NTKLoggingObjectForDomain();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v17 = v10;
      _os_log_impl(&dword_0, v13, OS_LOG_TYPE_DEFAULT, "Digital Face Initialized: %@", buf, 0xCu);
    }
  }

  return v10;
}

- (void)dealloc
{
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v6 = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "Digital Face Destroyed: %@", buf, 0xCu);
  }

  v4.receiver = self;
  v4.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v4 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKActivityDigitalFaceView *)self _createActivityRelatedUIs];
  [(NTKActivityDigitalFaceView *)self _updateTimeViewSecondsDisplayState];
  [(NTKActivityDigitalFaceView *)self _applyCurrentRingLayout];
  [(NTKActivityDigitalFaceView *)self _applyCurrentDataModelByFraction:1 updateLabels:0 animated:1.0];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKActivityDigitalFaceView *)self _removeActivityRelatedUIs];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _applyFrozen];
  if (([(NTKActivityDigitalFaceView *)self isFrozen]& 1) == 0)
  {
    [(NTKActivityDigitalFaceView *)self _updateTimeViewSecondsDisplayState];
  }

  [(NTKActivityDigitalFaceView *)self _updatePausedState];
}

- (void)_applyDataMode
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _applyDataMode];
  [(NTKActivityDigitalFaceView *)self _updatePausedState];
}

- (void)_applySlow
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _applySlow];
  [(NTKActivityDigitalFaceView *)self _updatePausedState];
}

- (void)_updatePausedState
{
  v3 = [(NTKActivityDigitalFaceView *)self dataMode];
  v4 = [(NTKActivityDigitalFaceView *)self isFrozen];
  v5 = NTKIsScreenOn();
  v6 = [(NTKRingsQuad *)self->_ringsQuad animating];
  if ([(NTKActivityDigitalFaceView *)self editing])
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

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(NTKActivityDigitalFaceView *)self _labelFontMonospaced:0];
  [(NTKActivityDigitalFaceView *)self _layoutConstants];
  v10 = [(NTKActivityDigitalFaceView *)self device];
  v11 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v9 applyAdvanceFudge:v10 withBaselineY:x withFont:y forDevice:width, height, 0.0, v13];

  return v11;
}

- (void)_createTimeViewIfNecessary
{
  v5.receiver = self;
  v5.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v5 _createTimeViewIfNecessary];
  showSeconds = self->_showSeconds;
  v4 = [(NTKActivityDigitalFaceView *)self timeView];
  [v4 setShowSeconds:showSeconds];
}

- ($070E75FE9C89E6C9B32F698ACB560C0E)_layoutConstants
{
  v5 = [(NTKActivityDigitalFaceView *)self device];
  sub_1034C(v5, retstr);

  return result;
}

- (void)layoutSubviews
{
  v2.receiver = self;
  v2.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v2 layoutSubviews];
}

- (void)_layoutForegroundContainerView
{
  v49.receiver = self;
  v49.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v49 _layoutForegroundContainerView];
  v3 = [(NTKActivityDigitalFaceView *)self device];
  [(NTKActivityDigitalFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = *(&xmmword_28F08 + 1);
  v13 = [(NTKActivityDigitalFaceView *)self _labelFontMonospaced:1];
  [v13 ascender];
  v15 = v14;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  [(NTKActivityDigitalFaceView *)self _layoutConstants];
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x2020000000;
  v28[3] = v29;
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_C440;
  v17[3] = &unk_20C18;
  v20 = v5;
  v21 = v7;
  v22 = v9;
  v23 = v11;
  v17[4] = self;
  v19 = v28;
  v24 = xmmword_28F08;
  v25 = *(&v29 + 1) - v15;
  v16 = v3;
  v18 = v16;
  v26 = v12;
  v27 = v15;
  [UIView performWithoutAnimation:v17];
  [(NTKActivityDigitalFaceView *)self _updateCurrentRingLayoutIfNecessary];

  _Block_object_dispose(v28, 8);
}

- (void)_updateCurrentRingLayoutIfNecessary
{
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v14 = 0u;
  v3 = &v20;
  v4 = &v19;
  [(NTKActivityDigitalFaceView *)self _layoutConstants];
  v5 = [(NTKActivityDigitalFaceView *)self timeScrubbing];
  v6 = +[NTKActivityFaceViewFactory userActiveEnergyIsCalories];
  v7 = (&v20 + 8);
  if (!v5 || v6)
  {
    moveStringMetricWidth = self->_moveStringMetricWidth;
    if (moveStringMetricWidth <= 4)
    {
      v7 = &v18;
      v3 = &v17 + 1;
      v4 = (&v16 + 8);
      v9 = moveStringMetricWidth == 4 ? 1 : v5;
      if ((v9 & 1) == 0 && self->_exerciseStringMetricWidth <= 2)
      {
        v4 = &v14;
        v3 = &v15;
        v7 = (&v15 + 8);
      }
    }
  }

  v10 = *v4;
  v11 = *v3;
  v12 = *v7;
  v13 = *v7;
  if (*v3 != self->_currentRingLayout.diameter)
  {
    *&self->_currentRingLayout.bottomEdgeInset = *v4;
    self->_currentRingLayout.diameter = v11;
    *&self->_currentRingLayout.thickness = v13;
    [(NTKActivityDigitalFaceView *)self _applyCurrentRingLayout];
  }
}

- (void)_applyCurrentRingLayout
{
  p_currentRingLayout = &self->_currentRingLayout;
  diameter = self->_currentRingLayout.diameter;
  if (diameter != 0.0)
  {
    [(NTKRingsMetalQuadView *)self->_ringsView setBounds:0.0, 0.0, diameter + 1.0, diameter + 1.0];
    ringsView = self->_ringsView;
    v6 = *&p_currentRingLayout->diameter;
    v24 = *&p_currentRingLayout->bottomEdgeInset;
    v25 = v6;
    interspacing = p_currentRingLayout->interspacing;
    [(NTKActivityDigitalFaceView *)self _ringCenterForLayout:&v24];
    [(NTKRingsMetalQuadView *)ringsView setCenter:?];
    v7 = p_currentRingLayout->diameter;
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    [(NTKFaceViewTapControl *)self->_tapToLaunchButton setBounds:0.0, 0.0, v7 + v23 * 2.0, v7 + v23 * 2.0];
    tapToLaunchButton = self->_tapToLaunchButton;
    [(NTKRingsMetalQuadView *)self->_ringsView center];
    [(NTKFaceViewTapControl *)tapToLaunchButton setCenter:?];
    v9 = [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    v10 = [(NTKActivityDigitalFaceView *)self device];
    v11 = *&p_currentRingLayout->diameter;
    v24 = *&p_currentRingLayout->bottomEdgeInset;
    v25 = v11;
    interspacing = p_currentRingLayout->interspacing;
    v12 = sub_C8FC(&v24, v10, v22);
    [v9 setImage:v12];

    *&v7 = p_currentRingLayout->diameter;
    v13 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    v14 = [v13 objectAtIndexedSubscript:0];
    LODWORD(v15) = LODWORD(v7);
    [v14 setGroupDiameter:v15];

    *&v7 = p_currentRingLayout->thickness;
    v16 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    v17 = [v16 objectAtIndexedSubscript:0];
    LODWORD(v18) = LODWORD(v7);
    [v17 setThickness:v18];

    *&v7 = p_currentRingLayout->interspacing;
    v19 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    v20 = [v19 objectAtIndexedSubscript:0];
    LODWORD(v21) = LODWORD(v7);
    [v20 setInterspacing:v21];
  }
}

- (CGPoint)_ringCenterForLayout:(RingLayout *)a3
{
  v4 = a3->leftEdgeInset + a3->diameter * 0.5;
  [(NTKActivityDigitalFaceView *)self bounds];
  v6 = v5 - (a3->diameter * 0.5 + a3->bottomEdgeInset);
  v7 = v4;
  result.y = v6;
  result.x = v7;
  return result;
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
    v19 = [(NTKActivityDigitalFaceView *)self dataMode];
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%@ launchButtonPressed action with data mode:%u", &v16, 0x12u);
  }

  if ([(NTKActivityDigitalFaceView *)self dataMode]== &dword_0 + 1)
  {
    [(NTKActivityFaceViewFactory *)self->_faceViewFactory launchActivityApp];
    [(NTKRingsMetalQuadView *)self->_ringsView frame];
    [(NTKActivityDigitalFaceView *)self convertRect:self toView:?];
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = [(NTKActivityDigitalFaceView *)self delegate];
    [v15 faceViewRequestedLaunchFromRect:{v8, v10, v12, v14}];
  }
}

- (void)setDataMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v5 setDataMode:?];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton setHighlighted:0];
  [(NTKFaceViewTapControl *)self->_tapToLaunchButton setUserInteractionEnabled:a3 == 1];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setDataMode:a3];
}

- (id)_keylineViewForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    NTKKeylineCornerRadiusLarge();
    v4 = NTKKeylineViewWithContinuousCurveCornerRadius();
  }

  else
  {
    v6.receiver = self;
    v6.super_class = NTKActivityDigitalFaceView;
    v4 = [(NTKActivityDigitalFaceView *)&v6 _keylineViewForCustomEditMode:a3 slot:a4];
  }

  return v4;
}

- (unint64_t)_keylineLabelAlignmentForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    return 161;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKActivityDigitalFaceView;
  return [(NTKActivityDigitalFaceView *)&v7 _keylineLabelAlignmentForCustomEditMode:a3 slot:a4];
}

- (CGRect)_relativeKeylineFrameForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 11)
  {
    v5 = [(NTKActivityDigitalFaceView *)self timeView:11];
    [v5 frame];
    v7 = v6;
    [(NTKActivityDigitalFaceView *)self bounds];
    v9 = v8;
    v10 = [(NTKActivityDigitalFaceView *)self timeView];
    [v10 frame];
    v12 = v11;

    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    v13 = v19 + 0.0;
    v14 = v7 + v18;
    v15 = v9 - (v19 + v21);
    v16 = v12 - (v18 + v20);
  }

  else
  {
    v17.receiver = self;
    v17.super_class = NTKActivityDigitalFaceView;
    [(NTKActivityDigitalFaceView *)&v17 _relativeKeylineFrameForCustomEditMode:a3 slot:a4];
  }

  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)_timeViewBackgroundRect
{
  v3 = [(NTKActivityDigitalFaceView *)self timeView];
  [v3 frame];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (self->_showSeconds)
  {
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    v12 = *&v27[32];
    v13 = *&v27[33];
    v14 = &v28;
    v15 = *&v27[34];
  }

  else
  {
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    v12 = v24;
    v13 = v25;
    v14 = v27;
    v15 = v26;
  }

  v16 = v5 + v13;
  v17 = v7 + v12;
  v18 = v9 - (*v14 + v13);
  v19 = v11 - (v15 + v12);

  v20 = v16;
  v21 = v17;
  v22 = v18;
  v23 = v19;
  result.size.height = v23;
  result.size.width = v22;
  result.origin.y = v21;
  result.origin.x = v20;
  return result;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKActivityDigitalFaceView *)self _ringAlphaForEditMode:?];
  [(NTKActivityDigitalFaceView *)self _ringAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKActivityDigitalFaceView *)self _setActivityViewsAlpha:0 animated:?];
  v8 = [(NTKActivityDigitalFaceView *)self timeView];
  [(NTKActivityDigitalFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKActivityDigitalFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  [(NTKActivityDigitalFaceView *)self _rightTimeViewInsetForEditMode:a4];
  [(NTKActivityDigitalFaceView *)self _rightTimeViewInsetForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();

  [(NTKActivityDigitalFaceView *)self setRightTimeViewInset:?];
}

- (void)setRightTimeViewInset:(double)a3
{
  rightTimeViewInset = self->_rightTimeViewInset;
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeTranslation(&v9, -a3, 0.0);
    v8 = v9;
    v6 = [(NTKActivityDigitalFaceView *)self timeView];
    v7 = v8;
    [v6 setTransform:&v7];

    self->_rightTimeViewInset = a3;
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v5 _configureForEditMode:?];
  if (a3 == 11)
  {
    [(NTKActivityDigitalFaceView *)self _configureForDetailEditing];
  }

  else
  {
    [(NTKActivityDigitalFaceView *)self _cleanUpAfterDetailEditing];
  }
}

- (void)_configureForDetailEditing
{
  if (!self->_densityEditingPolygonView)
  {
    v3 = objc_alloc_init(NTKPolygonCylinderView);
    densityEditingPolygonView = self->_densityEditingPolygonView;
    self->_densityEditingPolygonView = v3;

    [(NTKPolygonCylinderView *)self->_densityEditingPolygonView setNumberOfSides:5];
    v5 = self->_densityEditingPolygonView;
    v6 = +[UIColor blackColor];
    [(NTKPolygonCylinderView *)v5 setBackgroundColor:v6];

    [(NTKPolygonCylinderView *)self->_densityEditingPolygonView setClipsToBounds:1];
    v7 = [(NTKActivityDigitalFaceView *)self timeView];
    [v7 frame];
    v9 = v8;
    [(NTKActivityDigitalFaceView *)self bounds];
    v11 = v10;
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    v12 = v11 - v29;
    v13 = [(NTKActivityDigitalFaceView *)self timeView];
    [v13 frame];
    v15 = v14;

    v16 = self->_densityEditingPolygonView;
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    [(NTKPolygonCylinderView *)v16 setFrame:v26 + 0.0, v9 + v25, v12 - (v26 + v28), v15 - (v25 + v27)];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_D318;
    v24[3] = &unk_20C40;
    v24[4] = self;
    v17 = objc_retainBlock(v24);
    v18 = self->_densityEditingPolygonView;
    v19 = (v17[2])(v17, 1);
    [(NTKPolygonCylinderView *)v18 setView:v19 forSideAtIndex:0];

    v20 = self->_densityEditingPolygonView;
    v21 = (v17[2])(v17, 0);
    [(NTKPolygonCylinderView *)v20 setView:v21 forSideAtIndex:1];

    [(NTKPolygonCylinderView *)self->_densityEditingPolygonView transitionToSideAtIndex:[(NTKActivityDigitalFaceView *)self showSeconds]^ 1];
    v22 = [(NTKActivityDigitalFaceView *)self foregroundContainerView];
    [v22 addSubview:self->_densityEditingPolygonView];

    v23 = [(NTKActivityDigitalFaceView *)self timeView];
    [v23 setHidden:1];
  }
}

- (void)_cleanUpAfterDetailEditing
{
  v3 = [(NTKActivityDigitalFaceView *)self timeView];
  [v3 setHidden:0];

  [(NTKPolygonCylinderView *)self->_densityEditingPolygonView removeFromSuperview];
  densityEditingPolygonView = self->_densityEditingPolygonView;
  self->_densityEditingPolygonView = 0;
}

- (double)_ringAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_rightTimeViewInsetForEditMode:(int64_t)a3
{
  result = 0.0;
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0xA)
  {
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    return v4;
  }

  return result;
}

- (void)_setActivityViewsAlpha:(double)a3 animated:(BOOL)a4
{
  v4 = a4;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_D6E4;
  v14[3] = &unk_20820;
  v14[4] = self;
  *&v14[5] = a3;
  v7 = objc_retainBlock(v14);
  v8 = v7;
  if (v4)
  {
    [UIView animateWithDuration:v7 animations:0.2];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_D768;
    v13[3] = &unk_20820;
    v13[4] = self;
    *&v13[5] = a3;
    [ARUIRingGroup animateWithDuration:v13 animations:0.2];
  }

  else
  {
    (v7[2])(v7);
    v10 = [(NTKRingsQuad *)self->_ringsQuad ringGroups];
    v11 = [v10 objectAtIndexedSubscript:0];
    v9 = a3;
    *&v12 = v9;
    [v11 setOpacity:v12];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v14 = a3;
  v8 = a5;
  if (a4 == 11)
  {
    -[NTKActivityDigitalFaceView setShowSeconds:](self, "setShowSeconds:", [v14 accuracy] == 0);
    [(NTKActivityDigitalFaceView *)self _relativeKeylineFrameForCustomEditMode:10 slot:0];
    [(UIView *)self->_timeLabelBackgroundView setFrame:?];
    v11 = [(NTKActivityDigitalFaceView *)self delegate];
    [v11 faceViewWantsCustomKeylineFramesReloadedForEditMode:10];
  }

  else
  {
    if (a4 != 10)
    {
      goto LABEL_6;
    }

    v9 = [(NTKActivityDigitalFaceView *)self device];
    v10 = [(NTKActivityDigitalFaceView *)self faceColorPalette];
    v11 = [NTKFaceColorScheme colorSchemeForDevice:v9 withFaceColorPalette:v10 units:16];

    v12 = [(NTKActivityDigitalFaceView *)self timeView];
    v13 = [v11 shiftedForegroundColor];
    [v12 setColor:v13];
  }

LABEL_6:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 == 11)
  {
    -[NTKPolygonCylinderView transitionToFraction:fromSideAtIndex:toSideAtIndex:](self->_densityEditingPolygonView, "transitionToFraction:fromSideAtIndex:toSideAtIndex:", -[NTKActivityDigitalFaceView _polygonIndexForAccuracy:](self, "_polygonIndexForAccuracy:", [v12 accuracy]), -[NTKActivityDigitalFaceView _polygonIndexForAccuracy:](self, "_polygonIndexForAccuracy:", objc_msgSend(v13, "accuracy")), a3);
  }

  else if (a6 == 10)
  {
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    CLKInterpolateBetweenFloatsClipped();
    v16 = v15;
    v17 = [(NTKActivityDigitalFaceView *)self device];
    v18 = [(NTKActivityDigitalFaceView *)self interpolatedColorPalette];
    v19 = [v18 fromPalette];
    v20 = [(NTKActivityDigitalFaceView *)self interpolatedColorPalette];
    v21 = [v20 toPalette];
    LOBYTE(v28) = 0;
    v22 = [NTKFaceColorScheme interpolationForDevice:v17 fromFaceColorPalette:v19 toFaceColorPalette:v21 fraction:16 units:16 brightenUnits:0 overrideColor:a3 alternateHighlight:v28];

    v23 = [(NTKActivityDigitalFaceView *)self timeView];
    v24 = [v22 shiftedForegroundColor];
    [v23 setColor:v24];

    timeLabelBackgroundView = self->_timeLabelBackgroundView;
    v26 = [v22 shiftedForegroundColor];
    v27 = [v26 colorWithAlphaComponent:v16];
    [(UIView *)timeLabelBackgroundView setBackgroundColor:v27];
  }
}

- (int64_t)_polygonIndexForAccuracy:(unint64_t)a3
{
  v4 = [(NTKActivityDigitalFaceView *)self device];
  v5 = [NTKDigitalTimeAccuracyOption indexForAccuracy:a3 forDevice:v4];

  return v5;
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v27.receiver = self;
  v27.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v27 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 11)
  {
    NTKScaleForRubberBandingFraction();
    v20 = v19;
    NTKAlphaForRubberBandingFraction();
    v22 = v21;
    densityEditingPolygonView = self->_densityEditingPolygonView;
    CGAffineTransformMakeScale(&v26, v20, v20);
    [(NTKPolygonCylinderView *)densityEditingPolygonView setTransform:&v26];
    [(NTKPolygonCylinderView *)self->_densityEditingPolygonView setAlpha:v22];
  }

  else
  {
    if (a4 == 10)
    {
      NTKScaleForRubberBandingFraction();
      v14 = v13;
      NTKAlphaForRubberBandingFraction();
      v10 = v15;
      memset(&v26, 0, sizeof(v26));
      CGAffineTransformMakeScale(&v26, v14, v14);
      [(NTKActivityDigitalFaceView *)self rightTimeViewInset];
      v24 = v26;
      CGAffineTransformTranslate(&v25, &v24, -v16, 0.0);
      v26 = v25;
      v17 = [(NTKActivityDigitalFaceView *)self timeView];
      v25 = v26;
      [v17 setTransform:&v25];

      v12 = [(NTKActivityDigitalFaceView *)self timeView];
    }

    else
    {
      if (a4)
      {
        return;
      }

      NTKScaleForRubberBandingFraction();
      v8 = v7;
      NTKAlphaForRubberBandingFraction();
      v10 = v9;
      v11 = [(NTKActivityDigitalFaceView *)self foregroundContainerView];
      CGAffineTransformMakeScale(&v26, v8, v8);
      [v11 setTransform:&v26];

      v12 = [(NTKActivityDigitalFaceView *)self foregroundContainerView];
    }

    v18 = v12;
    [v12 setAlpha:v10];
  }
}

- (id)_swatchColorForColorOption:(id)a3
{
  v3 = a3;
  v4 = [[NTKFaceColorPalette alloc] initWithFaceClass:objc_opt_class()];
  v5 = [v3 pigmentEditOption];

  [v4 setPigmentEditOption:v5];
  v6 = [v4 primaryShiftedColor];

  return v6;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15.receiver = self;
  v15.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v15 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 11)
  {
    NTKLargeElementScaleForBreathingFraction();
    densityEditingPolygonView = self->_densityEditingPolygonView;
    CGAffineTransformMakeScale(&v14, v11, v11);
    [(NTKPolygonCylinderView *)densityEditingPolygonView setTransform:&v14];
  }

  else if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    [(NTKActivityDigitalFaceView *)self rightTimeViewInset];
    v12 = v14;
    CGAffineTransformTranslate(&v13, &v12, -v8, 0.0);
    v14 = v13;
    v9 = [(NTKActivityDigitalFaceView *)self timeView];
    v13 = v14;
    [v9 setTransform:&v13];
  }
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v4 _cleanupAfterEditing];
  [(UIView *)self->_timeLabelBackgroundView removeFromSuperview];
  timeLabelBackgroundView = self->_timeLabelBackgroundView;
  self->_timeLabelBackgroundView = 0;

  [(NTKActivityDigitalFaceView *)self _updatePausedState];
}

- (void)_prepareForEditing
{
  v14.receiver = self;
  v14.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v14 _prepareForEditing];
  if (!self->_timeLabelBackgroundView)
  {
    v3 = [UIView alloc];
    v4 = [(NTKActivityDigitalFaceView *)self timeView];
    [v4 frame];
    v5 = [v3 initWithFrame:?];
    timeLabelBackgroundView = self->_timeLabelBackgroundView;
    self->_timeLabelBackgroundView = v5;

    v7 = self->_timeLabelBackgroundView;
    v8 = +[UIColor clearColor];
    [(UIView *)v7 setBackgroundColor:v8];

    v9 = [(UIView *)self->_timeLabelBackgroundView layer];
    NTKKeylineCornerRadiusLarge();
    [v9 setCornerRadius:?];

    v10 = [(NTKActivityDigitalFaceView *)self timeView];
    v11 = [v10 superview];
    v12 = self->_timeLabelBackgroundView;
    v13 = [(NTKActivityDigitalFaceView *)self timeView];
    [v11 insertSubview:v12 belowSubview:v13];
  }

  [(NTKActivityDigitalFaceView *)self _updatePausedState];
}

- (void)_applyShowsLockedUI
{
  v4.receiver = self;
  v4.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v4 _applyShowsLockedUI];
  v3 = _NTKLoggingObjectForDomain();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v6 = "[NTKActivityDigitalFaceView _applyShowsLockedUI]";
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setShowsLockedContent:[(NTKActivityDigitalFaceView *)self showsLockedUI]];
}

- (void)_applyShowsCanonicalContent
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _applyShowsCanonicalContent];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory setShowsCanonicalContent:[(NTKActivityDigitalFaceView *)self showsCanonicalContent]];
}

- (void)_prepareWristRaiseAnimation
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _prepareWristRaiseAnimation];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory prepareWristRaiseAnimation];
}

- (void)_performWristRaiseAnimation
{
  v3.receiver = self;
  v3.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v3 _performWristRaiseAnimation];
  [(NTKActivityFaceViewFactory *)self->_faceViewFactory performWristRaiseAnimation];
}

- (void)timeTravelDateEnteredOrExitedTimelineBounds:(BOOL)a3
{
  v3 = NTKEditModeDimmedAlpha;
  if (a3)
  {
    v3 = 1.0;
  }

  [(NTKActivityDigitalFaceView *)self _setActivityViewsAlpha:1 animated:v3];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = NTKActivityDigitalFaceView;
  [(NTKActivityDigitalFaceView *)&v8 setOverrideDate:v6 duration:a4];
  timeDensityEditingOverrideDate = self->_timeDensityEditingOverrideDate;
  self->_timeDensityEditingOverrideDate = v6;
}

- (void)_updateTimeViewSecondsDisplayState
{
  v8 = [(NTKActivityDigitalFaceView *)self timeView];
  if (self->_showSeconds != [v8 showSeconds])
  {
    [v8 removeFromSuperview];
    v3 = [(NTKActivityDigitalFaceView *)self timeView];
    v4 = [v3 color];

    [(NTKActivityDigitalFaceView *)self setTimeView:0];
    [(NTKActivityDigitalFaceView *)self _createTimeViewIfNecessary];
    v5 = [v8 isHidden];
    v6 = [(NTKActivityDigitalFaceView *)self timeView];
    [v6 setHidden:v5];

    v7 = [(NTKActivityDigitalFaceView *)self timeView];
    [v7 setColor:v4];

    [(NTKActivityDigitalFaceView *)self layoutIfNeeded];
  }
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

- (id)_newActivityLabelSubview
{
  v3 = objc_alloc_init(UILabel);
  v4 = +[UIColor clearColor];
  [v3 setBackgroundColor:v4];

  v5 = [(NTKActivityDigitalFaceView *)self _labelFontMonospaced:0];
  [v3 setFont:v5];

  [v3 setTextAlignment:2];
  v6 = [(NTKActivityDigitalFaceView *)self foregroundContainerView];
  [v6 addSubview:v3];

  [v3 setNumberOfLines:1];
  return v3;
}

- (void)_createActivityRelatedUIs
{
  if (!self->_ringsView)
  {
    v3 = [NTKRingsMetalQuadView alloc];
    [(NTKActivityDigitalFaceView *)self bounds];
    v4 = [(NTKRingsMetalQuadView *)v3 initWithFrame:@"ActD" identifier:16 options:1 colorSpace:?];
    ringsView = self->_ringsView;
    self->_ringsView = v4;

    v6 = [objc_opt_class() _newRingsQuad];
    ringsQuad = self->_ringsQuad;
    self->_ringsQuad = v6;

    [(NTKRingsQuad *)self->_ringsQuad setDelegate:self];
    [(NTKRingsMetalQuadView *)self->_ringsView setPaused:0];
    [(NTKRingsMetalQuadView *)self->_ringsView setPreferredFramesPerSecond:60];
    [(NTKRingsMetalQuadView *)self->_ringsView addQuad:self->_ringsQuad];
    v8 = [(NTKActivityDigitalFaceView *)self foregroundContainerView];
    [v8 addSubview:self->_ringsView];

    [(NTKRingsMetalQuadView *)self->_ringsView setUserInteractionEnabled:0];
  }

  v9 = [(NTKActivityDigitalFaceView *)self device];
  sub_F7AC(v9, v9);

  if (CLKSizeIsEmpty())
  {
    v10 = [(NTKActivityDigitalFaceView *)self _labelFontMonospaced:1];
    [@"0" _legacy_sizeWithFont:v10];
    *&xmmword_28F08 = v11;
    *(&xmmword_28F08 + 1) = v12;
  }

  if (!self->_moveLabel)
  {
    v13 = [(NTKActivityDigitalFaceView *)self _newActivityLabelSubview];
    moveLabel = self->_moveLabel;
    self->_moveLabel = v13;
  }

  if (!self->_exerciseLabel)
  {
    v15 = [(NTKActivityDigitalFaceView *)self _newActivityLabelSubview];
    exerciseLabel = self->_exerciseLabel;
    self->_exerciseLabel = v15;
  }

  if (!self->_standLabel)
  {
    v17 = [(NTKActivityDigitalFaceView *)self _newActivityLabelSubview];
    standLabel = self->_standLabel;
    self->_standLabel = v17;
  }

  if (!self->_tapToLaunchButton)
  {
    v19 = objc_opt_new();
    tapToLaunchButton = self->_tapToLaunchButton;
    self->_tapToLaunchButton = v19;

    [(NTKFaceViewTapControl *)self->_tapToLaunchButton addTarget:self action:"_launchButtonPressed:" forControlEvents:64];
    v21 = [(NTKFaceViewTapControl *)self->_tapToLaunchButton highlightImageView];
    [(NTKActivityDigitalFaceView *)self _layoutConstants];
    v22 = v29;
    v23 = [(NTKActivityDigitalFaceView *)self device];
    v24 = *&self->_currentRingLayout.diameter;
    v27[0] = *&self->_currentRingLayout.bottomEdgeInset;
    v27[1] = v24;
    interspacing = self->_currentRingLayout.interspacing;
    v25 = sub_C8FC(v27, v23, v22);
    [v21 setImage:v25];

    v26 = [(NTKActivityDigitalFaceView *)self foregroundContainerView];
    [v26 addSubview:self->_tapToLaunchButton];
  }

  [(NTKActivityDigitalFaceView *)self _updateActivityLabelColors:self->_lastPausedState];
}

- (void)_removeActivityRelatedUIs
{
  [(NTKRingsMetalQuadView *)self->_ringsView removeFromSuperview];
  ringsView = self->_ringsView;
  self->_ringsView = 0;

  [(UILabel *)self->_moveLabel removeFromSuperview];
  moveLabel = self->_moveLabel;
  self->_moveLabel = 0;

  [(UILabel *)self->_exerciseLabel removeFromSuperview];
  exerciseLabel = self->_exerciseLabel;
  self->_exerciseLabel = 0;

  [(UILabel *)self->_standLabel removeFromSuperview];
  standLabel = self->_standLabel;
  self->_standLabel = 0;

  [(UIView *)self->_timeLabelBackgroundView removeFromSuperview];
  timeLabelBackgroundView = self->_timeLabelBackgroundView;
  self->_timeLabelBackgroundView = 0;

  [(NTKFaceViewTapControl *)self->_tapToLaunchButton removeFromSuperview];
  tapToLaunchButton = self->_tapToLaunchButton;
  self->_tapToLaunchButton = 0;
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

- (double)_blinkerAndSecondsWidth
{
  v3 = [(NTKActivityDigitalFaceView *)self timeView];
  v4 = [v3 text];

  if (fabs(self->_blinkerAndSecondsWidth) < 0.00000011920929 && [v4 length])
  {
    v5 = +[NSCharacterSet punctuationCharacterSet];
    v6 = [v4 rangeOfCharacterFromSet:v5 options:4];

    v7 = [v4 substringWithRange:{v6, objc_msgSend(v4, "length") - v6}];
    v13 = NSFontAttributeName;
    v8 = [(NTKActivityDigitalFaceView *)self _labelFontMonospaced:1];
    v14 = v8;
    v9 = [NSDictionary dictionaryWithObjects:&v14 forKeys:&v13 count:1];

    [v7 sizeWithAttributes:v9];
    self->_blinkerAndSecondsWidth = v10;
  }

  blinkerAndSecondsWidth = self->_blinkerAndSecondsWidth;

  return blinkerAndSecondsWidth;
}

+ (id)_newRingsQuad
{
  v2 = [[ARUIRingGroup alloc] initWithNumberOfRings:3];
  [v2 setTranslation:0.0];
  for (i = 0; i != 3; ++i)
  {
    v4 = [v2 rings];
    v5 = [v4 objectAtIndexedSubscript:i];
    [v5 setPercentage:0.0];
  }

  v6 = [v2 rings];
  sub_EB48(v6, 0);

  v7 = +[NTKActivityFaceViewFactory sharedRingsViewRenderer];
  v8 = [NTKRingsQuad alloc];
  v12 = v2;
  v9 = [NSArray arrayWithObjects:&v12 count:1];
  v10 = [(NTKRingsQuad *)v8 initWithRingGroups:v9 renderer:v7];

  return v10;
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKActivityFaceViewFactory prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (id)_labelFontMonospaced:(BOOL)a3
{
  [(NTKActivityDigitalFaceView *)self _layoutConstants];
  v4 = [CLKFont systemFontOfSize:CLKRoundedFontDesignName weight:v9 design:UIFontWeightMedium];
  v5 = v4;
  if (a3)
  {
    v6 = [v4 CLKFontWithMonospacedNumbers];
  }

  else
  {
    v6 = v4;
  }

  v7 = v6;

  return v7;
}

@end