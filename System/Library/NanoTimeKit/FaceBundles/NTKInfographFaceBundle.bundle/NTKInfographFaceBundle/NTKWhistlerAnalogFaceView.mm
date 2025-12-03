@interface NTKWhistlerAnalogFaceView
+ (double)curvedRadiusForDevice:(id)device dark:(BOOL)dark;
- (BOOL)_isComplicationSlotInsideDial:(id)dial;
- (BOOL)_wantsDimWithDesaturationFilterDuringComplicationEditing;
- (BOOL)viewShouldIgnoreTwoPieceImage:(id)image;
- (NTKWhistlerAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_bezelCircularBackgroundFromComplication:(id)complication;
- (double)_bezelLabelCurvedRadiusForColor:(id)color;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_dialTextBackgroundAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (double)_paddedBezelAngularWidth;
- (double)_verticalPaddingForStatusBar;
- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing;
- (id)_bezelTextColorForEditMode:(int64_t)mode colorPalette:(id)palette;
- (id)_keylineViewForComplicationSlot:(id)slot;
- (id)_platterTextColorForEditMode:(int64_t)mode colorPalette:(id)palette;
- (id)_richComplicationViewForView:(id)view;
- (id)colorForView:(id)view accented:(BOOL)accented;
- (id)filterForView:(id)view style:(int64_t)style;
- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (id)filtersForView:(id)view style:(int64_t)style;
- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction;
- (int64_t)_editMode;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyEnteringEditingWithTransitionFraction:(double)fraction;
- (void)_applyExitingEditingWithTransitionFraction:(double)fraction;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette applyHandsTransition:(BOOL)transition;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_configureUIOnColorChange;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupDialView;
- (void)_unloadSnapshotContentViews;
- (void)_updateDialTicksForBezelText;
- (void)bezelViewDidBecomeInteractive:(id)interactive;
- (void)bezelViewDidEndInteractive:(id)interactive;
@end

@implementation NTKWhistlerAnalogFaceView

- (NTKWhistlerAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v20.receiver = self;
  v20.super_class = NTKWhistlerAnalogFaceView;
  v9 = [(NTKWhistlerAnalogFaceView *)&v20 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    sub_43A4(v10, deviceCopy);
    v12 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:v11];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v12;

    v14 = [[NTKWhistlerAnalogColorPalette alloc] initWithDevice:deviceCopy];
    colorPalette = v9->_colorPalette;
    v9->_colorPalette = v14;

    v16 = objc_alloc_init(NTKFaceColorPalette);
    blackPalette = v9->_blackPalette;
    v9->_blackPalette = v16;

    v18 = [NTKPigmentEditOption pigmentNamed:ntk_seasons_black];
    [(NTKFaceColorPalette *)v9->_blackPalette setPigmentEditOption:v18];
  }

  return v9;
}

+ (double)curvedRadiusForDevice:(id)device dark:(BOOL)dark
{
  darkCopy = dark;
  result = sub_43A4(self, device);
  if (darkCopy)
  {
    return v6;
  }

  return result;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKWhistlerAnalogFaceView *)self _setupDialView];
  [(NTKWhistlerAnalogFaceView *)self _configureUIOnColorChange];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKCircularAnalogDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;
}

- (void)_configureTimeView:(id)view
{
  v4.receiver = self;
  v4.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v4 _configureTimeView:view];
  [(NTKWhistlerAnalogFaceView *)self _configureUIOnColorChange];
}

