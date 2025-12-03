@interface NTKCaliforniaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarIconShadow;
- (BOOL)isCircularDialWithBezel;
- (NTKCaliforniaFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot;
- (double)_minimumBreathingScaleForComplicationSlot:(id)slot;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (double)bezelComplicationTextWidthInRadians;
- (double)californiaContentViewScale;
- (double)circleDiameter;
- (id)_simpleTextComplicationColorForEditMode:(int64_t)mode;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)backgroundColorForDial:(unint64_t)dial palette:(id)palette;
- (id)createFaceColorPalette;
- (id)utilityBezelComplicationView;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyComplicationColorTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_removeBackgroundView;
- (void)_removeCaliforniaContentView;
- (void)_removeViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupBackgroundView;
- (void)_setupCaliforniaContentView;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)style;
- (void)_updateDialBezelComplicationColor:(id)color;
- (void)_updateDialTicksForBezelText;
- (void)_updateSimpleTextLabelColor:(id)color;
- (void)_updateSubDialRichComplicationsColor:(id)color alternateColor:(id)alternateColor;
- (void)applyColorOnAnalogHands;
- (void)applyTransitionToCircularDialWithBezelFraction:(double)fraction;
- (void)layoutSubviews;
- (void)setCircularMaskForCircularDialFraction:(double)fraction circleDiameter:(double)diameter;
- (void)setDial:(unint64_t)dial;
- (void)setStyle:(unint64_t)style;
- (void)updateCircularMask;
- (void)updateWithPalette:(id)palette;
@end

@implementation NTKCaliforniaFaceView

- (NTKCaliforniaFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v33.receiver = self;
  v33.super_class = NTKCaliforniaFaceView;
  v9 = [(NTKCaliforniaFaceView *)&v33 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = objc_alloc_init(NTKCompositeComplicationFactory);
    v11 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    device = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(device, v31);
    v13 = [v11 initWithFaceView:v9 dialDiameter:deviceCopy device:v32];

    [v13 setUsesNarrowTopSlots:1];
    [v13 setAlpha:v9 faceView:1.0];
    v34[0] = NTKComplicationSlotTopLeft;
    v34[1] = NTKComplicationSlotTopRight;
    v34[2] = NTKComplicationSlotBottomLeft;
    v34[3] = NTKComplicationSlotBottomRight;
    v14 = [NSArray arrayWithObjects:v34 count:4];
    [v10 registerFactory:v13 forSlots:v14];

    v15 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    [v15 setFaceView:v9];
    device2 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(device2, v29);
    [v15 setDialDiameter:v30];

    [v10 registerFactory:v15 forSlot:NTKComplicationSlotBezel];
    v17 = [NTKFullscreenSubdialComplicationFactory alloc];
    device3 = [(NTKCaliforniaFaceView *)v9 device];
    v19 = [v17 initForDevice:device3];

    [v19 setFaceView:v9];
    device4 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(device4, v26);
    [v19 setCircularComplicationDistanceFromCenter:{v27, v28}];

    [v19 setAlpha:v9 faceView:1.0];
    [v10 registerFactory:v19 forSlot:NTKComplicationSlotSubdialBottom];
    v21 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v21 setFaceView:v9];
    device5 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(device5, v24);
    [v21 setVerticalCenterOffset:v25];

    [v10 registerFactory:v21 forSlot:NTKComplicationSlotSubdialTop];
    [(NTKCaliforniaFaceView *)v9 setComplicationFactory:v10];
  }

  return v9;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKCaliforniaColorPalette);

  return v2;
}

- (BOOL)_wantsStatusBarIconShadow
{
  if (!self->_dial)
  {
    return 0;
  }

  colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
  isBlackBackground = [colorPalette isBlackBackground];

  return isBlackBackground ^ 1;
}

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKCaliforniaFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKCaliforniaFaceView *)self switcherSnapshotView];
    [(NTKCaliforniaFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKCaliforniaFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKCaliforniaFaceView *)self _removeViews];
}

- (void)_setupBackgroundView
{
  v3 = [UIView alloc];
  [(NTKCaliforniaFaceView *)self bounds];
  v4 = [v3 initWithFrame:?];
  backgroundView = self->_backgroundView;
  self->_backgroundView = v4;

  contentView = [(NTKCaliforniaFaceView *)self contentView];
  [contentView addSubview:self->_backgroundView];
}

