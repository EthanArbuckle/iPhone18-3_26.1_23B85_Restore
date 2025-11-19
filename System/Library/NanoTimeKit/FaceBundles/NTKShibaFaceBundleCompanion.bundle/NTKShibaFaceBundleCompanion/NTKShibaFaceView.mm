@interface NTKShibaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKShibaColorPalette)multicolorPaletteReplacement;
- (id)_renderDialSwatchImageForStyle:(id)a3 colorOption:(id)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (id)dialView;
- (id)palette;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromView:(id)a4 toView:(id)a5;
- (void)_cleanupAfterEditing;
- (void)_cleanupTransitions;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_createAnalogBackgroundIfNeeded;
- (void)_createAndRemoveViewsForCurrentStateIfNeeded;
- (void)_createOlympusViewIfNeeded;
- (void)_handleTapGesture;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeViews;
- (void)_setupController;
- (void)_setupViews;
- (void)_setupViewsForCurrentState;
- (void)_tearDownAnalogView;
- (void)_tearDownOlympusView;
- (void)_unloadSnapshotContentViews;
- (void)_updateBackgroundViewAlpha;
- (void)_updateComplicationsWithColor:(id)a3 alternateColor:(id)a4 isMulticolor:(BOOL)a5;
- (void)configureViewsForEditing;
- (void)layoutOlympusView;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
- (void)updateMonochromeColorForRichComplicationView:(id)a3;
@end

@implementation NTKShibaFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKShibaColorPalette);
  [(NTKShibaColorPalette *)v2 setUseSmallFont:1];

  return v2;
}

- (id)palette
{
  v3 = [(NTKShibaFaceView *)self faceColorPalette];
  if ([v3 isMulticolor])
  {
    v4 = [(NTKShibaFaceView *)self multicolorPaletteReplacement];

    v3 = v4;
  }

  [v3 setStyle:self->_currentStyle];

  return v3;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v5 layoutSubviews];
  [(NTKShibaFaceView *)self layoutOlympusView];
  analogBackgroundView = self->_analogBackgroundView;
  v4 = [(NTKShibaFaceView *)self timeView];
  [v4 bounds];
  [(NTKVictoryAnalogBackgroundView *)analogBackgroundView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)layoutOlympusView
{
  olympusView = self->_olympusView;
  v4 = [(NTKShibaFaceView *)self timeView];
  [v4 bounds];
  [(NTKOlympusTimeView *)olympusView ntk_setBoundsAndPositionFromFrame:?];

  [CATransaction setDisableActions:1];
  v5 = [(NTKOlympusTimeView *)self->_olympusView layer];
  [(NTKOlympusTimeView *)self->_olympusView bounds];
  [v5 setCornerRadius:v6 * 0.5];

  [CATransaction setDisableActions:0];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKShibaFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  [(NTKShibaFaceView *)self _removeViews];
  v3.receiver = self;
  v3.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v3 _unloadSnapshotContentViews];
}

- (void)_setupViews
{
  self->_contentLoaded = 1;
  v3 = [(NTKShibaFaceView *)self optionForCustomEditMode:15 slot:0];
  self->_currentStyle = [v3 style];

  v4 = [(NTKShibaFaceView *)self palette];
  v5 = [(NTKShibaFaceView *)self faceColorPalette];
  -[NTKShibaFaceView updateWithPalette:isMulticolor:](self, "updateWithPalette:isMulticolor:", v4, [v5 isMulticolor]);

  [(NTKShibaFaceView *)self _createAndRemoveViewsForCurrentStateIfNeeded];
  [(NTKShibaFaceView *)self _setupController];
  v6 = objc_alloc_init(UITapGestureRecognizer);
  tapGesture = self->_tapGesture;
  self->_tapGesture = v6;

  [(UITapGestureRecognizer *)self->_tapGesture addTarget:self action:"_handleTapGesture"];
  v8 = [(NTKShibaFaceView *)self timeView];
  [v8 addGestureRecognizer:self->_tapGesture];

  v9 = [UIView alloc];
  v10 = [(NTKShibaFaceView *)self device];
  [v10 screenBounds];
  v11 = [v9 initWithFrame:?];
  [(NTKShibaFaceView *)self setBackgroundView:v11];

  v13 = [(NTKShibaFaceView *)self contentView];
  v12 = [(NTKShibaFaceView *)self backgroundView];
  [v13 insertSubview:v12 atIndex:0];
}

