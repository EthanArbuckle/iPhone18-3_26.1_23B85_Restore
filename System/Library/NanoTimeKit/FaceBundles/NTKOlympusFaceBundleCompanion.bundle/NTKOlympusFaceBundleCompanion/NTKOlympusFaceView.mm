@interface NTKOlympusFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4;
+ (int64_t)uiSensitivity;
- (BOOL)isCircularDialWithBezel;
- (NTKOlympusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_bezelUtilityComplicationAlphaForEditMode:(int64_t)a3;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_dialAlphaForEditMode:(int64_t)a3;
- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4;
- (double)_minimumBreathingScaleForComplicationSlot:(id)a3;
- (double)_timeAlphaForEditMode:(int64_t)a3;
- (double)bezelComplicationTextWidthInRadius;
- (double)circleDiameter;
- (double)contentViewScale;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (id)createFaceColorPalette;
- (id)palette;
- (id)utilityBezelComplicationView;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyContentViewTranform:(CGAffineTransform *)a3;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6;
- (void)_applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4;
- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_createAnalogBackgroundIfNeeded;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_removeViews;
- (void)_setupController;
- (void)_setupDialViewIfNeeded;
- (void)_setupViews;
- (void)_tearDownAnalogView;
- (void)_tearDownOlympusView;
- (void)_unloadSnapshotContentViews;
- (void)_updateBackgroundViewAlpha;
- (void)_updateDialBezelComplicationColor:(id)a3;
- (void)_updateDialTicksForBezelText;
- (void)applyColorOnAnalogHands;
- (void)applyTransitionToCircularDialWithBezelFraction:(double)a3;
- (void)configureComplicationAlphaFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)configureViewsForEditing;
- (void)createAndRemoveViewsForCurrentStateIfNeeded;
- (void)createOlympusViewIfNeeded;
- (void)dealloc;
- (void)layoutSubviews;
- (void)openVictoryAppFromRect:(CGRect)a3;
- (void)setCircularMaskForCircularDialFraction:(double)a3 circleDiameter:(double)a4;
- (void)setCurrentDial:(unint64_t)a3;
- (void)setCurrentStyle:(unint64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
- (void)setupViewsForCurrentState;
- (void)tearDownDialView;
- (void)updateCircularMask;
@end

@implementation NTKOlympusFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  v3 = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (NTKOlympusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v22.receiver = self;
  v22.super_class = NTKOlympusFaceView;
  v9 = [(NTKOlympusFaceView *)&v22 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    [(NTKOlympusFaceView *)v9 setClipsToBounds:1];
    v11 = [(NTKOlympusFaceView *)v10 layer];
    [v11 setMasksToBounds:1];

    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    v13 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v14 = [(NTKOlympusFaceView *)v10 device];
    sub_52F8(v14, v14);
    v16 = [v13 initWithFaceView:v10 dialDiameter:v8 device:v15];

    [v16 setUsesNarrowTopSlots:1];
    v23[0] = NTKComplicationSlotTopLeft;
    v23[1] = NTKComplicationSlotTopRight;
    v23[2] = NTKComplicationSlotBottomLeft;
    v23[3] = NTKComplicationSlotBottomRight;
    v17 = [NSArray arrayWithObjects:v23 count:4];
    [v12 registerFactory:v16 forSlots:v17];

    v18 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
    [v18 setFaceView:v10];
    v19 = [(NTKOlympusFaceView *)v10 device];
    sub_52F8(v19, v19);
    [v18 setDialDiameter:v20];

    [v12 registerFactory:v18 forSlot:NTKComplicationSlotBezel];
    [(NTKOlympusFaceView *)v10 setComplicationFactory:v12];
  }

  return v10;
}

- (void)dealloc
{
  [(NTKOlympusFaceView *)self _unloadSnapshotContentViews];
  v3.receiver = self;
  v3.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v3 dealloc];
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKOlympusColorPalette);

  return v2;
}

- (id)palette
{
  v3 = [(NTKOlympusFaceView *)self faceColorPalette];
  [v3 setStyle:self->_currentStyle];
  [v3 setDial:self->_currentDial];

  return v3;
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKOlympusFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKOlympusFaceView *)self _removeViews];
}

