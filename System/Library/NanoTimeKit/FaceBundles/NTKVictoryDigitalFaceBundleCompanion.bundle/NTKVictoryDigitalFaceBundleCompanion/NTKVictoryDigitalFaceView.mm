@interface NTKVictoryDigitalFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected;
- (CGRect)_timeViewFrame;
- (NTKVictoryDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_bottomComplicationAlphaForEditMode:(int64_t)mode;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_keylineEdgeGapForState:(int64_t)state;
- (double)_keylinePaddingForState:(int64_t)state;
- (double)_logoPlatterAlphaForEditMode:(int64_t)mode;
- (double)_logoPlatterXOffsetForEditMode:(int64_t)mode;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColor:(id)color platterColor:(id)platterColor toComplicationView:(id)view slot:(id)slot;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyPopAnimationWithFraction:(double)fraction;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_logoTapped;
- (void)_positionLogoPlatterView;
- (void)_prepareForEditing;
- (void)_setupLogoViews;
- (void)_unloadSnapshotContentViews;
- (void)layoutSubviews;
- (void)updateComplicationWithPalette:(id)palette;
@end

@implementation NTKVictoryDigitalFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (NTKVictoryDigitalFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v28.receiver = self;
  v28.super_class = NTKVictoryDigitalFaceView;
  v9 = [(NTKVictoryDigitalFaceView *)&v28 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    device = [(NTKVictoryDigitalFaceView *)v9 device];
    sub_4444(device, &v19);

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    utilityComplicationFactory = v10->_utilityComplicationFactory;
    v10->_utilityComplicationFactory = v12;

    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setSelectedKeylineHeight:*&v23];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setBottomCenterLayout:3];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setMaxNormalLongWidth:*(&v23 + 1)];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setScreenEdgeInsets:0.0, 0.0, *&v24, 0.0];
    device2 = [(NTKVictoryDigitalFaceView *)v10 device];
    NTKCircularMediumComplicationDiameter();
    v16 = v15 * 0.5;

    v17 = v16 + *&v20;
    v10->_logoPlatterCenter.x = v16 + *&v19;
    v10->_logoPlatterCenter.y = v17;
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKVictoryDigitalColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v3 = [UIView alloc];
  device = [(NTKVictoryDigitalFaceView *)self device];
  [device screenBounds];
  v5 = [v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v5;

  contentView = [(NTKVictoryDigitalFaceView *)self contentView];
  [contentView addSubview:self->_backgroundView];

  v8 = [NTKVictoryDigitalTimeView alloc];
  device2 = [(NTKVictoryDigitalFaceView *)self device];
  v10 = [(NTKVictoryDigitalTimeView *)v8 initForDevice:device2];
  [(NTKVictoryDigitalFaceView *)self setTimeView:v10];

  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView setDelegate:self];

  contentView2 = [(NTKVictoryDigitalFaceView *)self contentView];
  timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
  [contentView2 addSubview:timeView2];

  [(NTKVictoryDigitalFaceView *)self _setupLogoViews];
  [(NTKVictoryDigitalFaceView *)self _updateImageToBlur];

  [(NTKVictoryDigitalFaceView *)self setNeedsLayout];
}

- (void)_unloadSnapshotContentViews
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView setDelegate:0];

  timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView2 removeFromSuperview];

  [(NTKVictoryDigitalFaceView *)self setTimeView:0];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView removeFromSuperview];
  logoWrapperView = self->_logoWrapperView;
  self->_logoWrapperView = 0;
}

- (void)_setupLogoViews
{
  v3 = [NTKComplicationDisplayWrapperView alloc];
  v4 = [v3 initWithFamily:CLKComplicationFamilyCircularMedium];
  logoWrapperView = self->_logoWrapperView;
  self->_logoWrapperView = v4;

  device = [(NTKVictoryDigitalFaceView *)self device];
  NTKCircularMediumComplicationDiameter();
  v8 = v7;

  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setBounds:0.0, 0.0, v8, v8];
  v9 = [NTKVictoryDigitalFaceBundle imageWithName:@"victoryNTK-complication-logo"];
  v13 = [CLKImageProvider imageProviderWithOnePieceImage:v9];

  v10 = [CLKComplicationTemplateCircularMediumSimpleImage templateWithImageProvider:v13];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setComplicationTemplate:v10 reason:0 animation:0];
  display = [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView display];
  [(NTKVictoryDigitalFaceView *)self _configureComplicationView:display forSlot:0];

  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setTapEnabled:1];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView addTarget:self action:"_logoTapped" forControlEvents:64];
  foregroundContainerView = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [foregroundContainerView addSubview:self->_logoWrapperView];
}