- (void)_handleTapGesture
{
  v3 = [(NTKShibaFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:v3];

  v4 = [(NTKShibaFaceView *)self timeView];
  v5 = [(NTKShibaFaceView *)self timeView];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(NTKShibaFaceView *)self contentView];
  [v4 convertRect:v14 toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v23 = [(NTKShibaFaceView *)self delegate];
  [v23 faceViewRequestedLaunchFromRect:{v16, v18, v20, v22}];
}

- (void)_setupController
{
  if (!self->_olympusController)
  {
    v3 = [[NTKOlympusController alloc] initWithFaceView:self olympusView:self->_olympusView];
    olympusController = self->_olympusController;
    self->_olympusController = v3;

    _objc_release_x1();
  }
}

- (void)_removeViews
{
  self->_contentLoaded = 0;
  [(NTKShibaFaceView *)self _tearDownOlympusView];
  [(NTKShibaFaceView *)self _tearDownAnalogView];
  olympusController = self->_olympusController;
  self->_olympusController = 0;

  v4 = [(NTKShibaFaceView *)self timeView];
  [v4 removeGestureRecognizer:self->_tapGesture];

  tapGesture = self->_tapGesture;
  self->_tapGesture = 0;

  v6 = [(NTKShibaFaceView *)self backgroundView];
  [v6 removeFromSuperview];

  [(NTKShibaFaceView *)self setBackgroundView:0];
}

- (id)dialView
{
  v3 = [(NTKShibaFaceView *)self device];
  v4 = sub_49AC(v3, v3);

  v5 = [NTKShibaTimeView alloc];
  v6 = [(NTKShibaFaceView *)self device];
  v7 = [(NTKShibaTimeView *)v5 initWithFrame:0 style:v6 andDevice:0.0, 0.0, v4, v4];

  v8 = [(NTKShibaFaceView *)self palette];
  [(NTKShibaTimeView *)v7 setPalette:v8];

  return v7;
}

- (void)_createAndRemoveViewsForCurrentStateIfNeeded
{
  if (!self->_contentLoaded)
  {
    return;
  }

  v8 = v2;
  currentStyle = self->_currentStyle;
  switch(currentStyle)
  {
    case 0uLL:
      goto LABEL_5;
    case 3uLL:
      [(NTKShibaFaceView *)self _createAnalogBackgroundIfNeeded];
      [(NTKShibaFaceView *)self _tearDownOlympusView];
      break;
    case 2uLL:
LABEL_5:
      [(NTKShibaFaceView *)self _createOlympusViewIfNeeded:v3];
      [(NTKShibaFaceView *)self _tearDownAnalogView];
      break;
  }

  [(NTKShibaFaceView *)self _setupViewsForCurrentState];
}

- (void)_setupViewsForCurrentState
{
  [(NTKOlympusTimeView *)self->_olympusView setupViewsForCurrentState:[(NTKShibaFaceView *)self editing]];
  if (self->_analogBackgroundView)
  {
    v3 = [NTKOlympusAnalogBackgroundPalette alloc];
    v4 = [(NTKShibaFaceView *)self palette];
    v5 = [v3 initWithOlympusColorPalette:v4];

    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView applyTransitionFraction:self->_currentStyle fromOlympusStyle:self->_currentStyle toOlympusStyle:1.0];
    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setPalette:v5];
    [(NTKShibaFaceView *)self _updateBackgroundViewAlpha];
  }
}

- (void)_createOlympusViewIfNeeded
{
  if (!self->_olympusView)
  {
    v3 = [NTKOlympusTimeView alloc];
    v4 = [(NTKShibaFaceView *)self device];
    currentStyle = self->_currentStyle;
    v6 = [(NTKShibaFaceView *)self palette];
    v7 = [(NTKShibaFaceView *)self currentDisplayDate];
    v8 = [NTKShibaFaceBundle imageWithName:@"Victory-logo-small"];
    v9 = [v3 initWithDevice:v4 dial:0 style:currentStyle colorPalette:v6 date:v7 useSmallFont:1 circularLogoImage:v8];
    olympusView = self->_olympusView;
    self->_olympusView = v9;

    [(NTKOlympusTimeView *)self->_olympusView setClipsToBounds:1];
    [(NTKOlympusController *)self->_olympusController setOlympusView:self->_olympusView];
    v11 = [(NTKShibaFaceView *)self shibaTimeView];
    v13 = [v11 dialBackgroundView];

    v12 = self->_olympusView;
    if (self->_analogBackgroundView)
    {
      [v13 insertSubview:v12 belowSubview:?];
    }

    else
    {
      [v13 addSubview:v12];
      [v13 sendSubviewToBack:self->_olympusView];
    }

    [(NTKShibaFaceView *)self layoutOlympusView];
  }
}