- (void)_loadLayoutRules
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  device = [(NTKWhistlerAnalogFaceView *)self device];
  sub_43A4(device, device);
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v4];
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:viewCopy forSlot:slotCopy faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = viewCopy;
    if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
    {
      if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
      {
        _editMode = [(NTKWhistlerAnalogFaceView *)self _editMode];
        faceColorPalette = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
        [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:_editMode colorPalette:faceColorPalette];
      }

      else
      {
        colorPalette = self->_colorPalette;
        faceColorPalette = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
        [(NTKWhistlerAnalogColorPalette *)colorPalette complicationForegroundColorPalette:faceColorPalette];
      }
      v11 = ;
      [v7 setForegroundColor:v11];
    }

    if (![(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
    {
      goto LABEL_13;
    }

    faceColorPalette2 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    if ([faceColorPalette2 isWhiteColor])
    {
    }

    else
    {
      faceColorPalette3 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      isBlackColor = [faceColorPalette3 isBlackColor];

      if ((isBlackColor & 1) == 0)
      {
        [v7 updateMonochromeColor];
        goto LABEL_13;
      }
    }

    [v7 transitionToMonochromeWithFraction:0.0];
LABEL_13:
    faceColorPalette4 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v16 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewThemeFromFaceColorPalette:faceColorPalette4];

    [v7 transitThemeFromTheme:v16 toTheme:v16 fraction:1.0];
  }

  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView])
  {
    v17 = viewCopy;
    _editMode2 = [(NTKWhistlerAnalogFaceView *)self _editMode];
    faceColorPalette5 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v20 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:_editMode2 colorPalette:faceColorPalette5];
    [v17 setBezelTextColor:v20];

    [v17 setBezelTextDelegate:self];
  }

  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView])
  {
    [viewCopy setBezelTextRadius:self->_bezelLabelCurvedRadius];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = viewCopy;
    v22 = +[UIColor whiteColor];
    [v21 setForegroundColor:v22];

    v23 = CLKUIDefaultComplicationBackgroundColor();
    [v21 setPlatterColor:v23];

    [v21 setUseRoundedFontDesign:1];
  }

  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    v24 = viewCopy;
    v25 = +[UIColor blackColor];
    [v24 setPlatterColor:v25];
  }
}

- (double)_verticalPaddingForStatusBar
{
  device = [(NTKWhistlerAnalogFaceView *)self device];
  sub_43A4(device, device);
  v4 = v3;

  return v4;
}

