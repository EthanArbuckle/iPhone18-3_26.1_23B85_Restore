@interface NTKExtraLargeRichFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (NSCache)swatchesCache;
- (NTKFace)swatchesFace;
- (NTKFaceViewController)swatchesFaceViewController;
- (double)_smallTimeAlphaForEditMode:(int64_t)a3;
- (double)_verticalPaddingForStatusBar;
- (id)_paletteApplyingTritiumFractionToPalette:(id)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyColorsFromLastAppliedColorPalette;
- (void)_applyColorsFromPalette:(id)a3;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureSmallTimeLabelColors;
- (void)_loadSnapshotContentViews;
- (void)_noteComplicationVisibilityChanged;
- (void)_prepareSwatchImagesForSelectedOptions:(id)a3;
- (void)_unloadSnapshotContentViews;
- (void)loadComplicationPlaceholderViews;
@end

@implementation NTKExtraLargeRichFaceView

- (id)createFaceColorPalette
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_4DF8;
  v11[3] = &unk_104A0;
  v11[4] = self;
  v3 = [(NTKExtraLargeRichFaceView *)self device];
  v4 = sub_4DF8(v11, v3);
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(NTKGossamerColorPalette);
  [v9 setBackgroundStyle:self->_backgroundStyle];
  [v9 setApproximateComplicationPositions:{v4, v6, v8}];

  return v9;
}

- (id)_paletteApplyingTritiumFractionToPalette:(id)a3
{
  v4 = a3;
  v5 = v4;
  paletteTritiumFraction = self->super._paletteTritiumFraction;
  if (paletteTritiumFraction == 1.0)
  {
    v7 = [v4 tritiumPalette];
  }

  else if (paletteTritiumFraction == 0.0)
  {
    v7 = v4;
  }

  else
  {
    v7 = [v4 tritiumPaletteWithProgress:?];
  }

  v8 = v7;

  return v8;
}

- (void)_loadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = NTKExtraLargeRichFaceView;
  [(NTKExtraLargeFaceView *)&v7 _loadSnapshotContentViews];
  v3 = [(NTKExtraLargeRichFaceView *)self device];
  if (!self->_composedView && NTKShowGossamerUI())
  {
    v4 = [(NTKExtraLargeRichFaceView *)self rootContainerView];
    [v4 removeFromSuperview];
    v5 = [[NTKGradientComposedView alloc] initWithDevice:v3];
    composedView = self->_composedView;
    self->_composedView = v5;

    [(NTKGradientComposedView *)self->_composedView setRootContainerView:v4];
    [(NTKGradientComposedView *)self->_composedView setShowForegroundGradient:[(NTKExtraLargeFaceView *)self complicationIsVisible]^ 1];
    [(NTKExtraLargeRichFaceView *)self addSubview:self->_composedView];
  }
}