- (void)_createAnalogBackgroundIfNeeded
{
  if (!self->_analogBackgroundView)
  {
    v3 = [NTKVictoryAnalogBackgroundView alloc];
    v4 = [(NTKShibaFaceView *)self timeView];
    [v4 bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = [(NTKShibaFaceView *)self device];
    v14 = [v3 initWithFrame:v13 forDevice:{v6, v8, v10, v12}];
    analogBackgroundView = self->_analogBackgroundView;
    self->_analogBackgroundView = v14;

    v16 = [NTKShibaFaceBundle imageWithName:@"Victory-logo-small"];
    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setLogoImage:v16];

    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setStyle:5];
    v17 = [(NTKShibaFaceView *)self timeView];
    [v17 bounds];
    v18 = CGRectGetWidth(v24) * 0.5;
    v19 = [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView layer];
    [v19 setCornerRadius:v18];

    v20 = [(NTKShibaFaceView *)self shibaTimeView];
    v22 = [v20 dialBackgroundView];

    v21 = self->_analogBackgroundView;
    if (self->_olympusView)
    {
      [v22 insertSubview:v21 aboveSubview:?];
    }

    else
    {
      [v22 addSubview:v21];
      [v22 sendSubviewToBack:self->_analogBackgroundView];
    }
  }
}

- (void)_tearDownOlympusView
{
  [(NTKOlympusTimeView *)self->_olympusView removeFromSuperview];
  olympusView = self->_olympusView;
  self->_olympusView = 0;
}

- (void)_tearDownAnalogView
{
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView removeFromSuperview];
  analogBackgroundView = self->_analogBackgroundView;
  self->_analogBackgroundView = 0;
}

- (void)_applyDataMode
{
  v3 = [(NTKShibaFaceView *)self dataMode];
  [(NTKOlympusController *)self->_olympusController applyDataMode:v3];
  v4 = [(NTKShibaFaceView *)self timeView];
  [v4 setUserInteractionEnabled:v3 == &dword_0 + 1];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKShibaFaceView;
  v6 = a3;
  [(NTKShibaFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKOlympusController *)self->_olympusController setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v5 setTimeOffset:?];
  [(NTKOlympusTimeView *)self->_olympusView setTimeOffset:a3];
}

- (BOOL)_wantsStatusBarIconShadow
{
  v2 = [(NTKShibaFaceView *)self palette];
  v3 = [v2 background];
  v4 = CLKIsBlackColor();

  return v4 ^ 1;
}

- (void)updateMonochromeColorForRichComplicationView:(id)a3
{
  v11 = a3;
  v4 = [(NTKShibaFaceView *)self palette];
  v5 = [v4 cornerComplicationsAccentColor];
  [(NTKShibaFaceView *)self setComplicationColor:v5];

  v6 = [(NTKShibaFaceView *)self complicationColor];
  [(NTKShibaFaceView *)self setInterpolatedComplicationColor:v6];

  v7 = [(NTKShibaFaceView *)self palette];
  v8 = [v7 complicationsAlternateColor];
  [(NTKShibaFaceView *)self setAlternateComplicationColor:v8];

  v9 = [(NTKShibaFaceView *)self faceColorPalette];
  LODWORD(v7) = [v9 isMulticolor];

  if (v7)
  {
    [v11 transitionToMonochromeWithFraction:0.0];
  }

  else
  {
    [v11 updateMonochromeColor];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = +[UIColor clearColor];
    [v11 setPlatterColor:v10];
  }
}

- (void)_updateBackgroundViewAlpha
{
  if (self->_currentStyle == 3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setAlpha:v3];
  olympusView = self->_olympusView;

  [(NTKOlympusTimeView *)olympusView setAlpha:1.0 - v3];
}

