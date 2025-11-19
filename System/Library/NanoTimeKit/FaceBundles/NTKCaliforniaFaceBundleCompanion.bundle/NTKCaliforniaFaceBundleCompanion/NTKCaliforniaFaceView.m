@interface NTKCaliforniaFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_wantsStatusBarIconShadow;
- (BOOL)isCircularDialWithBezel;
- (NTKCaliforniaFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (double)_minimumBreathingScaleForComplicationSlot:(id)a3;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (double)bezelComplicationTextWidthInRadians;
- (double)californiaContentViewScale;
- (double)circleDiameter;
- (id)_simpleTextComplicationColorForEditMode:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)backgroundColorForDial:(unint64_t)a3 palette:(id)a4;
- (id)createFaceColorPalette;
- (id)utilityBezelComplicationView;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyComplicationColorTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadSnapshotContentViews;
- (void)_removeBackgroundView;
- (void)_removeCaliforniaContentView;
- (void)_removeViews;
- (void)_reorderSwitcherSnapshotView;
- (void)_setupBackgroundView;
- (void)_setupCaliforniaContentView;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)a3;
- (void)_updateDialBezelComplicationColor:(id)a3;
- (void)_updateDialTicksForBezelText;
- (void)_updateSimpleTextLabelColor:(id)a3;
- (void)_updateSubDialRichComplicationsColor:(id)a3 alternateColor:(id)a4;
- (void)applyColorOnAnalogHands;
- (void)applyTransitionToCircularDialWithBezelFraction:(double)a3;
- (void)layoutSubviews;
- (void)setCircularMaskForCircularDialFraction:(double)a3 circleDiameter:(double)a4;
- (void)setDial:(unint64_t)a3;
- (void)setStyle:(unint64_t)a3;
- (void)updateCircularMask;
- (void)updateWithPalette:(id)a3;
@end

@implementation NTKCaliforniaFaceView

- (NTKCaliforniaFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v33.receiver = self;
  v33.super_class = NTKCaliforniaFaceView;
  v9 = [(NTKCaliforniaFaceView *)&v33 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = objc_alloc_init(NTKCompositeComplicationFactory);
    v11 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v12 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(v12, v31);
    v13 = [v11 initWithFaceView:v9 dialDiameter:v8 device:v32];

    [v13 setUsesNarrowTopSlots:1];
    [v13 setAlpha:v9 faceView:1.0];
    v34[0] = NTKComplicationSlotTopLeft;
    v34[1] = NTKComplicationSlotTopRight;
    v34[2] = NTKComplicationSlotBottomLeft;
    v34[3] = NTKComplicationSlotBottomRight;
    v14 = [NSArray arrayWithObjects:v34 count:4];
    [v10 registerFactory:v13 forSlots:v14];

    v15 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    [v15 setFaceView:v9];
    v16 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(v16, v29);
    [v15 setDialDiameter:v30];

    [v10 registerFactory:v15 forSlot:NTKComplicationSlotBezel];
    v17 = [NTKFullscreenSubdialComplicationFactory alloc];
    v18 = [(NTKCaliforniaFaceView *)v9 device];
    v19 = [v17 initForDevice:v18];

    [v19 setFaceView:v9];
    v20 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(v20, v26);
    [v19 setCircularComplicationDistanceFromCenter:{v27, v28}];

    [v19 setAlpha:v9 faceView:1.0];
    [v10 registerFactory:v19 forSlot:NTKComplicationSlotSubdialBottom];
    v21 = objc_alloc_init(NTKSimpleTextFaceViewComplicationFactory);
    [v21 setFaceView:v9];
    v22 = [(NTKCaliforniaFaceView *)v9 device];
    sub_F3A4(v22, v24);
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

  v2 = [(NTKCaliforniaFaceView *)self colorPalette];
  v3 = [v2 isBlackBackground];

  return v3 ^ 1;
}

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKCaliforniaFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKCaliforniaFaceView *)self switcherSnapshotView];
    [(NTKCaliforniaFaceView *)self bringSubviewToFront:v4];
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

  v6 = [(NTKCaliforniaFaceView *)self contentView];
  [v6 addSubview:self->_backgroundView];
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
  v14 = [(NTKCaliforniaFaceView *)self colorPalette];
  v15 = [(NTKCaliforniaFaceView *)self device];
  v16 = [(NTKCaliforniaContentView *)v3 initWithFrame:dial dial:style style:v14 colorPalette:v15 device:v5, v7, v9, v11];
  californiaContentView = self->_californiaContentView;
  self->_californiaContentView = v16;

  v18 = [(NTKCaliforniaFaceView *)self contentView];
  [v18 addSubview:self->_californiaContentView];
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
  v12 = [(NTKCaliforniaFaceView *)self device];
  v13 = [v3 initWithFrame:v12 forDeviceCornerRadius:{v5, v7, v9, v11}];
  cornerView = self->_cornerView;
  self->_cornerView = v13;

  v15 = [(NTKCaliforniaFaceView *)self contentView];
  [v15 addSubview:self->_cornerView];

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
  v3 = [(NTKCaliforniaFaceView *)self colorPalette];
  v15 = [v3 clockHandsInlay];

  v4 = [(NTKCaliforniaFaceView *)self colorPalette];
  v5 = [v4 clockHands];

  v6 = [(NTKCaliforniaFaceView *)self timeView];
  v7 = [v6 hourHandView];
  [v7 setInlayColor:v15];

  v8 = [v6 minuteHandView];
  [v8 setInlayColor:v15];

  v9 = [v6 hourHandView];
  [v9 setColor:v5];

  v10 = [v6 minuteHandView];
  [v10 setColor:v5];

  v11 = [(NTKCaliforniaFaceView *)self colorPalette];
  v12 = [v11 secondHand];
  v13 = [v6 secondHandView];
  [v13 setColor:v12];

  v14 = [v6 secondHandView];
  [v14 setHandDotColor:v15];
}

