@interface NTKVictoryAnalogFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (int64_t)uiSensitivity;
- (BOOL)_wantsStatusBarIconShadow;
- (CGPoint)_contentCenterOffset;
- (CGPoint)_myContentCenterOffset;
- (NTKVictoryAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_backgroundAlphaForEditMode:(int64_t)mode;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot;
- (double)_handsAlphaForEditMode:(int64_t)mode;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_keylineEdgeGapForState:(int64_t)state;
- (double)_keylinePaddingForState:(int64_t)state;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_slotForUtilitySlot:(int64_t)slot;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (int64_t)_utilitySlotForSlot:(id)slot;
- (unint64_t)textLayoutStyleForSlot:(int64_t)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyColor:(id)color alternateColor:(id)alternateColor toComplicationView:(id)view;
- (void)_applyComplicationViewColor:(id)color alternateColor:(id)alternateColor;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_setStyle:(unint64_t)style;
- (void)_unloadSnapshotContentViews;
- (void)logoTappedFromRect:(CGRect)rect;
@end

@implementation NTKVictoryAnalogFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (NTKVictoryAnalogFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = NTKVictoryAnalogFaceView;
  v9 = [(NTKVictoryAnalogFaceView *)&v21 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v20 = 0.0;
    v18 = 0u;
    v19 = 0u;
    v11 = [(NTKVictoryAnalogFaceView *)v9 device:0];
    sub_5CB0(v11, &v17);

    v12 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    utilityComplicationFactory = v10->_utilityComplicationFactory;
    v10->_utilityComplicationFactory = v12;

    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setDelegate:v10];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setBottomCenterLayout:3];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setScreenEdgeInsets:v18, v19];
    [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setMaxNormalLongWidth:v20];
    device = [(NTKVictoryAnalogFaceView *)v10 device];
    deviceCategory = [device deviceCategory];

    if (deviceCategory != &dword_0 + 1)
    {
      [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setNormalSidePadding:0.0];
      [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setNormalCircularPadding:CGSizeZero.width, CGSizeZero.height];
      [(NTKUtilityComplicationFactory *)v10->_utilityComplicationFactory setCrownIndicatorGap:0.0];
    }

    [(NTKVictoryAnalogFaceView *)v10 setComplicationFactory:v10->_utilityComplicationFactory];
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = [[NTKVictoryAnalogColorPalette alloc] initWithFaceClass:objc_opt_class()];

  return v2;
}

- (void)_loadSnapshotContentViews
{
  v19.receiver = self;
  v19.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v19 _loadSnapshotContentViews];
  device = [(NTKVictoryAnalogFaceView *)self device];
  v4 = [UIView alloc];
  [device screenBounds];
  v5 = [v4 initWithFrame:?];
  scaleView = self->_scaleView;
  self->_scaleView = v5;

  contentView = [(NTKVictoryAnalogFaceView *)self contentView];
  [contentView insertSubview:self->_scaleView atIndex:0];

  v8 = [NTKVictoryAnalogBackgroundView alloc];
  [device screenBounds];
  v9 = [v8 initWithFrame:device forDevice:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v9;

  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setDelegate:self];
  [(UIView *)self->_scaleView addSubview:self->_backgroundView];
  v11 = [NTKRoundedCornerOverlayView alloc];
  [(NTKVictoryAnalogFaceView *)self bounds];
  v12 = [v11 initWithFrame:device forDeviceCornerRadius:?];
  cornerView = self->_cornerView;
  self->_cornerView = v12;

  contentView2 = [(NTKVictoryAnalogFaceView *)self contentView];
  [contentView2 insertSubview:self->_cornerView aboveSubview:self->_scaleView];

  v15 = [UIView alloc];
  [device screenBounds];
  v16 = [v15 initWithFrame:?];
  contentBackgroundView = self->_contentBackgroundView;
  self->_contentBackgroundView = v16;

  contentView3 = [(NTKVictoryAnalogFaceView *)self contentView];
  [contentView3 insertSubview:self->_contentBackgroundView atIndex:0];
}

