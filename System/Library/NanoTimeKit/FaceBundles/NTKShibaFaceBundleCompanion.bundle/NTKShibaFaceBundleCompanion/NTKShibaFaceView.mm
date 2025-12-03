@interface NTKShibaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (NTKShibaColorPalette)multicolorPaletteReplacement;
- (id)_renderDialSwatchImageForStyle:(id)style colorOption:(id)option;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (id)dialView;
- (id)palette;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromView:(id)view toView:(id)toView;
- (void)_cleanupAfterEditing;
- (void)_cleanupTransitions;
- (void)_configureForEditMode:(int64_t)mode;
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
- (void)_updateComplicationsWithColor:(id)color alternateColor:(id)alternateColor isMulticolor:(BOOL)multicolor;
- (void)configureViewsForEditing;
- (void)layoutOlympusView;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
- (void)updateMonochromeColorForRichComplicationView:(id)view;
@end

@implementation NTKShibaFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
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
  faceColorPalette = [(NTKShibaFaceView *)self faceColorPalette];
  if ([faceColorPalette isMulticolor])
  {
    multicolorPaletteReplacement = [(NTKShibaFaceView *)self multicolorPaletteReplacement];

    faceColorPalette = multicolorPaletteReplacement;
  }

  [faceColorPalette setStyle:self->_currentStyle];

  return faceColorPalette;
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v5 layoutSubviews];
  [(NTKShibaFaceView *)self layoutOlympusView];
  analogBackgroundView = self->_analogBackgroundView;
  timeView = [(NTKShibaFaceView *)self timeView];
  [timeView bounds];
  [(NTKVictoryAnalogBackgroundView *)analogBackgroundView ntk_setBoundsAndPositionFromFrame:?];
}

- (void)layoutOlympusView
{
  olympusView = self->_olympusView;
  timeView = [(NTKShibaFaceView *)self timeView];
  [timeView bounds];
  [(NTKOlympusTimeView *)olympusView ntk_setBoundsAndPositionFromFrame:?];

  [CATransaction setDisableActions:1];
  layer = [(NTKOlympusTimeView *)self->_olympusView layer];
  [(NTKOlympusTimeView *)self->_olympusView bounds];
  [layer setCornerRadius:v6 * 0.5];

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

  palette = [(NTKShibaFaceView *)self palette];
  faceColorPalette = [(NTKShibaFaceView *)self faceColorPalette];
  -[NTKShibaFaceView updateWithPalette:isMulticolor:](self, "updateWithPalette:isMulticolor:", palette, [faceColorPalette isMulticolor]);

  [(NTKShibaFaceView *)self _createAndRemoveViewsForCurrentStateIfNeeded];
  [(NTKShibaFaceView *)self _setupController];
  v6 = objc_alloc_init(UITapGestureRecognizer);
  tapGesture = self->_tapGesture;
  self->_tapGesture = v6;

  [(UITapGestureRecognizer *)self->_tapGesture addTarget:self action:"_handleTapGesture"];
  timeView = [(NTKShibaFaceView *)self timeView];
  [timeView addGestureRecognizer:self->_tapGesture];

  v9 = [UIView alloc];
  device = [(NTKShibaFaceView *)self device];
  [device screenBounds];
  v11 = [v9 initWithFrame:?];
  [(NTKShibaFaceView *)self setBackgroundView:v11];

  contentView = [(NTKShibaFaceView *)self contentView];
  backgroundView = [(NTKShibaFaceView *)self backgroundView];
  [contentView insertSubview:backgroundView atIndex:0];
}