- (void)updateWithPalette:(id)a3
{
  v5 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:self->_dial palette:a3];
  v4 = [(NTKCaliforniaFaceView *)self backgroundView];
  [v4 setBackgroundColor:v5];
}

- (id)backgroundColorForDial:(unint64_t)a3 palette:(id)a4
{
  if (a3 == 1)
  {
    [a4 background];
  }

  else
  {
    [a4 circularBackground];
  }
  v4 = ;

  return v4;
}

- (void)setDial:(unint64_t)a3
{
  self->_dial = a3;
  if (a3)
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
  v9 = [(NTKCaliforniaFaceView *)self colorPalette];
  v10 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:dial palette:v9];
  v11 = [(NTKCaliforniaFaceView *)self backgroundView];
  [v11 setBackgroundColor:v10];

  [(NTKCaliforniaFaceView *)self updateCircularMask];
}

- (double)californiaContentViewScale
{
  v2 = [(NTKCaliforniaFaceView *)self isCircularDialWithBezel];
  result = 0.95;
  if (!v2)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v24 = a3;
  v8 = a5;
  switch(a4)
  {
    case 10:
      v11 = [(NTKCaliforniaFaceView *)self colorPalette];
      [(NTKCaliforniaFaceView *)self updateWithPalette:v11];

      [(NTKCaliforniaFaceView *)self applyColorOnAnalogHands];
      v12 = [(NTKCaliforniaFaceView *)self colorPalette];
      [(NTKCaliforniaContentView *)self->_californiaContentView setColorPalette:v12];

      v13 = [(NTKCaliforniaFaceView *)self colorPalette];
      v14 = [v13 circularComplication];
      v15 = [(NTKCaliforniaFaceView *)self colorPalette];
      v16 = [v15 circularComplicationSecondary];
      [(NTKCaliforniaFaceView *)self _updateSubDialRichComplicationsColor:v14 alternateColor:v16];

      v17 = [(NTKCaliforniaFaceView *)self colorPalette];
      v18 = [v17 cornerComplication];
      v19 = [(NTKCaliforniaFaceView *)self colorPalette];
      v20 = [v19 cornerComplicationSecondary];
      [(NTKCaliforniaFaceView *)self updateRichCornerComplicationsInnerColor:v18 outerColor:v20];

      v21 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:10];
      [(NTKCaliforniaFaceView *)self _updateSimpleTextLabelColor:v21];

      v9 = [(NTKCaliforniaFaceView *)self colorPalette];
      v22 = [v9 bezelComplication];
      [(NTKCaliforniaFaceView *)self _updateDialBezelComplicationColor:v22];

      break;
    case 15:
      v9 = [(NTKCaliforniaFaceView *)self optionForCustomEditMode:15 slot:0];
      -[NTKCaliforniaFaceView setDial:](self, "setDial:", [v9 dialShape]);
      break;
    case 13:
      v9 = [(NTKCaliforniaFaceView *)self optionForCustomEditMode:13 slot:0];
      if ([v9 style] == -1)
      {
        v10 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
      }

      else
      {
        v10 = [v9 style];
      }

      [(NTKCaliforniaFaceView *)self setStyle:v10];
      [(NTKCaliforniaFaceView *)self _updateComplicationCenterOffsetForStyle:self->_style];
      break;
    default:
      goto LABEL_11;
  }

