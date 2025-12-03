@interface NTKTroutFaceView
- (BOOL)_handlePhysicalButton:(unint64_t)button event:(unint64_t)event;
- (BOOL)_wantsStatusBarHidden;
- (BOOL)_wheelChangedWithEvent:(id)event;
- (NTKTroutFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)colorForDateComplicationPalette:(id)palette;
- (id)createController;
- (id)createFaceColorPalette;
- (id)dateComplicationView;
- (id)utilityDateComplicationFontForDateStyle:(unint64_t)style;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)createView;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)setTimeOffset:(double)offset;
- (void)updateComplicationsColorWithPalette:(id)palette;
- (void)updateTimeViewColor;
@end

@implementation NTKTroutFaceView

- (NTKTroutFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = NTKTroutFaceView;
  v9 = [(NTKTroutFaceView *)&v21 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    device = [(NTKTroutFaceView *)v9 device];
    sub_BA8C(device, &v18);

    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    v13 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v14 = [v13 initWithFaceView:v10 dialDiameter:deviceCopy device:*&v18];
    [v14 setUsesNarrowTopSlots:1];
    [(NTKTroutFaceView *)v10 setComplicationFactory:v14];
    v22[0] = NTKComplicationSlotTopLeft;
    v22[1] = NTKComplicationSlotTopRight;
    v22[2] = NTKComplicationSlotBottomLeft;
    v22[3] = NTKComplicationSlotBottomRight;
    v15 = [NSArray arrayWithObjects:v22 count:4];
    [v12 registerFactory:v14 forSlots:v15];

    v16 = [[NTKUtilityComplicationFactory alloc] initForDevice:deviceCopy];
    [v16 setFaceView:v10];
    [v16 setDelegate:v10];
    [v16 setIncludesDateComplicationLayoutRules:1];
    [v16 setSelectedKeylineHeight:*(&v18 + 1)];
    [v16 setDateKeylineMaxWidth:*&v19];
    [v16 setDateHorizontalCenterOffset:*(&v19 + 1)];
    [v12 registerFactory:v16 forSlot:NTKComplicationSlotDate];
    [(NTKTroutFaceView *)v10 setComplicationFactory:v12];
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKAlaskanDiversColorPalette);

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = NTKTroutFaceView;
  delegateCopy = delegate;
  [(NTKTroutFaceView *)&v5 setDelegate:delegateCopy];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:delegateCopy, v5.receiver, v5.super_class];
}

- (void)_applyDataMode
{
  alaskanContentController = [(NTKTroutFaceView *)self alaskanContentController];
  [alaskanContentController setDatamode:{-[NTKTroutFaceView dataMode](self, "dataMode")}];

  delegate = [(NTKTroutFaceView *)self delegate];
  alaskanContentController2 = [(NTKTroutFaceView *)self alaskanContentController];
  [delegate faceViewWantsStatusBarHidden:objc_msgSend(alaskanContentController2 animated:{"wantsStatusBarHidden"), 0}];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v8.receiver = self;
  v8.super_class = NTKTroutFaceView;
  dateCopy = date;
  [(NTKTroutFaceView *)&v8 setOverrideDate:dateCopy duration:duration];
  v7 = [(NTKTroutFaceView *)self alaskanContentController:v8.receiver];
  [v7 setOverrideDate:dateCopy duration:duration];
}

- (void)setTimeOffset:(double)offset
{
  alaskanContentController = [(NTKTroutFaceView *)self alaskanContentController];
  [alaskanContentController setTimeOffset:offset];
}

- (void)_prepareForSnapshotting
{
  v3.receiver = self;
  v3.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v3 _prepareForSnapshotting];
  [(NTKTroutFaceView *)self setStorage:0];
}

- (BOOL)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if (NTKStarbearEnabled() && (-[NTKTroutFaceView alaskanContentView](self, "alaskanContentView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 currentMode], v5, v6 != &dword_0 + 1))
  {
    v8 = 0;
  }

  else
  {
    crownInputHandler = [(NTKTroutFaceView *)self crownInputHandler];
    v8 = [crownInputHandler _wheelChangedWithEvent:eventCopy];
  }

  return v8;
}

- (BOOL)_handlePhysicalButton:(unint64_t)button event:(unint64_t)event
{
  crownInputHandler = [(NTKTroutFaceView *)self crownInputHandler];
  LOBYTE(event) = [crownInputHandler _handlePhysicalButton:button event:event];

  return event;
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v5 _loadSnapshotContentViews];
  v3 = objc_alloc_init(NTKCrownInputHandler);
  crownInputHandler = self->_crownInputHandler;
  self->_crownInputHandler = v3;

  [(NTKTroutFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKTroutFaceView *)self _removeViews];
  crownInputHandler = self->_crownInputHandler;
  self->_crownInputHandler = 0;
}

- (void)_setupViews
{
  v3 = objc_alloc_init(NTKAlaskanPersistenceStorage);
  storage = self->_storage;
  self->_storage = v3;

  delegate = [(NTKTroutFaceView *)self delegate];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:delegate];

  self->_viewsLoaded = 1;

  [(NTKTroutFaceView *)self createView];
}