- (void)_setupCaliforniaContentView
{
  v3 = [NTKCaliforniaContentView alloc];
  [(NTKCaliforniaFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  dial = self->_dial;
  style = self->_style;
  colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
  device = [(NTKCaliforniaFaceView *)self device];
  v16 = [(NTKCaliforniaContentView *)v3 initWithFrame:dial dial:style style:colorPalette colorPalette:device device:v5, v7, v9, v11];
  californiaContentView = self->_californiaContentView;
  self->_californiaContentView = v16;

  contentView = [(NTKCaliforniaFaceView *)self contentView];
  [contentView addSubview:self->_californiaContentView];
}

- (void)_setupViews
{
  [(NTKCaliforniaFaceView *)self _setupBackgroundView];
  [(NTKCaliforniaFaceView *)self _setupCaliforniaContentView];
  v3 = [NTKRoundedCornerOverlayView alloc];
  [(NTKCaliforniaFaceView *)self bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  device = [(NTKCaliforniaFaceView *)self device];
  v13 = [v3 initWithFrame:device forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v13;

  contentView = [(NTKCaliforniaFaceView *)self contentView];
  [contentView addSubview:self->_cornerView];

  [(NTKCaliforniaFaceView *)self applyColorOnAnalogHands];
  [(NTKCaliforniaFaceView *)self updateCircularMask];

  [(NTKCaliforniaFaceView *)self _updateDialTicksForBezelText];
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v6 layoutSubviews];
  backgroundView = self->_backgroundView;
  [(NTKCaliforniaFaceView *)self bounds];
  [(UIView *)backgroundView ntk_setBoundsAndPositionFromFrame:?];
  californiaContentView = self->_californiaContentView;
  [(NTKCaliforniaFaceView *)self bounds];
  [(NTKCaliforniaContentView *)californiaContentView ntk_setBoundsAndPositionFromFrame:?];
  cornerView = self->_cornerView;
  [(NTKCaliforniaFaceView *)self bounds];
  [(NTKRoundedCornerOverlayView *)cornerView ntk_setBoundsAndPositionFromFrame:?];
  if (([(NTKCaliforniaFaceView *)self editing]& 1) == 0 && !self->_dial)
  {
    [(NTKCaliforniaFaceView *)self updateCircularMask];
  }
}

- (void)_removeViews
{
  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;

  [(NTKCaliforniaFaceView *)self _removeCaliforniaContentView];

  [(NTKCaliforniaFaceView *)self _removeBackgroundView];
}

- (void)_removeBackgroundView
{
  [(UIView *)self->_backgroundView removeFromSuperview];
  backgroundView = self->_backgroundView;
  self->_backgroundView = 0;
}

- (void)_removeCaliforniaContentView
{
  [(NTKCaliforniaContentView *)self->_californiaContentView removeFromSuperview];
  californiaContentView = self->_californiaContentView;
  self->_californiaContentView = 0;
}

- (void)applyColorOnAnalogHands
{
  colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
  clockHandsInlay = [colorPalette clockHandsInlay];

  colorPalette2 = [(NTKCaliforniaFaceView *)self colorPalette];
  clockHands = [colorPalette2 clockHands];

  timeView = [(NTKCaliforniaFaceView *)self timeView];
  hourHandView = [timeView hourHandView];
  [hourHandView setInlayColor:clockHandsInlay];

  minuteHandView = [timeView minuteHandView];
  [minuteHandView setInlayColor:clockHandsInlay];

  hourHandView2 = [timeView hourHandView];
  [hourHandView2 setColor:clockHands];

  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setColor:clockHands];

  colorPalette3 = [(NTKCaliforniaFaceView *)self colorPalette];
  secondHand = [colorPalette3 secondHand];
  secondHandView = [timeView secondHandView];
  [secondHandView setColor:secondHand];

  secondHandView2 = [timeView secondHandView];
  [secondHandView2 setHandDotColor:clockHandsInlay];
}

- (void)updateWithPalette:(id)palette
{
  v5 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:self->_dial palette:palette];
  backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
  [backgroundView setBackgroundColor:v5];
}

- (id)backgroundColorForDial:(unint64_t)dial palette:(id)palette
{
  if (dial == 1)
  {
    [palette background];
  }

  else
  {
    [palette circularBackground];
  }
  v4 = ;

  return v4;
}

- (void)setDial:(unint64_t)dial
{
  self->_dial = dial;
  if (dial)
  {
    californiaContentView = self->_californiaContentView;
    v5 = *&CGAffineTransformIdentity.c;
    *&v12.a = *&CGAffineTransformIdentity.a;
    *&v12.c = v5;
    *&v12.tx = *&CGAffineTransformIdentity.tx;
    [(NTKCaliforniaContentView *)californiaContentView setTransform:&v12];
  }

  else
  {
    [(NTKCaliforniaFaceView *)self californiaContentViewScale];
    CGAffineTransformMakeScale(&v13, v6, v6);
    v7 = self->_californiaContentView;
    v12 = v13;
    [(NTKCaliforniaContentView *)v7 setTransform:&v12];
    [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:[(NTKCaliforniaFaceView *)self isCircularDialWithBezel]];
  }

  [(NTKCaliforniaContentView *)self->_californiaContentView setDial:self->_dial];
  dial = self->_dial;
  colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
  v10 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:dial palette:colorPalette];
  backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
  [backgroundView setBackgroundColor:v10];

  [(NTKCaliforniaFaceView *)self updateCircularMask];
}