- (id)_keylineViewForComplicationSlot:(id)slot
{
  slotCopy = slot;
  v5 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineViewForComplicationSlot:slotCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKWhistlerAnalogFaceView;
    v7 = [(NTKWhistlerAnalogFaceView *)&v10 _keylineViewForComplicationSlot:slotCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_prepareForEditing
{
  [(NTKWhistlerAnalogFaceView *)self _updateDialTicksForBezelText];
  [(NTKCircularAnalogDialView *)self->_dialView prepareForEdit];
  complicationContainerView = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
  layer = [complicationContainerView layer];
  [layer setAllowsGroupOpacity:1];
}

- (void)_cleanupAfterEditing
{
  [(NTKWhistlerAnalogFaceView *)self _updateDialTicksForBezelText];
  [(NTKCircularAnalogDialView *)self->_dialView cleanupAfterEdit];
  complicationContainerView = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
  layer = [complicationContainerView layer];
  [layer setAllowsGroupOpacity:0];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v7 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette:option];
    [(NTKWhistlerAnalogFaceView *)self updateWithColorPalette:v7];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v10 = [(NTKWhistlerAnalogFaceView *)self interpolatedColorPalette:option];
    fromPalette = [v10 fromPalette];

    interpolatedColorPalette = [(NTKWhistlerAnalogFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette toPalette];

    [(NTKWhistlerAnalogFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:toPalette toColorPalette:fraction];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  timeView = [(NTKWhistlerAnalogFaceView *)self timeView];
  [(NTKWhistlerAnalogFaceView *)self _handAlphaForEditMode:mode];
  [(NTKWhistlerAnalogFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  contentView = [(NTKWhistlerAnalogFaceView *)self contentView];
  [(NTKWhistlerAnalogFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKWhistlerAnalogFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [contentView setAlpha:?];

  v11 = [(NTKWhistlerAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  display = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
    {
      v12 = display;
      faceColorPalette = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      v14 = [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:mode colorPalette:faceColorPalette];
      faceColorPalette2 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:editMode colorPalette:faceColorPalette2];
    }

    else
    {
      colorPalette = self->_colorPalette;
      v17 = display;
      faceColorPalette = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      v14 = [(NTKWhistlerAnalogColorPalette *)colorPalette complicationForegroundColorPalette:faceColorPalette];
      v18 = self->_colorPalette;
      faceColorPalette2 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      [(NTKWhistlerAnalogColorPalette *)v18 complicationForegroundColorPalette:faceColorPalette2];
    }
    v19 = ;
    v20 = NTKInterpolateBetweenColors();

    [display setForegroundColor:v20];
  }

  if ([display conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView])
  {
    v21 = display;
    faceColorPalette3 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v23 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:mode colorPalette:faceColorPalette3];
    faceColorPalette4 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v25 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:editMode colorPalette:faceColorPalette4];
    v26 = NTKInterpolateBetweenColors();

    [v21 setBezelTextColor:v26];
  }

  if (mode || !editMode)
  {
    if (mode && !editMode)
    {
      [(NTKWhistlerAnalogFaceView *)self _applyExitingEditingWithTransitionFraction:fraction];
    }
  }

  else
  {
    [(NTKWhistlerAnalogFaceView *)self _applyEnteringEditingWithTransitionFraction:fraction];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v19.receiver = self;
  v19.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v19 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v7, v7);
    contentView = [(NTKWhistlerAnalogFaceView *)self contentView];
    v17 = v18;
    [contentView setTransform:&v17];

    timeView = [(NTKWhistlerAnalogFaceView *)self timeView];
    v17 = v18;
    [timeView setTransform:&v17];

    complicationContainerView = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
    v17 = v18;
    [complicationContainerView setTransform:&v17];

    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    [(NTKWhistlerAnalogFaceView *)self _contentAlphaForEditMode:10];
    v14 = v12 * v13;
    contentView2 = [(NTKWhistlerAnalogFaceView *)self contentView];
    [contentView2 setAlpha:v14];

    complicationContainerView2 = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
    [complicationContainerView2 setAlpha:v14];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    contentView = [(NTKWhistlerAnalogFaceView *)self contentView];
    v11 = v12;
    [contentView setTransform:&v11];

    timeView = [(NTKWhistlerAnalogFaceView *)self timeView];
    v11 = v12;
    [timeView setTransform:&v11];

    complicationContainerView = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
    v11 = v12;
    [complicationContainerView setTransform:&v11];
  }
}

- (void)_applyEnteringEditingWithTransitionFraction:(double)fraction
{
  dialView = self->_dialView;
  [(NTKWhistlerAnalogFaceView *)self _paddedBezelAngularWidth];

  [NTKCircularAnalogDialView transitInvisibleTicksAlphaWithBezelTextWidthInRadius:"transitInvisibleTicksAlphaWithBezelTextWidthInRadius:invisbleTicksAlpha:" invisbleTicksAlpha:?];
}

- (void)_applyExitingEditingWithTransitionFraction:(double)fraction
{
  dialView = self->_dialView;
  [(NTKWhistlerAnalogFaceView *)self _paddedBezelAngularWidth];

  [NTKCircularAnalogDialView transitInvisibleTicksAlphaWithBezelTextWidthInRadius:"transitInvisibleTicksAlphaWithBezelTextWidthInRadius:invisbleTicksAlpha:" invisbleTicksAlpha:?];
}

- (id)filtersForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  v7 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:viewCopy];
  if ([v7 family] == &dword_8)
  {
    style = CLKUIAssociatedNonAccentStyle();
  }

  v10.receiver = self;
  v10.super_class = NTKWhistlerAnalogFaceView;
  v8 = [(NTKWhistlerAnalogFaceView *)&v10 filtersForView:viewCopy style:style];

  return v8;
}

- (id)filtersForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  v9 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:viewCopy];
  if ([v9 family] == &dword_8)
  {
    style = CLKUIAssociatedNonAccentStyle();
  }

  v12.receiver = self;
  v12.super_class = NTKWhistlerAnalogFaceView;
  v10 = [(NTKWhistlerAnalogFaceView *)&v12 filtersForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style fraction:(double)fraction
{
  viewCopy = view;
  v9 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:viewCopy];
  if ([v9 family] == &dword_8)
  {
    style = CLKUIAssociatedNonAccentStyle();
  }

  v12.receiver = self;
  v12.super_class = NTKWhistlerAnalogFaceView;
  v10 = [(NTKWhistlerAnalogFaceView *)&v12 filterForView:viewCopy style:style fraction:fraction];

  return v10;
}

- (id)filterForView:(id)view style:(int64_t)style
{
  viewCopy = view;
  v7 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:viewCopy];
  if ([v7 family] == &dword_8)
  {
    style = CLKUIAssociatedNonAccentStyle();
  }

  v10.receiver = self;
  v10.super_class = NTKWhistlerAnalogFaceView;
  v8 = [(NTKWhistlerAnalogFaceView *)&v10 filterForView:viewCopy style:style];

  return v8;
}