- (void)_setupViews
{
  self->_contentLoaded = 1;
  v3 = [(NTKOlympusFaceView *)self optionForCustomEditMode:15 slot:0];
  self->_currentStyle = [v3 style];

  currentStyle = self->_currentStyle;
  v5 = [(NTKOlympusFaceView *)self olympusView];
  [v5 setCurrentStyle:currentStyle];

  v6 = [(NTKOlympusFaceView *)self optionForCustomEditMode:12 slot:0];
  self->_currentDial = [v6 dialShape];

  currentDial = self->_currentDial;
  v8 = [(NTKOlympusFaceView *)self olympusView];
  [v8 setCurrentDial:currentDial];

  v9 = [(NTKOlympusFaceView *)self palette];
  v10 = [(NTKOlympusFaceView *)self olympusView];
  [v10 setCurrentColorPalette:v9];

  [(NTKOlympusFaceView *)self createAndRemoveViewsForCurrentStateIfNeeded];
  [(NTKOlympusFaceView *)self _setupController];
  v11 = [NTKRoundedCornerOverlayView alloc];
  [(NTKOlympusFaceView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(NTKOlympusFaceView *)self device];
  v21 = [v11 initWithFrame:v20 forDeviceCornerRadius:{v13, v15, v17, v19}];
  cornerView = self->_cornerView;
  self->_cornerView = v21;

  v23 = [(NTKOlympusFaceView *)self contentView];
  [v23 addSubview:self->_cornerView];

  v24 = [(NTKOlympusFaceView *)self timeView];
  [(NTKOlympusFaceView *)self _configureTimeView:v24];

  [(NTKOlympusFaceView *)self _updateDialTicksForBezelText];
}

- (void)_setupController
{
  if (!self->_olympusController)
  {
    v3 = [[NTKOlympusController alloc] initWithFaceView:self olympusView:self->_olympusView];
    olympusController = self->_olympusController;
    self->_olympusController = v3;

    _objc_release_x1();
  }
}

- (void)_removeViews
{
  self->_contentLoaded = 0;
  [(NTKOlympusFaceView *)self _tearDownOlympusView];
  [(NTKOlympusFaceView *)self _tearDownAnalogView];
  [(NTKOlympusFaceView *)self tearDownDialView];
  [(NTKRoundedCornerOverlayView *)self->_cornerView removeFromSuperview];
  cornerView = self->_cornerView;
  self->_cornerView = 0;

  olympusController = self->_olympusController;
  self->_olympusController = 0;
}

- (void)createAndRemoveViewsForCurrentStateIfNeeded
{
  if (self->_contentLoaded)
  {
    currentStyle = self->_currentStyle;
    if (currentStyle - 1 >= 2 && currentStyle)
    {
      if (currentStyle == 3)
      {
        [(NTKOlympusFaceView *)self _createAnalogBackgroundIfNeeded];
        [(NTKOlympusFaceView *)self _tearDownOlympusView];
      }
    }

    else
    {
      [(NTKOlympusFaceView *)self createOlympusViewIfNeeded];
      [(NTKOlympusFaceView *)self _tearDownAnalogView];
    }

    if (self->_currentDial)
    {
      [(NTKOlympusFaceView *)self tearDownDialView];
    }

    else
    {
      [(NTKOlympusFaceView *)self _setupDialViewIfNeeded];
    }

    v5 = [(NTKOlympusFaceView *)self timeView];
    [(NTKOlympusFaceView *)self _configureTimeView:v5];

    [(NTKOlympusFaceView *)self setupViewsForCurrentState];
    v7 = [(NTKOlympusFaceView *)self contentView];
    v6 = [(NTKOlympusFaceView *)self cornerView];
    [v7 bringSubviewToFront:v6];
  }
}

- (void)setupViewsForCurrentState
{
  [(NTKOlympusTimeView *)self->_olympusView setupViewsForCurrentState:[(NTKOlympusFaceView *)self editing]];
  if (self->_analogBackgroundView)
  {
    currentDial = self->_currentDial;
    v4 = [(NTKOlympusFaceView *)self palette];
    [v4 setDial:currentDial];

    currentStyle = self->_currentStyle;
    v6 = [(NTKOlympusFaceView *)self palette];
    [v6 setStyle:currentStyle];

    v7 = [NTKOlympusAnalogBackgroundPalette alloc];
    v8 = [(NTKOlympusFaceView *)self palette];
    v9 = [v7 initWithOlympusColorPalette:v8];

    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView applyTransitionFraction:self->_currentStyle fromOlympusStyle:self->_currentStyle toOlympusStyle:1.0];
    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setPalette:v9];
    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setDialShape:self->_currentDial];
    [(NTKOlympusFaceView *)self _updateBackgroundViewAlpha];
  }

  dialView = self->_dialView;
  if (dialView)
  {
    [(NTKCircularAnalogDialView *)dialView setHideHourTicks:self->_currentStyle - 4 < 0xFFFFFFFFFFFFFFFELL];
  }

  if (self->_currentDial == 1)
  {
    v11 = [(NTKOlympusFaceView *)self contentView];
    v12 = [v11 layer];
    [v12 setMask:0];

    v13 = 1;
  }

  else
  {
    [(NTKOlympusFaceView *)self circleDiameter];
    [(NTKOlympusFaceView *)self setCircularMaskForCircularDialFraction:1.0 circleDiameter:v14];
    v13 = [(NTKOlympusFaceView *)self isCircularDialWithBezel]^ 1;
  }

  v15 = self->_dialView;

  [(NTKCircularAnalogDialView *)v15 setHidden:v13];
}

