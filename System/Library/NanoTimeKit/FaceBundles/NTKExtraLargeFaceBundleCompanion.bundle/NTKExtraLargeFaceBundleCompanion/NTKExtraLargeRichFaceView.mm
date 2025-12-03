@interface NTKExtraLargeRichFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (NSCache)swatchesCache;
- (NTKFace)swatchesFace;
- (NTKFaceViewController)swatchesFaceViewController;
- (double)_smallTimeAlphaForEditMode:(int64_t)mode;
- (double)_verticalPaddingForStatusBar;
- (id)_paletteApplyingTritiumFractionToPalette:(id)palette;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColorsFromLastAppliedColorPalette;
- (void)_applyColorsFromPalette:(id)palette;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureSmallTimeLabelColors;
- (void)_loadSnapshotContentViews;
- (void)_noteComplicationVisibilityChanged;
- (void)_prepareSwatchImagesForSelectedOptions:(id)options;
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
  device = [(NTKExtraLargeRichFaceView *)self device];
  v4 = sub_4DF8(v11, device);
  v6 = v5;
  v8 = v7;

  v9 = objc_alloc_init(NTKGossamerColorPalette);
  [v9 setBackgroundStyle:self->_backgroundStyle];
  [v9 setApproximateComplicationPositions:{v4, v6, v8}];

  return v9;
}

- (id)_paletteApplyingTritiumFractionToPalette:(id)palette
{
  paletteCopy = palette;
  v5 = paletteCopy;
  paletteTritiumFraction = self->super._paletteTritiumFraction;
  if (paletteTritiumFraction == 1.0)
  {
    tritiumPalette = [paletteCopy tritiumPalette];
  }

  else if (paletteTritiumFraction == 0.0)
  {
    tritiumPalette = paletteCopy;
  }

  else
  {
    tritiumPalette = [paletteCopy tritiumPaletteWithProgress:?];
  }

  v8 = tritiumPalette;

  return v8;
}