- (double)californiaContentViewScale
{
  isCircularDialWithBezel = [(NTKCaliforniaFaceView *)self isCircularDialWithBezel];
  result = 0.95;
  if (!isCircularDialWithBezel)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
      [(NTKCaliforniaFaceView *)self updateWithPalette:colorPalette];

      [(NTKCaliforniaFaceView *)self applyColorOnAnalogHands];
      colorPalette2 = [(NTKCaliforniaFaceView *)self colorPalette];
      [(NTKCaliforniaContentView *)self->_californiaContentView setColorPalette:colorPalette2];

      colorPalette3 = [(NTKCaliforniaFaceView *)self colorPalette];
      circularComplication = [colorPalette3 circularComplication];
      colorPalette4 = [(NTKCaliforniaFaceView *)self colorPalette];
      circularComplicationSecondary = [colorPalette4 circularComplicationSecondary];
      [(NTKCaliforniaFaceView *)self _updateSubDialRichComplicationsColor:circularComplication alternateColor:circularComplicationSecondary];

      colorPalette5 = [(NTKCaliforniaFaceView *)self colorPalette];
      cornerComplication = [colorPalette5 cornerComplication];
      colorPalette6 = [(NTKCaliforniaFaceView *)self colorPalette];
      cornerComplicationSecondary = [colorPalette6 cornerComplicationSecondary];
      [(NTKCaliforniaFaceView *)self updateRichCornerComplicationsInnerColor:cornerComplication outerColor:cornerComplicationSecondary];

      v21 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:10];
      [(NTKCaliforniaFaceView *)self _updateSimpleTextLabelColor:v21];

      colorPalette7 = [(NTKCaliforniaFaceView *)self colorPalette];
      bezelComplication = [colorPalette7 bezelComplication];
      [(NTKCaliforniaFaceView *)self _updateDialBezelComplicationColor:bezelComplication];

      break;
    case 15:
      colorPalette7 = [(NTKCaliforniaFaceView *)self optionForCustomEditMode:15 slot:0];
      -[NTKCaliforniaFaceView setDial:](self, "setDial:", [colorPalette7 dialShape]);
      break;
    case 13:
      colorPalette7 = [(NTKCaliforniaFaceView *)self optionForCustomEditMode:13 slot:0];
      if ([colorPalette7 style] == -1)
      {
        style = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
      }

      else
      {
        style = [colorPalette7 style];
      }

      [(NTKCaliforniaFaceView *)self setStyle:style];
      [(NTKCaliforniaFaceView *)self _updateComplicationCenterOffsetForStyle:self->_style];
      break;
    default:
      goto LABEL_11;
  }