- (void)_unloadSnapshotContentViews
{
  [(UIView *)self->_contentBackgroundView removeFromSuperview];
  contentBackgroundView = self->_contentBackgroundView;
  self->_contentBackgroundView = 0;

  [(UIView *)self->_scaleView removeFromSuperview];
  scaleView = self->_scaleView;
  self->_scaleView = 0;

  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;

  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;

  v7.receiver = self;
  v7.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v7 _unloadSnapshotContentViews];
}

- (void)_configureTimeView:(id)view
{
  v6.receiver = self;
  v6.super_class = NTKVictoryAnalogFaceView;
  viewCopy = view;
  [(NTKVictoryAnalogFaceView *)&v6 _configureTimeView:viewCopy];
  secondHandView = [viewCopy secondHandView];

  v5 = +[UIColor blackColor];
  [secondHandView setHandDotColor:v5];
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKVictoryAppLauncher prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)_applyDataMode
{
  v3 = [(NTKVictoryAnalogFaceView *)self dataMode]== &dword_0 + 1;
  backgroundView = self->_backgroundView;

  [(NTKVictoryAnalogBackgroundView *)backgroundView setUserInteractionEnabled:v3];
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  v4 = [(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:slot];

  [(NTKUtilityComplicationFactory *)utilityComplicationFactory keylineCornerRadiusForSlot:v4];
  return result;
}

- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot
{
  v4 = &NTKEditSpeedComplicationsDefault;
  if (mode != 10)
  {
    v4 = &NTKEditSpeedCustomEditModeDefault;
  }

  return *v4;
}

- (CGPoint)_contentCenterOffset
{
  [(NTKVictoryAnalogFaceView *)self _myContentCenterOffset];
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)_myContentCenterOffset
{
  v3 = [(NTKVictoryAnalogFaceView *)self optionForCustomEditMode:11 slot:0];
  style = [v3 style];

  if (style == &dword_4)
  {
    goto LABEL_2;
  }

  delegate = [(NTKVictoryAnalogFaceView *)self delegate];
  v8 = [delegate faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBottomCenter];

  y = 2.0;
  x = 0.0;
  if (v8)
  {
    goto LABEL_10;
  }

  delegate2 = [(NTKVictoryAnalogFaceView *)self delegate];
  if ([delegate2 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotTopLeft])
  {
    delegate3 = [(NTKVictoryAnalogFaceView *)self delegate];
    v11 = [delegate3 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotTopRight];

    if (v11)
    {
LABEL_2:
      x = CGPointZero.x;
      y = CGPointZero.y;
      goto LABEL_10;
    }
  }

  else
  {
  }

  y = 2.0;
  if (style != (&dword_0 + 3))
  {
    y = 1.0;
  }

LABEL_10:
  v12 = x;
  result.y = y;
  result.x = v12;
  return result;
}

- (BOOL)_wantsStatusBarIconShadow
{
  palette = [(NTKVictoryAnalogFaceView *)self palette];
  background = [palette background];
  v4 = CLKIsBlackColor();

  return v4 ^ 1;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    backgroundView = self->_backgroundView;
    palette = [(NTKVictoryAnalogFaceView *)self palette];
    [(NTKVictoryAnalogBackgroundView *)backgroundView setPalette:palette];

    palette2 = [(NTKVictoryAnalogFaceView *)self palette];
    background = [palette2 background];
    [(UIView *)self->_contentBackgroundView setBackgroundColor:background];

    delegate = [(NTKVictoryAnalogFaceView *)self delegate];
    [delegate faceViewDidChangeWantsStatusBarIconShadow];
  }

  else if (mode == 11)
  {
    -[NTKVictoryAnalogFaceView _setStyle:](self, "_setStyle:", [optionCopy style]);
  }

  else if ((mode & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    goto LABEL_9;
  }

  v14 = [(NTKVictoryAnalogFaceView *)self optionForCustomEditMode:10 slot:0];
  pigmentEditOption = [v14 pigmentEditOption];

  if (pigmentEditOption)
  {
    palette3 = [(NTKVictoryAnalogFaceView *)self palette];
    hands = [palette3 hands];

    timeView = [(NTKVictoryAnalogFaceView *)self timeView];
    minuteHandView = [timeView minuteHandView];
    [minuteHandView setColor:hands];

    hourHandView = [timeView hourHandView];
    [hourHandView setColor:hands];

    secondHandView = [timeView secondHandView];
    palette4 = [(NTKVictoryAnalogFaceView *)self palette];
    secondHand = [palette4 secondHand];
    [secondHandView setColor:secondHand];

    palette5 = [(NTKVictoryAnalogFaceView *)self palette];
    handInlay = [palette5 handInlay];

    minuteHandView2 = [timeView minuteHandView];
    [minuteHandView2 setInlayColor:handInlay];

    hourHandView2 = [timeView hourHandView];
    [hourHandView2 setInlayColor:handInlay];

    palette6 = [(NTKVictoryAnalogFaceView *)self palette];
    cornerComplicationsAccent = [palette6 cornerComplicationsAccent];
    palette7 = [(NTKVictoryAnalogFaceView *)self palette];
    cornerComplicationsAlternate = [palette7 cornerComplicationsAlternate];
    [(NTKVictoryAnalogFaceView *)self _applyComplicationViewColor:cornerComplicationsAccent alternateColor:cornerComplicationsAlternate];
  }

LABEL_9:
}

- (void)_setStyle:(unint64_t)style
{
  self->_style = style;
  palette = [(NTKVictoryAnalogFaceView *)self palette];
  [palette setStyle:style];

  backgroundView = self->_backgroundView;
  palette2 = [(NTKVictoryAnalogFaceView *)self palette];
  [(NTKVictoryAnalogBackgroundView *)backgroundView setPalette:palette2];

  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setStyle:style];
  palette3 = [(NTKVictoryAnalogFaceView *)self palette];
  background = [palette3 background];
  [(UIView *)self->_contentBackgroundView setBackgroundColor:background];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    backgroundView = self->_backgroundView;
    interpolatedColorPalette = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    fromPalette = [interpolatedColorPalette fromPalette];
    interpolatedColorPalette2 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    toPalette = [interpolatedColorPalette2 toPalette];
    [(NTKVictoryAnalogBackgroundView *)backgroundView applyTransitionFraction:fromPalette fromPalette:toPalette toPalette:[(NTKVictoryAnalogBackgroundView *)self->_backgroundView style] style:fraction];

    interpolatedColorPalette3 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    cornerComplicationsAccent = [interpolatedColorPalette3 cornerComplicationsAccent];
    interpolatedColorPalette4 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    cornerComplicationsAlternate = [interpolatedColorPalette4 cornerComplicationsAlternate];
    [(NTKVictoryAnalogFaceView *)self _applyComplicationViewColor:cornerComplicationsAccent alternateColor:cornerComplicationsAlternate];

    interpolatedColorPalette5 = [(NTKVictoryAnalogFaceView *)self interpolatedColorPalette];
    background = [interpolatedColorPalette5 background];
    [(UIView *)self->_contentBackgroundView setBackgroundColor:background];
LABEL_9:

    goto LABEL_10;
  }

  if (mode == 11)
  {
    style = [optionCopy style];
    style2 = [toOptionCopy style];
    if (style != style2)
    {
      if (fraction >= 0.5)
      {
        v30 = style2;
        CLKMapFractionIntoRange();
        v18 = v31;
        style = v30;
      }

      else
      {
        CLKMapFractionIntoRange();
        v18 = v17;
      }

      palette = [(NTKVictoryAnalogFaceView *)self palette];
      interpolatedColorPalette5 = [palette copy];

      [interpolatedColorPalette5 setStyle:style];
      CLKMapFractionIntoRange();
      memset(&v38, 0, sizeof(v38));
      CGAffineTransformMakeScale(&v38, v33, v33);
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setStyle:style];
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setPalette:interpolatedColorPalette5];
      v37 = v38;
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setTransform:&v37];
      [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setAlpha:v18];
      background = [(NTKVictoryAnalogFaceView *)self palette];
      cornerComplicationsAccent2 = [background cornerComplicationsAccent];
      palette2 = [(NTKVictoryAnalogFaceView *)self palette];
      cornerComplicationsAlternate2 = [palette2 cornerComplicationsAlternate];
      [(NTKVictoryAnalogFaceView *)self _applyComplicationViewColor:cornerComplicationsAccent2 alternateColor:cornerComplicationsAlternate2];

      goto LABEL_9;
    }
  }