- (void)_loadSnapshotContentViews
{
  v7.receiver = self;
  v7.super_class = NTKExtraLargeRichFaceView;
  [(NTKExtraLargeFaceView *)&v7 _loadSnapshotContentViews];
  device = [(NTKExtraLargeRichFaceView *)self device];
  if (!self->_composedView && NTKShowGossamerUI())
  {
    rootContainerView = [(NTKExtraLargeRichFaceView *)self rootContainerView];
    [rootContainerView removeFromSuperview];
    v5 = [[NTKGradientComposedView alloc] initWithDevice:device];
    composedView = self->_composedView;
    self->_composedView = v5;

    [(NTKGradientComposedView *)self->_composedView setRootContainerView:rootContainerView];
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

    rootContainerView = [(NTKExtraLargeRichFaceView *)self rootContainerView];
    [rootContainerView removeFromSuperview];
    timeView = [(NTKExtraLargeRichFaceView *)self timeView];
    [(NTKExtraLargeRichFaceView *)self insertSubview:rootContainerView aboveSubview:timeView];
  }
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  device = [(NTKExtraLargeRichFaceView *)self device];
  v9 = NTKShowGossamerUI();

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = viewCopy;
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
    [(NTKExtraLargeFaceView *)&v12 _configureComplicationView:viewCopy forSlot:slotCopy];
  }
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  device = [(NTKExtraLargeRichFaceView *)self device];
  v11 = NTKShowGossamerUI();

  if (v11)
  {
    faceColorPalette = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
    v13 = faceColorPalette;
    if (self->_complicationPlaceholderView)
    {
      [faceColorPalette setIsSwatchPreview:1];
    }

    switch(mode)
    {
      case 10:
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v13];
        break;
      case 19:
        -[NTKExtraLargeFaceView _setNumerals:](self, "_setNumerals:", [optionCopy numeralOption]);
        break;
      case 17:
        backgroundStyle = [optionCopy backgroundStyle];
        [v13 setBackgroundStyle:backgroundStyle];
        [(NTKExtraLargeRichFaceView *)self setBackgroundStyle:backgroundStyle];
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:v13];
        delegate = [(NTKExtraLargeRichFaceView *)self delegate];
        [delegate faceViewWantsComplicationKeylineFramesReloaded];

        delegate2 = [(NTKExtraLargeRichFaceView *)self delegate];
        [delegate2 faceViewDidChangeWantsStatusBarIconShadow];

        delegate3 = [(NTKExtraLargeRichFaceView *)self delegate];
        [delegate3 faceViewDidChangePaddingForStatusBar];

        break;
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKExtraLargeRichFaceView;
    [(NTKExtraLargeFaceView *)&v18 _applyOption:optionCopy forCustomEditMode:mode slot:slotCopy];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  device = [(NTKExtraLargeRichFaceView *)self device];
  v16 = NTKShowGossamerUI();

  if (v16)
  {
    interpolatedColorPalette = [(NTKExtraLargeRichFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    toPalette = [interpolatedColorPalette toPalette];
    if (self->_complicationPlaceholderView)
    {
      [fromPalette setIsSwatchPreview:1];
      [toPalette setIsSwatchPreview:1];
    }

    switch(mode)
    {
      case 10:
        backgroundStyle = [(NTKExtraLargeRichFaceView *)self backgroundStyle];
        [fromPalette setBackgroundStyle:backgroundStyle];
        [toPalette setBackgroundStyle:backgroundStyle];
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:interpolatedColorPalette];
        break;
      case 19:
        numeralOption = [optionCopy numeralOption];
        numeralOption2 = [toOptionCopy numeralOption];
        if (numeralOption == numeralOption2)
        {
          [(NTKExtraLargeFaceView *)self _setNumerals:numeralOption];
        }

        else
        {
          if (fraction >= 0.5)
          {
            v28 = numeralOption2;
            CLKMapFractionIntoRange();
            v27 = v29;
            numeralOption = v28;
          }

          else
          {
            CLKMapFractionIntoRange();
            v27 = v26;
          }

          CLKMapFractionIntoRange();
          memset(&v38, 0, sizeof(v38));
          CGAffineTransformMakeScale(&v38, v30, v30);
          [(NTKExtraLargeFaceView *)self _setNumerals:numeralOption];
          if ([(NTKExtraLargeFaceView *)self complicationIsVisible])
          {
            v37 = v38;
            smallTimeLabel = [(NTKExtraLargeFaceView *)self smallTimeLabel];
            v36 = v37;
            [smallTimeLabel setTransform:&v36];

            [(NTKExtraLargeFaceView *)self smallTimeLabel];
          }

          else
          {
            v35 = v38;
            largeTimeLabel = [(NTKExtraLargeFaceView *)self largeTimeLabel];
            v36 = v35;
            [largeTimeLabel setTransform:&v36];

            [(NTKExtraLargeFaceView *)self largeTimeLabel];
          }
          v33 = ;
          [v33 setAlpha:v27];
        }

        break;
      case 17:
        backgroundStyle2 = [optionCopy backgroundStyle];
        backgroundStyle3 = [toOptionCopy backgroundStyle];
        faceColorPalette = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
        pigmentEditOption = [faceColorPalette pigmentEditOption];

        [fromPalette setPigmentEditOption:pigmentEditOption];
        [fromPalette setBackgroundStyle:backgroundStyle2];
        [toPalette setPigmentEditOption:pigmentEditOption];
        [toPalette setBackgroundStyle:backgroundStyle3];
        [interpolatedColorPalette setTransitionFraction:fraction];
        [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:interpolatedColorPalette];

        break;
    }
  }

  else
  {
    v39.receiver = self;
    v39.super_class = NTKExtraLargeRichFaceView;
    [(NTKExtraLargeFaceView *)&v39 _applyTransitionFraction:optionCopy fromOption:toOptionCopy toOption:mode forCustomEditMode:slotCopy slot:fraction];
  }
}

- (void)_applyColorsFromLastAppliedColorPalette
{
  lastAppliedColorPalette = self->_lastAppliedColorPalette;
  if (!lastAppliedColorPalette)
  {
    faceColorPalette = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
    v5 = self->_lastAppliedColorPalette;
    self->_lastAppliedColorPalette = faceColorPalette;

    lastAppliedColorPalette = self->_lastAppliedColorPalette;
  }

  [(NTKExtraLargeRichFaceView *)self _applyColorsFromPalette:lastAppliedColorPalette];
}