- (id)colorForView:(id)view accented:(BOOL)accented
{
  accentedCopy = accented;
  viewCopy = view;
  v7 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:viewCopy];
  v8 = [v7 family] != &dword_8 && accentedCopy;
  v11.receiver = self;
  v11.super_class = NTKWhistlerAnalogFaceView;
  v9 = [(NTKWhistlerAnalogFaceView *)&v11 colorForView:viewCopy accented:v8];

  return v9;
}

- (BOOL)viewShouldIgnoreTwoPieceImage:(id)image
{
  v3 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:image];
  v4 = [v3 family] == &dword_8;

  return v4;
}

- (id)_richComplicationViewForView:(id)view
{
  viewCopy = view;
  if (viewCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = viewCopy;
    }

    else
    {
      superview = [viewCopy superview];
      v5 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:superview];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isComplicationSlotInsideDial:(id)dial
{
  dialCopy = dial;
  if ([dialCopy isEqualToString:NTKComplicationSlot1] & 1) != 0 || (objc_msgSend(dialCopy, "isEqualToString:", NTKComplicationSlot2) & 1) != 0 || (objc_msgSend(dialCopy, "isEqualToString:", NTKComplicationSlot3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [dialCopy isEqualToString:NTKComplicationSlotBezel];
  }

  return v4;
}

- (BOOL)_wantsDimWithDesaturationFilterDuringComplicationEditing
{
  faceColorPalette = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
  isWhiteColor = [faceColorPalette isWhiteColor];

  return isWhiteColor;
}

- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing
{
  dialView = self->_dialView;
  v2 = [NSArray arrayWithObjects:&dialView count:1];

  return v2;
}

- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette applyHandsTransition:(BOOL)transition
{
  transitionCopy = transition;
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  [(NTKCircularAnalogDialView *)self->_dialView applyColorTransitionFraction:paletteCopy fromFaceColorPalette:colorPaletteCopy toFaceColorPalette:fraction];
  v51 = colorPaletteCopy;
  if (transitionCopy)
  {
    v12 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handStrokeColorForColorPalette:paletteCopy];
    v13 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handStrokeColorForColorPalette:colorPaletteCopy];
    v14 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handFillColorForColorPalette:paletteCopy];
    v15 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handFillColorForColorPalette:colorPaletteCopy];
    v48 = v13;
    v49 = v12;
    v47 = v14;
    if (([paletteCopy isWhiteColor] & 1) != 0 || objc_msgSend(colorPaletteCopy, "isWhiteColor"))
    {
      timeView = [(NTKWhistlerAnalogFaceView *)self timeView];
      [timeView applyHourMinuteHandsTransitionFraction:v12 fromStrokeColor:v14 fromFillColor:v13 toStrokeColor:v15 toFillColor:fraction];
    }

    else
    {
      timeView = NTKInterpolateBetweenColors();
      v17 = NTKInterpolateBetweenColors();
      timeView2 = [(NTKWhistlerAnalogFaceView *)self timeView];
      [timeView2 applyHourMinuteHandsStrokeColor:timeView fillColor:v17];

      colorPaletteCopy = v51;
    }

    v19 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette secondHandColorForColorPalette:paletteCopy];
    v20 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette secondHandColorForColorPalette:colorPaletteCopy];
    v21 = NTKInterpolateBetweenColors();
    timeView3 = [(NTKWhistlerAnalogFaceView *)self timeView];
    [timeView3 applySecondHandColor:v21];

    timeView4 = [(NTKWhistlerAnalogFaceView *)self timeView];
    secondHandView = [timeView4 secondHandView];
    v25 = +[UIColor blackColor];
    [secondHandView setHandDotColor:v25];

    colorPaletteCopy = v51;
  }

  v26 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:paletteCopy];
  v27 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:colorPaletteCopy];
  v50 = v26;
  v28 = NTKInterpolateBetweenColors();
  [(NTKWhistlerAnalogFaceView *)self setInterpolatedComplicationColor:v28];
  if ([paletteCopy isBlackColor])
  {
    isWhiteColor = 1;
  }

  else
  {
    isWhiteColor = [paletteCopy isWhiteColor];
  }

  if ([colorPaletteCopy isBlackColor])
  {
    isWhiteColor2 = 1;
  }

  else
  {
    isWhiteColor2 = [colorPaletteCopy isWhiteColor];
  }

  [(NTKWhistlerAnalogFaceView *)self setComplicationColor:v28];
  if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
  {
    fractionCopy = 0.0;
    if ((isWhiteColor & isWhiteColor2) == 0)
    {
      fractionCopy = fraction;
    }

    v58[1] = 3221225472;
    v58[0] = _NSConcreteStackBlock;
    v58[2] = sub_3550;
    v58[3] = &unk_C318;
    v58[4] = self;
    v59 = isWhiteColor ^ isWhiteColor2;
    if (!(isWhiteColor | isWhiteColor2 ^ 1))
    {
      fractionCopy = 1.0 - fraction;
    }

    v60 = isWhiteColor & isWhiteColor2;
    *&v58[5] = fractionCopy;
    [(NTKWhistlerAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v58];
  }

  v32 = [(NTKWhistlerAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  display = [v32 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
    {
      v35 = [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:paletteCopy];
      [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:colorPaletteCopy];
    }

    else
    {
      v35 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:paletteCopy];
      [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:colorPaletteCopy];
    }
    v36 = ;
    v37 = NTKInterpolateBetweenColors();
    display2 = [v32 display];
    [display2 setForegroundColor:v37];

    colorPaletteCopy = v51;
  }

  [(NTKWhistlerAnalogFaceView *)self _bezelLabelCurvedRadiusForColor:paletteCopy];
  [(NTKWhistlerAnalogFaceView *)self _bezelLabelCurvedRadiusForColor:colorPaletteCopy];
  CLKInterpolateBetweenFloatsClipped();
  self->_bezelLabelCurvedRadius = v39;
  display3 = [v32 display];
  v41 = [display3 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView];

  if (v41)
  {
    display4 = [v32 display];
    v43 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:paletteCopy];
    v44 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:colorPaletteCopy];
    v45 = NTKInterpolateBetweenColors();
    if (objc_opt_respondsToSelector())
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_3618;
      v55[3] = &unk_C340;
      v56 = v45;
      selfCopy = self;
      [display4 updatePropertiesAsGroupWithHandler:v55];
    }

    else
    {
      [display4 setBezelTextColor:v45];
      [display4 setBezelTextRadius:self->_bezelLabelCurvedRadius];
    }

    colorPaletteCopy = v51;
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_3680;
  v52[3] = &unk_C368;
  v52[4] = self;
  v53 = paletteCopy;
  fractionCopy2 = fraction;
  v46 = paletteCopy;
  [(NTKWhistlerAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v52];
}