- (void)_cleanupTransitions
{
  [(NTKShibaFaceView *)self _updateBackgroundViewAlpha];
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView applyTransitionFraction:self->_currentStyle fromOlympusStyle:self->_currentStyle toOlympusStyle:1.0];
  analogBackgroundView = self->_analogBackgroundView;
  v12 = *&CGAffineTransformIdentity.c;
  v14 = *&CGAffineTransformIdentity.a;
  v13 = v14;
  v15 = v12;
  v16 = *&CGAffineTransformIdentity.tx;
  v11 = v16;
  [(NTKVictoryAnalogBackgroundView *)analogBackgroundView setTransform:&v14];
  [(NTKOlympusTimeView *)self->_olympusView setCurrentStyle:self->_currentStyle];
  [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:self->_currentStyle fromStyle:self->_currentStyle toStyle:1.0];
  v4 = [(NTKShibaFaceView *)self palette];
  [(NTKOlympusTimeView *)self->_olympusView setCurrentColorPalette:v4];

  olympusView = self->_olympusView;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [(NTKOlympusTimeView *)olympusView setTransform:&v14];
  [(UIView *)self->_transitionOlympusView removeFromSuperview];
  transitionOlympusView = self->_transitionOlympusView;
  self->_transitionOlympusView = 0;

  v7 = [(NTKShibaFaceView *)self _dualTimeStyleForOlympusStyle:self->_currentStyle];
  v8 = [(NTKShibaFaceView *)self shibaTimeView];
  [v8 setStyle:v7];

  v9 = [(NTKShibaFaceView *)self palette];
  v10 = [(NTKShibaFaceView *)self shibaTimeView];
  [v10 setPalette:v9];
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v3 _prepareForEditing];
  [(NTKShibaFaceView *)self configureViewsForEditing];
  [(NTKOlympusTimeView *)self->_olympusView prepareForEditing];
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView willBeginEditing];
}

- (void)configureViewsForEditing
{
  if (self->_contentLoaded)
  {
    [(NTKShibaFaceView *)self _createOlympusViewIfNeeded];
    [(NTKOlympusTimeView *)self->_olympusView configureViewsForEditing];
    [(NTKShibaFaceView *)self _createAnalogBackgroundIfNeeded];

    [(NTKShibaFaceView *)self _setupViewsForCurrentState];
  }
}

- (void)_configureForEditMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v4 _configureForEditMode:a3];
  [(NTKShibaFaceView *)self _cleanupTransitions];
}