LABEL_11:
  v23 = [(NTKCaliforniaFaceView *)self delegate];
  [v23 faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_updateSubDialRichComplicationsColor:(id)a3 alternateColor:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_CF44;
  v7[3] = &unk_1C8D0;
  v8 = self;
  v9 = a3;
  v10 = a4;
  v5 = v10;
  v6 = v9;
  [(NTKCaliforniaFaceView *)v8 enumerateComplicationDisplayWrappersWithBlock:v7];
}

- (void)_updateDialBezelComplicationColor:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_D0C8;
  v5[3] = &unk_1C8F8;
  v6 = a3;
  v4 = v6;
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

- (void)setCircularMaskForCircularDialFraction:(double)a3 circleDiameter:(double)a4
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
  v15 = [(NTKCaliforniaFaceView *)self backgroundView];
  v16 = [v15 layer];
  [v16 setMask:v14];
}

- (double)circleDiameter
{
  v3 = [(NTKCaliforniaFaceView *)self device:0];
  sub_F3A4(v3, &v7);

  v4 = [(NTKCaliforniaFaceView *)self isCircularDialWithBezel];
  v5 = &v7 + 1;
  if (v4)
  {
    v5 = &v7;
  }

  return *v5;
}

- (BOOL)isCircularDialWithBezel
{
  v3 = [(NTKCaliforniaFaceView *)self delegate];
  if (v3)
  {
    v4 = [(NTKCaliforniaFaceView *)self delegate];
    v5 = [v4 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)_updateComplicationCenterOffsetForStyle:(unint64_t)a3
{
  v12 = 0;
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  v5 = [(NTKCaliforniaFaceView *)self device];
  sub_F3A4(v5, v10);

  v6 = &v11 + 1;
  if (a3 == 6)
  {
    v6 = &v12;
  }

  v7 = *v6;
  v9 = [(NTKCaliforniaFaceView *)self complicationFactory];
  v8 = [v9 factoryAtSlot:NTKComplicationSlotSubdialTop];
  [v8 verticalCenterOffset];
  if ((CLKFloatEqualsFloat() & 1) == 0)
  {
    [v8 setVerticalCenterOffset:v7];
    [(NTKCaliforniaFaceView *)self invalidateComplicationLayout];
    [(NTKCaliforniaFaceView *)self layoutIfNeeded];
    [(NTKCaliforniaFaceView *)self layoutComplicationViews];
  }
}

- (void)setStyle:(unint64_t)a3
{
  v3 = a3;
  self->_style = a3;
  v5 = [(NTKCaliforniaFaceView *)self device];
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

  v3 = 3;
LABEL_7:
  californiaContentView = self->_californiaContentView;

  [(NTKCaliforniaContentView *)californiaContentView setStyle:v3];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v18 = a4;
  v12 = a5;
  v13 = a7;
  switch(a6)
  {
    case 10:
      v14 = [(NTKCaliforniaFaceView *)self interpolatedColorPalette];
      v15 = [v14 fromPalette];
      v16 = [(NTKCaliforniaFaceView *)self interpolatedColorPalette];
      v17 = [v16 toPalette];
      [(NTKCaliforniaFaceView *)self _applyTransitionFraction:v15 fromColorPalette:v17 toColorPalette:a3];

      break;
    case 13:
      -[NTKCaliforniaFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [v18 style], objc_msgSend(v12, "style"), a3);
      break;
    case 15:
      -[NTKCaliforniaFaceView _applyTransitionFraction:fromDial:toDial:](self, "_applyTransitionFraction:fromDial:toDial:", [v18 dialShape], objc_msgSend(v12, "dialShape"), a3);
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5
{
  if (a4 == a5)
  {

    [(NTKCaliforniaFaceView *)self setDial:a3];
  }

  else
  {
    v8 = [(NTKCaliforniaFaceView *)self colorPalette];
    v9 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:a4 palette:v8];
    v10 = [(NTKCaliforniaFaceView *)self colorPalette];
    v11 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:a5 palette:v10];
    v12 = NTKInterpolateBetweenColors();
    v13 = [(NTKCaliforniaFaceView *)self backgroundView];
    [v13 setBackgroundColor:v12];

    CLKCompressFraction();
    v15 = v14;
    CLKCompressFraction();
    v17 = v16;
    [(NTKCaliforniaFaceView *)self circleDiameter];
    [(NTKCaliforniaFaceView *)self setCircularMaskForCircularDialFraction:v15 circleDiameter:v18];
    [(NTKCaliforniaContentView *)self->_californiaContentView applyTransitionFraction:a4 fromDial:a5 toDial:v15];
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

- (void)_applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  v6 = a4;
  if (a4 == -1)
  {
    v6 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
  }

  if (a5 == -1)
  {
    a5 = +[NTKCaliforniaStyleEditOption resolvedAutomaticStyleForCurrentLocale];
  }

  [(NTKCaliforniaContentView *)self->_californiaContentView applyTransitionFraction:v6 fromStyle:a5 toStyle:a3];
  CLKMapFractionIntoRange();
  if (a3 >= 0.5)
  {
    v10 = v9;
    v6 = a5;
  }

  else
  {
    v10 = v9;
  }

  CLKMapFractionIntoRange();
  memset(&v15, 0, sizeof(v15));
  CGAffineTransformMakeScale(&v15, v11, v11);
  [(NTKCaliforniaFaceView *)self _updateComplicationCenterOffsetForStyle:v6];
  if (a5 == 6 && self->_dial == 1)
  {
    v12 = [(NTKCaliforniaFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotSubdialTop];
    v13 = [v12 display];

    [v13 setAlpha:v10];
    v14 = v15;
    [v13 setTransform:&v14];
  }
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v23.receiver = self;
  v23.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v23 _configureComplicationView:v6 forSlot:v7];
  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v8 = v6;
    v9 = [(NTKCaliforniaFaceView *)self colorPalette];
    v10 = [v9 bezelComplication];
    [v8 setForegroundColor:v10];

    [v8 setFontWeight:UIFontWeightSemibold];
    [v8 setUseRoundedFontDesign:1];
LABEL_17:

    goto LABEL_18;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v7 isEqualToString:NTKComplicationSlotSubdialBottom])
  {
    v8 = v6;
    v11 = [(NTKCaliforniaFaceView *)self colorPalette];
    v12 = [v11 circularComplication];
    [(NTKCaliforniaFaceView *)self setComplicationColor:v12];

    v13 = [(NTKCaliforniaFaceView *)self complicationColor];
    [(NTKCaliforniaFaceView *)self setInterpolatedComplicationColor:v13];

    v14 = [(NTKCaliforniaFaceView *)self colorPalette];
    v15 = [v14 circularComplicationSecondary];
LABEL_12:
    v19 = v15;
    [(NTKCaliforniaFaceView *)self setAlternateComplicationColor:v15];

    [v8 updateMonochromeColor];
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([v7 isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", NTKComplicationSlotTopRight) & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", NTKComplicationSlotBottomLeft) & 1) != 0 || objc_msgSend(v7, "isEqualToString:", NTKComplicationSlotBottomRight)))
  {
    v8 = v6;
    v16 = [(NTKCaliforniaFaceView *)self colorPalette];
    v17 = [v16 cornerComplication];
    [(NTKCaliforniaFaceView *)self setComplicationColor:v17];

    v18 = [(NTKCaliforniaFaceView *)self complicationColor];
    [(NTKCaliforniaFaceView *)self setInterpolatedComplicationColor:v18];

    v14 = [(NTKCaliforniaFaceView *)self colorPalette];
    v15 = [v14 cornerComplicationSecondary];
    goto LABEL_12;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = v6;
    v8 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKCaliforniaFaceView *)self editing]];
    v21 = [v20 label];

    [v21 setTextColor:v8];
    goto LABEL_17;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v6;
    v8 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:[(NTKCaliforniaFaceView *)self editing]];
    [v22 setTextColor:v8];

    goto LABEL_17;
  }