- (void)_configureUIOnColorChange
{
  faceColorPalette = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
  faceColorPalette2 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
  [(NTKWhistlerAnalogFaceView *)self _applyTransitionFraction:faceColorPalette fromColorPalette:faceColorPalette2 toColorPalette:0.0];
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  if (mode)
  {
    v3 = mode == 10;
  }

  else
  {
    v3 = 1;
  }

  result = 0.1;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  if (mode)
  {
    v3 = mode == 10;
  }

  else
  {
    v3 = 1;
  }

  result = 0.1;
  if (v3)
  {
    return 1.0;
  }

  return result;
}

- (double)_dialTextBackgroundAlphaForEditMode:(int64_t)mode
{
  result = 0.0;
  if (mode == 10)
  {
    return 1.0;
  }

  return result;
}

- (int64_t)_editMode
{
  [(NTKWhistlerAnalogFaceView *)self editModeTransitionFraction];
  if (v3 <= 0.5)
  {

    return [(NTKWhistlerAnalogFaceView *)self fromEditMode];
  }

  else
  {

    return [(NTKWhistlerAnalogFaceView *)self toEditMode];
  }
}

- (id)_bezelTextColorForEditMode:(int64_t)mode colorPalette:(id)palette
{
  paletteCopy = palette;
  if (mode == 10)
  {
    v7 = +[UIColor clearColor];
  }

  else
  {
    if (mode == 1)
    {
      +[UIColor whiteColor];
    }

    else
    {
      [(NTKWhistlerAnalogColorPalette *)self->_colorPalette bezelTextColorForColorPalette:paletteCopy];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (id)_platterTextColorForEditMode:(int64_t)mode colorPalette:(id)palette
{
  if (mode == 1)
  {
    [UIColor whiteColor:1];
  }

  else
  {
    [(NTKWhistlerAnalogColorPalette *)self->_colorPalette platterTextColorForColorPalette:palette];
  }
  v4 = ;

  return v4;
}

- (double)_bezelCircularBackgroundFromComplication:(id)complication
{
  complicationType = [complication complicationType];
  result = 0.0;
  if (complicationType > 0x2D || ((1 << complicationType) & 0x200000004012) == 0)
  {
    return 1.0;
  }

  return result;
}

- (double)_bezelLabelCurvedRadiusForColor:(id)color
{
  colorCopy = color;
  device = [(NTKWhistlerAnalogFaceView *)self device];
  v6 = sub_43A4(device, device);
  v8 = v7;

  LODWORD(device) = [colorCopy isWhiteColor];
  if (device)
  {
    return v6;
  }

  else
  {
    return v8;
  }
}

- (void)_updateDialTicksForBezelText
{
  if (([(NTKWhistlerAnalogFaceView *)self editing]& 1) == 0)
  {
    dialView = self->_dialView;
    [(NTKWhistlerAnalogFaceView *)self _paddedBezelAngularWidth];
    v5 = v4;
    [(NTKWhistlerAnalogFaceView *)self _paddedBezelAngularWidth];

    [(NTKCircularAnalogDialView *)dialView transitTicksWithInitialBezelTextWidthInRadius:v5 finalBezelTextWidthInRadius:v6 fraction:1.0];
  }
}

- (double)_paddedBezelAngularWidth
{
  v3 = [(NTKWhistlerAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  display = [v3 display];
  v5 = [display conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView];

  v6 = 0.0;
  if (v5)
  {
    display2 = [v3 display];
    [display2 bezelTextAngularWidth];
    v6 = v8;
    if (v8 > 0.0)
    {
      device = [(NTKWhistlerAnalogFaceView *)self device];
      NTKWhistlerBezelCircularViewDefaultAngularWidthPadding();
      v6 = v6 + v10;
    }
  }

  return v6;
}

- (void)bezelViewDidBecomeInteractive:(id)interactive
{
  interactiveCopy = interactive;
  timeView = [(NTKWhistlerAnalogFaceView *)self timeView];
  layer = [timeView layer];
  [layer setAllowsGroupOpacity:1];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3E6C;
  v8[3] = &unk_C3E0;
  v8[4] = self;
  v9 = interactiveCopy;
  v7 = interactiveCopy;
  [UIView animateWithDuration:4 delay:v8 options:&stru_C420 animations:0.3 completion:0.0];
}

- (void)bezelViewDidEndInteractive:(id)interactive
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_4070;
  v4[3] = &unk_C488;
  v4[4] = self;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_40EC;
  v3[3] = &unk_C4B0;
  v3[4] = self;
  [UIView animateWithDuration:4 delay:v4 options:v3 animations:0.3 completion:0.0];
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKWhistlerAnalogFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKWhistlerAnalogFaceView *)self switcherSnapshotView];
    [(NTKWhistlerAnalogFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_setupDialView
{
  contentView = [(NTKWhistlerAnalogFaceView *)self contentView];
  device = [(NTKWhistlerAnalogFaceView *)self device];
  sub_43A4(device, device);

  [contentView bounds];
  device2 = [(NTKWhistlerAnalogFaceView *)self device];
  CLKSizeCenteredInRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [NTKCircularAnalogDialView alloc];
  device3 = [(NTKWhistlerAnalogFaceView *)self device];
  v15 = [v13 initWithFrame:device3 forDevice:{v6, v8, v10, v12}];
  dialView = self->_dialView;
  self->_dialView = v15;

  [contentView addSubview:self->_dialView];
}

@end