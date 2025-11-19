@interface NTKWhistlerAnalogFaceView
+ (double)curvedRadiusForDevice:(id)a3 dark:(BOOL)a4;
- (BOOL)_isComplicationSlotInsideDial:(id)a3;
- (BOOL)_wantsDimWithDesaturationFilterDuringComplicationEditing;
- (BOOL)viewShouldIgnoreTwoPieceImage:(id)a3;
- (NTKWhistlerAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_bezelCircularBackgroundFromComplication:(id)a3;
- (double)_bezelLabelCurvedRadiusForColor:(id)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_dialTextBackgroundAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (double)_paddedBezelAngularWidth;
- (double)_verticalPaddingForStatusBar;
- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing;
- (id)_bezelTextColorForEditMode:(int64_t)a3 colorPalette:(id)a4;
- (id)_keylineViewForComplicationSlot:(id)a3;
- (id)_platterTextColorForEditMode:(int64_t)a3 colorPalette:(id)a4;
- (id)_richComplicationViewForView:(id)a3;
- (id)colorForView:(id)a3 accented:(BOOL)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4;
- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (id)filtersForView:(id)a3 style:(int64_t)a4;
- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5;
- (int64_t)_editMode;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyEnteringEditingWithTransitionFraction:(double)a3;
- (void)_applyExitingEditingWithTransitionFraction:(double)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 applyHandsTransition:(BOOL)a6;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_configureUIOnColorChange;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupDialView;
- (void)_unloadSnapshotContentViews;
- (void)_updateDialTicksForBezelText;
- (void)bezelViewDidBecomeInteractive:(id)a3;
- (void)bezelViewDidEndInteractive:(id)a3;
@end

@implementation NTKWhistlerAnalogFaceView

- (NTKWhistlerAnalogFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v20.receiver = self;
  v20.super_class = NTKWhistlerAnalogFaceView;
  v9 = [(NTKWhistlerAnalogFaceView *)&v20 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    sub_43A4(v10, v8);
    v12 = [v10 initWithFaceView:v9 dialDiameter:v8 device:v11];
    faceViewComplicationFactory = v9->_faceViewComplicationFactory;
    v9->_faceViewComplicationFactory = v12;

    v14 = [[NTKWhistlerAnalogColorPalette alloc] initWithDevice:v8];
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

+ (double)curvedRadiusForDevice:(id)a3 dark:(BOOL)a4
{
  v4 = a4;
  result = sub_43A4(a1, a3);
  if (v4)
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

- (void)_configureTimeView:(id)a3
{
  v4.receiver = self;
  v4.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v4 _configureTimeView:a3];
  [(NTKWhistlerAnalogFaceView *)self _configureUIOnColorChange];
}

- (void)_loadLayoutRules
{
  faceViewComplicationFactory = self->_faceViewComplicationFactory;
  v5 = [(NTKWhistlerAnalogFaceView *)self device];
  sub_43A4(v5, v5);
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)faceViewComplicationFactory loadLayoutRulesForFaceView:self dialDiameter:v4];
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v26 = a3;
  v6 = a4;
  [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory configureComplicationView:v26 forSlot:v6 faceView:self];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v26;
    if ([v6 isEqualToString:NTKComplicationSlotBezel])
    {
      if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
      {
        v8 = [(NTKWhistlerAnalogFaceView *)self _editMode];
        v9 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
        [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:v8 colorPalette:v9];
      }

      else
      {
        colorPalette = self->_colorPalette;
        v9 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
        [(NTKWhistlerAnalogColorPalette *)colorPalette complicationForegroundColorPalette:v9];
      }
      v11 = ;
      [v7 setForegroundColor:v11];
    }

    if (![(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
    {
      goto LABEL_13;
    }

    v12 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    if ([v12 isWhiteColor])
    {
    }

    else
    {
      v13 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      v14 = [v13 isBlackColor];

      if ((v14 & 1) == 0)
      {
        [v7 updateMonochromeColor];
        goto LABEL_13;
      }
    }

    [v7 transitionToMonochromeWithFraction:0.0];
LABEL_13:
    v15 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v16 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewThemeFromFaceColorPalette:v15];

    [v7 transitThemeFromTheme:v16 toTheme:v16 fraction:1.0];
  }

  if ([v26 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView])
  {
    v17 = v26;
    v18 = [(NTKWhistlerAnalogFaceView *)self _editMode];
    v19 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v20 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:v18 colorPalette:v19];
    [v17 setBezelTextColor:v20];

    [v17 setBezelTextDelegate:self];
  }

  if ([v26 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView])
  {
    [v26 setBezelTextRadius:self->_bezelLabelCurvedRadius];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v21 = v26;
    v22 = +[UIColor whiteColor];
    [v21 setForegroundColor:v22];

    v23 = CLKUIDefaultComplicationBackgroundColor();
    [v21 setPlatterColor:v23];

    [v21 setUseRoundedFontDesign:1];
  }

  if ([v26 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
  {
    v24 = v26;
    v25 = +[UIColor blackColor];
    [v24 setPlatterColor:v25];
  }
}

- (double)_verticalPaddingForStatusBar
{
  v2 = [(NTKWhistlerAnalogFaceView *)self device];
  sub_43A4(v2, v2);
  v4 = v3;

  return v4;
}

- (id)_keylineViewForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKWhistlerAnalogFaceViewComplicationFactory *)self->_faceViewComplicationFactory keylineViewForComplicationSlot:v4];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v10.receiver = self;
    v10.super_class = NTKWhistlerAnalogFaceView;
    v7 = [(NTKWhistlerAnalogFaceView *)&v10 _keylineViewForComplicationSlot:v4];
  }

  v8 = v7;

  return v8;
}

