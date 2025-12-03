@interface NTKSharkFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
- (BOOL)_wantsStatusBarHidden;
- (CGRect)contentViewFrame;
- (NTKSharkFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createController;
- (id)createFaceColorPalette;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_unloadSnapshotContentViews;
- (void)createView;
- (void)layoutSubviews;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)updateComplicationsColorWithPalette:(id)palette;
- (void)updateTimeViewColor:(id)color;
@end

@implementation NTKSharkFaceView

- (NTKSharkFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v14.receiver = self;
  v14.super_class = NTKSharkFaceView;
  v9 = [(NTKSharkFaceView *)&v14 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    device = [(NTKSharkFaceView *)v9 device];
    v12 = [v10 initWithFaceView:v9 dialDiameter:deviceCopy device:{sub_4794(device, device)}];

    [v12 setUsesNarrowTopSlots:1];
    [(NTKSharkFaceView *)v9 setComplicationFactory:v12];
  }

  return v9;
}

- (void)_applyDataMode
{
  alaskanContentController = [(NTKSharkFaceView *)self alaskanContentController];
  [alaskanContentController setDatamode:{-[NTKSharkFaceView dataMode](self, "dataMode")}];

  delegate = [(NTKSharkFaceView *)self delegate];
  alaskanContentController2 = [(NTKSharkFaceView *)self alaskanContentController];
  [delegate faceViewWantsStatusBarHidden:objc_msgSend(alaskanContentController2 animated:{"wantsStatusBarHidden"), 0}];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 setOverrideDate:date duration:duration];
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
  device = [(NTKSharkFaceView *)self device];
  sub_4794(device, device);

  [(NTKSharkFaceView *)self bounds];
  device2 = [(NTKSharkFaceView *)self device];
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
  alaskanContentView = [(NTKSharkFaceView *)self alaskanContentView];
  v5 = [(NTKAlaskanChronographStyleController *)v3 initWithContentView:alaskanContentView crownInputHandler:0];

  [(NTKAlaskanChronographStyleController *)v5 setFaceView:self];
  [(NTKAlaskanChronographStyleController *)v5 setDatamode:[(NTKSharkFaceView *)self dataMode]];

  return v5;
}

- (BOOL)_wantsStatusBarHidden
{
  alaskanContentController = [(NTKSharkFaceView *)self alaskanContentController];
  wantsStatusBarHidden = [alaskanContentController wantsStatusBarHidden];

  return wantsStatusBarHidden;
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 _prepareForEditing];
  alaskanContentController = [(NTKSharkFaceView *)self alaskanContentController];
  [alaskanContentController prepareForEditing];
}

- (void)_cleanupAfterEditing
{
  v4.receiver = self;
  v4.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v4 _cleanupAfterEditing];
  alaskanContentController = [(NTKSharkFaceView *)self alaskanContentController];
  [alaskanContentController cleanupAfterEditing];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    alaskanContentView = [(NTKSharkFaceView *)self alaskanContentView];
    chronoPalette = [(NTKSharkFaceView *)self chronoPalette];
    [alaskanContentView setPalette:chronoPalette];

    chronoPalette2 = [(NTKSharkFaceView *)self chronoPalette];
    [(NTKSharkFaceView *)self updateComplicationsColorWithPalette:chronoPalette2];
  }

  else
  {
    if (mode != 11)
    {
      goto LABEL_6;
    }

    timescale = [optionCopy timescale];
    chronoPalette2 = [(NTKSharkFaceView *)self alaskanContentView];
    [chronoPalette2 setTimeScale:timescale];
  }