LABEL_10:
}

- (void)_applyComplicationViewColor:(id)color alternateColor:(id)alternateColor
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_4060;
  v7[3] = &unk_C4B0;
  selfCopy = self;
  colorCopy = color;
  alternateColorCopy = alternateColor;
  v5 = alternateColorCopy;
  v6 = colorCopy;
  [(NTKVictoryAnalogFaceView *)selfCopy enumerateComplicationDisplayWrappersWithBlock:v7];
}

- (void)_applyColor:(id)color alternateColor:(id)alternateColor toComplicationView:(id)view
{
  colorCopy = color;
  viewCopy = view;
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = viewCopy;
    faceColorPalette = [(NTKVictoryAnalogFaceView *)self faceColorPalette];
    [v8 applyFaceColorPalette:faceColorPalette units:1];

    [v8 setForegroundColor:colorCopy];
    [v8 setForegroundAlpha:1.0];
    [v8 setForegroundImageAlpha:1.0];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v21.receiver = self;
  v21.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v21 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForRubberBandingFraction();
    v8 = v7;
    NTKAlphaForRubberBandingFraction();
    v10 = v9;
    [(NTKVictoryAnalogFaceView *)self _complicationAlphaForEditMode:mode];
    v12 = v10 * v11;
    [(NTKVictoryAnalogFaceView *)self _backgroundAlphaForEditMode:mode];
    v14 = v10 * v13;
    memset(&v20, 0, sizeof(v20));
    CGAffineTransformMakeScale(&v20, v8, v8);
    foregroundContainerView = [(NTKVictoryAnalogFaceView *)self foregroundContainerView];
    v19 = v20;
    [foregroundContainerView setTransform:&v19];
    [foregroundContainerView setAlpha:v12];
    backgroundView = self->_backgroundView;
    v19 = v20;
    [(NTKVictoryAnalogBackgroundView *)backgroundView setTransform:&v19];
    [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setAlpha:v14];
    cornerView = self->_cornerView;
    v19 = v20;
    [(NTKRoundedCornerOverlayView *)cornerView setTransform:&v19];
    contentBackgroundView = self->_contentBackgroundView;
    v19 = v20;
    [(UIView *)contentBackgroundView setTransform:&v19];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v12.receiver = self;
  v12.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v12 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v11, 0, sizeof(v11));
    CGAffineTransformMakeScale(&v11, v7, v7);
    contentView = [(NTKVictoryAnalogFaceView *)self contentView];
    v10 = v11;
    [contentView setTransform:&v10];

    complicationContainerView = [(NTKVictoryAnalogFaceView *)self complicationContainerView];
    v10 = v11;
    [complicationContainerView setTransform:&v10];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v14.receiver = self;
  v14.super_class = NTKVictoryAnalogFaceView;
  [NTKVictoryAnalogFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKVictoryAnalogFaceView *)self _handsAlphaForEditMode:mode];
  [(NTKVictoryAnalogFaceView *)self _handsAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  timeView = [(NTKVictoryAnalogFaceView *)self timeView];
  [timeView setAlpha:v9];

  [(NTKVictoryAnalogFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKVictoryAnalogFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  foregroundContainerView = [(NTKVictoryAnalogFaceView *)self foregroundContainerView];
  [foregroundContainerView setAlpha:v12];

  [(NTKVictoryAnalogFaceView *)self _backgroundAlphaForEditMode:mode];
  [(NTKVictoryAnalogFaceView *)self _backgroundAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView setAlpha:?];
}

- (double)_backgroundAlphaForEditMode:(int64_t)mode
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
  if ((mode & 0xFFFFFFFFFFFFFFFELL) != 0xA)
  {
    return 1.0;
  }

  return result;
}

- (double)_handsAlphaForEditMode:(int64_t)mode
{
  result = 0.0;
  if ((mode - 10) >= 2)
  {
    if (mode == 1)
    {
      return NTKEditModeDimmedAlpha;
    }

    else
    {
      return 1.0;
    }
  }

  return result;
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v3 _prepareForEditing];
  [(NTKVictoryAnalogBackgroundView *)self->_backgroundView willBeginEditing];
}