- (void)_logoTapped
{
  delegate = [(NTKVictoryDigitalFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:delegate];

  logoWrapperView = self->_logoWrapperView;
  [(NTKComplicationDisplayWrapperView *)logoWrapperView bounds];
  [(NTKComplicationDisplayWrapperView *)logoWrapperView convertRect:self toView:?];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  delegate2 = [(NTKVictoryDigitalFaceView *)self delegate];
  [delegate2 faceViewRequestedLaunchFromRect:{v6, v8, v10, v12}];
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKVictoryAppLauncher prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v4 layoutSubviews];
  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [(NTKVictoryDigitalFaceView *)self _timeViewFrame];
  [timeView ntk_setBoundsAndPositionFromFrame:?];

  [(NTKVictoryDigitalFaceView *)self _positionLogoPlatterView];
}

- (void)_positionLogoPlatterView
{
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setCenter:self->_logoPlatterCenter.x + self->_currentLogoPlatterXOffset, self->_logoPlatterCenter.y];
  device = [(NTKVictoryDigitalFaceView *)self device];
  sub_4444(device, v5);
  v4[0] = v5[6];
  v4[1] = v5[7];
  v4[2] = v5[8];
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setContentTransform:v4];
}

- (BOOL)_wantsStatusBarIconShadow
{
  palette = [(NTKVictoryDigitalFaceView *)self palette];
  background = [palette background];
  v4 = CLKIsBlackColor();

  return v4 ^ 1;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  if (mode == 10)
  {
    palette = [(NTKVictoryDigitalFaceView *)self palette];
    background = [palette background];
    [(UIView *)self->_backgroundView setBackgroundColor:background];

    palette2 = [(NTKVictoryDigitalFaceView *)self palette];
    [timeView setColorPalette:palette2];

    palette3 = [(NTKVictoryDigitalFaceView *)self palette];
    [(NTKVictoryDigitalFaceView *)self updateComplicationWithPalette:palette3];

    delegate = [(NTKVictoryDigitalFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 13)
  {
    [timeView setStyle:{objc_msgSend(optionCopy, "style")}];
  }

  timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
  [(NTKVictoryDigitalFaceView *)self _timeViewFrame];
  [timeView2 ntk_setBoundsAndPositionFromFrame:?];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKVictoryDigitalFaceView *)self interpolatedColorPalette];
    background = [interpolatedColorPalette background];
    [(UIView *)self->_backgroundView setBackgroundColor:background];

    interpolatedColorPalette2 = [(NTKVictoryDigitalFaceView *)self interpolatedColorPalette];
    [timeView setColorPalette:interpolatedColorPalette2];

    interpolatedColorPalette3 = [(NTKVictoryDigitalFaceView *)self interpolatedColorPalette];
    [(NTKVictoryDigitalFaceView *)self updateComplicationWithPalette:interpolatedColorPalette3];

    [(NTKVictoryDigitalFaceView *)self _applyPopAnimationWithFraction:fraction];
  }

  else if (mode == 13)
  {
    [timeView applyTransitionFraction:objc_msgSend(optionCopy fromStyle:"style") toStyle:{objc_msgSend(toOptionCopy, "style"), fraction}];
  }
}

- (void)_applyPopAnimationWithFraction:(double)fraction
{
  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView applyPopAnimationTransitionFraction:fraction];
  v19[0] = NTKComplicationSlot1;
  v19[1] = NTKComplicationSlot2;
  v19[2] = NTKComplicationSlotBottom;
  v5 = [NSArray arrayWithObjects:v19 count:3];
  NTKVictoryTransitionTimingFunction();
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_25E8;
  v12 = v16[3] = &unk_10420;
  v17 = v12;
  fractionCopy = fraction;
  v6 = objc_retainBlock(v16);
  for (i = 0; i != 4; ++i)
  {
    v8 = (v6[2])(v6, flt_EB70[i]);
    if (i)
    {
      v9 = [v5 objectAtIndex:i - 1];
      v10 = [(NTKVictoryDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:v9];
      display = [v10 display];
    }

    else
    {
      display = [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView display];
    }

    CGAffineTransformMakeScale(&v15, v8 * 0.15 + 0.85, v8 * 0.15 + 0.85);
    v14 = v15;
    [display setTransform:&v14];
  }
}