- (void)_removeViews
{
  [(NTKAlaskanDiverStyleView *)self->_alaskanContentView removeFromSuperview];
  self->_viewsLoaded = 0;
  alaskanContentView = self->_alaskanContentView;
  self->_alaskanContentView = 0;

  alaskanContentController = self->_alaskanContentController;
  self->_alaskanContentController = 0;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v4 layoutSubviews];
  alaskanContentView = self->_alaskanContentView;
  [(NTKTroutFaceView *)self contentViewFrame];
  [(NTKAlaskanDiverStyleView *)alaskanContentView ntk_setBoundsAndPositionFromFrame:?];
}

- (id)createController
{
  v3 = [NTKAlaskanDiverStyleController alloc];
  alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
  crownInputHandler = [(NTKTroutFaceView *)self crownInputHandler];
  storage = [(NTKTroutFaceView *)self storage];
  v7 = [(NTKAlaskanDiverStyleController *)v3 initWithContentView:alaskanContentView crownInputHandler:crownInputHandler storage:storage];

  [(NTKAlaskanDiverStyleController *)v7 setFaceView:self];
  [(NTKAlaskanDiverStyleController *)v7 setDatamode:[(NTKTroutFaceView *)self dataMode]];

  return v7;
}

- (BOOL)_wantsStatusBarHidden
{
  alaskanContentController = [(NTKTroutFaceView *)self alaskanContentController];
  wantsStatusBarHidden = [alaskanContentController wantsStatusBarHidden];

  return wantsStatusBarHidden;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (([(NTKTroutFaceView *)self editing:option]& 1) == 0)
  {
    alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
    delegate = [alaskanContentView delegate];
    [delegate alaskanDiverStyleViewDidCancelPreCountUpWithCompletionBlock:0 animated:1];
  }

  if (mode == 10)
  {
    palette = [(NTKTroutFaceView *)self palette];
    alaskanContentView2 = [(NTKTroutFaceView *)self alaskanContentView];
    [alaskanContentView2 setPalette:palette];

    [(NTKTroutFaceView *)self updateComplicationsColorWithPalette:palette];
    v10 = [(NTKTroutFaceView *)self colorForDateComplicationPalette:palette];
    dateComplicationView = [(NTKTroutFaceView *)self dateComplicationView];
    [dateComplicationView setForegroundColor:v10];
  }
}