- (void)configureViewsForEditing
{
  if (self->_contentLoaded)
  {
    v11 = v2;
    v12 = v3;
    [(NTKOlympusFaceView *)self createOlympusViewIfNeeded];
    [(NTKOlympusTimeView *)self->_olympusView configureViewsForEditing];
    [(NTKOlympusFaceView *)self _createAnalogBackgroundIfNeeded];
    [(NTKOlympusFaceView *)self _setupDialViewIfNeeded];
    [(NTKOlympusFaceView *)self setupViewsForCurrentState];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:self->_currentDial fromDial:self->_currentDial toDial:1.0];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:self->_currentStyle fromStyle:self->_currentStyle toStyle:1.0];
    v5 = [(NTKOlympusFaceView *)self palette];
    v6 = [(NTKOlympusFaceView *)self palette];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:v5 fromColorPalette:v6 toColorPalette:0 animateElements:1.0];

    [(NTKOlympusFaceView *)self contentViewScale];
    CGAffineTransformMakeScale(&v10, v7, v7);
    [(NTKOlympusFaceView *)self _applyContentViewTranform:&v10];
    v8 = [(NTKOlympusFaceView *)self contentView];
    v9 = [(NTKOlympusFaceView *)self cornerView];
    [v8 bringSubviewToFront:v9];
  }
}

- (void)_createAnalogBackgroundIfNeeded
{
  analogBackgroundView = self->_analogBackgroundView;
  if (!analogBackgroundView)
  {
    v4 = [(NTKOlympusFaceView *)self device];
    v5 = [NTKVictoryAnalogBackgroundView alloc];
    [v4 screenBounds];
    v6 = [v5 initWithFrame:v4 forDevice:?];
    v7 = self->_analogBackgroundView;
    self->_analogBackgroundView = v6;

    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setDelegate:self];
    [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setStyle:4];
    [(NTKOlympusFaceView *)self contentViewScale];
    CGAffineTransformMakeScale(&v14, v8, v8);
    v9 = self->_analogBackgroundView;
    v13 = v14;
    [(NTKVictoryAnalogBackgroundView *)v9 setTransform:&v13];

    analogBackgroundView = self->_analogBackgroundView;
  }

  v10 = [(NTKVictoryAnalogBackgroundView *)analogBackgroundView superview];
  v11 = [(NTKOlympusFaceView *)self contentView];

  if (v10 != v11)
  {
    v12 = [(NTKOlympusFaceView *)self contentView];
    [v12 addSubview:self->_analogBackgroundView];
  }

  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setHidden:0];
}

- (void)_setupDialViewIfNeeded
{
  dialView = self->_dialView;
  if (!dialView)
  {
    v4 = [(NTKOlympusFaceView *)self device];
    sub_52F8(v4, v4);

    [(NTKOlympusFaceView *)self bounds];
    v5 = [(NTKOlympusFaceView *)self device];
    CLKSizeCenteredInRectForDevice();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [NTKCircularAnalogDialView alloc];
    v15 = [(NTKOlympusFaceView *)self device];
    v16 = [v14 initWithFrame:v15 forDevice:0 hideHourTicks:{v7, v9, v11, v13}];
    v17 = self->_dialView;
    self->_dialView = v16;

    [(NTKCircularAnalogDialView *)self->_dialView showAllTicksInDial];
    v18 = self->_dialView;
    v19 = [(NTKOlympusFaceView *)self palette];
    v20 = [(NTKOlympusFaceView *)self palette];
    [(NTKCircularAnalogDialView *)v18 applyColorTransitionFraction:v19 fromColorPalette:v20 toColorPalette:1.0];

    v21 = self->_dialView;
    v22 = +[UIColor clearColor];
    [(NTKCircularAnalogDialView *)v21 setDialBackgroundColor:v22];

    v23 = +[UIColor clearColor];
    [(NTKCircularAnalogDialView *)self->_dialView setBackgroundColor:v23];

    dialView = self->_dialView;
  }

  v24 = [(NTKCircularAnalogDialView *)dialView superview];

  if (v24 != self)
  {
    [(NTKOlympusFaceView *)self insertSubview:self->_dialView atIndex:0];
  }

  v25 = [(NTKOlympusFaceView *)self isCircularDialWithBezel]^ 1;
  v26 = self->_dialView;

  [(NTKCircularAnalogDialView *)v26 setHidden:v25];
}

- (void)_tearDownAnalogView
{
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView removeFromSuperview];
  analogBackgroundView = self->_analogBackgroundView;
  self->_analogBackgroundView = 0;
}

- (void)createOlympusViewIfNeeded
{
  if (!self->_olympusView)
  {
    v3 = [NTKOlympusTimeView alloc];
    v4 = [(NTKOlympusFaceView *)self device];
    currentDial = self->_currentDial;
    currentStyle = self->_currentStyle;
    v7 = [(NTKOlympusFaceView *)self palette];
    v8 = [(NTKOlympusFaceView *)self currentDisplayDate];
    v9 = [v3 initWithDevice:v4 dial:currentDial style:currentStyle colorPalette:v7 date:v8];
    olympusView = self->_olympusView;
    self->_olympusView = v9;

    [(NTKOlympusTimeView *)self->_olympusView setDelegate:self];
    [(NTKOlympusFaceView *)self contentViewScale];
    CGAffineTransformMakeScale(&v18, v11, v11);
    v12 = self->_olympusView;
    v17 = v18;
    [(NTKOlympusTimeView *)v12 setTransform:&v17];
    [(NTKOlympusController *)self->_olympusController setOlympusView:self->_olympusView];
    analogBackgroundView = self->_analogBackgroundView;
    v14 = [(NTKOlympusFaceView *)self contentView];
    v15 = v14;
    v16 = self->_olympusView;
    if (analogBackgroundView)
    {
      [v14 insertSubview:v16 belowSubview:self->_analogBackgroundView];
    }

    else
    {
      [v14 addSubview:v16];
    }
  }
}