- (void)_unloadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = NTKExtraLargeRichFaceView;
  [(NTKExtraLargeFaceView *)&v7 _unloadSnapshotContentViews];
  composedView = self->_composedView;
  if (composedView)
  {
    [(NTKGradientComposedView *)composedView removeFromSuperview];
    v4 = self->_composedView;
    self->_composedView = 0;

    v5 = [(NTKExtraLargeRichFaceView *)self rootContainerView];
    [v5 removeFromSuperview];
    v6 = [(NTKExtraLargeRichFaceView *)self timeView];
    [(NTKExtraLargeRichFaceView *)self insertSubview:v5 aboveSubview:v6];
  }
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NTKExtraLargeRichFaceView *)self device];
  v9 = NTKShowGossamerUI();

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v6;
      if ([v10 conformsToProtocol:&OBJC_PROTOCOL___NTKRichComplicationCircularView])
      {
        v11 = +[UIColor clearColor];
        [v10 setPlatterColor:v11];
      }

      if ([v10 conformsToProtocol:&OBJC_PROTOCOL___CDRichComplicationTintedPlatterColorOverridable])
      {
        [v10 setTintedFraction:self->_tintedFraction];
      }

      [v10 transitionToMonochromeWithFraction:self->_monochromeFraction];
    }
  }

  else
  {
    v12.receiver = self;
    v12.super_class = NTKExtraLargeRichFaceView;
    [(NTKExtraLargeFaceView *)&v12 _configureComplicationView:v6 forSlot:v7];
  }
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(NTKExtraLargeRichFaceView *)self device];
  v11 = NTKShowGossamerUI();

  if (v11)
  {
    v12 = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
    v13 = v12;
    if (self->_complicationPlaceholderView)
    {
      [v12 setIsSwatchPreview:1];
    }

    switch(a4)
    {
      case 10:
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v13];
        break;
      case 19:
        -[NTKExtraLargeFaceView _setNumerals:](self, "_setNumerals:", [v8 numeralOption]);
        break;
      case 17:
        v14 = [v8 backgroundStyle];
        [v13 setBackgroundStyle:v14];
        [(NTKExtraLargeRichFaceView *)self setBackgroundStyle:v14];
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v13];
        v15 = [(NTKExtraLargeRichFaceView *)self delegate];
        [v15 faceViewWantsComplicationKeylineFramesReloaded];

        v16 = [(NTKExtraLargeRichFaceView *)self delegate];
        [v16 faceViewDidChangeWantsStatusBarIconShadow];

        v17 = [(NTKExtraLargeRichFaceView *)self delegate];
        [v17 faceViewDidChangePaddingForStatusBar];

        break;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKExtraLargeRichFaceView;
    [(NTKExtraLargeFaceView *)&v18 _applyOption:v8 forCustomEditMode:a4 slot:v9];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v12 = a4;
  v13 = a5;
  v14 = a7;
  v15 = [(NTKExtraLargeRichFaceView *)self device];
  v16 = NTKShowGossamerUI();

  if (v16)
  {
    v17 = [(NTKExtraLargeRichFaceView *)self interpolatedColorPalette];
    v18 = [v17 fromPalette];
    v19 = [v17 toPalette];
    if (self->_complicationPlaceholderView)
    {
      [v18 setIsSwatchPreview:1];
      [v19 setIsSwatchPreview:1];
    }

    switch(a6)
    {
      case 10:
        v25 = [(NTKExtraLargeRichFaceView *)self backgroundStyle];
        [v18 setBackgroundStyle:v25];
        [v19 setBackgroundStyle:v25];
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v17];
        break;
      case 19:
        v23 = [v12 numeralOption];
        v24 = [v13 numeralOption];
        if (v23 == v24)
        {
          [(NTKExtraLargeFaceView *)self _setNumerals:v23];
        }

        else
        {
          if (a3 >= 0.5)
          {
            v28 = v24;
            CLKMapFractionIntoRange();
            v27 = v29;
            v23 = v28;
          }

          else
          {
            CLKMapFractionIntoRange();
            v27 = v26;
          }

          CLKMapFractionIntoRange();
          memset(&v38, 0, sizeof(v38));
          CGAffineTransformMakeScale(&v38, v30, v30);
          [(NTKExtraLargeFaceView *)self _setNumerals:v23];
          if ([(NTKExtraLargeFaceView *)self complicationIsVisible])
          {
            v37 = v38;
            v31 = [(NTKExtraLargeFaceView *)self smallTimeLabel];
            v36 = v37;
            [v31 setTransform:&v36];

            [(NTKExtraLargeFaceView *)self smallTimeLabel];
          }

          else
          {
            v35 = v38;
            v32 = [(NTKExtraLargeFaceView *)self largeTimeLabel];
            v36 = v35;
            [v32 setTransform:&v36];

            [(NTKExtraLargeFaceView *)self largeTimeLabel];
          }
          v33 = ;
          [v33 setAlpha:v27];
        }

        break;
      case 17:
        v20 = [v12 backgroundStyle];
        v34 = [v13 backgroundStyle];
        v21 = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
        v22 = [v21 pigmentEditOption];

        [v18 setPigmentEditOption:v22];
        [v18 setBackgroundStyle:v20];
        [v19 setPigmentEditOption:v22];
        [v19 setBackgroundStyle:v34];
        [v17 setTransitionFraction:a3];
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v17];

        break;
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = NTKExtraLargeRichFaceView;
    [(NTKExtraLargeFaceView *)&v39 _applyTransitionFraction:v12 fromOption:v13 toOption:a6 forCustomEditMode:v14 slot:a3];
  }
}

