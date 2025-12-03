@interface NTKOlympusFaceView
+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device;
+ (int64_t)uiSensitivity;
- (BOOL)isCircularDialWithBezel;
- (NTKOlympusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_bezelUtilityComplicationAlphaForEditMode:(int64_t)mode;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_dialAlphaForEditMode:(int64_t)mode;
- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot;
- (double)_minimumBreathingScaleForComplicationSlot:(id)slot;
- (double)_timeAlphaForEditMode:(int64_t)mode;
- (double)bezelComplicationTextWidthInRadius;
- (double)circleDiameter;
- (double)contentViewScale;
- (id)_additionalPrelaunchApplicationIdentifiers;
- (id)_additonalViewsToApplyDesaturationDuringComplicationEditing;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (id)createFaceColorPalette;
- (id)palette;
- (id)utilityBezelComplicationView;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyContentViewTranform:(CGAffineTransform *)tranform;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle;
- (void)_cleanupAfterEditing;
- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication;
- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
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
- (void)_updateDialBezelComplicationColor:(id)color;
- (void)_updateDialTicksForBezelText;
- (void)applyColorOnAnalogHands;
- (void)applyTransitionToCircularDialWithBezelFraction:(double)fraction;
- (void)configureComplicationAlphaFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)configureViewsForEditing;
- (void)createAndRemoveViewsForCurrentStateIfNeeded;
- (void)createOlympusViewIfNeeded;
- (void)dealloc;
- (void)layoutSubviews;
- (void)openVictoryAppFromRect:(CGRect)rect;
- (void)setCircularMaskForCircularDialFraction:(double)fraction circleDiameter:(double)diameter;
- (void)setCurrentDial:(unint64_t)dial;
- (void)setCurrentStyle:(unint64_t)style;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
- (void)setupViewsForCurrentState;
- (void)tearDownDialView;
- (void)updateCircularMask;
@end

@implementation NTKOlympusFaceView

+ (int64_t)uiSensitivity
{
  v2 = +[CLKRenderingContext sharedRenderingContext];
  device = [v2 device];
  v4 = NTKSensitivityForVictoryFaces();

  return v4;
}

- (NTKOlympusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v22.receiver = self;
  v22.super_class = NTKOlympusFaceView;
  v9 = [(NTKOlympusFaceView *)&v22 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    [(NTKOlympusFaceView *)v9 setClipsToBounds:1];
    layer = [(NTKOlympusFaceView *)v10 layer];
    [layer setMasksToBounds:1];

    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    v13 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    device = [(NTKOlympusFaceView *)v10 device];
    sub_52F8(device, device);
    v16 = [v13 initWithFaceView:v10 dialDiameter:deviceCopy device:v15];

    [v16 setUsesNarrowTopSlots:1];
    v23[0] = NTKComplicationSlotTopLeft;
    v23[1] = NTKComplicationSlotTopRight;
    v23[2] = NTKComplicationSlotBottomLeft;
    v23[3] = NTKComplicationSlotBottomRight;
    v17 = [NSArray arrayWithObjects:v23 count:4];
    [v12 registerFactory:v16 forSlots:v17];

    v18 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    [v18 setFaceView:v10];
    device2 = [(NTKOlympusFaceView *)v10 device];
    sub_52F8(device2, device2);
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
  faceColorPalette = [(NTKOlympusFaceView *)self faceColorPalette];
  [faceColorPalette setStyle:self->_currentStyle];
  [faceColorPalette setDial:self->_currentDial];

  return faceColorPalette;
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
  olympusView = [(NTKOlympusFaceView *)self olympusView];
  [olympusView setCurrentStyle:currentStyle];

  v6 = [(NTKOlympusFaceView *)self optionForCustomEditMode:12 slot:0];
  self->_currentDial = [v6 dialShape];

  currentDial = self->_currentDial;
  olympusView2 = [(NTKOlympusFaceView *)self olympusView];
  [olympusView2 setCurrentDial:currentDial];

  palette = [(NTKOlympusFaceView *)self palette];
  olympusView3 = [(NTKOlympusFaceView *)self olympusView];
  [olympusView3 setCurrentColorPalette:palette];

  [(NTKOlympusFaceView *)self createAndRemoveViewsForCurrentStateIfNeeded];
  [(NTKOlympusFaceView *)self _setupController];
  v11 = [NTKRoundedCornerOverlayView alloc];
  [(NTKOlympusFaceView *)self bounds];
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  device = [(NTKOlympusFaceView *)self device];
  v21 = [v11 initWithFrame:device forDeviceCornerRadius:{v13, v15, v17, v19}];
  cornerView = self->_cornerView;
  self->_cornerView = v21;

  contentView = [(NTKOlympusFaceView *)self contentView];
  [contentView addSubview:self->_cornerView];

  timeView = [(NTKOlympusFaceView *)self timeView];
  [(NTKOlympusFaceView *)self _configureTimeView:timeView];

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

    timeView = [(NTKOlympusFaceView *)self timeView];
    [(NTKOlympusFaceView *)self _configureTimeView:timeView];

    [(NTKOlympusFaceView *)self setupViewsForCurrentState];
    contentView = [(NTKOlympusFaceView *)self contentView];
    cornerView = [(NTKOlympusFaceView *)self cornerView];
    [contentView bringSubviewToFront:cornerView];
  }
}