- (void)_handleTapGesture
{
  delegate = [(NTKShibaFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:delegate];

  timeView = [(NTKShibaFaceView *)self timeView];
  timeView2 = [(NTKShibaFaceView *)self timeView];
  [timeView2 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  contentView = [(NTKShibaFaceView *)self contentView];
  [timeView convertRect:contentView toView:{v7, v9, v11, v13}];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  delegate2 = [(NTKShibaFaceView *)self delegate];
  [delegate2 faceViewRequestedLaunchFromRect:{v16, v18, v20, v22}];
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

  timeView = [(NTKShibaFaceView *)self timeView];
  [timeView removeGestureRecognizer:self->_tapGesture];

  tapGesture = self->_tapGesture;
  self->_tapGesture = 0;

  backgroundView = [(NTKShibaFaceView *)self backgroundView];
  [backgroundView removeFromSuperview];

  [(NTKShibaFaceView *)self setBackgroundView:0];
}

- (id)dialView
{
  device = [(NTKShibaFaceView *)self device];
  v4 = sub_49AC(device, device);

  v5 = [NTKShibaTimeView alloc];
  device2 = [(NTKShibaFaceView *)self device];
  v7 = [(NTKShibaTimeView *)v5 initWithFrame:0 style:device2 andDevice:0.0, 0.0, v4, v4];

  palette = [(NTKShibaFaceView *)self palette];
  [(NTKShibaTimeView *)v7 setPalette:palette];

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
    palette = [(NTKShibaFaceView *)self palette];
    v5 = [v3 initWithOlympusColorPalette:palette];

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
    device = [(NTKShibaFaceView *)self device];
    currentStyle = self->_currentStyle;
    palette = [(NTKShibaFaceView *)self palette];
    currentDisplayDate = [(NTKShibaFaceView *)self currentDisplayDate];
    v8 = [NTKShibaFaceBundle imageWithName:@"Victory-logo-small"];
    v9 = [v3 initWithDevice:device dial:0 style:currentStyle colorPalette:palette date:currentDisplayDate useSmallFont:1 circularLogoImage:v8];
    olympusView = self->_olympusView;
    self->_olympusView = v9;

    [(NTKOlympusTimeView *)self->_olympusView setClipsToBounds:1];
    [(NTKOlympusController *)self->_olympusController setOlympusView:self->_olympusView];
    shibaTimeView = [(NTKShibaFaceView *)self shibaTimeView];
    dialBackgroundView = [shibaTimeView dialBackgroundView];

    v12 = self->_olympusView;
    if (self->_analogBackgroundView)
    {
      [dialBackgroundView insertSubview:v12 belowSubview:?];
    }

    else
    {
      [dialBackgroundView addSubview:v12];
      [dialBackgroundView sendSubviewToBack:self->_olympusView];
    }

    [(NTKShibaFaceView *)self layoutOlympusView];
  }
}

- (void)_createAnalogBackgroundIfNeeded
{
  if (!self->_analogBackgroundView)
  {
    v3 = [NTKVictoryAnalogBackgroundView alloc];
    timeView = [(NTKShibaFaceView *)self timeView];
    [timeView bounds];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    device = [(NTKShibaFaceView *)self device];
    v14 = [v3 initWithFrame:device forDevice:{v6, v8, v10, v12}];
    analogBackgroundView = self->_analogBackgroundView;
    self->_analogBackgroundView = v14;

    v16 = [NTKShibaFaceBundle imageWithName:@"Victory-logo-small"];
    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setLogoImage:v16];

    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setStyle:5];
    timeView2 = [(NTKShibaFaceView *)self timeView];
    [timeView2 bounds];
    v18 = CGRectGetWidth(v24) * 0.5;
    layer = [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView layer];
    [layer setCornerRadius:v18];

    shibaTimeView = [(NTKShibaFaceView *)self shibaTimeView];
    dialBackgroundView = [shibaTimeView dialBackgroundView];

    v21 = self->_analogBackgroundView;
    if (self->_olympusView)
    {
      [dialBackgroundView insertSubview:v21 aboveSubview:?];
    }

    else
    {
      [dialBackgroundView addSubview:v21];
      [dialBackgroundView sendSubviewToBack:self->_analogBackgroundView];
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
  dataMode = [(NTKShibaFaceView *)self dataMode];
  [(NTKOlympusController *)self->_olympusController applyDataMode:dataMode];
  timeView = [(NTKShibaFaceView *)self timeView];
  [timeView setUserInteractionEnabled:dataMode == &dword_0 + 1];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKShibaFaceView;
  dateCopy = date;
  [(NTKShibaFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKOlympusController *)self->_olympusController setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)setTimeOffset:(double)offset
{
  v5.receiver = self;
  v5.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v5 setTimeOffset:?];
  [(NTKOlympusTimeView *)self->_olympusView setTimeOffset:offset];
}

- (BOOL)_wantsStatusBarIconShadow
{
  palette = [(NTKShibaFaceView *)self palette];
  background = [palette background];
  v4 = CLKIsBlackColor();

  return v4 ^ 1;
}

- (void)updateMonochromeColorForRichComplicationView:(id)view
{
  viewCopy = view;
  palette = [(NTKShibaFaceView *)self palette];
  cornerComplicationsAccentColor = [palette cornerComplicationsAccentColor];
  [(NTKShibaFaceView *)self setComplicationColor:cornerComplicationsAccentColor];

  complicationColor = [(NTKShibaFaceView *)self complicationColor];
  [(NTKShibaFaceView *)self setInterpolatedComplicationColor:complicationColor];

  palette2 = [(NTKShibaFaceView *)self palette];
  complicationsAlternateColor = [palette2 complicationsAlternateColor];
  [(NTKShibaFaceView *)self setAlternateComplicationColor:complicationsAlternateColor];

  faceColorPalette = [(NTKShibaFaceView *)self faceColorPalette];
  LODWORD(palette2) = [faceColorPalette isMulticolor];

  if (palette2)
  {
    [viewCopy transitionToMonochromeWithFraction:0.0];
  }

  else
  {
    [viewCopy updateMonochromeColor];
  }

  if (objc_opt_respondsToSelector())
  {
    v10 = +[UIColor clearColor];
    [viewCopy setPlatterColor:v10];
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
  palette = [(NTKShibaFaceView *)self palette];
  [(NTKOlympusTimeView *)self->_olympusView setCurrentColorPalette:palette];

  olympusView = self->_olympusView;
  v14 = v13;
  v15 = v12;
  v16 = v11;
  [(NTKOlympusTimeView *)olympusView setTransform:&v14];
  [(UIView *)self->_transitionOlympusView removeFromSuperview];
  transitionOlympusView = self->_transitionOlympusView;
  self->_transitionOlympusView = 0;

  v7 = [(NTKShibaFaceView *)self _dualTimeStyleForOlympusStyle:self->_currentStyle];
  shibaTimeView = [(NTKShibaFaceView *)self shibaTimeView];
  [shibaTimeView setStyle:v7];

  palette2 = [(NTKShibaFaceView *)self palette];
  shibaTimeView2 = [(NTKShibaFaceView *)self shibaTimeView];
  [shibaTimeView2 setPalette:palette2];
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

- (void)_configureForEditMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKShibaFaceView;
  [(NTKShibaFaceView *)&v4 _configureForEditMode:mode];
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

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKShibaFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];

    interpolatedColorPalette2 = [(NTKShibaFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];

    isMulticolor = [fromPalette isMulticolor];
    isMulticolor2 = [toPalette isMulticolor];
    v52 = isMulticolor & isMulticolor2;
    fractionCopy = 0.0;
    if ((isMulticolor & isMulticolor2) == 0)
    {
      fractionCopy = fraction;
    }

    if (isMulticolor | isMulticolor2 ^ 1)
    {
      v30 = fractionCopy;
    }

    else
    {
      v30 = 1.0 - fraction;
    }

    v53 = toOptionCopy;
    if ([fromPalette isMulticolor])
    {
      multicolorPaletteReplacement = [(NTKShibaFaceView *)self multicolorPaletteReplacement];

      fromPalette = multicolorPaletteReplacement;
    }

    v32 = isMulticolor ^ isMulticolor2;
    v54 = slotCopy;
    v55 = optionCopy;
    if ([toPalette isMulticolor])
    {
      multicolorPaletteReplacement2 = [(NTKShibaFaceView *)self multicolorPaletteReplacement];

      toPalette = multicolorPaletteReplacement2;
    }

    cornerComplicationsAccentColor = [fromPalette cornerComplicationsAccentColor];
    cornerComplicationsAccentColor2 = [toPalette cornerComplicationsAccentColor];
    v36 = NTKInterpolateBetweenColors();
    [(NTKShibaFaceView *)self setComplicationColor:v36];
    [(NTKShibaFaceView *)self setInterpolatedComplicationColor:v36];
    complicationsAlternateColor = [fromPalette complicationsAlternateColor];
    complicationsAlternateColor2 = [toPalette complicationsAlternateColor];
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
    toOptionCopy = v53;
    if ([v55 isEqual:v53])
    {
      [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setStyle:5];
      background = [[NTKOlympusAnalogBackgroundPalette alloc] initWithOlympusColorPalette:toPalette];
      [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setPalette:background];
    }

    else
    {
      [(NTKShibaFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:toPalette toColorPalette:1 animateElements:fraction];
      background = [fromPalette background];
      background2 = [toPalette background];
      v42 = NTKInterpolateBetweenColors();
      backgroundView = [(NTKShibaFaceView *)self backgroundView];
      [backgroundView setBackgroundColor:v42];
    }

    slotCopy = v54;

    optionCopy = v55;
  }

  else if (mode == 15)
  {
    style = [optionCopy style];
    style2 = [toOptionCopy style];
    if (style != style2)
    {
      v17 = style2;
      palette = [(NTKShibaFaceView *)self palette];
      v19 = [palette copy];

      [v19 setStyle:style];
      palette2 = [(NTKShibaFaceView *)self palette];
      v21 = [palette2 copy];

      [v21 setStyle:v17];
      if (style == &dword_0 + 3)
      {
        [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:3 fromStyle:v17 toStyle:fraction];
        [(NTKShibaFaceView *)self _applyTransitionFraction:self->_analogBackgroundView fromView:self->_olympusView toView:fraction];
        [(NTKShibaFaceView *)self _applyTransitionFraction:v19 fromColorPalette:v21 toColorPalette:0 animateElements:fraction];
        shibaTimeView = [(NTKShibaFaceView *)self shibaTimeView];
        [shibaTimeView setStyle:0];
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
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:style fromStyle:0 toStyle:1.0];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:v19 fromColorPalette:v21 toColorPalette:0 animateElements:1.0];
          v45 = [(NTKOlympusTimeView *)self->_olympusView snapshotViewAfterScreenUpdates:1];
          v46 = self->_transitionOlympusView;
          self->_transitionOlympusView = v45;

          shibaTimeView2 = [(NTKShibaFaceView *)self shibaTimeView];
          dialBackgroundView = [shibaTimeView2 dialBackgroundView];
          [dialBackgroundView insertSubview:self->_transitionOlympusView aboveSubview:self->_olympusView];

          [(NTKOlympusTimeView *)self->_olympusView center];
          [(UIView *)self->_transitionOlympusView setCenter:?];
          [(UIView *)self->_transitionOlympusView setAlpha:0.0];
          [(NTKOlympusTimeView *)self->_olympusView setCurrentStyle:style];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:style fromStyle:0 toStyle:0.0];
          [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:v19 fromColorPalette:v21 toColorPalette:0 animateElements:0.0];
          transitionOlympusView = self->_transitionOlympusView;
        }

        [(NTKShibaFaceView *)self _applyTransitionFraction:self->_olympusView fromView:transitionOlympusView toView:fraction];
        shibaTimeView3 = [(NTKShibaFaceView *)self shibaTimeView];
        shibaTimeView = [shibaTimeView3 analogHandsView];

        shibaTimeView4 = [(NTKShibaFaceView *)self shibaTimeView];
        digitalContainerView = [shibaTimeView4 digitalContainerView];

        [(NTKShibaFaceView *)self _applyTransitionFraction:shibaTimeView fromView:digitalContainerView toView:fraction];
      }

      goto LABEL_24;
    }
  }