- (void)updateComplicationWithPalette:(id)palette
{
  paletteCopy = palette;
  complication = [paletteCopy complication];
  complicationPlatter = [paletteCopy complicationPlatter];
  display = [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView display];
  [(NTKVictoryDigitalFaceView *)self _applyColor:complication platterColor:complicationPlatter toComplicationView:display slot:0];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_2720;
  v9[3] = &unk_10448;
  v9[4] = self;
  v10 = paletteCopy;
  v8 = paletteCopy;
  [(NTKVictoryDigitalFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v9];
}

- (void)_applyColor:(id)color platterColor:(id)platterColor toComplicationView:(id)view slot:(id)slot
{
  colorCopy = color;
  platterColorCopy = platterColor;
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView] & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v10 = viewCopy;
    [v10 setForegroundColor:colorCopy];
    [v10 setPlatterColor:platterColorCopy];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v16.receiver = self;
  v16.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v16 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    memset(&v15, 0, sizeof(v15));
    CGAffineTransformMakeScale(&v15, v8, v8);
    if (mode == 10)
    {
      v13 = v15;
      [(NTKVictoryDigitalFaceView *)self setTransform:&v13];
      [(NTKVictoryDigitalFaceView *)self setAlpha:v10];
    }

    else if (mode == 13)
    {
      v14 = v15;
      timeView = [(NTKVictoryDigitalFaceView *)self timeView];
      v13 = v14;
      [timeView setTransform:&v13];

      timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
      [timeView2 setAlpha:v10];
    }
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v15.receiver = self;
  v15.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v15 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 13)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v11, v11);
    timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  }

  else
  {
    if (mode != 10)
    {
      return;
    }

    NTKLargeElementScaleForBreathingFraction();
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    foregroundContainerView = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
    v13 = v14;
    [foregroundContainerView setTransform:&v13];

    timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
    v13 = v14;
    [timeView2 setTransform:&v13];

    timeView = [(NTKVictoryDigitalFaceView *)self complicationContainerView];
  }

  v12 = timeView;
  v13 = v14;
  [timeView setTransform:&v13];
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v4 _prepareForEditing];
  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView willBeginEditing];
}

- (void)_cleanupAfterEditing
{
  v13.receiver = self;
  v13.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v13 _cleanupAfterEditing];
  foregroundContainerView = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  v8 = *&CGAffineTransformIdentity.c;
  v10 = *&CGAffineTransformIdentity.a;
  v9 = v10;
  v11 = v8;
  v12 = *&CGAffineTransformIdentity.tx;
  v7 = v12;
  [foregroundContainerView setTransform:&v10];

  foregroundContainerView2 = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [foregroundContainerView2 setAlpha:1.0];

  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  v10 = v9;
  v11 = v8;
  v12 = v7;
  [timeView setTransform:&v10];

  timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView2 setAlpha:1.0];
}