LABEL_18:
}

- (void)_applyTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5
{
  v29 = a4;
  v8 = a5;
  if ([v29 isEqual:v8])
  {
    [(NTKCaliforniaFaceView *)self updateWithPalette:v8];
  }

  else
  {
    v9 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:self->_dial palette:v29];
    v10 = [(NTKCaliforniaFaceView *)self backgroundColorForDial:self->_dial palette:v8];
    v11 = NTKInterpolateBetweenColors();
    v12 = [(NTKCaliforniaFaceView *)self backgroundView];
    [v12 setBackgroundColor:v11];

    [(NTKCaliforniaContentView *)self->_californiaContentView applyTransitionFraction:v29 fromColorPalette:v8 toColorPalette:a3];
    v13 = [v29 clockHandsInlay];
    v14 = [v8 clockHandsInlay];
    v15 = NTKInterpolateBetweenColors();

    v16 = [v29 clockHands];
    v17 = [v8 clockHands];
    v18 = NTKInterpolateBetweenColors();

    v19 = [v29 secondHand];
    v20 = [v8 secondHand];
    v21 = NTKInterpolateBetweenColors();

    v22 = [(NTKCaliforniaFaceView *)self timeView];
    v23 = [v22 hourHandView];
    [v23 setInlayColor:v15];

    v24 = [v22 minuteHandView];
    [v24 setInlayColor:v15];

    v25 = [v22 hourHandView];
    [v25 setColor:v18];

    v26 = [v22 minuteHandView];
    [v26 setColor:v18];

    v27 = [v22 secondHandView];
    [v27 setColor:v21];

    v28 = [v22 secondHandView];
    [v28 setHandDotColor:v15];

    [(NTKCaliforniaFaceView *)self _applyComplicationColorTransitionFraction:v29 fromColorPalette:v8 toColorPalette:a3];
  }
}