- (void)_cleanupAfterEditing
{
  v3.receiver = self;
  v3.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v3 _cleanupAfterEditing];
  [(NTKOlympusTimeView *)self->_olympusView cleanupAfterEditing];
  [(NTKShibaFaceView *)self _createAndRemoveViewsForCurrentStateIfNeeded];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  if (a6 == 10)
  {
    v23 = [(NTKShibaFaceView *)self interpolatedColorPalette];
    v24 = [v23 fromPalette];

    v25 = [(NTKShibaFaceView *)self interpolatedColorPalette];
    v26 = [v25 toPalette];

    v27 = [v24 isMulticolor];
    v28 = [v26 isMulticolor];
    v52 = v27 & v28;
    v29 = 0.0;
    if ((v27 & v28) == 0)
    {
      v29 = a3;
    }

    if (v27 | v28 ^ 1)
    {
      v30 = v29;
    }

    else
    {
      v30 = 1.0 - a3;
    }

    v53 = v13;
    if ([v24 isMulticolor])
    {
      v31 = [(NTKShibaFaceView *)self multicolorPaletteReplacement];

      v24 = v31;
    }

    v32 = v27 ^ v28;
    v54 = v14;
    v55 = v12;
    if ([v26 isMulticolor])
    {
      v33 = [(NTKShibaFaceView *)self multicolorPaletteReplacement];

      v26 = v33;
    }

    v34 = [v24 cornerComplicationsAccentColor];
    v35 = [v26 cornerComplicationsAccentColor];
    v36 = NTKInterpolateBetweenColors();
    [(NTKShibaFaceView *)self setComplicationColor:v36];
    [(NTKShibaFaceView *)self setInterpolatedComplicationColor:v36];
    v37 = [v24 complicationsAlternateColor];
    v38 = [v26 complicationsAlternateColor];
    v39 = NTKInterpolateBetweenColors();
    [(NTKShibaFaceView *)self setAlternateComplicationColor:v39];

    v56[0] = _NSConcreteStackBlock;
    v56[1] = 3221225472;
    v56[2] = sub_3D54;
    v56[3] = &unk_C360;
    v57 = v32;
    v58 = v52;
    *&v56[4] = v30;
    [(NTKShibaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v56];
    v13 = v53;
    if ([v55 isEqual:v53])
    {
      [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setStyle:5];
      v40 = [[NTKOlympusAnalogBackgroundPalette alloc] initWithOlympusColorPalette:v26];
      [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setPalette:v40];
    }

    else
    {
      [(NTKShibaFaceView *)self _applyTransitionFraction:v24 fromColorPalette:v26 toColorPalette:1 animateElements:a3];
      v40 = [v24 background];
      v41 = [v26 background];
      v42 = NTKInterpolateBetweenColors();
      v43 = [(NTKShibaFaceView *)self backgroundView];
      [v43 setBackgroundColor:v42];
    }

    v14 = v54;

    v12 = v55;
  }

  else if (a6 == 15)
  {
    v15 = [v12 style];
    v16 = [v13 style];
    if (v15 != v16)
    {
      v17 = v16;
      v18 = [(NTKShibaFaceView *)self palette];
      v19 = [v18 copy];

      [v19 setStyle:v15];
      v20 = [(NTKShibaFaceView *)self palette];
      v21 = [v20 copy];

      [v21 setStyle:v17];
      if (v15 == &dword_0 + 3)
      {
        [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:3 fromStyle:v17 toStyle:a3];
        [(NTKShibaFaceView *)self _applyTransitionFraction:self->_analogBackgroundView fromView:self->_olympusView toView:a3];
        [(NTKShibaFaceView *)self _applyTransitionFraction:v19 fromColorPalette:v21 toColorPalette:0 animateElements:a3];
        v22 = [(NTKShibaFaceView *)self shibaTimeView];
        [v22 setStyle:0];
      }

      else
      {
        if (v17)
        {
LABEL_24:

          goto LABEL_25;
        }

        transitionOlympusView = self->_transitionOlympusView;
        if (!transitionOlympusView)
        {
          [(NTKOlympusTimeView *)self->_olympusView setAlpha:1.0];
          [(NTKOlympusTimeView *)self->_olympusView setCurrentStyle:0];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:v15 fromStyle:0 toStyle:1.0];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:v19 fromColorPalette:v21 toColorPalette:0 animateElements:1.0];
          v45 = [(NTKOlympusTimeView *)self->_olympusView snapshotViewAfterScreenUpdates:1];
          v46 = self->_transitionOlympusView;
          self->_transitionOlympusView = v45;

          v47 = [(NTKShibaFaceView *)self shibaTimeView];
          v48 = [v47 dialBackgroundView];
          [v48 insertSubview:self->_transitionOlympusView aboveSubview:self->_olympusView];

          [(NTKOlympusTimeView *)self->_olympusView center];
          [(UIView *)self->_transitionOlympusView setCenter:?];
          [(UIView *)self->_transitionOlympusView setAlpha:0.0];
          [(NTKOlympusTimeView *)self->_olympusView setCurrentStyle:v15];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:v15 fromStyle:0 toStyle:0.0];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:v19 fromColorPalette:v21 toColorPalette:0 animateElements:0.0];
          transitionOlympusView = self->_transitionOlympusView;
        }

        [(NTKShibaFaceView *)self _applyTransitionFraction:self->_olympusView fromView:transitionOlympusView toView:a3];
        v49 = [(NTKShibaFaceView *)self shibaTimeView];
        v22 = [v49 analogHandsView];

        v50 = [(NTKShibaFaceView *)self shibaTimeView];
        v51 = [v50 digitalContainerView];

        [(NTKShibaFaceView *)self _applyTransitionFraction:v22 fromView:v51 toView:a3];
      }

      goto LABEL_24;
    }
  }

LABEL_25:
}

- (void)_applyTransitionFraction:(double)a3 fromView:(id)a4 toView:(id)a5
{
  v6 = a4;
  v7 = a5;
  if (v6)
  {
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v9 = v8;
    CLKInterpolateBetweenFloatsClipped();
    v11 = v10;
    CGAffineTransformMakeScale(&v18, v9, v9);
    v17 = v18;
    [v6 setTransform:&v17];
    [v6 setAlpha:v11];
  }

  if (v7)
  {
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v13 = v12;
    CLKInterpolateBetweenFloatsClipped();
    v15 = v14;
    CGAffineTransformMakeScale(&v16, v13, v13);
    v17 = v16;
    [v7 setTransform:&v17];
    [v7 setAlpha:v15];
  }
}