LABEL_25:
}

- (void)_applyTransitionFraction:(double)fraction fromView:(id)view toView:(id)toView
{
  viewCopy = view;
  toViewCopy = toView;
  if (viewCopy)
  {
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v9 = v8;
    CLKInterpolateBetweenFloatsClipped();
    v11 = v10;
    CGAffineTransformMakeScale(&v18, v9, v9);
    v17 = v18;
    [viewCopy setTransform:&v17];
    [viewCopy setAlpha:v11];
  }

  if (toViewCopy)
  {
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    v13 = v12;
    CLKInterpolateBetweenFloatsClipped();
    v15 = v14;
    CGAffineTransformMakeScale(&v16, v13, v13);
    v17 = v16;
    [toViewCopy setTransform:&v17];
    [toViewCopy setAlpha:v15];
  }
}

- (void)_updateComplicationsWithColor:(id)color alternateColor:(id)alternateColor isMulticolor:(BOOL)multicolor
{
  alternateColorCopy = alternateColor;
  colorCopy = color;
  [(NTKShibaFaceView *)self setComplicationColor:colorCopy];
  [(NTKShibaFaceView *)self setInterpolatedComplicationColor:colorCopy];

  [(NTKShibaFaceView *)self setAlternateComplicationColor:alternateColorCopy];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_413C;
  v10[3] = &unk_C380;
  multicolorCopy = multicolor;
  [(NTKShibaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v10];
}

- (NTKShibaColorPalette)multicolorPaletteReplacement
{
  multicolorPaletteReplacement = self->_multicolorPaletteReplacement;
  if (!multicolorPaletteReplacement)
  {
    faceColorPalette = [(NTKShibaFaceView *)self faceColorPalette];
    v5 = [faceColorPalette copy];
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

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    palette = [(NTKShibaFaceView *)self palette];
    faceColorPalette = [(NTKShibaFaceView *)self faceColorPalette];
    -[NTKShibaFaceView updateWithPalette:isMulticolor:](self, "updateWithPalette:isMulticolor:", palette, [faceColorPalette isMulticolor]);

    delegate = [(NTKShibaFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 15)
  {
    -[NTKShibaFaceView setCurrentStyle:](self, "setCurrentStyle:", [optionCopy style]);
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

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 15)
  {
    return &off_CBA0;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (!qword_11A08)
  {
    v10 = objc_opt_new();
    v11 = qword_11A08;
    qword_11A08 = v10;
  }

  if (mode == 15)
  {
    v12 = optionCopy;
    v13 = [optionsCopy objectForKeyedSubscript:&off_C9A8];
    pigmentEditOption = [v13 pigmentEditOption];

    v15 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v12 style]);
    identifier = [pigmentEditOption identifier];
    v17 = [NSString stringWithFormat:@"%@-%@", v15, identifier];

    v18 = [qword_11A08 objectForKey:v17];
    if (!v18)
    {
      v18 = [(NTKShibaFaceView *)self _renderDialSwatchImageForStyle:v12 colorOption:pigmentEditOption];
      [qword_11A08 setObject:v18 forKey:v17];
    }
  }

  else
  {
    v20.receiver = self;
    v20.super_class = NTKShibaFaceView;
    v18 = [(NTKShibaFaceView *)&v20 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v18;
}

- (id)_renderDialSwatchImageForStyle:(id)style colorOption:(id)option
{
  optionCopy = option;
  styleCopy = style;
  timeView = [(NTKShibaFaceView *)self timeView];

  if (!timeView)
  {
    [(NTKShibaFaceView *)self _loadSnapshotContentViews];
  }

  v9 = [(NTKShibaFaceView *)self optionForCustomEditMode:15 slot:0];
  [(NTKShibaFaceView *)self setOption:styleCopy forCustomEditMode:15 slot:0];

  [(NTKShibaFaceView *)self setOption:optionCopy forCustomEditMode:10 slot:0];
  timeView2 = [(NTKShibaFaceView *)self timeView];
  [timeView2 bounds];
  v15 = [[UIGraphicsImageRenderer alloc] initWithBounds:{v11, v12, v13, v14}];
  [(NTKShibaFaceView *)self layoutIfNeeded];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_4768;
  v19[3] = &unk_C3A8;
  v20 = timeView2;
  v16 = timeView2;
  v17 = [v15 imageWithActions:v19];
  [(NTKShibaFaceView *)self setOption:v9 forCustomEditMode:15 slot:0];

  return v17;
}

@end