- (void)_prepareForEditing
{
  [(NTKWhistlerAnalogFaceView *)self _updateDialTicksForBezelText];
  [(NTKCircularAnalogDialView *)self->_dialView prepareForEdit];
  v4 = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
  v3 = [v4 layer];
  [v3 setAllowsGroupOpacity:1];
}

- (void)_cleanupAfterEditing
{
  [(NTKWhistlerAnalogFaceView *)self _updateDialTicksForBezelText];
  [(NTKCircularAnalogDialView *)self->_dialView cleanupAfterEdit];
  v4 = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
  v3 = [v4 layer];
  [v3 setAllowsGroupOpacity:0];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 10)
  {
    v7 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette:a3];
    [(NTKWhistlerAnalogFaceView *)self updateWithColorPalette:v7];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v10 = [(NTKWhistlerAnalogFaceView *)self interpolatedColorPalette:a4];
    v13 = [v10 fromPalette];

    v11 = [(NTKWhistlerAnalogFaceView *)self interpolatedColorPalette];
    v12 = [v11 toPalette];

    [(NTKWhistlerAnalogFaceView *)self _applyTransitionFraction:v13 fromColorPalette:v12 toColorPalette:a3];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v9 = [(NTKWhistlerAnalogFaceView *)self timeView];
  [(NTKWhistlerAnalogFaceView *)self _handAlphaForEditMode:a4];
  [(NTKWhistlerAnalogFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v9 setAlpha:?];

  v10 = [(NTKWhistlerAnalogFaceView *)self contentView];
  [(NTKWhistlerAnalogFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKWhistlerAnalogFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v10 setAlpha:?];

  v11 = [(NTKWhistlerAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  v27 = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
    {
      v12 = v27;
      v13 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      v14 = [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:a4 colorPalette:v13];
      v15 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:a5 colorPalette:v15];
    }

    else
    {
      colorPalette = self->_colorPalette;
      v17 = v27;
      v13 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      v14 = [(NTKWhistlerAnalogColorPalette *)colorPalette complicationForegroundColorPalette:v13];
      v18 = self->_colorPalette;
      v15 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
      [(NTKWhistlerAnalogColorPalette *)v18 complicationForegroundColorPalette:v15];
    }
    v19 = ;
    v20 = NTKInterpolateBetweenColors();

    [v27 setForegroundColor:v20];
  }

  if ([v27 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView])
  {
    v21 = v27;
    v22 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v23 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:a4 colorPalette:v22];
    v24 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
    v25 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:a5 colorPalette:v24];
    v26 = NTKInterpolateBetweenColors();

    [v21 setBezelTextColor:v26];
  }

  if (a4 || !a5)
  {
    if (a4 && !a5)
    {
      [(NTKWhistlerAnalogFaceView *)self _applyExitingEditingWithTransitionFraction:a3];
    }
  }

  else
  {
    [(NTKWhistlerAnalogFaceView *)self _applyEnteringEditingWithTransitionFraction:a3];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v19.receiver = self;
  v19.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v19 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v7, v7);
    v8 = [(NTKWhistlerAnalogFaceView *)self contentView];
    v17 = v18;
    [v8 setTransform:&v17];

    v9 = [(NTKWhistlerAnalogFaceView *)self timeView];
    v17 = v18;
    [v9 setTransform:&v17];

    v10 = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
    v17 = v18;
    [v10 setTransform:&v17];

    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    [(NTKWhistlerAnalogFaceView *)self _contentAlphaForEditMode:10];
    v14 = v12 * v13;
    v15 = [(NTKWhistlerAnalogFaceView *)self contentView];
    [v15 setAlpha:v14];

    v16 = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
    [v16 setAlpha:v14];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKWhistlerAnalogFaceView;
  [(NTKWhistlerAnalogFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 10)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    v8 = [(NTKWhistlerAnalogFaceView *)self contentView];
    v11 = v12;
    [v8 setTransform:&v11];

    v9 = [(NTKWhistlerAnalogFaceView *)self timeView];
    v11 = v12;
    [v9 setTransform:&v11];

    v10 = [(NTKWhistlerAnalogFaceView *)self complicationContainerView];
    v11 = v12;
    [v10 setTransform:&v11];
  }
}