- (void)_tearDownOlympusView
{
  [(NTKOlympusTimeView *)self->_olympusView removeFromSuperview];
  olympusView = self->_olympusView;
  self->_olympusView = 0;
}

- (void)tearDownDialView
{
  [(NTKCircularAnalogDialView *)self->_dialView removeFromSuperview];
  dialView = self->_dialView;
  self->_dialView = 0;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v13.receiver = self;
  v13.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v13 _configureComplicationView:v6 forSlot:a4];
  v7 = [(NTKOlympusFaceView *)self palette];
  v8 = [v7 cornerComplicationsAccentColor];
  [(NTKOlympusFaceView *)self setComplicationColor:v8];

  v9 = [(NTKOlympusFaceView *)self complicationColor];
  [(NTKOlympusFaceView *)self setInterpolatedComplicationColor:v9];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v6 updateMonochromeColor];
  }

  if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v10 = v6;
    v11 = [(NTKOlympusFaceView *)self palette];
    v12 = [v11 bezelComplicationColor];
    [v10 setForegroundColor:v12];
  }
}

- (id)_additionalPrelaunchApplicationIdentifiers
{
  v2 = +[NTKVictoryAppLauncher prelaunchApplicationIdentifiers];
  v3 = [NSOrderedSet orderedSetWithSet:v2];

  return v3;
}

- (void)_applyDataMode
{
  v3 = [(NTKOlympusFaceView *)self dataMode];
  [(NTKOlympusController *)self->_olympusController applyDataMode:v3];
  v4 = v3 == &dword_0 + 1;
  [(NTKOlympusTimeView *)self->_olympusView setUserInteractionEnabled:v4];
  analogBackgroundView = self->_analogBackgroundView;

  [(NTKVictoryAnalogBackgroundView *)analogBackgroundView setUserInteractionEnabled:v4];
}

- (void)setTimeOffset:(double)a3
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 setTimeOffset:?];
  [(NTKOlympusTimeView *)self->_olympusView setTimeOffset:a3];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKOlympusFaceView;
  v6 = a3;
  [(NTKOlympusFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKOlympusController *)self->_olympusController setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_configureTimeView:(id)a3
{
  v9.receiver = self;
  v9.super_class = NTKOlympusFaceView;
  v4 = a3;
  [(NTKOlympusFaceView *)&v9 _configureTimeView:v4];
  v5 = [(NTKOlympusFaceView *)self _showAnalogHands:v9.receiver];
  v6 = 0.0;
  if (v5)
  {
    v6 = 1.0;
  }

  [v4 setAlpha:v6];
  [v4 setHidden:{-[NTKOlympusFaceView _showAnalogHands](self, "_showAnalogHands") ^ 1}];
  v7 = [v4 secondHandView];

  v8 = +[UIColor blackColor];
  [v7 setHandDotColor:v8];

  [(NTKOlympusFaceView *)self applyColorOnAnalogHands];
}

- (void)layoutSubviews
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 layoutSubviews];
  olympusView = self->_olympusView;
  [(NTKOlympusFaceView *)self bounds];
  [(NTKOlympusTimeView *)olympusView ntk_setBoundsAndPositionFromFrame:?];
  analogBackgroundView = self->_analogBackgroundView;
  [(NTKOlympusFaceView *)self bounds];
  [(NTKVictoryAnalogBackgroundView *)analogBackgroundView ntk_setBoundsAndPositionFromFrame:?];
  [(NTKOlympusFaceView *)self bounds];
  [(NTKRoundedCornerOverlayView *)self->_cornerView setFrame:?];
  if (([(NTKOlympusFaceView *)self editing]& 1) == 0 && !self->_currentDial)
  {
    [(NTKOlympusFaceView *)self updateCircularMask];
  }
}

- (void)_prepareForEditing
{
  v3.receiver = self;
  v3.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v3 _prepareForEditing];
  [(NTKOlympusFaceView *)self configureViewsForEditing];
  [(NTKOlympusFaceView *)self _updateDialTicksForBezelText];
  [(NTKCircularAnalogDialView *)self->_dialView prepareForEdit];
  [(NTKOlympusTimeView *)self->_olympusView prepareForEditing];
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView willBeginEditing];
}