- (void)setupViewsForCurrentState
{
  [(NTKOlympusTimeView *)self->_olympusView setupViewsForCurrentState:[(NTKOlympusFaceView *)self editing]];
  if (self->_analogBackgroundView)
  {
    currentDial = self->_currentDial;
    palette = [(NTKOlympusFaceView *)self palette];
    [palette setDial:currentDial];

    currentStyle = self->_currentStyle;
    palette2 = [(NTKOlympusFaceView *)self palette];
    [palette2 setStyle:currentStyle];

    v7 = [NTKOlympusAnalogBackgroundPalette alloc];
    palette3 = [(NTKOlympusFaceView *)self palette];
    v9 = [v7 initWithOlympusColorPalette:palette3];

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
    contentView = [(NTKOlympusFaceView *)self contentView];
    layer = [contentView layer];
    [layer setMask:0];

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
    palette = [(NTKOlympusFaceView *)self palette];
    palette2 = [(NTKOlympusFaceView *)self palette];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:palette fromColorPalette:palette2 toColorPalette:0 animateElements:1.0];

    [(NTKOlympusFaceView *)self contentViewScale];
    CGAffineTransformMakeScale(&v10, v7, v7);
    [(NTKOlympusFaceView *)self _applyContentViewTranform:&v10];
    contentView = [(NTKOlympusFaceView *)self contentView];
    cornerView = [(NTKOlympusFaceView *)self cornerView];
    [contentView bringSubviewToFront:cornerView];
  }
}

- (void)_createAnalogBackgroundIfNeeded
{
  analogBackgroundView = self->_analogBackgroundView;
  if (!analogBackgroundView)
  {
    device = [(NTKOlympusFaceView *)self device];
    v5 = [NTKVictoryAnalogBackgroundView alloc];
    [device screenBounds];
    v6 = [v5 initWithFrame:device forDevice:?];
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

  superview = [(NTKVictoryAnalogBackgroundView *)analogBackgroundView superview];
  contentView = [(NTKOlympusFaceView *)self contentView];

  if (superview != contentView)
  {
    contentView2 = [(NTKOlympusFaceView *)self contentView];
    [contentView2 addSubview:self->_analogBackgroundView];
  }

  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setHidden:0];
}