LABEL_11:
  delegate = [(NTKCaliforniaFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_updateSubDialRichComplicationsColor:(id)color alternateColor:(id)alternateColor
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CF44;
  v7[3] = &unk_1C8D0;
  selfCopy = self;
  colorCopy = color;
  alternateColorCopy = alternateColor;
  v5 = alternateColorCopy;
  v6 = colorCopy;
  [(NTKCaliforniaFaceView *)selfCopy enumerateComplicationDisplayWrappersWithBlock:v7];
}

- (void)_updateDialBezelComplicationColor:(id)color
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D0C8;
  v5[3] = &unk_1C8F8;
  colorCopy = color;
  v4 = colorCopy;
  [(NTKCaliforniaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)updateCircularMask
{
  if (self->_dial)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [(NTKCaliforniaFaceView *)self circleDiameter];

  [(NTKCaliforniaFaceView *)self setCircularMaskForCircularDialFraction:v3 circleDiameter:v4];
}

- (void)setCircularMaskForCircularDialFraction:(double)fraction circleDiameter:(double)diameter
{
  [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:[(NTKCaliforniaFaceView *)self isCircularDialWithBezel]];
  if ([(NTKCaliforniaFaceView *)self isCircularDialWithBezel])
  {
    [(NTKCaliforniaFaceView *)self californiaContentViewScale];
    CLKCompressFraction();
    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v18, v5, v5);
    californiaContentView = self->_californiaContentView;
    v17 = v18;
    [(NTKCaliforniaContentView *)californiaContentView setTransform:&v17];
  }

  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  v9 = v7 * 0.5;
  [(NTKCaliforniaFaceView *)self bounds];
  v11 = v10 * 0.5 - v9;
  [(NTKCaliforniaFaceView *)self bounds];
  v13 = [UIBezierPath bezierPathWithOvalInRect:v11, v12 * 0.5 - v9, v8, v8];
  v14 = +[CAShapeLayer layer];
  [v14 setPath:{objc_msgSend(v13, "CGPath")}];
  backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
  layer = [backgroundView layer];
  [layer setMask:v14];
}

- (double)circleDiameter
{
  v3 = [(NTKCaliforniaFaceView *)self device:0];
  sub_F3A4(v3, &v7);

  isCircularDialWithBezel = [(NTKCaliforniaFaceView *)self isCircularDialWithBezel];
  v5 = &v7 + 1;
  if (isCircularDialWithBezel)
  {
    v5 = &v7;
  }

  return *v5;
}

- (BOOL)isCircularDialWithBezel
{
  delegate = [(NTKCaliforniaFaceView *)self delegate];
  if (delegate)
  {
    delegate2 = [(NTKCaliforniaFaceView *)self delegate];
    v5 = [delegate2 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)style
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  device = [(NTKCaliforniaFaceView *)self device];
  sub_F3A4(device, v10);

  v6 = &v11 + 1;
  if (style == 6)
  {
    v6 = &v12;
  }

  v7 = *v6;
  complicationFactory = [(NTKCaliforniaFaceView *)self complicationFactory];
  v8 = [complicationFactory factoryAtSlot:NTKComplicationSlotSubdialTop];
  [v8 verticalCenterOffset];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [v8 setVerticalCenterOffset:v7];
    [(NTKCaliforniaFaceView *)self invalidateComplicationLayout];
    [(NTKCaliforniaFaceView *)self layoutIfNeeded];
    [(NTKCaliforniaFaceView *)self layoutComplicationViews];
  }
}

- (void)setStyle:(unint64_t)style
{
  styleCopy = style;
  self->_style = style;
  device = [(NTKCaliforniaFaceView *)self device];
  if (NTKShowIndicScriptNumerals())
  {

    goto LABEL_7;
  }

  style = self->_style;
  if (style - 7 >= 0xB)
  {

    if (style != 18)
    {
      goto LABEL_7;
    }
  }

  else
  {
  }

  styleCopy = 3;
LABEL_7:
  californiaContentView = self->_californiaContentView;

  [(NTKCaliforniaContentView *)californiaContentView setStyle:styleCopy];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKCaliforniaFaceView *)self interpolatedColorPalette];
      fromPalette = [interpolatedColorPalette fromPalette];
      interpolatedColorPalette2 = [(NTKCaliforniaFaceView *)self interpolatedColorPalette];
      toPalette = [interpolatedColorPalette2 toPalette];
      [(NTKCaliforniaFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:toPalette toColorPalette:fraction];

      break;
    case 13:
      -[NTKCaliforniaFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [optionCopy style], objc_msgSend(toOptionCopy, "style"), fraction);
      break;
    case 15:
      -[NTKCaliforniaFaceView _applyTransitionFraction:fromDial:toDial:](self, "_applyTransitionFraction:fromDial:toDial:", [optionCopy dialShape], objc_msgSend(toOptionCopy, "dialShape"), fraction);
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  if (dial == toDial)
  {

    [(NTKCaliforniaFaceView *)self setDial:fraction];
  }

  else
  {
    colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
    v9 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:dial palette:colorPalette];
    colorPalette2 = [(NTKCaliforniaFaceView *)self colorPalette];
    v11 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:toDial palette:colorPalette2];
    v12 = NTKInterpolateBetweenColors();
    backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
    [backgroundView setBackgroundColor:v12];

    CLKCompressFraction();
    v15 = v14;
    CLKCompressFraction();
    v17 = v16;
    [(NTKCaliforniaFaceView *)self circleDiameter];
    [(NTKCaliforniaFaceView *)self setCircularMaskForCircularDialFraction:v15 circleDiameter:v18];
    [(NTKCaliforniaContentView *)self->_californiaContentView applyTransitionFraction:dial fromDial:toDial toDial:v15];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_D94C;
    v19[3] = &unk_1C918;
    v19[4] = v17;
    *&v19[5] = v15;
    [(NTKCaliforniaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v19];
    [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:[(NTKCaliforniaFaceView *)self isCircularDialWithBezel]];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
{
  toStyleCopy = style;
  if (style == -1)
  {
    toStyleCopy = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
  }

  if (toStyle == -1)
  {
    toStyle = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
  }

  [(NTKCaliforniaContentView *)self->_californiaContentView applyTransitionFraction:toStyleCopy fromStyle:toStyle toStyle:fraction];
  CLKMapFractionIntoRange();
  if (fraction >= 0.5)
  {
    v10 = v9;
    toStyleCopy = toStyle;
  }

  else
  {
    v10 = v9;
  }

  CLKMapFractionIntoRange();
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v11, v11);
  [(NTKCaliforniaFaceView *)self _updateComplicationCenterOffsetForStyle:toStyleCopy];
  if (toStyle == 6 && self->_dial == 1)
  {
    v12 = [(NTKCaliforniaFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
    display = [v12 display];

    [display setAlpha:v10];
    v14 = v15;
    [display setTransform:&v14];
  }
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v23.receiver = self;
  v23.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v23 _configureComplicationView:viewCopy forSlot:slotCopy];
  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = viewCopy;
    colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
    bezelComplication = [colorPalette bezelComplication];
    [v8 setForegroundColor:bezelComplication];

    [v8 setFontWeight:UIFontWeightSemibold];
    [v8 setUseRoundedFontDesign:1];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [slotCopy isEqualToString:NTKComplicationSlotSubdialBottom])
  {
    v8 = viewCopy;
    colorPalette2 = [(NTKCaliforniaFaceView *)self colorPalette];
    circularComplication = [colorPalette2 circularComplication];
    [(NTKCaliforniaFaceView *)self setComplicationColor:circularComplication];

    complicationColor = [(NTKCaliforniaFaceView *)self complicationColor];
    [(NTKCaliforniaFaceView *)self setInterpolatedComplicationColor:complicationColor];

    colorPalette3 = [(NTKCaliforniaFaceView *)self colorPalette];
    circularComplicationSecondary = [colorPalette3 circularComplicationSecondary];
LABEL_12:
    v19 = circularComplicationSecondary;
    [(NTKCaliforniaFaceView *)self setAlternateComplicationColor:circularComplicationSecondary];

    [v8 updateMonochromeColor];
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([slotCopy isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotTopRight) & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomLeft) & 1) != 0 || objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomRight)))
  {
    v8 = viewCopy;
    colorPalette4 = [(NTKCaliforniaFaceView *)self colorPalette];
    cornerComplication = [colorPalette4 cornerComplication];
    [(NTKCaliforniaFaceView *)self setComplicationColor:cornerComplication];

    complicationColor2 = [(NTKCaliforniaFaceView *)self complicationColor];
    [(NTKCaliforniaFaceView *)self setInterpolatedComplicationColor:complicationColor2];

    colorPalette3 = [(NTKCaliforniaFaceView *)self colorPalette];
    circularComplicationSecondary = [colorPalette3 cornerComplicationSecondary];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = viewCopy;
    v8 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKCaliforniaFaceView *)self editing]];
    label = [v20 label];

    [label setTextColor:v8];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = viewCopy;
    v8 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKCaliforniaFaceView *)self editing]];
    [v22 setTextColor:v8];

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_applyTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  paletteCopy = palette;
  colorPaletteCopy = colorPalette;
  if ([paletteCopy isEqual:colorPaletteCopy])
  {
    [(NTKCaliforniaFaceView *)self updateWithPalette:colorPaletteCopy];
  }

  else
  {
    v9 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:self->_dial palette:paletteCopy];
    v10 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:self->_dial palette:colorPaletteCopy];
    v11 = NTKInterpolateBetweenColors();
    backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
    [backgroundView setBackgroundColor:v11];

    [(NTKCaliforniaContentView *)self->_californiaContentView applyTransitionFraction:paletteCopy fromColorPalette:colorPaletteCopy toColorPalette:fraction];
    clockHandsInlay = [paletteCopy clockHandsInlay];
    clockHandsInlay2 = [colorPaletteCopy clockHandsInlay];
    v15 = NTKInterpolateBetweenColors();

    clockHands = [paletteCopy clockHands];
    clockHands2 = [colorPaletteCopy clockHands];
    v18 = NTKInterpolateBetweenColors();

    secondHand = [paletteCopy secondHand];
    secondHand2 = [colorPaletteCopy secondHand];
    v21 = NTKInterpolateBetweenColors();

    timeView = [(NTKCaliforniaFaceView *)self timeView];
    hourHandView = [timeView hourHandView];
    [hourHandView setInlayColor:v15];

    minuteHandView = [timeView minuteHandView];
    [minuteHandView setInlayColor:v15];

    hourHandView2 = [timeView hourHandView];
    [hourHandView2 setColor:v18];

    minuteHandView2 = [timeView minuteHandView];
    [minuteHandView2 setColor:v18];

    secondHandView = [timeView secondHandView];
    [secondHandView setColor:v21];

    secondHandView2 = [timeView secondHandView];
    [secondHandView2 setHandDotColor:v15];

    [(NTKCaliforniaFaceView *)self _applyComplicationColorTransitionFraction:paletteCopy fromColorPalette:colorPaletteCopy toColorPalette:fraction];
  }
}