- (void)_cleanupAfterEditing
{
  v7.receiver = self;
  v7.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v7 _cleanupAfterEditing];
  [(NTKOlympusTimeView *)self->_olympusView cleanupAfterEditing];
  [(NTKOlympusFaceView *)self _updateDialTicksForBezelText];
  [(NTKCircularAnalogDialView *)self->_dialView cleanupAfterEdit];
  if (self->_currentDial == 1)
  {
    [(NTKCircularAnalogDialView *)self->_dialView setHidden:1];
    dialView = self->_dialView;
LABEL_4:
    v5 = 0.0;
    goto LABEL_5;
  }

  v4 = [(NTKOlympusFaceView *)self isCircularDialWithBezel];
  [(NTKCircularAnalogDialView *)self->_dialView setHidden:v4 ^ 1];
  dialView = self->_dialView;
  v5 = 1.0;
  if ((v4 & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(NTKCircularAnalogDialView *)dialView setAlpha:v5];
  [(NTKOlympusFaceView *)self createAndRemoveViewsForCurrentStateIfNeeded];
  v6 = [(NTKOlympusFaceView *)self delegate];
  [v6 faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v18.receiver = self;
  v18.super_class = NTKOlympusFaceView;
  [NTKOlympusFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKOlympusFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKOlympusFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  v11 = [(NTKOlympusFaceView *)self contentView];
  [v11 setAlpha:v10];

  [(NTKOlympusFaceView *)self _timeAlphaForEditMode:a4];
  [(NTKOlympusFaceView *)self _timeAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  v14 = [(NTKOlympusFaceView *)self timeView];
  [v14 setAlpha:v13];

  [(NTKOlympusFaceView *)self _dialAlphaForEditMode:a4];
  [(NTKOlympusFaceView *)self _dialAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  v17 = [(NTKOlympusFaceView *)self dialView];
  [v17 setAlpha:v16];

  [(NTKOlympusFaceView *)self configureComplicationAlphaFraction:a4 fromEditMode:a5 toEditMode:a3];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 _configureForEditMode:?];
  [(NTKOlympusFaceView *)self configureComplicationAlphaFraction:a3 fromEditMode:a3 toEditMode:1.0];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)a3 selectedComplication:(id)a4
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 _cleanupAfterTransitionComplicationSlot:a3 selectedComplication:a4];
  [(NTKOlympusFaceView *)self _updateDialTicksForBezelText];
}

- (void)configureComplicationAlphaFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  [(NTKOlympusFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKOlympusFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  v9 = [(NTKOlympusFaceView *)self complicationContainerView];
  [v9 setAlpha:v8];
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  if (a3 > 0xA)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (((1 << a3) & 0x403) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_bezelUtilityComplicationAlphaForEditMode:(int64_t)a3
{
  if (a3 > 0xC)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (((1 << a3) & 0x1003) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_dialAlphaForEditMode:(int64_t)a3
{
  result = 1.0;
  v4 = 0.5;
  if (a3 == 1)
  {
    v4 = 0.0;
  }

  if (a3 == 12)
  {
    v4 = 1.0;
  }

  if (a3)
  {
    return v4;
  }

  return result;
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
  v4 = [(NTKOlympusFaceView *)self _showAnalogHands];
  result = NTKEditModeDimmedAlpha;
  if (a3 != 1)
  {
    result = 1.0;
  }

  if (!v4)
  {
    return 0.0;
  }

  return result;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v12 = a3;
  v8 = a5;
  if (a4 == 10)
  {
    v10 = [(NTKOlympusFaceView *)self palette];
    v11 = [(NTKOlympusFaceView *)self palette];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:v10 fromColorPalette:v11 toColorPalette:0 animateElements:1.0];

    [(NTKOlympusFaceView *)self applyColorOnAnalogHands];
  }

  else
  {
    if (a4 == 12)
    {
      v9 = [(NTKOlympusFaceView *)self optionForCustomEditMode:12 slot:0];
      -[NTKOlympusFaceView setCurrentDial:](self, "setCurrentDial:", [v9 dialShape]);
    }

    else
    {
      if (a4 != 15)
      {
        goto LABEL_8;
      }

      v9 = [(NTKOlympusFaceView *)self optionForCustomEditMode:15 slot:0];
      -[NTKOlympusFaceView setCurrentStyle:](self, "setCurrentStyle:", [v9 style]);
    }
  }

LABEL_8:
  if (!self->_contentLoaded)
  {
    [(NTKCircularAnalogDialView *)self->_dialView setHidden:[(NTKOlympusFaceView *)self isCircularDialWithBezel]^ 1];
  }

  if ([(NTKOlympusFaceView *)self editing])
  {
    [(NTKOlympusFaceView *)self setupViewsForCurrentState];
  }

  else
  {
    [(NTKOlympusFaceView *)self createAndRemoveViewsForCurrentStateIfNeeded];
    [(NTKOlympusTimeView *)self->_olympusView cleanupAfterEditing];
  }
}

- (void)applyColorOnAnalogHands
{
  v3 = [(NTKOlympusFaceView *)self palette];
  v10 = [v3 largeHandsColor];

  v4 = [(NTKOlympusFaceView *)self timeView];
  v5 = [v4 minuteHandView];
  [v5 setColor:v10];

  v6 = [v4 hourHandView];
  [v6 setColor:v10];

  v7 = [v4 secondHandView];
  v8 = [(NTKOlympusFaceView *)self palette];
  v9 = [v8 secondHandColor];
  [v7 setColor:v9];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v18 = a4;
  v12 = a5;
  v13 = a7;
  switch(a6)
  {
    case 10:
      v14 = [(NTKOlympusFaceView *)self interpolatedColorPalette];
      v15 = [v14 fromPalette];
      v16 = [(NTKOlympusFaceView *)self interpolatedColorPalette];
      v17 = [v16 toPalette];
      [(NTKOlympusFaceView *)self _applyTransitionFraction:v15 fromColorPalette:v17 toColorPalette:1 animateElements:a3];

      break;
    case 15:
      -[NTKOlympusFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [v18 style], objc_msgSend(v12, "style"), a3);
      break;
    case 12:
      -[NTKOlympusFaceView _applyTransitionFraction:fromDial:toDial:](self, "_applyTransitionFraction:fromDial:toDial:", [v18 dialShape], objc_msgSend(v12, "dialShape"), a3);
      break;
  }
}

- (void)_applyTransitionFraction:(double)a3 fromDial:(unint64_t)a4 toDial:(unint64_t)a5
{
  if (a4 == a5)
  {

    [(NTKOlympusFaceView *)self setCurrentDial:a3];
  }

  else
  {
    if (a5 == 1 && a4 == 0)
    {
      v9 = 1.0 - a3;
    }

    else
    {
      v9 = a3;
    }

    [(NTKOlympusFaceView *)self circleDiameter];
    [(NTKOlympusFaceView *)self setCircularMaskForCircularDialFraction:v9 circleDiameter:v10];
    CLKCompressFraction();
    v12 = v11;
    v13 = [(NTKOlympusFaceView *)self dialView];
    [(NTKOlympusFaceView *)self bezelComplicationTextWidthInRadius];
    [v13 fillDialTransitionWithFraction:v12 bezelTextWidthRadians:v14];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_398C;
    v22[3] = &unk_10378;
    *&v22[4] = v12;
    [(NTKOlympusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v22];
    v15 = [(NTKOlympusFaceView *)self analogBackgroundView];
    [v15 applyTransitionFraction:a4 fromDialShape:a5 toDialShape:v9];

    [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:a4 fromDial:a5 toDial:v9];
    v16 = [(NTKOlympusFaceView *)self palette];
    v17 = [v16 copy];

    [v17 setDial:a4];
    v18 = [(NTKOlympusFaceView *)self palette];
    v19 = [v18 copy];

    [v17 setDial:a5];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:v17 fromColorPalette:v19 toColorPalette:0 animateElements:v9];
    [(NTKOlympusFaceView *)self isCircularDialWithBezel];
    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v21, v20, v20);
    [(NTKOlympusFaceView *)self _applyContentViewTranform:&v21];
  }
}

- (void)setCurrentDial:(unint64_t)a3
{
  self->_currentDial = a3;
  v5 = [(NTKOlympusFaceView *)self analogBackgroundView];
  [v5 setDialShape:a3];

  currentDial = self->_currentDial;
  v7 = [(NTKOlympusFaceView *)self olympusView];
  [v7 setCurrentDial:currentDial];

  [(NTKCircularAnalogDialView *)self->_dialView setHidden:[(NTKOlympusFaceView *)self isCircularDialWithBezel]^ 1];
  if (self->_currentDial)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 1.0;
  }

  [(NTKOlympusFaceView *)self circleDiameter];
  [(NTKOlympusFaceView *)self setCircularMaskForCircularDialFraction:v8 circleDiameter:v9];
  [(NTKOlympusFaceView *)self contentViewScale];
  CGAffineTransformMakeScale(&v11, v10, v10);
  [(NTKOlympusFaceView *)self _applyContentViewTranform:&v11];
}

- (void)_applyTransitionFraction:(double)a3 fromStyle:(unint64_t)a4 toStyle:(unint64_t)a5
{
  if (self->_currentDial == 1)
  {
    v9 = 1;
  }

  else
  {
    v9 = [(NTKOlympusFaceView *)self isCircularDialWithBezel]^ 1;
  }

  [(NTKCircularAnalogDialView *)self->_dialView setHidden:v9];
  v10 = [(NTKOlympusFaceView *)self timeView];
  [v10 setHidden:0];

  v11 = [(NTKOlympusFaceView *)self olympusView];
  [v11 applyTransitionFraction:a4 fromStyle:a5 toStyle:a3];

  CLKCompressFraction();
  v13 = v12;
  v14 = [(NTKOlympusFaceView *)self timeView];
  [v14 setAlpha:v13];

  v15 = [(NTKOlympusFaceView *)self dialView];
  v16 = [(NTKOlympusFaceView *)self timeView];
  [v16 alpha];
  v18 = v17;
  [(NTKOlympusFaceView *)self bezelComplicationTextWidthInRadius];
  [v15 setHourTicksOpacity:v18 bezelTextWidthRadians:v19];

  CLKCompressFraction();
  v21 = v20;
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setAlpha:?];
  [(NTKOlympusTimeView *)self->_olympusView setAlpha:1.0 - v21];
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView applyTransitionFraction:a4 fromOlympusStyle:a5 toOlympusStyle:a3];
  v22 = [(NTKOlympusFaceView *)self palette];
  v25 = [v22 copy];

  [v25 setStyle:a4];
  v23 = [(NTKOlympusFaceView *)self palette];
  v24 = [v23 copy];

  [v24 setStyle:a5];
  [(NTKOlympusFaceView *)self _applyTransitionFraction:v25 fromColorPalette:v24 toColorPalette:0 animateElements:a3];
}

- (void)_updateDialBezelComplicationColor:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_41E4;
  v5[3] = &unk_103A0;
  v6 = a3;
  v4 = v6;
  [(NTKOlympusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_applyTransitionFraction:(double)a3 fromComplication:(id)a4 toComplication:(id)a5 slot:(id)a6
{
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = NTKOlympusFaceView;
  v12 = a6;
  [(NTKOlympusFaceView *)&v17 _applyTransitionFraction:v10 fromComplication:v11 toComplication:v12 slot:a3];
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

    [(NTKOlympusFaceView *)self applyTransitionToCircularDialWithBezelFraction:v14];
  }
}

- (void)_applyContentViewTranform:(CGAffineTransform *)a3
{
  v5 = *&a3->c;
  v7 = *&a3->a;
  v8 = v5;
  v9 = *&a3->tx;
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setTransform:&v7];
  v6 = *&a3->c;
  v7 = *&a3->a;
  v8 = v6;
  v9 = *&a3->tx;
  [(NTKOlympusTimeView *)self->_olympusView setTransform:&v7];
}

- (double)contentViewScale
{
  result = 1.0;
  if (!self->_currentDial)
  {
    v5 = [(NTKOlympusFaceView *)self isCircularDialWithBezel:1.0];
    result = 0.86;
    if (!v5)
    {
      return 1.0;
    }
  }

  return result;
}

- (void)applyTransitionToCircularDialWithBezelFraction:(double)a3
{
  v4 = [(NTKOlympusFaceView *)self device];
  sub_52F8(v4, v4);

  CLKInterpolateBetweenFloatsClipped();
  [(NTKOlympusFaceView *)self setCircularMaskForCircularDialFraction:1.0 circleDiameter:v5];
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v7, v6, v6);
  [(NTKOlympusFaceView *)self _applyContentViewTranform:&v7];
  [(NTKOlympusFaceView *)self _dialAlphaForEditMode:1];
  CLKCompressFraction();
  [(NTKCircularAnalogDialView *)self->_dialView setAlpha:?];
}