- (void)_setupDialViewIfNeeded
{
  dialView = self->_dialView;
  if (!dialView)
  {
    device = [(NTKOlympusFaceView *)self device];
    sub_52F8(device, device);

    [(NTKOlympusFaceView *)self bounds];
    device2 = [(NTKOlympusFaceView *)self device];
    CLKSizeCenteredInRectForDevice();
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v14 = [NTKCircularAnalogDialView alloc];
    device3 = [(NTKOlympusFaceView *)self device];
    v16 = [v14 initWithFrame:device3 forDevice:0 hideHourTicks:{v7, v9, v11, v13}];
    v17 = self->_dialView;
    self->_dialView = v16;

    [(NTKCircularAnalogDialView *)self->_dialView showAllTicksInDial];
    v18 = self->_dialView;
    palette = [(NTKOlympusFaceView *)self palette];
    palette2 = [(NTKOlympusFaceView *)self palette];
    [(NTKCircularAnalogDialView *)v18 applyColorTransitionFraction:palette fromColorPalette:palette2 toColorPalette:1.0];

    v21 = self->_dialView;
    v22 = +[UIColor clearColor];
    [(NTKCircularAnalogDialView *)v21 setDialBackgroundColor:v22];

    v23 = +[UIColor clearColor];
    [(NTKCircularAnalogDialView *)self->_dialView setBackgroundColor:v23];

    dialView = self->_dialView;
  }

  superview = [(NTKCircularAnalogDialView *)dialView superview];

  if (superview != self)
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
    device = [(NTKOlympusFaceView *)self device];
    currentDial = self->_currentDial;
    currentStyle = self->_currentStyle;
    palette = [(NTKOlympusFaceView *)self palette];
    currentDisplayDate = [(NTKOlympusFaceView *)self currentDisplayDate];
    v9 = [v3 initWithDevice:device dial:currentDial style:currentStyle colorPalette:palette date:currentDisplayDate];
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
    contentView = [(NTKOlympusFaceView *)self contentView];
    v15 = contentView;
    v16 = self->_olympusView;
    if (analogBackgroundView)
    {
      [contentView insertSubview:v16 belowSubview:self->_analogBackgroundView];
    }

    else
    {
      [contentView addSubview:v16];
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

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v13 _configureComplicationView:viewCopy forSlot:slot];
  palette = [(NTKOlympusFaceView *)self palette];
  cornerComplicationsAccentColor = [palette cornerComplicationsAccentColor];
  [(NTKOlympusFaceView *)self setComplicationColor:cornerComplicationsAccentColor];

  complicationColor = [(NTKOlympusFaceView *)self complicationColor];
  [(NTKOlympusFaceView *)self setInterpolatedComplicationColor:complicationColor];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [viewCopy updateMonochromeColor];
  }

  if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
  {
    v10 = viewCopy;
    palette2 = [(NTKOlympusFaceView *)self palette];
    bezelComplicationColor = [palette2 bezelComplicationColor];
    [v10 setForegroundColor:bezelComplicationColor];
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
  dataMode = [(NTKOlympusFaceView *)self dataMode];
  [(NTKOlympusController *)self->_olympusController applyDataMode:dataMode];
  v4 = dataMode == &dword_0 + 1;
  [(NTKOlympusTimeView *)self->_olympusView setUserInteractionEnabled:v4];
  analogBackgroundView = self->_analogBackgroundView;

  [(NTKVictoryAnalogBackgroundView *)analogBackgroundView setUserInteractionEnabled:v4];
}

