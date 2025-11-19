@interface NTKSharkFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
- (BOOL)_wantsStatusBarHidden;
- (CGRect)contentViewFrame;
- (NTKSharkFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createController;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_unloadSnapshotContentViews;
- (void)createView;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)updateComplicationsColorWithPalette:(id)a3;
- (void)updateTimeViewColor:(id)a3;
@end

@implementation NTKSharkFaceView

- (NTKSharkFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKSharkFaceView;
  v9 = [(NTKSharkFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v11 = [(NTKSharkFaceView *)v9 device];
    v12 = [v10 initWithFaceView:v9 dialDiameter:v8 device:{sub_4794(v11, v11)}];

    [v12 setUsesNarrowTopSlots:1];
    [(NTKSharkFaceView *)v9 setComplicationFactory:v12];
  }

  return v9;
}

- (void)_applyDataMode
{
  v3 = [(NTKSharkFaceView *)self alaskanContentController];
  [v3 setDatamode:{-[NTKSharkFaceView dataMode](self, "dataMode")}];

  v5 = [(NTKSharkFaceView *)self delegate];
  v4 = [(NTKSharkFaceView *)self alaskanContentController];
  [v5 faceViewWantsStatusBarHidden:objc_msgSend(v4 animated:{"wantsStatusBarHidden"), 0}];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 setOverrideDate:a3 duration:a4];
}

- (void)_prepareForSnapshotting
{
  v2.receiver = self;
  v2.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v2 _prepareForSnapshotting];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKSharkFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKSharkFaceView *)self _removeViews];
}

- (void)_removeViews
{
  [(NTKAlaskanChronographView *)self->_alaskanContentView removeFromSuperview];
  self->_viewsLoaded = 0;
  alaskanContentView = self->_alaskanContentView;
  self->_alaskanContentView = 0;

  alaskanContentController = self->_alaskanContentController;
  self->_alaskanContentController = 0;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 layoutSubviews];
  alaskanContentView = self->_alaskanContentView;
  [(NTKSharkFaceView *)self contentViewFrame];
  [(NTKAlaskanChronographView *)alaskanContentView ntk_setBoundsAndPositionFromFrame:?];
}

- (CGRect)contentViewFrame
{
  v3 = [(NTKSharkFaceView *)self device];
  sub_4794(v3, v3);

  [(NTKSharkFaceView *)self bounds];
  v4 = [(NTKSharkFaceView *)self device];
  CLKRectCenteredIntegralRectForDevice();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v13 = v6;
  v14 = v8;
  v15 = v10;
  v16 = v12;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (id)createController
{
  v3 = [NTKAlaskanChronographStyleController alloc];
  v4 = [(NTKSharkFaceView *)self alaskanContentView];
  v5 = [(NTKAlaskanChronographStyleController *)v3 initWithContentView:v4 crownInputHandler:0];

  [(NTKAlaskanChronographStyleController *)v5 setFaceView:self];
  [(NTKAlaskanChronographStyleController *)v5 setDatamode:[(NTKSharkFaceView *)self dataMode]];

  return v5;
}

- (BOOL)_wantsStatusBarHidden
{
  v2 = [(NTKSharkFaceView *)self alaskanContentController];
  v3 = [v2 wantsStatusBarHidden];

  return v3;
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 _prepareForEditing];
  v3 = [(NTKSharkFaceView *)self alaskanContentController];
  [v3 prepareForEditing];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 _cleanupAfterEditing];
  v3 = [(NTKSharkFaceView *)self alaskanContentController];
  [v3 cleanupAfterEditing];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    v11 = [(NTKSharkFaceView *)self alaskanContentView];
    v12 = [(NTKSharkFaceView *)self chronoPalette];
    [v11 setPalette:v12];

    v10 = [(NTKSharkFaceView *)self chronoPalette];
    [(NTKSharkFaceView *)self updateComplicationsColorWithPalette:v10];
  }

  else
  {
    if (a4 != 11)
    {
      goto LABEL_6;
    }

    v9 = [v13 timescale];
    v10 = [(NTKSharkFaceView *)self alaskanContentView];
    [v10 setTimeScale:v9];
  }

LABEL_6:
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v20 = a4;
  v12 = a5;
  v13 = a7;
  if (a6 == 10)
  {
    v17 = [(NTKSharkFaceView *)self interpolatedColorPalette];
    [(NTKSharkFaceView *)self updateComplicationsColorWithPalette:v17];

    v18 = [(NTKSharkFaceView *)self alaskanContentView];
    v19 = [(NTKSharkFaceView *)self interpolatedColorPalette];
    [v18 applyPalette:v19];

    v16 = [(NTKSharkFaceView *)self interpolatedColorPalette];
    [(NTKSharkFaceView *)self updateTimeViewColor:v16];
  }

  else
  {
    if (a6 != 11)
    {
      goto LABEL_6;
    }

    v14 = [v20 timescale];
    v15 = [v12 timescale];
    v16 = [(NTKSharkFaceView *)self alaskanContentView];
    [v16 applyTransitionFromTimeScale:v14 toTimeScale:v15 fraction:a3];
  }