- (void)_applyComplicationColorTransitionFraction:(double)fraction fromColorPalette:(id)palette toColorPalette:(id)colorPalette
{
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  circularComplication = [paletteCopy circularComplication];
  circularComplication2 = [colorPaletteCopy circularComplication];
  v11 = NTKInterpolateBetweenColors();
  circularComplicationSecondary = [paletteCopy circularComplicationSecondary];
  circularComplicationSecondary2 = [colorPaletteCopy circularComplicationSecondary];
  v14 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self _updateSubDialRichComplicationsColor:v11 alternateColor:v14];

  cornerComplication = [paletteCopy cornerComplication];
  cornerComplication2 = [colorPaletteCopy cornerComplication];
  v17 = NTKInterpolateBetweenColors();
  cornerComplicationSecondary = [paletteCopy cornerComplicationSecondary];
  cornerComplicationSecondary2 = [colorPaletteCopy cornerComplicationSecondary];
  v20 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self updateRichCornerComplicationsInnerColor:v17 outerColor:v20];

  simpleTextComplication = [paletteCopy simpleTextComplication];
  simpleTextComplication2 = [colorPaletteCopy simpleTextComplication];
  v23 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self _updateSimpleTextLabelColor:v23];

  bezelComplication = [paletteCopy bezelComplication];

  bezelComplication2 = [colorPaletteCopy bezelComplication];

  v25 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self _updateDialBezelComplicationColor:v25];
}

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  complicationCopy = complication;
  toComplicationCopy = toComplication;
  v17.receiver = self;
  v17.super_class = NTKCaliforniaFaceView;
  slotCopy = slot;
  [(NTKCaliforniaFaceView *)&v17 _applyTransitionFraction:complicationCopy fromComplication:toComplicationCopy toComplication:slotCopy slot:fraction];
  v13 = NTKComplicationSlotBezel;

  if (v13 == slotCopy)
  {
    if (![complicationCopy complicationType] || (v15 = objc_msgSend(toComplicationCopy, "complicationType"), fractionCopy = 1.0, !v15))
    {
      if ([complicationCopy complicationType] || objc_msgSend(toComplicationCopy, "complicationType"))
      {
        complicationType = [toComplicationCopy complicationType];
        fractionCopy = 1.0 - fraction;
        if (complicationType)
        {
          fractionCopy = fraction;
        }
      }

      else
      {
        fractionCopy = 0.0;
      }
    }

    [(NTKCaliforniaFaceView *)self applyTransitionToCircularDialWithBezelFraction:fractionCopy];
  }
}