- (void)logoTappedFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(NTKVictoryAnalogFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:delegate];

  delegate2 = [(NTKVictoryAnalogFaceView *)self delegate];
  [delegate2 faceViewRequestedLaunchFromRect:{x, y, width, height}];
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  slotCopy = slot;
  complicationCopy = complication;
  v11 = [(NTKUtilityComplicationFactory *)utilityComplicationFactory newViewForComplication:complicationCopy family:family forSlot:[(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:slotCopy]];

  [(NTKVictoryAnalogFaceView *)self _configureComplicationView:v11 forSlot:slotCopy];
  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v15.receiver = self;
  v15.super_class = NTKVictoryAnalogFaceView;
  [(NTKVictoryAnalogFaceView *)&v15 _configureComplicationView:viewCopy forSlot:slotCopy];
  v8 = [(NTKVictoryAnalogFaceView *)self optionForCustomEditMode:10 slot:0];
  pigmentEditOption = [v8 pigmentEditOption];

  if (pigmentEditOption)
  {
    palette = [(NTKVictoryAnalogFaceView *)self palette];
    cornerComplicationsAccent = [palette cornerComplicationsAccent];
    palette2 = [(NTKVictoryAnalogFaceView *)self palette];
    cornerComplicationsAlternate = [palette2 cornerComplicationsAlternate];
    [(NTKVictoryAnalogFaceView *)self _applyColor:cornerComplicationsAccent alternateColor:cornerComplicationsAlternate toComplicationView:viewCopy];

    if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
    {
      v14 = viewCopy;
      [v14 setPlacement:{+[NTKUtilityComplicationFactory placementForSlot:](NTKUtilityComplicationFactory, "placementForSlot:", -[NTKVictoryAnalogFaceView _utilitySlotForSlot:](self, "_utilitySlotForSlot:", slotCopy))}];
      [v14 setAlwaysEnforcePlatterInset:{objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomCenter)}];
    }
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  utilityComplicationFactory = self->_utilityComplicationFactory;
  v6 = [(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:slot];

  return [(NTKUtilityComplicationFactory *)utilityComplicationFactory layoutOverrideForComplicationType:type inSlot:v6];
}

- (int64_t)_utilitySlotForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft])
  {
    v4 = 1;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotTopRight])
  {
    v4 = 2;
  }

  else if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)_slotForUtilitySlot:(int64_t)slot
{
  switch(slot)
  {
    case 1:
      v4 = &NTKComplicationSlotTopLeft;
LABEL_7:
      v5 = *v4;

      return v5;
    case 10:
      v4 = &NTKComplicationSlotBottomCenter;
      goto LABEL_7;
    case 2:
      v4 = &NTKComplicationSlotTopRight;
      goto LABEL_7;
  }

  v5 = 0;

  return v5;
}