LABEL_6:
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  if (mode == 10)
  {
    interpolatedColorPalette = [(NTKSharkFaceView *)self interpolatedColorPalette];
    [(NTKSharkFaceView *)self updateComplicationsColorWithPalette:interpolatedColorPalette];

    alaskanContentView = [(NTKSharkFaceView *)self alaskanContentView];
    interpolatedColorPalette2 = [(NTKSharkFaceView *)self interpolatedColorPalette];
    [alaskanContentView applyPalette:interpolatedColorPalette2];

    interpolatedColorPalette3 = [(NTKSharkFaceView *)self interpolatedColorPalette];
    [(NTKSharkFaceView *)self updateTimeViewColor:interpolatedColorPalette3];
  }

  else
  {
    if (mode != 11)
    {
      goto LABEL_6;
    }

    timescale = [optionCopy timescale];
    timescale2 = [toOptionCopy timescale];
    interpolatedColorPalette3 = [(NTKSharkFaceView *)self alaskanContentView];
    [interpolatedColorPalette3 applyTransitionFromTimeScale:timescale toTimeScale:timescale2 fraction:fraction];
  }

LABEL_6:
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v26.receiver = self;
  v26.super_class = NTKSharkFaceView;
  [NTKSharkFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  v9 = [(NTKSharkFaceView *)self optionForCustomEditMode:11 slot:0];
  timescale = [v9 timescale];
  if (mode != 11 && editMode == 11)
  {
    alaskanContentView = [(NTKSharkFaceView *)self alaskanContentView];
    [alaskanContentView setIsChronoMode:1];

    alaskanContentView2 = [(NTKSharkFaceView *)self alaskanContentView];
    v13 = alaskanContentView2;
    v14 = timescale;
    fractionCopy = fraction;
LABEL_7:
    [alaskanContentView2 applyTransitionFromTimeScale:0 toTimeScale:v14 fraction:fractionCopy];

    goto LABEL_8;
  }

  if (mode == 11 && editMode != 11)
  {
    alaskanContentView3 = [(NTKSharkFaceView *)self alaskanContentView];
    [alaskanContentView3 setIsChronoMode:1];

    alaskanContentView2 = [(NTKSharkFaceView *)self alaskanContentView];
    v13 = alaskanContentView2;
    fractionCopy = 1.0 - fraction;
    v14 = timescale;
    goto LABEL_7;
  }

LABEL_8:
  [(NTKSharkFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKSharkFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v18 = v17;
  alaskanContentView4 = [(NTKSharkFaceView *)self alaskanContentView];
  [alaskanContentView4 setAlpha:v18];

  [(NTKSharkFaceView *)self _timeViewAlphaForEditMode:mode];
  [(NTKSharkFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v21 = v20;
  timeView = [(NTKSharkFaceView *)self timeView];
  [timeView setAlpha:v21];

  [(NTKSharkFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKSharkFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v24 = v23;
  complicationContainerView = [(NTKSharkFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v24];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v18.receiver = self;
  v18.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v18 _configureForEditMode:?];
  [(NTKSharkFaceView *)self _contentAlphaForEditMode:mode];
  v6 = v5;
  alaskanContentView = [(NTKSharkFaceView *)self alaskanContentView];
  [alaskanContentView setAlpha:v6];

  [(NTKSharkFaceView *)self _timeViewAlphaForEditMode:mode];
  v9 = v8;
  timeView = [(NTKSharkFaceView *)self timeView];
  [timeView setAlpha:v9];

  [(NTKSharkFaceView *)self _complicationAlphaForEditMode:mode];
  v12 = v11;
  complicationContainerView = [(NTKSharkFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v12];

  alaskanContentView2 = [(NTKSharkFaceView *)self alaskanContentView];
  [alaskanContentView2 setIsChronoMode:mode == 11];

  if (mode == 11)
  {
    v15 = [(NTKSharkFaceView *)self optionForCustomEditMode:11 slot:0];
    timescale = [v15 timescale];
    alaskanContentView3 = [(NTKSharkFaceView *)self alaskanContentView];
    [alaskanContentView3 setTimeScale:timescale];
  }
}

- (void)createView
{
  if ([(NTKSharkFaceView *)self viewsLoaded])
  {
    alaskanContentView = [(NTKSharkFaceView *)self alaskanContentView];
    [alaskanContentView removeFromSuperview];

    v4 = [NTKAlaskanChronographView alloc];
    [(NTKSharkFaceView *)self contentViewFrame];
    v5 = [(NTKAlaskanChronographView *)v4 initWithFrame:?];
    [(NTKSharkFaceView *)self setAlaskanContentView:v5];

    v6 = [(NTKSharkFaceView *)self optionForCustomEditMode:11 slot:0];
    timescale = [v6 timescale];
    alaskanContentView2 = [(NTKSharkFaceView *)self alaskanContentView];
    [alaskanContentView2 setTimeScale:timescale];

    createController = [(NTKSharkFaceView *)self createController];
    [(NTKSharkFaceView *)self setAlaskanContentController:createController];

    contentView = [(NTKSharkFaceView *)self contentView];
    alaskanContentView3 = [(NTKSharkFaceView *)self alaskanContentView];
    [contentView addSubview:alaskanContentView3];

    if (([(NTKSharkFaceView *)self editing]& 1) == 0)
    {
      delegate = [(NTKSharkFaceView *)self delegate];
      alaskanContentController = [(NTKSharkFaceView *)self alaskanContentController];
      [delegate faceViewWantsStatusBarHidden:objc_msgSend(alaskanContentController animated:{"wantsStatusBarHidden"), 0}];
    }

    alaskanContentView4 = [(NTKSharkFaceView *)self alaskanContentView];
    chronoPalette = [(NTKSharkFaceView *)self chronoPalette];
    [alaskanContentView4 setPalette:chronoPalette];
  }

  chronoPalette2 = [(NTKSharkFaceView *)self chronoPalette];
  [(NTKSharkFaceView *)self updateComplicationsColorWithPalette:chronoPalette2];

  chronoPalette3 = [(NTKSharkFaceView *)self chronoPalette];
  [(NTKSharkFaceView *)self updateTimeViewColor:chronoPalette3];

  alaskanContentController2 = [(NTKSharkFaceView *)self alaskanContentController];
  [alaskanContentController2 applyVisibilityWithFraction:1.0];
}

- (void)updateTimeViewColor:(id)color
{
  colorCopy = color;
  timeView = [(NTKSharkFaceView *)self timeView];
  clockHands = [colorCopy clockHands];
  hourHandView = [timeView hourHandView];
  [hourHandView setColor:clockHands];

  clockHands2 = [colorCopy clockHands];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setColor:clockHands2];

  clockHandsInlay = [colorCopy clockHandsInlay];
  hourHandView2 = [timeView hourHandView];
  [hourHandView2 setInlayColor:clockHandsInlay];

  clockHandsInlay2 = [colorCopy clockHandsInlay];
  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setInlayColor:clockHandsInlay2];

  secondsHand = [colorCopy secondsHand];

  secondHandView = [timeView secondHandView];
  [secondHandView setColor:secondsHand];

  v15 = +[UIColor blackColor];
  hourHandView3 = [timeView hourHandView];
  [hourHandView3 setHandDotColor:v15];

  v17 = +[UIColor blackColor];
  minuteHandView3 = [timeView minuteHandView];
  [minuteHandView3 setHandDotColor:v17];

  v19 = +[UIColor blackColor];
  secondHandView2 = [timeView secondHandView];
  [secondHandView2 setHandDotColor:v19];
}

- (void)updateComplicationsColorWithPalette:(id)palette
{
  paletteCopy = palette;
  cornerComplication = [paletteCopy cornerComplication];
  cornerComplicationSecondary = [paletteCopy cornerComplicationSecondary];

  [(NTKSharkFaceView *)self updateRichCornerComplicationsInnerColor:cornerComplication outerColor:cornerComplicationSecondary];
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 11)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = 0.2;
  if (mode != 1)
  {
    return 1.0;
  }

  return result;
}

- (double)_timeViewAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    return 1.0;
  }

  return result;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v18.receiver = self;
  v18.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v18 _configureComplicationView:viewCopy forSlot:slotCopy];
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

  if ([v8 containsObject:slotCopy])
  {
    v12 = viewCopy;
    chronoPalette = [(NTKSharkFaceView *)self chronoPalette];
    cornerComplication = [chronoPalette cornerComplication];
    [(NTKSharkFaceView *)self setComplicationColor:cornerComplication];

    complicationColor = [(NTKSharkFaceView *)self complicationColor];
    [(NTKSharkFaceView *)self setInterpolatedComplicationColor:complicationColor];

    chronoPalette2 = [(NTKSharkFaceView *)self chronoPalette];
    cornerComplicationSecondary = [chronoPalette2 cornerComplicationSecondary];
    [(NTKSharkFaceView *)self setAlternateComplicationColor:cornerComplicationSecondary];

    [v12 updateMonochromeColor];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode != 1)
  {
    NTKScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    contentView = [(NTKSharkFaceView *)self contentView];
    v11 = v12;
    [contentView setTransform:&v11];

    timeView = [(NTKSharkFaceView *)self timeView];
    v11 = v12;
    [timeView setTransform:&v11];

    complicationContainerView = [(NTKSharkFaceView *)self complicationContainerView];
    v11 = v12;
    [complicationContainerView setTransform:&v11];
  }
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKSharkFaceView;
  [(NTKSharkFaceView *)&v10 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 11)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v7, v7);
    v8 = v9;
    [(NTKSharkFaceView *)self setTransform:&v8];
  }
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  if (options == 11)
  {
    return &off_3ACD0;
  }

  else
  {
    return 0;
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  if (mode == 11)
  {
    optionsCopy = options;
    v10 = [optionsCopy objectForKeyedSubscript:&off_3A338];
    v11 = optionCopy;

    v12 = [optionsCopy objectForKeyedSubscript:&off_3A320];

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
      device = [(NTKSharkFaceView *)self device];
      v19 = [(NTKSharkFaceView *)v17 initWithFaceStyle:44 forDevice:device clientIdentifier:0];

      [(NTKSharkFaceView *)self frame];
      [(NTKSharkFaceView *)v19 setFrame:?];
      [(NTKSharkFaceView *)v19 _loadSnapshotContentViews];
      [(NTKSharkFaceView *)v19 setOption:v11 forCustomEditMode:11 slot:0];
      [(NTKSharkFaceView *)v19 setOption:v12 forCustomEditMode:10 slot:0];
      alaskanContentView = [(NTKSharkFaceView *)v19 alaskanContentView];
      [alaskanContentView setIsChronoMode:1];

      alaskanContentView2 = [(NTKSharkFaceView *)v19 alaskanContentView];
      [alaskanContentView2 setIsEditing:1];

      v22 = NTKIdealizedDate();
      [(NTKSharkFaceView *)v19 setOverrideDate:v22 duration:0.0];

      [(NTKSharkFaceView *)self frame];
      [(NTKSharkFaceView *)v19 setFrame:?];
      [(NTKSharkFaceView *)v19 bounds];
      v30.width = v23;
      v30.height = v24;
      UIGraphicsBeginImageContextWithOptions(v30, 0, 0.0);
      layer = [(NTKSharkFaceView *)v19 layer];
      [layer renderInContext:UIGraphicsGetCurrentContext()];

      v16 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_46A68 setObject:v16 forKey:v15];
    }
  }

  else
  {
    v28.receiver = self;
    v28.super_class = NTKSharkFaceView;
    optionsCopy2 = options;
    v16 = [(NTKSharkFaceView *)&v28 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy2];
  }

  return v16;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKChronographProFacePalette);

  return v2;
}

@end