- (void)applyTransitionToCircularDialWithBezelFraction:(double)fraction
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  device = [(NTKCaliforniaFaceView *)self device];
  sub_F3A4(device, v11);

  CLKInterpolateBetweenFloatsClipped();
  [(NTKCaliforniaFaceView *)self setCircularMaskForCircularDialFraction:1.0 circleDiameter:v6];
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v10, v7, v7);
  californiaContentView = self->_californiaContentView;
  v9 = v10;
  [(NTKCaliforniaContentView *)californiaContentView setTransform:&v9];
  [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:fraction > 0.5];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    contentView = [(NTKCaliforniaFaceView *)self contentView];
    v11 = v12;
    [contentView setTransform:&v11];

    timeView = [(NTKCaliforniaFaceView *)self timeView];
    v11 = v12;
    [timeView setTransform:&v11];

    complicationContainerView = [(NTKCaliforniaFaceView *)self complicationContainerView];
    v11 = v12;
    [complicationContainerView setTransform:&v11];
  }
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = NTKLargeElementMinimumBreathingScale;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCaliforniaFaceView;
    [(NTKCaliforniaFaceView *)&v8 _minimumBreathingScaleForComplicationSlot:slotCopy];
    v5 = v6;
  }

  return v5;
}

- (void)_configureForEditMode:(int64_t)mode
{
  v19.receiver = self;
  v19.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v19 _configureForEditMode:?];
  [(NTKCaliforniaFaceView *)self _dialAlphaForEditMode:mode];
  v6 = v5;
  californiaContentView = [(NTKCaliforniaFaceView *)self californiaContentView];
  [californiaContentView setCircularBezelTickAlpha:v6];

  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:mode];
  v9 = v8;
  backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
  [backgroundView setAlpha:v9];

  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:mode];
  v12 = v11;
  californiaContentView2 = [(NTKCaliforniaFaceView *)self californiaContentView];
  [californiaContentView2 setAlpha:v12];

  [(NTKCaliforniaFaceView *)self _timeAlphaForEditMode:mode];
  v15 = v14;
  timeView = [(NTKCaliforniaFaceView *)self timeView];
  [timeView setAlpha:v15];

  [(NTKCaliforniaFaceView *)self _applyTransitionFraction:self->_dial fromDial:self->_dial toDial:1.0];
  [(NTKCaliforniaFaceView *)self _applyTransitionFraction:self->_style fromStyle:self->_style toStyle:1.0];
  colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
  colorPalette2 = [(NTKCaliforniaFaceView *)self colorPalette];
  [(NTKCaliforniaFaceView *)self _applyTransitionFraction:colorPalette fromColorPalette:colorPalette2 toColorPalette:1.0];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v23.receiver = self;
  v23.super_class = NTKCaliforniaFaceView;
  [NTKCaliforniaFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  backgroundView = [(NTKCaliforniaFaceView *)self backgroundView];
  [backgroundView setAlpha:v9];

  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  californiaContentView = [(NTKCaliforniaFaceView *)self californiaContentView];
  [californiaContentView setAlpha:v12];

  [(NTKCaliforniaFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKCaliforniaFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  timeView = [(NTKCaliforniaFaceView *)self timeView];
  [timeView setAlpha:v15];

  [(NTKCaliforniaFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKCaliforniaFaceView *)self _dialAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  californiaContentView2 = [(NTKCaliforniaFaceView *)self californiaContentView];
  [californiaContentView2 setCircularBezelTickAlpha:v18];

  v20 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:mode];
  v21 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:editMode];
  v22 = NTKInterpolateBetweenColors();

  [(NTKCaliforniaFaceView *)self _updateSimpleTextLabelColor:v22];
}

- (void)_updateSimpleTextLabelColor:(id)color
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_EBA8;
  v5[3] = &unk_1C8F8;
  colorCopy = color;
  v4 = colorCopy;
  [(NTKCaliforniaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_cleanupAfterEditing
{
  v5.receiver = self;
  v5.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v5 _cleanupAfterEditing];
  isCircularDialWithBezel = [(NTKCaliforniaFaceView *)self isCircularDialWithBezel];
  if (isCircularDialWithBezel)
  {
    [(NTKCaliforniaFaceView *)self _updateDialTicksForBezelText];
  }

  [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:isCircularDialWithBezel];
  delegate = [(NTKCaliforniaFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v5.receiver = self;
  v5.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v5 _cleanupAfterTransitionComplicationSlot:slot selectedComplication:complication];
  [(NTKCaliforniaFaceView *)self _updateDialTicksForBezelText];
}

- (id)_simpleTextComplicationColorForEditMode:(int64_t)mode
{
  if (mode == 1)
  {
    simpleTextComplication = [UIColor colorWithWhite:0.95 alpha:1.0];
  }

  else
  {
    colorPalette = [(NTKCaliforniaFaceView *)self colorPalette];
    simpleTextComplication = [colorPalette simpleTextComplication];
  }

  return simpleTextComplication;
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  if (!mode)
  {
    return 1.0;
  }

  if (mode == 1)
  {
    return 0.0;
  }

  return NTKEditModeDimmedAlpha;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  if (mode)
  {
    if (mode != 10)
    {
      return NTKEditModeDimmedAlpha;
    }
  }

  return result;
}

- (void)_updateDialTicksForBezelText
{
  californiaContentView = self->_californiaContentView;
  [(NTKCaliforniaFaceView *)self bezelComplicationTextWidthInRadians];

  [(NTKCaliforniaContentView *)californiaContentView setTicksHiddenRange:?];
}

- (double)bezelComplicationTextWidthInRadians
{
  utilityBezelComplicationView = [(NTKCaliforniaFaceView *)self utilityBezelComplicationView];
  [utilityBezelComplicationView textWidthInRadians];
  v4 = v3;

  return v4;
}

- (id)utilityBezelComplicationView
{
  v2 = [(NTKCaliforniaFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  display = [v2 display];
  v4 = [display conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityFlatComplicationView];

  if (v4)
  {
    display2 = [v2 display];
  }

  else
  {
    display2 = 0;
  }

  return display2;
}

- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 13)
  {
    return NTKEditSpeedCustomEditModeDefault;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v7 _editSpeedForCustomEditMode:mode slot:slot];
  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_1F890;
  if (options != 15)
  {
    v4 = 0;
  }

  if (options == 13)
  {
    return &off_1F878;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  v10 = optionsCopy;
  if ((mode | 2) != 0xF)
  {
    v29.receiver = self;
    v29.super_class = NTKCaliforniaFaceView;
    v15 = [(NTKCaliforniaFaceView *)&v29 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
    goto LABEL_13;
  }

  v11 = [optionsCopy objectForKeyedSubscript:&off_1EE20];
  v12 = [v10 objectForKeyedSubscript:&off_1EDD8];
  v13 = v12;
  if (mode == 13)
  {
    v14 = v11;
    v11 = optionCopy;
    goto LABEL_7;
  }

  if (mode == 15)
  {
    v14 = v12;
    v13 = optionCopy;
LABEL_7:
    v16 = optionCopy;
  }

  v17 = [v10 objectForKeyedSubscript:&off_1EDF0];
  if (!qword_25D08)
  {
    v18 = objc_opt_new();
    v19 = qword_25D08;
    qword_25D08 = v18;
  }

  v20 = [NSString stringWithFormat:@"%@-%@-%@", v11, v13, v17];
  v15 = [qword_25D08 objectForKey:v20];
  if (!v15)
  {
    v21 = [NTKCaliforniaFaceView alloc];
    device = [(NTKCaliforniaFaceView *)self device];
    v23 = [(NTKCaliforniaFaceView *)v21 initWithFaceStyle:39 forDevice:device clientIdentifier:0];

    [(NTKCaliforniaFaceView *)self frame];
    [(NTKCaliforniaFaceView *)v23 setFrame:?];
    [(NTKCaliforniaFaceView *)v23 _loadSnapshotContentViews];
    [(NTKCaliforniaFaceView *)v23 setOption:v13 forCustomEditMode:15 slot:0];
    [(NTKCaliforniaFaceView *)v23 setOption:v11 forCustomEditMode:13 slot:0];
    [(NTKCaliforniaFaceView *)v23 setOption:v17 forCustomEditMode:10 slot:0];
    v24 = NTKIdealizedDate();
    [(NTKCaliforniaFaceView *)v23 setOverrideDate:v24 duration:0.0];

    [(NTKCaliforniaFaceView *)self frame];
    [(NTKCaliforniaFaceView *)v23 setFrame:?];
    [(NTKCaliforniaFaceView *)v23 bounds];
    v31.width = v25;
    v31.height = v26;
    UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
    layer = [(NTKCaliforniaFaceView *)v23 layer];
    [layer renderInContext:UIGraphicsGetCurrentContext()];

    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [qword_25D08 setObject:v15 forKey:v20];
  }

LABEL_13:

  return v15;
}

@end