- (CGRect)_timeViewFrame
{
  foregroundContainerView = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [foregroundContainerView bounds];
  v5 = v4;

  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
  v8 = v7;
  v10 = v9;

  device = [(NTKVictoryDigitalFaceView *)self device];
  sub_4444(device, v17);
  v12 = v18;

  v13 = v5 - v8;
  v14 = v12;
  v15 = v8;
  v16 = v10;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v22.receiver = self;
  v22.super_class = NTKVictoryDigitalFaceView;
  [NTKVictoryDigitalFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKVictoryDigitalFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKVictoryDigitalFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  timeView = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView setAlpha:v9];

  [(NTKVictoryDigitalFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKVictoryDigitalFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  foregroundContainerView = [(NTKVictoryDigitalFaceView *)self foregroundContainerView];
  [foregroundContainerView setAlpha:v12];

  device = [(NTKVictoryDigitalFaceView *)self device];
  deviceCategory = [device deviceCategory];

  if (deviceCategory == &dword_0 + 1)
  {
    [(NTKVictoryDigitalFaceView *)self _bottomComplicationAlphaForEditMode:mode];
    [(NTKVictoryDigitalFaceView *)self _bottomComplicationAlphaForEditMode:editMode];
    CLKInterpolateBetweenFloatsClipped();
    v17 = v16;
    v18 = [(NTKVictoryDigitalFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBottom];
    display = [v18 display];
    [display setAlpha:v17];
  }

  [(NTKVictoryDigitalFaceView *)self _logoPlatterAlphaForEditMode:mode];
  [(NTKVictoryDigitalFaceView *)self _logoPlatterAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKComplicationDisplayWrapperView *)self->_logoWrapperView setAlpha:?];
  [(NTKVictoryDigitalFaceView *)self _logoPlatterXOffsetForEditMode:mode];
  [(NTKVictoryDigitalFaceView *)self _logoPlatterXOffsetForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  self->_currentLogoPlatterXOffset = v20;
  [(NTKVictoryDigitalFaceView *)self _positionLogoPlatterView];
  timeView2 = [(NTKVictoryDigitalFaceView *)self timeView];
  [timeView2 clearEditingTransitions];
}

- (double)_timeAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_bottomComplicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 10)
  {
    return 1.0;
  }

  return result;
}

- (double)_logoPlatterXOffsetForEditMode:(int64_t)mode
{
  if (!mode)
  {
    return 0.0;
  }

  device = [(NTKVictoryDigitalFaceView *)self device];
  sub_4444(device, &v6);
  v4 = *(&v6 + 1);

  return v4;
}

- (double)_logoPlatterAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 13)
  {
    return 1.0;
  }

  return result;
}

- (CGRect)_keylineFrameForComplicationSlot:(id)slot selected:(BOOL)selected
{
  v8.receiver = self;
  v8.super_class = NTKVictoryDigitalFaceView;
  [(NTKVictoryDigitalFaceView *)&v8 _keylineFrameForComplicationSlot:slot selected:0];
  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKVictoryDigitalFaceView *)self device];
  if ([device deviceCategory] != &dword_0 + 1)
  {
    if ([slotCopy isEqualToString:NTKComplicationSlot1])
    {
    }

    else
    {
      v7 = [slotCopy isEqualToString:NTKComplicationSlot2];

      if ((v7 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v6 = &dword_0 + 1;
    goto LABEL_8;
  }

LABEL_3:
  v9.receiver = self;
  v9.super_class = NTKVictoryDigitalFaceView;
  v6 = [(NTKVictoryDigitalFaceView *)&v9 _keylineStyleForComplicationSlot:slotCopy];
LABEL_8:

  return v6;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  v9 = NTKComplicationSlotBottom;
  slotCopy = slot;
  if ([slotCopy isEqual:v9])
  {
    v11 = [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKVictoryDigitalFaceView *)self _utilitySlotForSlot:slotCopy]];
  }

  else
  {
    v11 = +[NTKCircularComplicationView mediumViewForComplicationType:](NTKCircularComplicationView, "mediumViewForComplicationType:", [complicationCopy complicationType]);
  }

  v12 = v11;
  [(NTKVictoryDigitalFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];

  return v12;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBottom])
  {
    v21.receiver = self;
    v21.super_class = NTKVictoryDigitalFaceView;
    [(NTKVictoryDigitalFaceView *)&v21 _configureComplicationView:viewCopy forSlot:slotCopy];
    v8 = viewCopy;
    palette = [(NTKVictoryDigitalFaceView *)self palette];
    complication = [palette complication];
    [v8 setForegroundColor:complication];

    palette2 = [(NTKVictoryDigitalFaceView *)self palette];
    complicationPlatter = [palette2 complicationPlatter];
    [v8 setPlatterColor:complicationPlatter];

    [v8 setForegroundAlpha:1.0];
    [v8 setForegroundImageAlpha:1.0];
    device = [(NTKVictoryDigitalFaceView *)self device];
    [v8 setShouldUseBackgroundPlatter:{objc_msgSend(device, "deviceCategory") == &dword_0 + 1}];

    [v8 setAlwaysEnforcePlatterInset:1];
    [v8 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKVictoryDigitalFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
    device2 = [(NTKVictoryDigitalFaceView *)self device];
    sizeClass = [device2 sizeClass];

    if (sizeClass == &dword_0 + 3)
    {
      [v8 setFontSize:14.5];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = viewCopy;
      [v16 setUsesMediumLayout:1];
      palette3 = [(NTKVictoryDigitalFaceView *)self palette];
      complication2 = [palette3 complication];
      [v16 setForegroundColor:complication2];

      palette4 = [(NTKVictoryDigitalFaceView *)self palette];
      complicationPlatter2 = [palette4 complicationPlatter];
      [v16 setPlatterColor:complicationPlatter2];
    }
  }
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  if ([slot isEqualToString:NTKComplicationSlotBottom])
  {
    return 10;
  }

  else
  {
    return 0;
  }
}