- (void)_loadLayoutRules
{
  [(NTKVictoryAnalogFaceView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29[0] = NTKComplicationSlotTopLeft;
  v29[1] = NTKComplicationSlotTopRight;
  v29[2] = NTKComplicationSlotBottomCenter;
  v11 = [NSArray arrayWithObjects:v29 count:3];
  v12 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v26;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v26 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v25 + 1) + 8 * i);
        v17 = [(NTKVictoryAnalogFaceView *)self complicationLayoutforSlot:v16];
        [(NTKUtilityComplicationFactory *)self->_utilityComplicationFactory configureComplicationLayout:v17 forSlot:[(NTKVictoryAnalogFaceView *)self _utilitySlotForSlot:v16] withBounds:v4, v6, v8, v10];
      }

      v13 = [v11 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v13);
  }

  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_4C84;
  v24[3] = &unk_C500;
  v24[4] = self;
  v18 = objc_retainBlock(v24);
  device = [(NTKVictoryAnalogFaceView *)self device];
  NTKDefaultCornerComplicationScaleForFullscreenOpaqueFaceForDevice();
  v21 = v20;

  memset(&v23, 0, sizeof(v23));
  CGAffineTransformMakeScale(&v23, v21, v21);
  v22 = v18;
  NTKEnumerateComplicationStates();
}