- (void)setTimeOffset:(double)offset
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 setTimeOffset:?];
  [(NTKOlympusTimeView *)self->_olympusView setTimeOffset:offset];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKOlympusFaceView;
  dateCopy = date;
  [(NTKOlympusFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKOlympusController *)self->_olympusController setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_configureTimeView:(id)view
{
  v9.receiver = self;
  v9.super_class = NTKOlympusFaceView;
  viewCopy = view;
  [(NTKOlympusFaceView *)&v9 _configureTimeView:viewCopy];
  v5 = [(NTKOlympusFaceView *)self _showAnalogHands:v9.receiver];
  v6 = 0.0;
  if (v5)
  {
    v6 = 1.0;
  }

  [viewCopy setAlpha:v6];
  [viewCopy setHidden:{-[NTKOlympusFaceView _showAnalogHands](self, "_showAnalogHands") ^ 1}];
  secondHandView = [viewCopy secondHandView];

  v8 = +[UIColor blackColor];
  [secondHandView setHandDotColor:v8];

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

  isCircularDialWithBezel = [(NTKOlympusFaceView *)self isCircularDialWithBezel];
  [(NTKCircularAnalogDialView *)self->_dialView setHidden:isCircularDialWithBezel ^ 1];
  dialView = self->_dialView;
  v5 = 1.0;
  if ((isCircularDialWithBezel & 1) == 0)
  {
    goto LABEL_4;
  }

LABEL_5:
  [(NTKCircularAnalogDialView *)dialView setAlpha:v5];
  [(NTKOlympusFaceView *)self createAndRemoveViewsForCurrentStateIfNeeded];
  delegate = [(NTKOlympusFaceView *)self delegate];
  [delegate faceViewDidChangeWantsStatusBarIconShadow];
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v18.receiver = self;
  v18.super_class = NTKOlympusFaceView;
  [NTKOlympusFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKOlympusFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKOlympusFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v10 = v9;
  contentView = [(NTKOlympusFaceView *)self contentView];
  [contentView setAlpha:v10];

  [(NTKOlympusFaceView *)self _timeAlphaForEditMode:mode];
  [(NTKOlympusFaceView *)self _timeAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v13 = v12;
  timeView = [(NTKOlympusFaceView *)self timeView];
  [timeView setAlpha:v13];

  [(NTKOlympusFaceView *)self _dialAlphaForEditMode:mode];
  [(NTKOlympusFaceView *)self _dialAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  dialView = [(NTKOlympusFaceView *)self dialView];
  [dialView setAlpha:v16];

  [(NTKOlympusFaceView *)self configureComplicationAlphaFraction:mode fromEditMode:editMode toEditMode:fraction];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 _configureForEditMode:?];
  [(NTKOlympusFaceView *)self configureComplicationAlphaFraction:mode fromEditMode:mode toEditMode:1.0];
}

- (void)_cleanupAfterTransitionComplicationSlot:(id)slot selectedComplication:(id)complication
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 _cleanupAfterTransitionComplicationSlot:slot selectedComplication:complication];
  [(NTKOlympusFaceView *)self _updateDialTicksForBezelText];
}

- (void)configureComplicationAlphaFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  [(NTKOlympusFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKOlympusFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v8 = v7;
  complicationContainerView = [(NTKOlympusFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v8];
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  if (mode > 0xA)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (((1 << mode) & 0x403) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_bezelUtilityComplicationAlphaForEditMode:(int64_t)mode
{
  if (mode > 0xC)
  {
    return NTKEditModeDimmedAlpha;
  }

  result = 1.0;
  if (((1 << mode) & 0x1003) == 0)
  {
    return NTKEditModeDimmedAlpha;
  }

  return result;
}

- (double)_dialAlphaForEditMode:(int64_t)mode
{
  result = 1.0;
  v4 = 0.5;
  if (mode == 1)
  {
    v4 = 0.0;
  }

  if (mode == 12)
  {
    v4 = 1.0;
  }

  if (mode)
  {
    return v4;
  }

  return result;
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
  _showAnalogHands = [(NTKOlympusFaceView *)self _showAnalogHands];
  result = NTKEditModeDimmedAlpha;
  if (mode != 1)
  {
    result = 1.0;
  }

  if (!_showAnalogHands)
  {
    return 0.0;
  }

  return result;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  slotCopy = slot;
  if (mode == 10)
  {
    palette = [(NTKOlympusFaceView *)self palette];
    palette2 = [(NTKOlympusFaceView *)self palette];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:palette fromColorPalette:palette2 toColorPalette:0 animateElements:1.0];

    [(NTKOlympusFaceView *)self applyColorOnAnalogHands];
  }

  else
  {
    if (mode == 12)
    {
      v9 = [(NTKOlympusFaceView *)self optionForCustomEditMode:12 slot:0];
      -[NTKOlympusFaceView setCurrentDial:](self, "setCurrentDial:", [v9 dialShape]);
    }

    else
    {
      if (mode != 15)
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
  palette = [(NTKOlympusFaceView *)self palette];
  largeHandsColor = [palette largeHandsColor];

  timeView = [(NTKOlympusFaceView *)self timeView];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setColor:largeHandsColor];

  hourHandView = [timeView hourHandView];
  [hourHandView setColor:largeHandsColor];

  secondHandView = [timeView secondHandView];
  palette2 = [(NTKOlympusFaceView *)self palette];
  secondHandColor = [palette2 secondHandColor];
  [secondHandView setColor:secondHandColor];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  optionCopy = option;
  toOptionCopy = toOption;
  slotCopy = slot;
  switch(mode)
  {
    case 10:
      interpolatedColorPalette = [(NTKOlympusFaceView *)self interpolatedColorPalette];
      fromPalette = [interpolatedColorPalette fromPalette];
      interpolatedColorPalette2 = [(NTKOlympusFaceView *)self interpolatedColorPalette];
      toPalette = [interpolatedColorPalette2 toPalette];
      [(NTKOlympusFaceView *)self _applyTransitionFraction:fromPalette fromColorPalette:toPalette toColorPalette:1 animateElements:fraction];

      break;
    case 15:
      -[NTKOlympusFaceView _applyTransitionFraction:fromStyle:toStyle:](self, "_applyTransitionFraction:fromStyle:toStyle:", [optionCopy style], objc_msgSend(toOptionCopy, "style"), fraction);
      break;
    case 12:
      -[NTKOlympusFaceView _applyTransitionFraction:fromDial:toDial:](self, "_applyTransitionFraction:fromDial:toDial:", [optionCopy dialShape], objc_msgSend(toOptionCopy, "dialShape"), fraction);
      break;
  }
}

- (void)_applyTransitionFraction:(double)fraction fromDial:(unint64_t)dial toDial:(unint64_t)toDial
{
  if (dial == toDial)
  {

    [(NTKOlympusFaceView *)self setCurrentDial:fraction];
  }

  else
  {
    if (toDial == 1 && dial == 0)
    {
      fractionCopy = 1.0 - fraction;
    }

    else
    {
      fractionCopy = fraction;
    }

    [(NTKOlympusFaceView *)self circleDiameter];
    [(NTKOlympusFaceView *)self setCircularMaskForCircularDialFraction:fractionCopy circleDiameter:v10];
    CLKCompressFraction();
    v12 = v11;
    dialView = [(NTKOlympusFaceView *)self dialView];
    [(NTKOlympusFaceView *)self bezelComplicationTextWidthInRadius];
    [dialView fillDialTransitionWithFraction:v12 bezelTextWidthRadians:v14];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_398C;
    v22[3] = &unk_10378;
    *&v22[4] = v12;
    [(NTKOlympusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v22];
    analogBackgroundView = [(NTKOlympusFaceView *)self analogBackgroundView];
    [analogBackgroundView applyTransitionFraction:dial fromDialShape:toDial toDialShape:fractionCopy];

    [(NTKOlympusTimeView *)self->_olympusView applyTransitionFraction:dial fromDial:toDial toDial:fractionCopy];
    palette = [(NTKOlympusFaceView *)self palette];
    v17 = [palette copy];

    [v17 setDial:dial];
    palette2 = [(NTKOlympusFaceView *)self palette];
    v19 = [palette2 copy];

    [v17 setDial:toDial];
    [(NTKOlympusFaceView *)self _applyTransitionFraction:v17 fromColorPalette:v19 toColorPalette:0 animateElements:fractionCopy];
    [(NTKOlympusFaceView *)self isCircularDialWithBezel];
    CLKInterpolateBetweenFloatsClipped();
    CGAffineTransformMakeScale(&v21, v20, v20);
    [(NTKOlympusFaceView *)self _applyContentViewTranform:&v21];
  }
}

- (void)setCurrentDial:(unint64_t)dial
{
  self->_currentDial = dial;
  analogBackgroundView = [(NTKOlympusFaceView *)self analogBackgroundView];
  [analogBackgroundView setDialShape:dial];

  currentDial = self->_currentDial;
  olympusView = [(NTKOlympusFaceView *)self olympusView];
  [olympusView setCurrentDial:currentDial];

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

- (void)_applyTransitionFraction:(double)fraction fromStyle:(unint64_t)style toStyle:(unint64_t)toStyle
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
  timeView = [(NTKOlympusFaceView *)self timeView];
  [timeView setHidden:0];

  olympusView = [(NTKOlympusFaceView *)self olympusView];
  [olympusView applyTransitionFraction:style fromStyle:toStyle toStyle:fraction];

  CLKCompressFraction();
  v13 = v12;
  timeView2 = [(NTKOlympusFaceView *)self timeView];
  [timeView2 setAlpha:v13];

  dialView = [(NTKOlympusFaceView *)self dialView];
  timeView3 = [(NTKOlympusFaceView *)self timeView];
  [timeView3 alpha];
  v18 = v17;
  [(NTKOlympusFaceView *)self bezelComplicationTextWidthInRadius];
  [dialView setHourTicksOpacity:v18 bezelTextWidthRadians:v19];

  CLKCompressFraction();
  v21 = v20;
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setAlpha:?];
  [(NTKOlympusTimeView *)self->_olympusView setAlpha:1.0 - v21];
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView applyTransitionFraction:style fromOlympusStyle:toStyle toOlympusStyle:fraction];
  palette = [(NTKOlympusFaceView *)self palette];
  v25 = [palette copy];

  [v25 setStyle:style];
  palette2 = [(NTKOlympusFaceView *)self palette];
  v24 = [palette2 copy];

  [v24 setStyle:toStyle];
  [(NTKOlympusFaceView *)self _applyTransitionFraction:v25 fromColorPalette:v24 toColorPalette:0 animateElements:fraction];
}

- (void)_updateDialBezelComplicationColor:(id)color
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_41E4;
  v5[3] = &unk_103A0;
  colorCopy = color;
  v4 = colorCopy;
  [(NTKOlympusFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v5];
}

- (void)_applyTransitionFraction:(double)fraction fromComplication:(id)complication toComplication:(id)toComplication slot:(id)slot
{
  complicationCopy = complication;
  toComplicationCopy = toComplication;
  v17.receiver = self;
  v17.super_class = NTKOlympusFaceView;
  slotCopy = slot;
  [(NTKOlympusFaceView *)&v17 _applyTransitionFraction:complicationCopy fromComplication:toComplicationCopy toComplication:slotCopy slot:fraction];
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

    [(NTKOlympusFaceView *)self applyTransitionToCircularDialWithBezelFraction:fractionCopy];
  }
}

- (void)_applyContentViewTranform:(CGAffineTransform *)tranform
{
  v5 = *&tranform->c;
  v7 = *&tranform->a;
  v8 = v5;
  v9 = *&tranform->tx;
  [(NTKVictoryAnalogBackgroundView *)self->_analogBackgroundView setTransform:&v7];
  v6 = *&tranform->c;
  v7 = *&tranform->a;
  v8 = v6;
  v9 = *&tranform->tx;
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

- (void)applyTransitionToCircularDialWithBezelFraction:(double)fraction
{
  device = [(NTKOlympusFaceView *)self device];
  sub_52F8(device, device);

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
  device = [(NTKOlympusFaceView *)self device];
  v4 = sub_52F8(device, device);
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
  delegate = [(NTKOlympusFaceView *)self delegate];
  if (delegate)
  {
    delegate2 = [(NTKOlympusFaceView *)self delegate];
    v5 = [delegate2 faceViewComplicationIsEmptyForSlot:NTKComplicationSlotBezel] ^ 1;
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

- (void)setCircularMaskForCircularDialFraction:(double)fraction circleDiameter:(double)diameter
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
  contentView = [(NTKOlympusFaceView *)self contentView];
  layer = [contentView layer];
  [layer setMask:v14];

  [(NTKOlympusFaceView *)self contentViewScale];
  CGAffineTransformMakeScale(&v18, v17, v17);
  [(NTKOlympusFaceView *)self _applyContentViewTranform:&v18];
}

- (void)_cleanupAfterTransitionToOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v5.receiver = self;
  v5.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v5 _cleanupAfterTransitionToOption:option forCustomEditMode:mode slot:slot];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v11.receiver = self;
  v11.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v11 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v10, 0, sizeof(v10));
    CGAffineTransformMakeScale(&v10, v7, v7);
    foregroundContainerView = [(NTKOlympusFaceView *)self foregroundContainerView];
    v9 = v10;
    [foregroundContainerView setTransform:&v9];
  }
}

- (double)_editSpeedForCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode != 10)
  {
    return NTKEditSpeedCustomEditModeDefault;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v7 _editSpeedForCustomEditMode:mode slot:slot];
  return result;
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v10.receiver = self;
  v10.super_class = NTKOlympusFaceView;
  [(NTKOlympusFaceView *)&v10 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v9, 0, sizeof(v9));
    CGAffineTransformMakeScale(&v9, v7, v7);
    v8 = v9;
    [(NTKOlympusFaceView *)self setTransform:&v8];
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
    v8.super_class = NTKOlympusFaceView;
    [(NTKOlympusFaceView *)&v8 _minimumBreathingScaleForComplicationSlot:slotCopy];
    v5 = v6;
  }

  return v5;
}