LABEL_6:
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v26.receiver = self;
  v26.super_class = NTKSharkFaceView;
  [NTKSharkFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v9 = [(NTKSharkFaceView *)self optionForCustomEditMode:11 slot:0];
  v10 = [v9 timescale];
  if (a4 != 11 && a5 == 11)
  {
    v11 = [(NTKSharkFaceView *)self alaskanContentView];
    [v11 setIsChronoMode:1];

    v12 = [(NTKSharkFaceView *)self alaskanContentView];
    v13 = v12;
    v14 = v10;
    v15 = a3;
LABEL_7:
    [v12 applyTransitionFromTimeScale:0 toTimeScale:v14 fraction:v15];

    goto LABEL_8;
  }

  if (a4 == 11 && a5 != 11)
  {
    v16 = [(NTKSharkFaceView *)self alaskanContentView];
    [v16 setIsChronoMode:1];

    v12 = [(NTKSharkFaceView *)self alaskanContentView];
    v13 = v12;
    v15 = 1.0 - a3;
    v14 = v10;
    goto LABEL_7;
  }

LABEL_8:
  [(NTKSharkFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKSharkFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  v19 = [(NTKSharkFaceView *)self alaskanContentView];
  [v19 setAlpha:v18];

  [(NTKSharkFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKSharkFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v21 = v20;
  v22 = [(NTKSharkFaceView *)self timeView];
  [v22 setAlpha:v21];

  [(NTKSharkFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKSharkFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v24 = v23;
  v25 = [(NTKSharkFaceView *)self complicationContainerView];
  [v25 setAlpha:v24];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v18.receiver = self;
  v18.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v18 _configureForEditMode:?];
  [(NTKSharkFaceView *)self _contentAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKSharkFaceView *)self alaskanContentView];
  [v7 setAlpha:v6];

  [(NTKSharkFaceView *)self _timeViewAlphaForEditMode:a3];
  v9 = v8;
  v10 = [(NTKSharkFaceView *)self timeView];
  [v10 setAlpha:v9];

  [(NTKSharkFaceView *)self _complicationAlphaForEditMode:a3];
  v12 = v11;
  v13 = [(NTKSharkFaceView *)self complicationContainerView];
  [v13 setAlpha:v12];

  v14 = [(NTKSharkFaceView *)self alaskanContentView];
  [v14 setIsChronoMode:a3 == 11];

  if (a3 == 11)
  {
    v15 = [(NTKSharkFaceView *)self optionForCustomEditMode:11 slot:0];
    v16 = [v15 timescale];
    v17 = [(NTKSharkFaceView *)self alaskanContentView];
    [v17 setTimeScale:v16];
  }
}

- (void)createView
{
  if ([(NTKSharkFaceView *)self viewsLoaded])
  {
    v3 = [(NTKSharkFaceView *)self alaskanContentView];
    [v3 removeFromSuperview];

    v4 = [NTKAlaskanChronographView alloc];
    [(NTKSharkFaceView *)self contentViewFrame];
    v5 = [(NTKAlaskanChronographView *)v4 initWithFrame:?];
    [(NTKSharkFaceView *)self setAlaskanContentView:v5];

    v6 = [(NTKSharkFaceView *)self optionForCustomEditMode:11 slot:0];
    v7 = [v6 timescale];
    v8 = [(NTKSharkFaceView *)self alaskanContentView];
    [v8 setTimeScale:v7];

    v9 = [(NTKSharkFaceView *)self createController];
    [(NTKSharkFaceView *)self setAlaskanContentController:v9];

    v10 = [(NTKSharkFaceView *)self contentView];
    v11 = [(NTKSharkFaceView *)self alaskanContentView];
    [v10 addSubview:v11];

    if (([(NTKSharkFaceView *)self editing]& 1) == 0)
    {
      v12 = [(NTKSharkFaceView *)self delegate];
      v13 = [(NTKSharkFaceView *)self alaskanContentController];
      [v12 faceViewWantsStatusBarHidden:objc_msgSend(v13 animated:{"wantsStatusBarHidden"), 0}];
    }

    v14 = [(NTKSharkFaceView *)self alaskanContentView];
    v15 = [(NTKSharkFaceView *)self chronoPalette];
    [v14 setPalette:v15];
  }

  v16 = [(NTKSharkFaceView *)self chronoPalette];
  [(NTKSharkFaceView *)self updateComplicationsColorWithPalette:v16];

  v17 = [(NTKSharkFaceView *)self chronoPalette];
  [(NTKSharkFaceView *)self updateTimeViewColor:v17];

  v18 = [(NTKSharkFaceView *)self alaskanContentController];
  [v18 applyVisibilityWithFraction:1.0];
}

- (void)updateTimeViewColor:(id)a3
{
  v4 = a3;
  v21 = [(NTKSharkFaceView *)self timeView];
  v5 = [v4 clockHands];
  v6 = [v21 hourHandView];
  [v6 setColor:v5];

  v7 = [v4 clockHands];
  v8 = [v21 minuteHandView];
  [v8 setColor:v7];

  v9 = [v4 clockHandsInlay];
  v10 = [v21 hourHandView];
  [v10 setInlayColor:v9];

  v11 = [v4 clockHandsInlay];
  v12 = [v21 minuteHandView];
  [v12 setInlayColor:v11];

  v13 = [v4 secondsHand];

  v14 = [v21 secondHandView];
  [v14 setColor:v13];

  v15 = +[UIColor blackColor];
  v16 = [v21 hourHandView];
  [v16 setHandDotColor:v15];

  v17 = +[UIColor blackColor];
  v18 = [v21 minuteHandView];
  [v18 setHandDotColor:v17];

  v19 = +[UIColor blackColor];
  v20 = [v21 secondHandView];
  [v20 setHandDotColor:v19];
}

- (void)updateComplicationsColorWithPalette:(id)a3
{
  v4 = a3;
  v6 = [v4 cornerComplication];
  v5 = [v4 cornerComplicationSecondary];

  [(NTKSharkFaceView *)self updateRichCornerComplicationsInnerColor:v6 outerColor:v5];
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 11)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = 0.2;
  if (a3 != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v18.receiver = self;
  v18.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v18 _configureComplicationView:v6 forSlot:v7];
  v8 = qword_46A60;
  if (!qword_46A60)
  {
    v19[0] = NTKComplicationSlotTopLeft;
    v19[1] = NTKComplicationSlotTopRight;
    v19[2] = NTKComplicationSlotBottomLeft;
    v19[3] = NTKComplicationSlotBottomRight;
    v9 = [NSArray arrayWithObjects:v19 count:4];
    v10 = [NSSet setWithArray:v9];
    v11 = qword_46A60;
    qword_46A60 = v10;

    v8 = qword_46A60;
  }

  if ([v8 containsObject:v7])
  {
    v12 = v6;
    v13 = [(NTKSharkFaceView *)self chronoPalette];
    v14 = [v13 cornerComplication];
    [(NTKSharkFaceView *)self setComplicationColor:v14];

    v15 = [(NTKSharkFaceView *)self complicationColor];
    [(NTKSharkFaceView *)self setInterpolatedComplicationColor:v15];

    v16 = [(NTKSharkFaceView *)self chronoPalette];
    v17 = [v16 cornerComplicationSecondary];
    [(NTKSharkFaceView *)self setAlternateComplicationColor:v17];

    [v12 updateMonochromeColor];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 != 1)
  {
    NTKScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    v8 = [(NTKSharkFaceView *)self contentView];
    v11 = v12;
    [v8 setTransform:&v11];

    v9 = [(NTKSharkFaceView *)self timeView];
    v11 = v12;
    [v9 setTransform:&v11];

    v10 = [(NTKSharkFaceView *)self complicationContainerView];
    v11 = v12;
    [v10 setTransform:&v11];
  }
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v10 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 11)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v7, v7);
    v8 = v9;
    [(NTKSharkFaceView *)self setTransform:&v8];
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  if (a3 == 11)
  {
    return &off_3ACD0;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  if (a4 == 11)
  {
    v9 = a5;
    v10 = [v9 objectForKeyedSubscript:&off_3A338];
    v11 = v8;

    v12 = [v9 objectForKeyedSubscript:&off_3A320];

    if (!qword_46A68)
    {
      v13 = objc_opt_new();
      v14 = qword_46A68;
      qword_46A68 = v13;
    }

    v15 = [NSString stringWithFormat:@"%@-%@", v11, v12];
    v16 = [qword_46A68 objectForKey:v15];
    if (!v16)
    {
      v17 = [NTKSharkFaceView alloc];
      v18 = [(NTKSharkFaceView *)self device];
      v19 = [(NTKSharkFaceView *)v17 initWithFaceStyle:44 forDevice:v18 clientIdentifier:0];

      [(NTKSharkFaceView *)self frame];
      [(NTKSharkFaceView *)v19 setFrame:?];
      [(NTKSharkFaceView *)v19 _loadSnapshotContentViews];
      [(NTKSharkFaceView *)v19 setOption:v11 forCustomEditMode:11 slot:0];
      [(NTKSharkFaceView *)v19 setOption:v12 forCustomEditMode:10 slot:0];
      v20 = [(NTKSharkFaceView *)v19 alaskanContentView];
      [v20 setIsChronoMode:1];

      v21 = [(NTKSharkFaceView *)v19 alaskanContentView];
      [v21 setIsEditing:1];

      v22 = NTKIdealizedDate();
      [(NTKSharkFaceView *)v19 setOverrideDate:v22 duration:0.0];

      [(NTKSharkFaceView *)self frame];
      [(NTKSharkFaceView *)v19 setFrame:?];
      [(NTKSharkFaceView *)v19 bounds];
      v30.width = v23;
      v30.height = v24;
      UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
      v25 = [(NTKSharkFaceView *)v19 layer];
      [v25 renderInContext:UIGraphicsGetCurrentContext()];

      v16 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_46A68 setObject:v16 forKey:v15];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = NTKSharkFaceView;
    v26 = a5;
    v16 = [(NTKSharkFaceView *)&v28 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v26];
  }

  return v16;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKChronographProFacePalette);

  return v2;
}

@end