- (void)_updateComplicationsWithColor:(id)a3 alternateColor:(id)a4 isMulticolor:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  [(NTKShibaFaceView *)self setComplicationColor:v9];
  [(NTKShibaFaceView *)self setInterpolatedComplicationColor:v9];

  [(NTKShibaFaceView *)self setAlternateComplicationColor:v8];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_413C;
  v10[3] = &unk_C380;
  v11 = a5;
  [(NTKShibaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v10];
}

- (NTKShibaColorPalette)multicolorPaletteReplacement
{
  multicolorPaletteReplacement = self->_multicolorPaletteReplacement;
  if (!multicolorPaletteReplacement)
  {
    v4 = [(NTKShibaFaceView *)self faceColorPalette];
    v5 = [v4 copy];
    v6 = self->_multicolorPaletteReplacement;
    self->_multicolorPaletteReplacement = v5;

    v7 = [NTKPigmentEditOption alloc];
    v8 = [NTKOlympusColorEditOption colorNameForColorValue:6];
    v9 = +[NTKShibaFace pigmentFaceDomain];
    v10 = [v7 initWithOptionName:v8 collectionName:v9];
    [(NTKShibaColorPalette *)self->_multicolorPaletteReplacement setPigmentEditOption:v10];

    multicolorPaletteReplacement = self->_multicolorPaletteReplacement;
  }

  return multicolorPaletteReplacement;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    v9 = [(NTKShibaFaceView *)self palette];
    v10 = [(NTKShibaFaceView *)self faceColorPalette];
    -[NTKShibaFaceView updateWithPalette:isMulticolor:](self, "updateWithPalette:isMulticolor:", v9, [v10 isMulticolor]);

    v11 = [(NTKShibaFaceView *)self delegate];
    [v11 faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (a4 == 15)
  {
    -[NTKShibaFaceView setCurrentStyle:](self, "setCurrentStyle:", [v12 style]);
  }

  if ([(NTKShibaFaceView *)self editing])
  {
    [(NTKShibaFaceView *)self _setupViewsForCurrentState];
  }

  else
  {
    [(NTKShibaFaceView *)self _createAndRemoveViewsForCurrentStateIfNeeded];
    [(NTKOlympusTimeView *)self->_olympusView cleanupAfterEditing];
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 15)
  {
    return &off_CBA0;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!qword_11A08)
  {
    v10 = objc_opt_new();
    v11 = qword_11A08;
    qword_11A08 = v10;
  }

  if (a4 == 15)
  {
    v12 = v8;
    v13 = [v9 objectForKeyedSubscript:&off_C9A8];
    v14 = [v13 pigmentEditOption];

    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 style]);
    v16 = [v14 identifier];
    v17 = [NSString stringWithFormat:@"%@-%@", v15, v16];

    v18 = [qword_11A08 objectForKey:v17];
    if (!v18)
    {
      v18 = [(NTKShibaFaceView *)self _renderDialSwatchImageForStyle:v12 colorOption:v14];
      [qword_11A08 setObject:v18 forKey:v17];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = NTKShibaFaceView;
    v18 = [(NTKShibaFaceView *)&v20 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v18;
}

- (id)_renderDialSwatchImageForStyle:(id)a3 colorOption:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(NTKShibaFaceView *)self timeView];

  if (!v8)
  {
    [(NTKShibaFaceView *)self _loadSnapshotContentViews];
  }

  v9 = [(NTKShibaFaceView *)self optionForCustomEditMode:15 slot:0];
  [(NTKShibaFaceView *)self setOption:v7 forCustomEditMode:15 slot:0];

  [(NTKShibaFaceView *)self setOption:v6 forCustomEditMode:10 slot:0];
  v10 = [(NTKShibaFaceView *)self timeView];
  [v10 bounds];
  v15 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v11, v12, v13, v14}];
  [(NTKShibaFaceView *)self layoutIfNeeded];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_4768;
  v19[3] = &unk_C3A8;
  v20 = v10;
  v16 = v10;
  v17 = [v15 imageWithActions:v19];
  [(NTKShibaFaceView *)self setOption:v9 forCustomEditMode:15 slot:0];

  return v17;
}

@end