- (void)_applyComplicationColorTransitionFraction:(double)a3 fromColorPalette:(id)a4 toColorPalette:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [v8 circularComplication];
  v10 = [v7 circularComplication];
  v11 = NTKInterpolateBetweenColors();
  v12 = [v8 circularComplicationSecondary];
  v13 = [v7 circularComplicationSecondary];
  v14 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self _updateSubDialRichComplicationsColor:v11 alternateColor:v14];

  v15 = [v8 cornerComplication];
  v16 = [v7 cornerComplication];
  v17 = NTKInterpolateBetweenColors();
  v18 = [v8 cornerComplicationSecondary];
  v19 = [v7 cornerComplicationSecondary];
  v20 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self updateRichCornerComplicationsInnerColor:v17 outerColor:v20];

  v21 = [v8 simpleTextComplication];
  v22 = [v7 simpleTextComplication];
  v23 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self _updateSimpleTextLabelColor:v23];

  v26 = [v8 bezelComplication];

  v24 = [v7 bezelComplication];

  v25 = NTKInterpolateBetweenColors();
  [(NTKCaliforniaFaceView *)self _updateDialBezelComplicationColor:v25];
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NTKCaliforniaFaceView;
  v12 = a6;
  [(NTKCaliforniaFaceView *)&v17 _applyTransitionFraction:v10 fromComplication:v11 toComplication:v12 slot:a3];
  v13 = NTKComplicationSlotBezel;

  if (v13 == v12)
  {
    if (![v10 complicationType] || (v15 = objc_msgSend(v11, "complicationType"), v14 = 1.0, !v15))
    {
      if ([v10 complicationType] || objc_msgSend(v11, "complicationType"))
      {
        v16 = [v11 complicationType];
        v14 = 1.0 - a3;
        if (v16)
        {
          v14 = a3;
        }
      }

      else
      {
        v14 = 0.0;
      }
    }

    [(NTKCaliforniaFaceView *)self applyTransitionToCircularDialWithBezelFraction:v14];
  }
}