+ (id)_swatchForEditModeDependsOnOptions:(int64_t)options forDevice:(id)device
{
  v4 = &off_10B28;
  if (options != 12)
  {
    v4 = 0;
  }

  if (options == 15)
  {
    return &off_10B10;
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
  if (mode == 15 || mode == 12)
  {
    v11 = [optionsCopy objectForKeyedSubscript:&off_107B0];
    v12 = [v10 objectForKeyedSubscript:&off_10768];
    v13 = v12;
    if (mode == 15)
    {
      v14 = v11;
      v11 = optionCopy;
    }

    else
    {
      v14 = v12;
      v13 = optionCopy;
    }

    v16 = optionCopy;

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
      device = [(NTKOlympusFaceView *)self device];
      v23 = [(NTKOlympusFaceView *)v21 initWithFaceStyle:35 forDevice:device clientIdentifier:0];

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
      layer = [(NTKOlympusFaceView *)v23 layer];
      [layer renderInContext:UIGraphicsGetCurrentContext()];

      v15 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();
      [qword_15B20 setObject:v15 forKey:v20];
    }
  }

  else
  {
    v29.receiver = self;
    v29.super_class = NTKOlympusFaceView;
    v15 = [(NTKOlympusFaceView *)&v29 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v15;
}

- (void)openVictoryAppFromRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  delegate = [(NTKOlympusFaceView *)self delegate];
  [NTKVictoryAppLauncher attemptLaunchWithDelegate:delegate];

  delegate2 = [(NTKOlympusFaceView *)self delegate];
  [delegate2 faceViewRequestedLaunchFromRect:{x, y, width, height}];
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
  utilityBezelComplicationView = [(NTKOlympusFaceView *)self utilityBezelComplicationView];
  [utilityBezelComplicationView textWidthInRadians];
  v4 = v3;

  return v4;
}

- (id)utilityBezelComplicationView
{
  v2 = [(NTKOlympusFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotBezel];
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

- (void)setCurrentStyle:(unint64_t)style
{
  self->_currentStyle = style;
  olympusView = [(NTKOlympusFaceView *)self olympusView];
  [olympusView setCurrentStyle:style];

  [(NTKOlympusFaceView *)self _updateBackgroundViewAlpha];
  analogBackgroundView = [(NTKOlympusFaceView *)self analogBackgroundView];
  [analogBackgroundView applyTransitionFraction:self->_currentStyle fromOlympusStyle:self->_currentStyle toOlympusStyle:1.0];
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