- (id)colorForDateComplicationPalette:(id)palette
{
  paletteCopy = palette;
  storage = [(NTKTroutFaceView *)self storage];
  diverCountUpStartDate = [storage diverCountUpStartDate];
  if (diverCountUpStartDate)
  {
    v7 = diverCountUpStartDate;
    alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
    isEditing = [alaskanContentView isEditing];

    if ((isEditing & 1) == 0)
    {
      activeStateDateComplication = [paletteCopy activeStateDateComplication];
      goto LABEL_6;
    }
  }

  else
  {
  }

  activeStateDateComplication = [paletteCopy dateComplication];
LABEL_6:
  v11 = activeStateDateComplication;

  return v11;
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v12 = [(NTKTroutFaceView *)self interpolatedColorPalette:option];
    alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
    [alaskanContentView setPalette:v12];

    [(NTKTroutFaceView *)self updateTimeViewColor];
    [(NTKTroutFaceView *)self updateComplicationsColorWithPalette:v12];
    v10 = [(NTKTroutFaceView *)self colorForDateComplicationPalette:v12];
    dateComplicationView = [(NTKTroutFaceView *)self dateComplicationView];
    [dateComplicationView setForegroundColor:v10];
  }
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v15.receiver = self;
  v15.super_class = NTKTroutFaceView;
  slotCopy = slot;
  v9 = [(NTKTroutFaceView *)&v15 _newLegacyViewForComplication:complication family:family slot:slotCopy];
  LODWORD(complication) = [slotCopy isEqualToString:{NTKComplicationSlotDate, v15.receiver, v15.super_class}];

  if (complication)
  {
    v10 = v9;
    alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
    palette = [alaskanContentView palette];
    v13 = [(NTKTroutFaceView *)self colorForDateComplicationPalette:palette];
    [v10 setForegroundColor:v13];
  }

  return v9;
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v17.receiver = self;
  v17.super_class = NTKTroutFaceView;
  [NTKTroutFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKTroutFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKTroutFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
  [alaskanContentView setAlpha:v9];

  [(NTKTroutFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKTroutFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  complicationContainerView = [(NTKTroutFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v12];

  [(NTKTroutFaceView *)self _timeViewAlphaForEditMode:mode];
  [(NTKTroutFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  timeView = [(NTKTroutFaceView *)self timeView];
  [timeView setAlpha:v15];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v14.receiver = self;
  v14.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v14 _configureForEditMode:?];
  [(NTKTroutFaceView *)self _contentAlphaForEditMode:mode];
  v6 = v5;
  alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
  [alaskanContentView setAlpha:v6];

  [(NTKTroutFaceView *)self _complicationAlphaForEditMode:mode];
  v9 = v8;
  complicationContainerView = [(NTKTroutFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v9];

  [(NTKTroutFaceView *)self _timeViewAlphaForEditMode:mode];
  v12 = v11;
  timeView = [(NTKTroutFaceView *)self timeView];
  [timeView setAlpha:v12];
}

- (void)createView
{
  if ([(NTKTroutFaceView *)self viewsLoaded])
  {
    alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
    [alaskanContentView removeFromSuperview];

    v4 = [NTKAlaskanDiverStyleView alloc];
    [(NTKTroutFaceView *)self contentViewFrame];
    v5 = [(NTKAlaskanDiverStyleView *)v4 initWithFrame:?];
    [(NTKTroutFaceView *)self setAlaskanContentView:v5];

    createController = [(NTKTroutFaceView *)self createController];
    [(NTKTroutFaceView *)self setAlaskanContentController:createController];

    contentView = [(NTKTroutFaceView *)self contentView];
    alaskanContentView2 = [(NTKTroutFaceView *)self alaskanContentView];
    [contentView addSubview:alaskanContentView2];

    if (([(NTKTroutFaceView *)self editing]& 1) == 0)
    {
      delegate = [(NTKTroutFaceView *)self delegate];
      alaskanContentController = [(NTKTroutFaceView *)self alaskanContentController];
      [delegate faceViewWantsStatusBarHidden:objc_msgSend(alaskanContentController animated:{"wantsStatusBarHidden"), 0}];
    }

    alaskanContentView3 = [(NTKTroutFaceView *)self alaskanContentView];
    palette = [(NTKTroutFaceView *)self palette];
    [alaskanContentView3 setPalette:palette];
  }

  alaskanContentView4 = [(NTKTroutFaceView *)self alaskanContentView];
  palette2 = [alaskanContentView4 palette];
  [(NTKTroutFaceView *)self updateComplicationsColorWithPalette:palette2];

  [(NTKTroutFaceView *)self updateTimeViewColor];
  alaskanContentController2 = [(NTKTroutFaceView *)self alaskanContentController];
  [alaskanContentController2 applyVisibilityWithFraction:1.0];
}

- (void)updateTimeViewColor
{
  palette = [(NTKTroutFaceView *)self palette];
  timeView = [(NTKTroutFaceView *)self timeView];
  currentMode = [(NTKAlaskanDiverStyleView *)self->_alaskanContentView currentMode];
  switch(currentMode)
  {
    case 2uLL:
      countUpClockHands = [palette countUpClockHands];
      hourHandView = [timeView hourHandView];
      [hourHandView setInlayColor:countUpClockHands];

      countUpClockHands2 = [palette countUpClockHands];
      minuteHandView = [timeView minuteHandView];
      [minuteHandView setInlayColor:countUpClockHands2];

      CGAffineTransformMakeScale(&v31, 0.9, 0.9);
      v30 = v31;
      [timeView setTransform:&v30];
      [(NTKTroutFaceView *)self setCurrentTimeViewScale:0.9];
      secondHandView = [timeView secondHandView];
      [secondHandView setAlpha:0.0];
      goto LABEL_7;
    case 1uLL:
      preCountUpClockHands = [palette preCountUpClockHands];
      hourHandView2 = [timeView hourHandView];
      [hourHandView2 setInlayColor:preCountUpClockHands];

      secondHandView = [palette preCountUpClockHands];
      minuteHandView2 = [timeView minuteHandView];
      [minuteHandView2 setInlayColor:secondHandView];

LABEL_7:
      break;
    case 0uLL:
      clockHandsInlay = [palette clockHandsInlay];
      hourHandView3 = [timeView hourHandView];
      [hourHandView3 setInlayColor:clockHandsInlay];

      clockHandsInlay2 = [palette clockHandsInlay];
      minuteHandView3 = [timeView minuteHandView];
      [minuteHandView3 setInlayColor:clockHandsInlay2];

      [(NTKTroutFaceView *)self setCurrentTimeViewScale:1.0];
      break;
  }

  clockHands = [palette clockHands];
  hourHandView4 = [timeView hourHandView];
  [hourHandView4 setColor:clockHands];

  clockHands2 = [palette clockHands];
  minuteHandView4 = [timeView minuteHandView];
  [minuteHandView4 setColor:clockHands2];

  secondHand = [palette secondHand];
  secondHandView2 = [timeView secondHandView];
  [secondHandView2 setColor:secondHand];

  v24 = +[UIColor blackColor];
  hourHandView5 = [timeView hourHandView];
  [hourHandView5 setHandDotColor:v24];

  v26 = +[UIColor blackColor];
  minuteHandView5 = [timeView minuteHandView];
  [minuteHandView5 setHandDotColor:v26];

  v28 = +[UIColor blackColor];
  secondHandView3 = [timeView secondHandView];
  [secondHandView3 setHandDotColor:v28];
}

- (void)updateComplicationsColorWithPalette:(id)palette
{
  cornerComplication = [palette cornerComplication];
  [(NTKTroutFaceView *)self updateRichCornerComplicationsInnerColor:cornerComplication outerColor:0];
}

- (id)dateComplicationView
{
  v2 = [(NTKTroutFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  display = [v2 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    display2 = [v2 display];
  }

  else
  {
    display2 = 0;
  }

  return display2;
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)mode
{
  result = 0.3;
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
  v19.receiver = self;
  v19.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v19 _configureComplicationView:viewCopy forSlot:slotCopy];
  if (([(NTKTroutFaceView *)self editing]& 1) == 0)
  {
    alaskanContentView = [(NTKTroutFaceView *)self alaskanContentView];
    delegate = [alaskanContentView delegate];
    [delegate alaskanDiverStyleViewDidCancelPreCountUpWithCompletionBlock:0 animated:1];
  }

  v10 = qword_46B58;
  if (!qword_46B58)
  {
    v20[0] = NTKComplicationSlotTopLeft;
    v20[1] = NTKComplicationSlotTopRight;
    v20[2] = NTKComplicationSlotBottomLeft;
    v20[3] = NTKComplicationSlotBottomRight;
    v11 = [NSArray arrayWithObjects:v20 count:4];
    v12 = [NSSet setWithArray:v11];
    v13 = qword_46B58;
    qword_46B58 = v12;

    v10 = qword_46B58;
  }

  if ([v10 containsObject:slotCopy])
  {
    v14 = viewCopy;
    palette = [(NTKTroutFaceView *)self palette];
    cornerComplication = [palette cornerComplication];
    [(NTKTroutFaceView *)self setComplicationColor:cornerComplication];

    cornerComplication2 = [palette cornerComplication];
    [(NTKTroutFaceView *)self setInterpolatedComplicationColor:cornerComplication2];

    cornerComplicationSecondary = [palette cornerComplicationSecondary];
    [(NTKTroutFaceView *)self setAlternateComplicationColor:cornerComplicationSecondary];

    [v14 updateMonochromeColor];
  }
}

- (id)utilityDateComplicationFontForDateStyle:(unint64_t)style
{
  v7 = 0.0;
  v3 = [(NTKTroutFaceView *)self device:style];
  sub_BA8C(v3, &v6);

  v4 = v7;

  return [CLKFont compactSoftFontOfSize:v4 weight:UIFontWeightSemibold];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v15.receiver = self;
  v15.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v15 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForBreathingFraction();
    v8 = v7;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v8 * self->_currentTimeViewScale, v8 * self->_currentTimeViewScale);
    contentView = [(NTKTroutFaceView *)self contentView];
    v12 = v14;
    [contentView setTransform:&v12];

    timeView = [(NTKTroutFaceView *)self timeView];
    v12 = v13;
    [timeView setTransform:&v12];

    complicationContainerView = [(NTKTroutFaceView *)self complicationContainerView];
    v12 = v14;
    [complicationContainerView setTransform:&v12];
  }
}

@end