- (void)_applyEnteringEditingWithTransitionFraction:(double)a3
{
  dialView = self->_dialView;
  [(NTKWhistlerAnalogFaceView *)self _paddedBezelAngularWidth];

  [NTKCircularAnalogDialView transitInvisibleTicksAlphaWithBezelTextWidthInRadius:"transitInvisibleTicksAlphaWithBezelTextWidthInRadius:invisbleTicksAlpha:" invisbleTicksAlpha:?];
}

- (void)_applyExitingEditingWithTransitionFraction:(double)a3
{
  dialView = self->_dialView;
  [(NTKWhistlerAnalogFaceView *)self _paddedBezelAngularWidth];

  [NTKCircularAnalogDialView transitInvisibleTicksAlphaWithBezelTextWidthInRadius:"transitInvisibleTicksAlphaWithBezelTextWidthInRadius:invisbleTicksAlpha:" invisbleTicksAlpha:?];
}

- (id)filtersForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:v6];
  if ([v7 family] == &dword_8)
  {
    a4 = CLKUIAssociatedNonAccentStyle();
  }

  v10.receiver = self;
  v10.super_class = NTKWhistlerAnalogFaceView;
  v8 = [(NTKWhistlerAnalogFaceView *)&v10 filtersForView:v6 style:a4];

  return v8;
}

- (id)filtersForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = a3;
  v9 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:v8];
  if ([v9 family] == &dword_8)
  {
    a4 = CLKUIAssociatedNonAccentStyle();
  }

  v12.receiver = self;
  v12.super_class = NTKWhistlerAnalogFaceView;
  v10 = [(NTKWhistlerAnalogFaceView *)&v12 filtersForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4 fraction:(double)a5
{
  v8 = a3;
  v9 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:v8];
  if ([v9 family] == &dword_8)
  {
    a4 = CLKUIAssociatedNonAccentStyle();
  }

  v12.receiver = self;
  v12.super_class = NTKWhistlerAnalogFaceView;
  v10 = [(NTKWhistlerAnalogFaceView *)&v12 filterForView:v8 style:a4 fraction:a5];

  return v10;
}

- (id)filterForView:(id)a3 style:(int64_t)a4
{
  v6 = a3;
  v7 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:v6];
  if ([v7 family] == &dword_8)
  {
    a4 = CLKUIAssociatedNonAccentStyle();
  }

  v10.receiver = self;
  v10.super_class = NTKWhistlerAnalogFaceView;
  v8 = [(NTKWhistlerAnalogFaceView *)&v10 filterForView:v6 style:a4];

  return v8;
}

- (id)colorForView:(id)a3 accented:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:v6];
  v8 = [v7 family] != &dword_8 && v4;
  v11.receiver = self;
  v11.super_class = NTKWhistlerAnalogFaceView;
  v9 = [(NTKWhistlerAnalogFaceView *)&v11 colorForView:v6 accented:v8];

  return v9;
}

- (BOOL)viewShouldIgnoreTwoPieceImage:(id)a3
{
  v3 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:a3];
  v4 = [v3 family] == &dword_8;

  return v4;
}

- (id)_richComplicationViewForView:(id)a3
{
  v4 = a3;
  if (v4)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
    }

    else
    {
      v6 = [v4 superview];
      v5 = [(NTKWhistlerAnalogFaceView *)self _richComplicationViewForView:v6];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isComplicationSlotInsideDial:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlot1] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", NTKComplicationSlot2) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", NTKComplicationSlot3))
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:NTKComplicationSlotBezel];
  }

  return v4;
}

- (BOOL)_wantsDimWithDesaturationFilterDuringComplicationEditing
{
  v2 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
  v3 = [v2 isWhiteColor];

  return v3;
}

- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing
{
  dialView = self->_dialView;
  v2 = [NSArray arrayWithObjects:&dialView count:1];

  return v2;
}

- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5 applyHandsTransition:(BOOL)a6
{
  v6 = a6;
  v10 = a4;
  v11 = a5;
  [(NTKCircularAnalogDialView *)self->_dialView applyColorTransitionFraction:v10 fromFaceColorPalette:v11 toFaceColorPalette:a3];
  v51 = v11;
  if (v6)
  {
    v12 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handStrokeColorForColorPalette:v10];
    v13 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handStrokeColorForColorPalette:v11];
    v14 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handFillColorForColorPalette:v10];
    v15 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette handFillColorForColorPalette:v11];
    v48 = v13;
    v49 = v12;
    v47 = v14;
    if (([v10 isWhiteColor] & 1) != 0 || objc_msgSend(v11, "isWhiteColor"))
    {
      v16 = [(NTKWhistlerAnalogFaceView *)self timeView];
      [v16 applyHourMinuteHandsTransitionFraction:v12 fromStrokeColor:v14 fromFillColor:v13 toStrokeColor:v15 toFillColor:a3];
    }

    else
    {
      v16 = NTKInterpolateBetweenColors();
      v17 = NTKInterpolateBetweenColors();
      v18 = [(NTKWhistlerAnalogFaceView *)self timeView];
      [v18 applyHourMinuteHandsStrokeColor:v16 fillColor:v17];

      v11 = v51;
    }

    v19 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette secondHandColorForColorPalette:v10];
    v20 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette secondHandColorForColorPalette:v11];
    v21 = NTKInterpolateBetweenColors();
    v22 = [(NTKWhistlerAnalogFaceView *)self timeView];
    [v22 applySecondHandColor:v21];

    v23 = [(NTKWhistlerAnalogFaceView *)self timeView];
    v24 = [v23 secondHandView];
    v25 = +[UIColor blackColor];
    [v24 setHandDotColor:v25];

    v11 = v51;
  }

  v26 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:v10];
  v27 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:v11];
  v50 = v26;
  v28 = NTKInterpolateBetweenColors();
  [(NTKWhistlerAnalogFaceView *)self setInterpolatedComplicationColor:v28];
  if ([v10 isBlackColor])
  {
    v29 = 1;
  }

  else
  {
    v29 = [v10 isWhiteColor];
  }

  if ([v11 isBlackColor])
  {
    v30 = 1;
  }

  else
  {
    v30 = [v11 isWhiteColor];
  }

  [(NTKWhistlerAnalogFaceView *)self setComplicationColor:v28];
  if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
  {
    v31 = 0.0;
    if ((v29 & v30) == 0)
    {
      v31 = a3;
    }

    v58[1] = 3221225472;
    v58[0] = _NSConcreteStackBlock;
    v58[2] = sub_3550;
    v58[3] = &unk_C318;
    v58[4] = self;
    v59 = v29 ^ v30;
    if (!(v29 | v30 ^ 1))
    {
      v31 = 1.0 - a3;
    }

    v60 = v29 & v30;
    *&v58[5] = v31;
    [(NTKWhistlerAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v58];
  }

  v32 = [(NTKWhistlerAnalogFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  v33 = [v32 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    if ([(NTKWhistlerAnalogFaceView *)self monochromeRichComplicationsEnabled])
    {
      v35 = [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:v10];
      [(NTKWhistlerAnalogFaceView *)self _platterTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:v11];
    }

    else
    {
      v35 = [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:v10];
      [(NTKWhistlerAnalogColorPalette *)self->_colorPalette complicationForegroundColorPalette:v11];
    }
    v36 = ;
    v37 = NTKInterpolateBetweenColors();
    v38 = [v32 display];
    [v38 setForegroundColor:v37];

    v11 = v51;
  }

  [(NTKWhistlerAnalogFaceView *)self _bezelLabelCurvedRadiusForColor:v10];
  [(NTKWhistlerAnalogFaceView *)self _bezelLabelCurvedRadiusForColor:v11];
  CLKInterpolateBetweenFloatsClipped();
  self->_bezelLabelCurvedRadius = v39;
  v40 = [v32 display];
  v41 = [v40 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView];

  if (v41)
  {
    v42 = [v32 display];
    v43 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:v10];
    v44 = [(NTKWhistlerAnalogFaceView *)self _bezelTextColorForEditMode:[(NTKWhistlerAnalogFaceView *)self _editMode] colorPalette:v11];
    v45 = NTKInterpolateBetweenColors();
    if (objc_opt_respondsToSelector())
    {
      v55[0] = _NSConcreteStackBlock;
      v55[1] = 3221225472;
      v55[2] = sub_3618;
      v55[3] = &unk_C340;
      v56 = v45;
      v57 = self;
      [v42 updatePropertiesAsGroupWithHandler:v55];
    }

    else
    {
      [v42 setBezelTextColor:v45];
      [v42 setBezelTextRadius:self->_bezelLabelCurvedRadius];
    }

    v11 = v51;
  }

  v52[0] = _NSConcreteStackBlock;
  v52[1] = 3221225472;
  v52[2] = sub_3680;
  v52[3] = &unk_C368;
  v52[4] = self;
  v53 = v10;
  v54 = a3;
  v46 = v10;
  [(NTKWhistlerAnalogFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v52];
}

- (void)_configureUIOnColorChange
{
  v4 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
  v3 = [(NTKWhistlerAnalogFaceView *)self faceColorPalette];
  [(NTKWhistlerAnalogFaceView *)self _applyTransitionFraction:v4 fromColorPalette:v3 toColorPalette:0.0];
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 10;
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

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  if (a3)
  {
    v3 = a3 == 10;
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

- (double)_dialTextBackgroundAlphaForEditMode:(int64_t)a3
{
  result = 0.0;
  if (a3 == 10)
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

- (id)_bezelTextColorForEditMode:(int64_t)a3 colorPalette:(id)a4
{
  v6 = a4;
  if (a3 == 10)
  {
    v7 = +[UIColor clearColor];
  }

  else
  {
    if (a3 == 1)
    {
      +[UIColor whiteColor];
    }

    else
    {
      [(NTKWhistlerAnalogColorPalette *)self->_colorPalette bezelTextColorForColorPalette:v6];
    }
    v7 = ;
  }

  v8 = v7;

  return v8;
}

- (id)_platterTextColorForEditMode:(int64_t)a3 colorPalette:(id)a4
{
  if (a3 == 1)
  {
    [UIColor whiteColor:1];
  }

  else
  {
    [(NTKWhistlerAnalogColorPalette *)self->_colorPalette platterTextColorForColorPalette:a4];
  }
  v4 = ;

  return v4;
}

- (double)_bezelCircularBackgroundFromComplication:(id)a3
{
  v3 = [a3 complicationType];
  result = 0.0;
  if (v3 > 0x2D || ((1 << v3) & 0x200000004012) == 0)
  {
    return 1.0;
  }

  return result;
}

- (double)_bezelLabelCurvedRadiusForColor:(id)a3
{
  v4 = a3;
  v5 = [(NTKWhistlerAnalogFaceView *)self device];
  v6 = sub_43A4(v5, v5);
  v8 = v7;

  LODWORD(v5) = [v4 isWhiteColor];
  if (v5)
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
  v4 = [v3 display];
  v5 = [v4 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationBezelView];

  v6 = 0.0;
  if (v5)
  {
    v7 = [v3 display];
    [v7 bezelTextAngularWidth];
    v6 = v8;
    if (v8 > 0.0)
    {
      v9 = [(NTKWhistlerAnalogFaceView *)self device];
      NTKWhistlerBezelCircularViewDefaultAngularWidthPadding();
      v6 = v6 + v10;
    }
  }

  return v6;
}

- (void)bezelViewDidBecomeInteractive:(id)a3
{
  v4 = a3;
  v5 = [(NTKWhistlerAnalogFaceView *)self timeView];
  v6 = [v5 layer];
  [v6 setAllowsGroupOpacity:1];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_3E6C;
  v8[3] = &unk_C3E0;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [UIView animateWithDuration:4 delay:v8 options:&stru_C420 animations:0.3 completion:0.0];
}

- (void)bezelViewDidEndInteractive:(id)a3
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
  v3 = [(NTKWhistlerAnalogFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKWhistlerAnalogFaceView *)self switcherSnapshotView];
    [(NTKWhistlerAnalogFaceView *)self bringSubviewToFront:v4];
  }
}

- (void)_setupDialView
{
  v17 = [(NTKWhistlerAnalogFaceView *)self contentView];
  v3 = [(NTKWhistlerAnalogFaceView *)self device];
  sub_43A4(v3, v3);

  [v17 bounds];
  v4 = [(NTKWhistlerAnalogFaceView *)self device];
  CLKSizeCenteredInRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = [NTKCircularAnalogDialView alloc];
  v14 = [(NTKWhistlerAnalogFaceView *)self device];
  v15 = [v13 initWithFrame:v14 forDevice:{v6, v8, v10, v12}];
  dialView = self->_dialView;
  self->_dialView = v15;

  [v17 addSubview:self->_dialView];
}

@end