- (void)applyTransitionToCircularDialWithBezelFraction:(double)a3
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v5 = [(NTKCaliforniaFaceView *)self device];
  sub_F3A4(v5, v11);

  CLKInterpolateBetweenFloatsClipped();
  [(NTKCaliforniaFaceView *)self setCircularMaskForCircularDialFraction:1.0 circleDiameter:v6];
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v10, v7, v7);
  californiaContentView = self->_californiaContentView;
  v9 = v10;
  [(NTKCaliforniaContentView *)californiaContentView setTransform:&v9];
  [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:a3 > 0.5];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    v8 = [(NTKCaliforniaFaceView *)self contentView];
    v11 = v12;
    [v8 setTransform:&v11];

    v9 = [(NTKCaliforniaFaceView *)self timeView];
    v11 = v12;
    [v9 setTransform:&v11];

    v10 = [(NTKCaliforniaFaceView *)self complicationContainerView];
    v11 = v12;
    [v10 setTransform:&v11];
  }
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBezel])
  {
    v5 = NTKLargeElementMinimumBreathingScale;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = NTKCaliforniaFaceView;
    [(NTKCaliforniaFaceView *)&v8 _minimumBreathingScaleForComplicationSlot:v4];
    v5 = v6;
  }

  return v5;
}