- (double)_keylineEdgeGapForState:(int64_t)state
{
  v3 = 0.0;
  if ((state - 2) >= 2)
  {
    if (state == 1)
    {
      device = [(NTKVictoryAnalogFaceView *)self device];
      sub_5CB0(device, v6);
      v3 = *&v6[1];
    }

    else
    {
      device = [(NTKVictoryAnalogFaceView *)self device];
      sub_5CB0(device, v7);
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
    return v4 + 1.5;
  }

  return result;
}

- (unint64_t)textLayoutStyleForSlot:(int64_t)slot
{
  v4 = [(NTKVictoryAnalogFaceView *)self _slotForUtilitySlot:slot];
  v5 = [(NTKVictoryAnalogFaceView *)self layoutStyleForSlot:v4];

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 11)
  {
    return &off_CDD0;
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
    v11 = [options objectForKeyedSubscript:&off_CB38];
    pigmentEditOption = [v11 pigmentEditOption];

    if (!qword_12490)
    {
      v13 = objc_opt_new();
      v14 = qword_12490;
      qword_12490 = v13;
    }

    v15 = [NSString stringWithFormat:@"%@-%@", v10, pigmentEditOption];
    v16 = [qword_12490 objectForKey:v15];
    if (!v16)
    {
      [(NTKVictoryAnalogFaceView *)self palette];
      v17 = v65 = v15;
      v18 = [v17 copyWithOption:pigmentEditOption];

      [v18 setStyle:{objc_msgSend(v10, "style")}];
      backgroundColor = [v18 backgroundColor];
      v19 = [NTKVictoryAnalogBackgroundView alloc];
      device = [(NTKVictoryAnalogFaceView *)self device];
      [device screenBounds];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;
      device2 = [(NTKVictoryAnalogFaceView *)self device];
      v30 = [v19 initWithFrame:device2 forDevice:{v22, v24, v26, v28}];

      [v30 setStyle:{objc_msgSend(v10, "style")}];
      v31 = v18;
      [v30 setPalette:v18];
      hands = [v18 hands];
      v62 = v18;
      handInlay = [v18 handInlay];
      v34 = NTKImageNamed();
      v35 = v34;
      v63 = hands;
      v64 = handInlay;
      if (handInlay)
      {
        v36 = handInlay;
      }

      else
      {
        v36 = hands;
      }

      v58 = [v34 _flatImageWithColor:v36];

      v37 = NTKImageNamed();
      v38 = [v37 _flatImageWithColor:hands];

      v39 = NTKImageNamed();
      v40 = NTKImageNamed();
      [v31 secondHand];
      v41 = v66 = pigmentEditOption;
      v42 = [v40 _flatImageWithColor:v41];

      device3 = [(NTKVictoryAnalogFaceView *)self device];
      [device3 screenBounds];
      v45 = v44;
      v47 = v46;

      v48 = [[UIGraphicsImageRenderer alloc] initWithSize:{v45, v47}];
      v70[0] = _NSConcreteStackBlock;
      v70[1] = 3221225472;
      v70[2] = sub_544C;
      v70[3] = &unk_C550;
      v71 = backgroundColor;
      v72 = v30;
      v73 = v38;
      v74 = v39;
      v75 = v58;
      v76 = v42;
      v60 = v42;
      v59 = v58;
      v49 = v39;
      v57 = v38;
      v56 = v30;
      v50 = backgroundColor;
      v51 = [v48 imageWithActions:v70];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      v52 = [UIGraphicsImageRenderer alloc];
      +[NTKEditOption sizeForSwatchStyle:](NTKEditOption, "sizeForSwatchStyle:", [v10 swatchStyle]);
      v53 = v52;
      pigmentEditOption = v66;
      v54 = [v53 initWithSize:?];

      v68[0] = _NSConcreteStackBlock;
      v68[1] = 3221225472;
      v68[2] = sub_55D0;
      v68[3] = &unk_C578;
      v69 = v51;
      v15 = v65;
      v16 = [v54 imageWithActions:v68];
      [qword_12490 setObject:v16 forKey:v65];
    }
  }

  else
  {
    v67.receiver = self;
    v67.super_class = NTKVictoryAnalogFaceView;
    v16 = [(NTKVictoryAnalogFaceView *)&v67 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:options];
  }

  return v16;
}

@end