- (void)_applyColorsFromPalette:(id)palette
{
  paletteCopy = palette;
  scaleFactor = [paletteCopy scaleFactor];
  [scaleFactor doubleValue];
  v7 = v6;

  memset(&v33, 0, sizeof(v33));
  CGAffineTransformMakeScale(&v33, v7, v7);
  rootContainerView = [(NTKExtraLargeRichFaceView *)self rootContainerView];
  v32 = v33;
  [rootContainerView setTransform:&v32];

  [(NTKGradientComposedView *)self->_composedView applyGossamerColorPalette:paletteCopy];
  if (-[NTKGradientComposedView showForegroundGradient](self->_composedView, "showForegroundGradient") && ([paletteCopy foregroundGradientFraction], v9 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v9, "doubleValue"), v11 = v10, v9, v11 > 0.0))
  {
    accentColor = +[UIColor whiteColor];
  }

  else
  {
    accentColor = [paletteCopy accentColor];
  }

  v13 = accentColor;
  largeTimeLabel = [(NTKExtraLargeFaceView *)self largeTimeLabel];
  [largeTimeLabel setTopColor:v13];

  largeTimeLabel2 = [(NTKExtraLargeFaceView *)self largeTimeLabel];
  [largeTimeLabel2 setBottomColor:v13];

  smallTimeLabel = [(NTKExtraLargeFaceView *)self smallTimeLabel];
  topAccentColor = [paletteCopy topAccentColor];
  [smallTimeLabel setColor:topAccentColor];

  bottomAccentColor = [paletteCopy bottomAccentColor];
  [(NTKExtraLargeRichFaceView *)self setComplicationColor:bottomAccentColor];

  bottomAccentColor2 = [paletteCopy bottomAccentColor];
  [(NTKExtraLargeRichFaceView *)self setInterpolatedComplicationColor:bottomAccentColor2];

  foregroundColor = [paletteCopy foregroundColor];
  [(NTKExtraLargeRichFaceView *)self setAlternateComplicationColor:foregroundColor];

  bottomApproximateBackgroundColor = [paletteCopy bottomApproximateBackgroundColor];
  [(NTKExtraLargeRichFaceView *)self setComplicationBackgroundColor:bottomApproximateBackgroundColor];

  monochromeFraction = [paletteCopy monochromeFraction];
  [monochromeFraction doubleValue];
  self->_monochromeFraction = v23;

  tintedFraction = [paletteCopy tintedFraction];
  [tintedFraction doubleValue];
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
    swatchComplicationPlaceholderColor = [paletteCopy swatchComplicationPlaceholderColor];
    [(UIView *)complicationPlaceholderView setBackgroundColor:swatchComplicationPlaceholderColor];
  }

  lastAppliedColorPalette = self->_lastAppliedColorPalette;
  self->_lastAppliedColorPalette = paletteCopy;
}

- (double)_smallTimeAlphaForEditMode:(int64_t)mode
{
  if (mode == 17)
  {
    complicationIsVisible = [(NTKExtraLargeFaceView *)self complicationIsVisible];
    result = 0.0;
    if (complicationIsVisible)
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

    layer = [(UIView *)self->_complicationPlaceholderView layer];
    [layer setCornerRadius:v3];

    complicationContainerView = [(NTKExtraLargeRichFaceView *)self complicationContainerView];
    [complicationContainerView addSubview:self->_complicationPlaceholderView];
  }
}

- (void)_configureSmallTimeLabelColors
{
  faceColorPalette = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
  smallTimeLabel = [(NTKExtraLargeFaceView *)self smallTimeLabel];
  primaryColor = [faceColorPalette primaryColor];
  [smallTimeLabel setTextColor:primaryColor];
}