- (void)_loadLayoutRules
{
  [(NTKVictoryDigitalFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v15[0] = NTKComplicationSlot1;
  v15[1] = NTKComplicationSlot2;
  v14 = [NSArray arrayWithObjects:v15 count:2];
  v11 = v14;
  NTKEnumerateComplicationStates();
  v12 = NTKComplicationSlotBottom;
  v13 = [(NTKVictoryDigitalFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory configureComplicationLayout:v13 forSlot:[(NTKVictoryDigitalFaceView *)self _utilitySlotForSlot:v12] withBounds:v4, v6, v8, v10];
}

- (double)_keylineEdgeGapForState:(int64_t)state
{
  v3 = 0.0;
  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      device = [(NTKVictoryDigitalFaceView *)self device];
      sub_4444(device, &v6);
      v3 = *(&v6 + 1);
    }

    else
    {
      device = [(NTKVictoryDigitalFaceView *)self device];
      sub_4444(device, v7);
      v3 = v7[0];
    }
  }

  return v3;
}

- (double)_keylinePaddingForState:(int64_t)state
{
  result = 0.0;
  if ((state & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    NTKKeylineWidth();
    return v4 + 2.0;
  }

  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 13)
  {
    return &off_11070;
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
  if (mode == 13)
  {
    v10 = optionCopy;
    v11 = [options objectForKeyedSubscript:&off_10B70];
    if (!qword_16DC8)
    {
      v12 = objc_opt_new();
      v13 = qword_16DC8;
      qword_16DC8 = v12;
    }

    v14 = [NSString stringWithFormat:@"%@-%@", v10, v11];
    v15 = [qword_16DC8 objectForKey:v14];
    if (!v15)
    {
      style = [v10 style];
      v17 = &stru_107B0;
      v18 = @"Italic-Fill";
      v19 = @"Italic-Fill";
      v20 = 1;
      if (style == (&dword_0 + 3))
      {
        v17 = @"Italic-Fill";
      }

      if (style == &dword_4)
      {
        v20 = 0;
        v17 = @"Italic-HalfFill";
      }

      else
      {
        v19 = 0;
      }

      if (style == (&dword_4 + 1))
      {
        v21 = 0;
      }

      else
      {
        v21 = v20;
      }

      if (style != (&dword_4 + 1))
      {
        v18 = v19;
      }

      v41 = v18;
      if (style == (&dword_4 + 1))
      {
        v22 = @"Italic-Outline";
      }

      else
      {
        v22 = v17;
      }

      v23 = [@"Swatch-VictoryDigital-" stringByAppendingString:v22];
      faceColorPalette = [(NTKVictoryDigitalFaceView *)self faceColorPalette];
      v25 = [faceColorPalette copy];

      pigmentEditOption = [v11 pigmentEditOption];
      [v25 setPigmentEditOption:pigmentEditOption];

      digits = [v25 digits];
      v43 = v23;
      v28 = [NTKVictoryDigitalFaceBundle imageWithName:v23];
      v42 = digits;
      v29 = [v28 _flatImageWithColor:digits];

      if (v21)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        v32 = [@"Swatch-VictoryDigital-" stringByAppendingString:v41];
        digitsOutlineBackground = [v25 digitsOutlineBackground];
        v31 = v32;
        v34 = [NTKVictoryDigitalFaceBundle imageWithName:v32];
        v30 = [v34 _flatImageWithColor:digitsOutlineBackground];
      }

      v35 = [UIGraphicsImageRenderer alloc];
      [v29 size];
      v36 = [v35 initWithSize:?];
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_3CDC;
      v45[3] = &unk_10498;
      v46 = v25;
      v47 = v30;
      v48 = v29;
      v37 = v29;
      v38 = v30;
      v39 = v25;
      v15 = [v36 imageWithActions:v45];
      [qword_16DC8 setObject:v15 forKey:v14];
    }
  }

  else
  {
    v44.receiver = self;
    v44.super_class = NTKVictoryDigitalFaceView;
    v15 = [(NTKVictoryDigitalFaceView *)&v44 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v15;
}

@end