- (void)_configureForEditMode:(int64_t)a3
{
  v19.receiver = self;
  v19.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v19 _configureForEditMode:?];
  [(NTKCaliforniaFaceView *)self _dialAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKCaliforniaFaceView *)self californiaContentView];
  [v7 setCircularBezelTickAlpha:v6];

  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:a3];
  v9 = v8;
  v10 = [(NTKCaliforniaFaceView *)self backgroundView];
  [v10 setAlpha:v9];

  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:a3];
  v12 = v11;
  v13 = [(NTKCaliforniaFaceView *)self californiaContentView];
  [v13 setAlpha:v12];

  [(NTKCaliforniaFaceView *)self _timeAlphaForEditMode:a3];
  v15 = v14;
  v16 = [(NTKCaliforniaFaceView *)self timeView];
  [v16 setAlpha:v15];

  [(NTKCaliforniaFaceView *)self _applyTransitionFraction:self->_dial fromDial:self->_dial toDial:1.0];
  [(NTKCaliforniaFaceView *)self _applyTransitionFraction:self->_style fromStyle:self->_style toStyle:1.0];
  v17 = [(NTKCaliforniaFaceView *)self colorPalette];
  v18 = [(NTKCaliforniaFaceView *)self colorPalette];
  [(NTKCaliforniaFaceView *)self _applyTransitionFraction:v17 fromColorPalette:v18 toColorPalette:1.0];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v23.receiver = self;
  v23.super_class = NTKCaliforniaFaceView;
  [NTKCaliforniaFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKCaliforniaFaceView *)self backgroundView];
  [v10 setAlpha:v9];

  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKCaliforniaFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKCaliforniaFaceView *)self californiaContentView];
  [v13 setAlpha:v12];

  [(NTKCaliforniaFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKCaliforniaFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  v16 = [(NTKCaliforniaFaceView *)self timeView];
  [v16 setAlpha:v15];

  [(NTKCaliforniaFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKCaliforniaFaceView *)self _dialAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  v19 = [(NTKCaliforniaFaceView *)self californiaContentView];
  [v19 setCircularBezelTickAlpha:v18];

  v20 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:a4];
  v21 = [(NTKCaliforniaFaceView *)self _simpleTextComplicationColorForEditMode:a5];
  v22 = NTKInterpolateBetweenColors();

  [(NTKCaliforniaFaceView *)self _updateSimpleTextLabelColor:v22];
}

- (void)_updateSimpleTextLabelColor:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_EBA8;
  v5[3] = &unk_1C8F8;
  v6 = a3;
  v4 = v6;
  [(NTKCaliforniaFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_cleanupAfterEditing
{
  v5.receiver = self;
  v5.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v5 _cleanupAfterEditing];
  v3 = [(NTKCaliforniaFaceView *)self isCircularDialWithBezel];
  if (v3)
  {
    [(NTKCaliforniaFaceView *)self _updateDialTicksForBezelText];
  }

  [(NTKCaliforniaContentView *)self->_californiaContentView setBezelComplicationEnabled:v3];
  v4 = [(NTKCaliforniaFaceView *)self delegate];
  [v4 faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v5 _cleanupAfterTransitionComplicationSlot:a3 selectedComplication:a4];
  [(NTKCaliforniaFaceView *)self _updateDialTicksForBezelText];
}

- (id)_simpleTextComplicationColorForEditMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = [UIColor colorWithWhite:0.95 alpha:1.0];
  }

  else
  {
    v4 = [(NTKCaliforniaFaceView *)self colorPalette];
    v3 = [v4 simpleTextComplication];
  }

  return v3;
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  if (!a3)
  {
    return 1.0;
  }

  if (a3 == 1)
  {
    return 0.0;
  }

  return NTKEditModeDimmedAlpha;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  if (a3)
  {
    if (a3 != 10)
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
  v2 = [(NTKCaliforniaFaceView *)self utilityBezelComplicationView];
  [v2 textWidthInRadians];
  v4 = v3;

  return v4;
}

- (id)utilityBezelComplicationView
{
  v2 = [(NTKCaliforniaFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
  v3 = [v2 display];
  v4 = [v3 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityFlatComplicationView];

  if (v4)
  {
    v5 = [v2 display];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 == 13)
  {
    return NTKEditSpeedCustomEditModeDefault;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKCaliforniaFaceView;
  [(NTKCaliforniaFaceView *)&v7 _editSpeedForCustomEditMode:a3 slot:a4];
  return result;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_1F890;
  if (a3 != 15)
  {
    v4 = 0;
  }

  if (a3 == 13)
  {
    return &off_1F878;
  }

  else
  {
    return v4;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = v9;
  if ((a4 | 2) != 0xF)
  {
    v29.receiver = self;
    v29.super_class = NTKCaliforniaFaceView;
    v15 = [(NTKCaliforniaFaceView *)&v29 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
    goto LABEL_13;
  }

  v11 = [v9 objectForKeyedSubscript:&off_1EE20];
  v12 = [v10 objectForKeyedSubscript:&off_1EDD8];
  v13 = v12;
  if (a4 == 13)
  {
    v14 = v11;
    v11 = v8;
    goto LABEL_7;
  }

  if (a4 == 15)
  {
    v14 = v12;
    v13 = v8;
LABEL_7:
    v16 = v8;
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
    v22 = [(NTKCaliforniaFaceView *)self device];
    v23 = [(NTKCaliforniaFaceView *)v21 initWithFaceStyle:39 forDevice:v22 clientIdentifier:0];

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
    v27 = [(NTKCaliforniaFaceView *)v23 layer];
    [v27 renderInContext:UIGraphicsGetCurrentContext()];

    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    [qword_25D08 setObject:v15 forKey:v20];
  }

LABEL_13:

  return v15;
}

@end