- (double)circleDiameter
{
  v3 = [(NTKOlympusFaceView *)self device];
  v4 = sub_52F8(v3, v3);
  v6 = v5;

  if ([(NTKOlympusFaceView *)self isCircularDialWithBezel])
  {
    return v4;
  }

  else
  {
    return v6;
  }
}

- (BOOL)isCircularDialWithBezel
{
  v3 = [(NTKOlympusFaceView *)self delegate];
  if (v3)
  {
    v4 = [(NTKOlympusFaceView *)self delegate];
    v5 = [v4 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updateCircularMask
{
  if (self->_currentDial)
  {
    v3 = 0.0;
  }

  else
  {
    v3 = 1.0;
  }

  [(NTKOlympusFaceView *)self circleDiameter];

  [(NTKOlympusFaceView *)self setCircularMaskForCircularDialFraction:v3 circleDiameter:v4];
}

- (void)setCircularMaskForCircularDialFraction:(double)a3 circleDiameter:(double)a4
{
  [(NTKCircularAnalogDialView *)self->_dialView setHidden:[(NTKOlympusFaceView *)self isCircularDialWithBezel]^ 1];
  CLKCompressFraction();
  CLKInterpolateBetweenFloatsClipped();
  CGAffineTransformMakeScale(&v19, v5, v5);
  dialView = self->_dialView;
  v18 = v19;
  [(NTKCircularAnalogDialView *)dialView setTransform:&v18];
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  v9 = v7 * 0.5;
  [(NTKOlympusFaceView *)self bounds];
  v11 = v10 * 0.5 - v9;
  [(NTKOlympusFaceView *)self bounds];
  v13 = [UIBezierPath bezierPathWithOvalInRect:v11, v12 * 0.5 - v9, v8, v8];
  v14 = +[CAShapeLayer layer];
  [v14 setPath:{objc_msgSend(v13, "CGPath")}];
  v15 = [(NTKOlympusFaceView *)self contentView];
  v16 = [v15 layer];
  [v16 setMask:v14];

  [(NTKOlympusFaceView *)self contentViewScale];
  CGAffineTransformMakeScale(&v18, v17, v17);
  [(NTKOlympusFaceView *)self _applyContentViewTranform:&v18];
}

- (void)_cleanupAfterTransitionToOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 _cleanupAfterTransitionToOption:a3 forCustomEditMode:a4 slot:a5];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v11.receiver = self;
  v11.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v11 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v7, v7);
    v8 = [(NTKOlympusFaceView *)self foregroundContainerView];
    v9 = v10;
    [v8 setTransform:&v9];
  }
}