- (void)_configureForEditMode:(int64_t)mode
{
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (mode == 1)
  {
    if (!editingComplicationsPalette)
    {
      faceColorPalette = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
      v6 = [faceColorPalette copy];
      [v6 setIsEditingComplications:1];
      v7 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:faceColorPalette toPalette:v6];
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

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v16.receiver = self;
  v16.super_class = NTKExtraLargeRichFaceView;
  [NTKExtraLargeFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  editingComplicationsPalette = self->_editingComplicationsPalette;
  if (mode == 1 || editMode == 1)
  {
    if (!editingComplicationsPalette)
    {
      faceColorPalette = [(NTKExtraLargeRichFaceView *)self faceColorPalette];
      v10 = [faceColorPalette copy];
      [v10 setIsEditingComplications:1];
      v11 = [[NTKInterpolatedColorPalette alloc] initWithFromPalette:faceColorPalette toPalette:v10];
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
    device = [(NTKExtraLargeRichFaceView *)self device];
    sub_6A8C(device, v7);
    v4 = v4 + v8;
  }

  return v4;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  composedView = [(NTKExtraLargeRichFaceView *)self composedView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [composedView setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  composedView = [(NTKExtraLargeRichFaceView *)self composedView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  CGAffineTransformTranslate(&v13, &v12, 0.0, 1.0);
  [composedView setTransform:&v13];

  composedView2 = [(NTKExtraLargeRichFaceView *)self composedView];
  [composedView2 setAlpha:v9];
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
    device = [(NTKExtraLargeRichFaceView *)self device];
    v5 = [NTKFace defaultFaceOfStyle:212 forDevice:device];
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
    swatchesFace = [(NTKExtraLargeRichFaceView *)self swatchesFace];
    v5 = [[NTKFaceViewController alloc] initWithFace:swatchesFace configuration:&stru_10500];
    v6 = self->_swatchesFaceViewController;
    self->_swatchesFaceViewController = v5;

    [(NTKFaceViewController *)self->_swatchesFaceViewController freeze];
    view = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [view setNeedsLayout];

    view2 = [(NTKFaceViewController *)self->_swatchesFaceViewController view];
    [view2 layoutIfNeeded];

    faceView = [(NTKFaceViewController *)self->_swatchesFaceViewController faceView];
    delegate = [(NTKExtraLargeRichFaceView *)self delegate];
    [faceView setDelegate:delegate];

    [faceView _updateComplicationVisibility];
    [faceView _noteComplicationVisibilityChanged];
    [faceView loadComplicationPlaceholderViews];
    [faceView populateFaceViewEditOptionsFromFace:swatchesFace forced:1];

    swatchesFaceViewController = self->_swatchesFaceViewController;
  }

  return swatchesFaceViewController;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 17)
  {
    return &off_10CE0;
  }

  else
  {
    return 0;
  }
}

- (void)_prepareSwatchImagesForSelectedOptions:(id)options
{
  optionsCopy = options;
  device = [(NTKExtraLargeRichFaceView *)self device];
  v5 = [NTKFaceBackgroundStyleEditOption numberOfOptionsForDevice:device];

  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      device2 = [(NTKExtraLargeRichFaceView *)self device];
      v8 = [NTKFaceBackgroundStyleEditOption optionAtIndex:i forDevice:device2];

      v9 = [(NTKExtraLargeRichFaceView *)self _swatchImageForEditOption:v8 mode:17 withSelectedOptions:optionsCopy];
    }
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if (mode == 19)
  {
    largeTimeLabel = [(NTKExtraLargeFaceView *)self largeTimeLabel];
    _timeLabelFont = [largeTimeLabel _timeLabelFont];

    device = [(NTKExtraLargeRichFaceView *)self device];
    v19 = [optionCopy swatchImageWithFont:_timeLabelFont device:device baseline:0.0];
  }

  else if (mode == 17)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_108B8];
    delegate = [(NTKExtraLargeRichFaceView *)self delegate];
    v13 = [delegate faceViewComplicationForSlot:NTKComplicationSlotCenter];

    v14 = +[NTKComplication nullComplication];
    v15 = [v13 isEqual:v14];

    swatchesCache = [(NTKExtraLargeRichFaceView *)self swatchesCache];
    v17 = [NSString stringWithFormat:@"%@-%@-%i", optionCopy, v11, v15 ^ 1];
    v18 = [swatchesCache objectForKey:v17];
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      swatchesFaceViewController = [(NTKExtraLargeRichFaceView *)self swatchesFaceViewController];
      faceView = [swatchesFaceViewController faceView];
      [faceView[19] setHidden:v15];
      [faceView _updateComplicationVisibility];
      swatchesFace = [(NTKExtraLargeRichFaceView *)self swatchesFace];
      [swatchesFace selectOption:v11 forCustomEditMode:10 slot:0];
      [swatchesFace selectOption:optionCopy forCustomEditMode:17 slot:0];
      [faceView bounds];
      v32.width = v26;
      v32.height = v27;
      UIGraphicsBeginImageContextWithOptions(v32, 0, 0.0);
      [faceView bounds];
      [faceView drawViewHierarchyInRect:1 afterScreenUpdates:?];
      v28 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [swatchesCache setObject:v28 forKey:v17];
      v19 = v28;
    }
  }

  else
  {
    v30.receiver = self;
    v30.super_class = NTKExtraLargeRichFaceView;
    v19 = [(NTKExtraLargeRichFaceView *)&v30 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v19;
}

@end