- (void)_applyColorsFromLastAppliedColorPalette
{
  lastAppliedColorPalette = self->_lastAppliedColorPalette;
  if (!lastAppliedColorPalette)
  {
    v4 = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
    v5 = self->_lastAppliedColorPalette;
    self->_lastAppliedColorPalette = v4;

    lastAppliedColorPalette = self->_lastAppliedColorPalette;
  }

  [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:lastAppliedColorPalette];
}

- (void)_applyColorsFromPalette:(id)a3
{
  v4 = a3;
  v5 = [v4 scaleFactor];
  [v5 doubleValue];
  v7 = v6;

  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeScale(&v33, v7, v7);
  v8 = [(NTKExtraLargeRichFaceView *)self rootContainerView];
  v32 = v33;
  [v8 setTransform:&v32];

  [(NTKGradientComposedView *)self->_composedView applyGossamerColorPalette:v4];
  if (-[NTKGradientComposedView showForegroundGradient](self->_composedView, "showForegroundGradient") && ([v4 foregroundGradientFraction], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleValue"), v11 = v10, v9, v11 > 0.0))
  {
    v12 = +[UIColor whiteColor];
  }

  else
  {
    v12 = [v4 accentColor];
  }

  v13 = v12;
  v14 = [(NTKExtraLargeFaceView *)self largeTimeLabel];
  [v14 setTopColor:v13];

  v15 = [(NTKExtraLargeFaceView *)self largeTimeLabel];
  [v15 setBottomColor:v13];

  v16 = [(NTKExtraLargeFaceView *)self smallTimeLabel];
  v17 = [v4 topAccentColor];
  [v16 setColor:v17];

  v18 = [v4 bottomAccentColor];
  [(NTKExtraLargeRichFaceView *)self setComplicationColor:v18];

  v19 = [v4 bottomAccentColor];
  [(NTKExtraLargeRichFaceView *)self setInterpolatedComplicationColor:v19];

  v20 = [v4 foregroundColor];
  [(NTKExtraLargeRichFaceView *)self setAlternateComplicationColor:v20];

  v21 = [v4 bottomApproximateBackgroundColor];
  [(NTKExtraLargeRichFaceView *)self setComplicationBackgroundColor:v21];

  v22 = [v4 monochromeFraction];
  [v22 doubleValue];
  self->_monochromeFraction = v23;

  v24 = [v4 tintedFraction];
  [v24 doubleValue];
  self->_tintedFraction = v25;

  monochromeFraction = self->_monochromeFraction;
  tintedFraction = self->_tintedFraction;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_5B50;
  v31[3] = &unk_104C0;
  *&v31[4] = tintedFraction;
  *&v31[5] = monochromeFraction;
  [(NTKExtraLargeRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v31];
  complicationPlaceholderView = self->_complicationPlaceholderView;
  if (complicationPlaceholderView)
  {
    v29 = [v4 swatchComplicationPlaceholderColor];
    [(UIView *)complicationPlaceholderView setBackgroundColor:v29];
  }

  lastAppliedColorPalette = self->_lastAppliedColorPalette;
  self->_lastAppliedColorPalette = v4;
}

- (double)_smallTimeAlphaForEditMode:(int64_t)a3
{
  if (a3 == 17)
  {
    v3 = [(NTKExtraLargeFaceView *)self complicationIsVisible];
    result = 0.0;
    if (v3)
    {
      return 1.0;
    }
  }

  else
  {
    v5.receiver = self;
    v5.super_class = NTKExtraLargeRichFaceView;
    [(NTKExtraLargeFaceView *)&v5 _smallTimeAlphaForEditMode:?];
  }

  return result;
}

- (void)_noteComplicationVisibilityChanged
{
  v3.receiver = self;
  v3.super_class = NTKExtraLargeRichFaceView;
  [(NTKExtraLargeFaceView *)&v3 _noteComplicationVisibilityChanged];
  [(NTKGradientComposedView *)self->_composedView setShowForegroundGradient:[(NTKExtraLargeFaceView *)self complicationIsVisible]^ 1];
}

- (void)loadComplicationPlaceholderViews
{
  if (!self->_complicationPlaceholderView)
  {
    v8 = [(NTKExtraLargeRichFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotCenter];
    [v8 frame];
    v11 = CGRectInset(v10, 4.0, 4.0);
    v3 = v11.size.width * 0.5;
    v4 = [[UIView alloc] initWithFrame:{v11.origin.x, v11.origin.y, v11.size.width, v11.size.height}];
    complicationPlaceholderView = self->_complicationPlaceholderView;
    self->_complicationPlaceholderView = v4;

    v6 = [(UIView *)self->_complicationPlaceholderView layer];
    [v6 setCornerRadius:v3];

    v7 = [(NTKExtraLargeRichFaceView *)self complicationContainerView];
    [v7 addSubview:self->_complicationPlaceholderView];
  }
}

- (void)_configureSmallTimeLabelColors
{
  v5 = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
  v3 = [(NTKExtraLargeFaceView *)self smallTimeLabel];
  v4 = [v5 primaryColor];
  [v3 setTextColor:v4];
}

- (void)_configureForEditMode:(int64_t)a3
{
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (a3 == 1)
  {
    if (!editingComplicationsPalette)
    {
      v5 = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
      v6 = [v5 copy];
      [v6 setIsEditingComplications:1];
      v7 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v5 toPalette:v6];
      v8 = self->_editingComplicationsPalette;
      self->_editingComplicationsPalette = v7;

      editingComplicationsPalette = self->_editingComplicationsPalette;
    }

    [(NTKInterpolatedColorPalette *)editingComplicationsPalette setTransitionFraction:1.0];
    [(NTKGradientComposedView *)self->_composedView setShowForegroundGradient:0];
    v9 = self->_editingComplicationsPalette;

    [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v9];
  }

  else if (editingComplicationsPalette)
  {
    self->_editingComplicationsPalette = 0;

    [(NTKGradientComposedView *)self->_composedView setShowForegroundGradient:[(NTKExtraLargeFaceView *)self complicationIsVisible]^ 1];

    [(NTKExtraLargeRichFaceView *)self _applyColorsFromLastAppliedColorPalette];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v16.receiver = self;
  v16.super_class = NTKExtraLargeRichFaceView;
  [NTKExtraLargeFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (a4 == 1 || a5 == 1)
  {
    if (!editingComplicationsPalette)
    {
      v9 = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
      v10 = [v9 copy];
      [v10 setIsEditingComplications:1];
      v11 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:v9 toPalette:v10];
      v12 = self->_editingComplicationsPalette;
      self->_editingComplicationsPalette = v11;
    }

    CLKInterpolateBetweenFloatsClipped();
    v14 = v13;
    if (v13 >= 0.5)
    {
      v15 = 0;
    }

    else
    {
      v15 = [(NTKExtraLargeFaceView *)self complicationIsVisible]^ 1;
    }

    [(NTKGradientComposedView *)self->_composedView setShowForegroundGradient:v15];
    [(NTKInterpolatedColorPalette *)self->_editingComplicationsPalette setTransitionFraction:v14];
    [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:self->_editingComplicationsPalette];
  }

  else if (editingComplicationsPalette)
  {
    self->_editingComplicationsPalette = 0;

    [(NTKGradientComposedView *)self->_composedView setShowForegroundGradient:[(NTKExtraLargeFaceView *)self complicationIsVisible]^ 1];
    [(NTKExtraLargeRichFaceView *)self _applyColorsFromLastAppliedColorPalette];
  }
}

- (double)_verticalPaddingForStatusBar
{
  v9.receiver = self;
  v9.super_class = NTKExtraLargeRichFaceView;
  [(NTKExtraLargeFaceView *)&v9 _verticalPaddingForStatusBar];
  v4 = v3;
  if (self->_backgroundStyle == 1)
  {
    v5 = [(NTKExtraLargeRichFaceView *)self device];
    sub_6A8C(v5, v7);
    v4 = v4 + v8;
  }

  return v4;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  v8 = [(NTKExtraLargeRichFaceView *)self composedView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [v8 setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  v10 = [(NTKExtraLargeRichFaceView *)self composedView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  CGAffineTransformTranslate(&v13, &v12, 0.0, 1.0);
  [v10 setTransform:&v13];

  v11 = [(NTKExtraLargeRichFaceView *)self composedView];
  [v11 setAlpha:v9];
}

- (NSCache)swatchesCache
{
  swatchesCache = self->_swatchesCache;
  if (!swatchesCache)
  {
    v4 = objc_opt_new();
    v5 = self->_swatchesCache;
    self->_swatchesCache = v4;

    swatchesCache = self->_swatchesCache;
  }

  return swatchesCache;
}

- (NTKFace)swatchesFace
{
  swatchesFace = self->_swatchesFace;
  if (!swatchesFace)
  {
    v4 = [(NTKExtraLargeRichFaceView *)self device];
    v5 = [NTKFace defaultFaceOfStyle:212 forDevice:v4];
    v6 = self->_swatchesFace;
    self->_swatchesFace = v5;

    v7 = self->_swatchesFace;
    v8 = +[NTKComplication nullComplication];
    [(NTKFace *)v7 setComplication:v8 forSlot:NTKComplicationSlotCenter];

    swatchesFace = self->_swatchesFace;
  }

  return swatchesFace;
}

- (NTKFaceViewController)swatchesFaceViewController
{
  swatchesFaceViewController = self->_swatchesFaceViewController;
  if (!swatchesFaceViewController)
  {
    v4 = [(NTKExtraLargeRichFaceView *)self swatchesFace];
    v5 = [[NTKFaceViewController alloc] initWithFace:v4 configuration:&stru_10500];
    v6 = self->_swatchesFaceViewController;
    self->_swatchesFaceViewController = v5;

    [(NTKFaceViewController *)self->_swatchesFaceViewController freeze];
    v7 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [v7 setNeedsLayout];

    v8 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [v8 layoutIfNeeded];

    v9 = [(NTKFaceViewController *)self->_swatchesFaceViewController faceView];
    v10 = [(NTKExtraLargeRichFaceView *)self delegate];
    [v9 setDelegate:v10];

    [v9 _updateComplicationVisibility];
    [v9 _noteComplicationVisibilityChanged];
    [v9 loadComplicationPlaceholderViews];
    [v9 populateFaceViewEditOptionsFromFace:v4 forced:1];

    swatchesFaceViewController = self->_swatchesFaceViewController;
  }

  return swatchesFaceViewController;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 17)
  {
    return &off_10CE0;
  }

  else
  {
    return 0;
  }
}

- (void)_prepareSwatchImagesForSelectedOptions:(id)a3
{
  v10 = a3;
  v4 = [(NTKExtraLargeRichFaceView *)self device];
  v5 = [NTKFaceBackgroundStyleEditOption numberOfOptionsForDevice:v4];

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = [(NTKExtraLargeRichFaceView *)self device];
      v8 = [NTKFaceBackgroundStyleEditOption optionAtIndex:i forDevice:v7];

      v9 = [(NTKExtraLargeRichFaceView *)self _swatchImageForEditOption:v8 mode:17 withSelectedOptions:v10];
    }
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if (a4 == 19)
  {
    v20 = [(NTKExtraLargeFaceView *)self largeTimeLabel];
    v21 = [v20 _timeLabelFont];

    v22 = [(NTKExtraLargeRichFaceView *)self device];
    v19 = [v8 swatchImageWithFont:v21 device:v22 baseline:0.0];
  }

  else if (a4 == 17)
  {
    v11 = [v9 objectForKeyedSubscript:&off_108B8];
    v12 = [(NTKExtraLargeRichFaceView *)self delegate];
    v13 = [v12 faceViewComplicationForSlot:NTKComplicationSlotCenter];

    v14 = +[NTKComplication nullComplication];
    v15 = [v13 isEqual:v14];

    v16 = [(NTKExtraLargeRichFaceView *)self swatchesCache];
    v17 = [NSString stringWithFormat:@"%@-%@-%i", v8, v11, v15 ^ 1];
    v18 = [v16 objectForKey:v17];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v23 = [(NTKExtraLargeRichFaceView *)self swatchesFaceViewController];
      v24 = [v23 faceView];
      [v24[19] setHidden:v15];
      [v24 _updateComplicationVisibility];
      v25 = [(NTKExtraLargeRichFaceView *)self swatchesFace];
      [v25 selectOption:v11 forCustomEditMode:10 slot:0];
      [v25 selectOption:v8 forCustomEditMode:17 slot:0];
      [v24 bounds];
      v32.width = v26;
      v32.height = v27;
      UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
      [v24 bounds];
      [v24 drawViewHierarchyInRect:1 afterScreenUpdates:?];
      v28 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [v16 setObject:v28 forKey:v17];
      v19 = v28;
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKExtraLargeRichFaceView;
    v19 = [(NTKExtraLargeRichFaceView *)&v30 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v19;
}

@end