- (double)_editSpeedForCustomEditMode:(int64_t)a3 slot:(id)a4
{
  if (a3 != 10)
  {
    return NTKEditSpeedCustomEditModeDefault;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v7 _editSpeedForCustomEditMode:a3 slot:a4];
  return result;
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v10.receiver = self;
  v10.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v10 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v7, v7);
    v8 = v9;
    [(NTKOlympusFaceView *)self setTransform:&v8];
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
    v8.super_class = NTKOlympusFaceView;
    [(NTKOlympusFaceView *)&v8 _minimumBreathingScaleForComplicationSlot:v4];
    v5 = v6;
  }

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)a3 forDevice:(id)a4
{
  v4 = &off_10B28;
  if (a3 != 12)
  {
    v4 = 0;
  }

  if (a3 == 15)
  {
    return &off_10B10;
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
  if (a4 == 15 || a4 == 12)
  {
    v11 = [v9 objectForKeyedSubscript:&off_107B0];
    v12 = [v10 objectForKeyedSubscript:&off_10768];
    v13 = v12;
    if (a4 == 15)
    {
      v14 = v11;
      v11 = v8;
    }

    else
    {
      v14 = v12;
      v13 = v8;
    }

    v16 = v8;

    v17 = [v10 objectForKeyedSubscript:&off_10780];
    if (!qword_15B20)
    {
      v18 = objc_opt_new();
      v19 = qword_15B20;
      qword_15B20 = v18;
    }

    v20 = [NSString stringWithFormat:@"%@-%@-%@", v11, v13, v17];
    v15 = [qword_15B20 objectForKey:v20];
    if (!v15)
    {
      v21 = [NTKOlympusFaceView alloc];
      v22 = [(NTKOlympusFaceView *)self device];
      v23 = [(NTKOlympusFaceView *)v21 initWithFaceStyle:35 forDevice:v22 clientIdentifier:0];

      [(NTKOlympusFaceView *)self frame];
      [(NTKOlympusFaceView *)v23 setFrame:?];
      [(NTKOlympusFaceView *)v23 _loadSnapshotContentViews];
      [(NTKOlympusFaceView *)v23 setOption:v13 forCustomEditMode:12 slot:0];
      [(NTKOlympusFaceView *)v23 setOption:v11 forCustomEditMode:15 slot:0];
      [(NTKOlympusFaceView *)v23 setOption:v17 forCustomEditMode:10 slot:0];
      v24 = NTKIdealizedDate();
      [(NTKOlympusFaceView *)v23 setOverrideDate:v24 duration:0.0];

      [(NTKOlympusFaceView *)self frame];
      [(NTKOlympusFaceView *)v23 setFrame:?];
      [(NTKOlympusFaceView *)v23 bounds];
      v31.width = v25;
      v31.height = v26;
      UIGraphicsBeginImageContextWithOptions(v31, 0, 0.0);
      v27 = [(NTKOlympusFaceView *)v23 layer];
      [v27 renderInContext:UIGraphicsGetCurrentContext()];

      v15 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_15B20 setObject:v15 forKey:v20];
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = NTKOlympusFaceView;
    v15 = [(NTKOlympusFaceView *)&v29 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v15;
}

- (void)openVictoryAppFromRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(NTKOlympusFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:v8];

  v9 = [(NTKOlympusFaceView *)self delegate];
  [v9 faceViewRequestedLaunchFromRect:{x, y, width, height}];
}

- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing
{
  dialView = self->_dialView;
  v2 = [NSArray arrayWithObjects:&dialView count:1];

  return v2;
}

- (void)_updateDialTicksForBezelText
{
  dialView = self->_dialView;
  [(NTKOlympusFaceView *)self bezelComplicationTextWidthInRadius];
  v5 = v4;
  [(NTKOlympusFaceView *)self bezelComplicationTextWidthInRadius];

  [(NTKCircularAnalogDialView *)dialView transitTicksWithInitialBezelTextWidthInRadius:v5 finalBezelTextWidthInRadius:v6 fraction:1.0];
}

- (double)bezelComplicationTextWidthInRadius
{
  v2 = [(NTKOlympusFaceView *)self utilityBezelComplicationView];
  [v2 textWidthInRadians];
  v4 = v3;

  return v4;
}

- (id)utilityBezelComplicationView
{
  v2 = [(NTKOlympusFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
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

- (void)setCurrentStyle:(unint64_t)a3
{
  self->_currentStyle = a3;
  v5 = [(NTKOlympusFaceView *)self olympusView];
  [v5 setCurrentStyle:a3];

  [(NTKOlympusFaceView *)self _updateBackgroundViewAlpha];
  v6 = [(NTKOlympusFaceView *)self analogBackgroundView];
  [v6 applyTransitionFraction:self->_currentStyle fromOlympusStyle:self->_currentStyle toOlympusStyle:1.0];
}

- (void)_updateBackgroundViewAlpha
{
  if (self->_currentStyle == 3)
  {
    v3 = 1.0;
  }

  else
  {
    v3 = 0.0;
  }

  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setAlpha:v3];
  olympusView = self->_olympusView;

  [(NTKOlympusTimeView *)olympusView setAlpha:1.0 - v3];
}

@end