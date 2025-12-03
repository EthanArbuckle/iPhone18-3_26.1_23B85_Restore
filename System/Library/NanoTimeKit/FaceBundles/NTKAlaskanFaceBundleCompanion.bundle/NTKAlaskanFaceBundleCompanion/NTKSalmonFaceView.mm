@interface NTKSalmonFaceView
- (BOOL)_handlePhysicalButton:(unint64_t)button event:(unint64_t)event;
- (BOOL)_wheelChangedWithEvent:(id)event;
- (NTKSalmonFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_timeViewAlphaForEditMode:(int64_t)mode;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)createController;
- (id)createFaceColorPalette;
- (id)dateComplicationView;
- (id)utilityDateComplicationFontForDateStyle:(unint64_t)style;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyDataMode;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_configureForEditMode:(int64_t)mode;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)createView;
- (void)layoutSubviews;
- (void)setDelegate:(id)delegate;
- (void)setOverrideDate:(id)date duration:(double)duration;
- (void)updateTimeViewColor;
@end

@implementation NTKSalmonFaceView

- (NTKSalmonFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v21.receiver = self;
  v21.super_class = NTKSalmonFaceView;
  v9 = [(NTKSalmonFaceView *)&v21 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    device = [(NTKSalmonFaceView *)v9 device];
    sub_7120(device, &v18);

    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    v13 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v14 = [v13 initWithFaceView:v10 dialDiameter:deviceCopy device:*&v18];
    [v14 setUsesNarrowTopSlots:1];
    [(NTKSalmonFaceView *)v10 setComplicationFactory:v14];
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
    [(NTKSalmonFaceView *)v10 setComplicationFactory:v12];
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKAlaskanGMTColorPalette);

  return v2;
}

- (void)setDelegate:(id)delegate
{
  v5.receiver = self;
  v5.super_class = NTKSalmonFaceView;
  delegateCopy = delegate;
  [(NTKSalmonFaceView *)&v5 setDelegate:delegateCopy];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:delegateCopy, v5.receiver, v5.super_class];
}

- (void)_applyDataMode
{
  alaskanContentController = [(NTKSalmonFaceView *)self alaskanContentController];
  [alaskanContentController setDatamode:{-[NTKSalmonFaceView dataMode](self, "dataMode")}];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  dateCopy = date;
  v8.receiver = self;
  v8.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v8 setOverrideDate:dateCopy duration:duration];
  if (!dateCopy)
  {
    dateCopy = [(NTKSalmonFaceView *)self currentDisplayDate];
  }

  alaskanContentController = [(NTKSalmonFaceView *)self alaskanContentController];
  [alaskanContentController setOverrideDate:dateCopy duration:duration];
}

- (void)_prepareForSnapshotting
{
  v3.receiver = self;
  v3.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v3 _prepareForSnapshotting];
  [(NTKSalmonFaceView *)self setStorage:0];
}

- (BOOL)_wheelChangedWithEvent:(id)event
{
  eventCopy = event;
  if (NTKStarbearEnabled())
  {
    alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
    isEditing = [alaskanContentView isEditing];
  }

  else
  {
    alaskanContentView = [(NTKSalmonFaceView *)self crownInputHandler];
    isEditing = [alaskanContentView _wheelChangedWithEvent:eventCopy];
  }

  v7 = isEditing;

  return v7;
}

- (BOOL)_handlePhysicalButton:(unint64_t)button event:(unint64_t)event
{
  crownInputHandler = [(NTKSalmonFaceView *)self crownInputHandler];
  LOBYTE(event) = [crownInputHandler _handlePhysicalButton:button event:event];

  return event;
}

- (void)_loadSnapshotContentViews
{
  v5.receiver = self;
  v5.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v5 _loadSnapshotContentViews];
  v3 = objc_alloc_init(NTKCrownInputHandler);
  crownInputHandler = self->_crownInputHandler;
  self->_crownInputHandler = v3;

  [(NTKSalmonFaceView *)self _setupViews];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v4 _unloadSnapshotContentViews];
  [(NTKSalmonFaceView *)self _removeViews];
  crownInputHandler = self->_crownInputHandler;
  self->_crownInputHandler = 0;
}

- (void)_setupViews
{
  v3 = objc_alloc_init(NTKAlaskanPersistenceStorage);
  storage = self->_storage;
  self->_storage = v3;

  delegate = [(NTKSalmonFaceView *)self delegate];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:delegate];

  self->_viewsLoaded = 1;

  [(NTKSalmonFaceView *)self createView];
}

- (void)_removeViews
{
  [(NTKAlaskanGMTStyleView *)self->_alaskanContentView removeFromSuperview];
  self->_viewsLoaded = 0;
  alaskanContentView = self->_alaskanContentView;
  self->_alaskanContentView = 0;

  alaskanContentController = self->_alaskanContentController;
  self->_alaskanContentController = 0;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v4 layoutSubviews];
  alaskanContentView = self->_alaskanContentView;
  [(NTKSalmonFaceView *)self contentViewFrame];
  [(NTKAlaskanGMTStyleView *)alaskanContentView ntk_setBoundsAndPositionFromFrame:?];
}

- (id)createController
{
  v3 = [NTKAlaskanGMTStyleController alloc];
  alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
  crownInputHandler = [(NTKSalmonFaceView *)self crownInputHandler];
  storage = [(NTKSalmonFaceView *)self storage];
  v7 = [(NTKAlaskanGMTStyleController *)v3 initWithContentView:alaskanContentView crownInputHandler:crownInputHandler storage:storage];

  [(NTKAlaskanGMTStyleController *)v7 setFaceView:self];
  [(NTKAlaskanGMTStyleController *)v7 setDatamode:[(NTKSalmonFaceView *)self dataMode]];

  return v7;
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v4 _prepareForEditing];
  alaskanContentController = [(NTKSalmonFaceView *)self alaskanContentController];
  [alaskanContentController setStorage:0];
}

- (void)_cleanupAfterEditing
{
  v5.receiver = self;
  v5.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v5 _cleanupAfterEditing];
  storage = [(NTKSalmonFaceView *)self storage];
  alaskanContentController = [(NTKSalmonFaceView *)self alaskanContentController];
  [alaskanContentController setStorage:storage];
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (([(NTKSalmonFaceView *)self editing:option]& 1) == 0)
  {
    alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
    [alaskanContentView setIsEditing:0];
  }

  if (mode == 10)
  {
    alaskanContentView2 = [(NTKSalmonFaceView *)self alaskanContentView];
    palette = [(NTKSalmonFaceView *)self palette];
    [alaskanContentView2 setPalette:palette];

    [(NTKSalmonFaceView *)self updateTimeViewColor];
    palette2 = [(NTKSalmonFaceView *)self palette];
    dateComplicationColor = [palette2 dateComplicationColor];
    dateComplicationView = [(NTKSalmonFaceView *)self dateComplicationView];
    [dateComplicationView setForegroundColor:dateComplicationColor];

    palette3 = [(NTKSalmonFaceView *)self palette];
    cornerComplicationInnerTextColor = [palette3 cornerComplicationInnerTextColor];
    palette4 = [(NTKSalmonFaceView *)self palette];
    cornerComplicationOuterTextColor = [palette4 cornerComplicationOuterTextColor];
    [(NTKSalmonFaceView *)self updateRichCornerComplicationsInnerColor:cornerComplicationInnerTextColor outerColor:cornerComplicationOuterTextColor];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 10)
  {
    v9 = [(NTKSalmonFaceView *)self interpolatedColorPalette:option];
    dateComplicationColor = [v9 dateComplicationColor];
    dateComplicationView = [(NTKSalmonFaceView *)self dateComplicationView];
    [dateComplicationView setForegroundColor:dateComplicationColor];

    alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
    interpolatedColorPalette = [(NTKSalmonFaceView *)self interpolatedColorPalette];
    [alaskanContentView setPalette:interpolatedColorPalette];

    [(NTKSalmonFaceView *)self updateTimeViewColor];
    interpolatedColorPalette2 = [(NTKSalmonFaceView *)self interpolatedColorPalette];
    cornerComplicationInnerTextColor = [interpolatedColorPalette2 cornerComplicationInnerTextColor];
    interpolatedColorPalette3 = [(NTKSalmonFaceView *)self interpolatedColorPalette];
    cornerComplicationOuterTextColor = [interpolatedColorPalette3 cornerComplicationOuterTextColor];
    [(NTKSalmonFaceView *)self updateRichCornerComplicationsInnerColor:cornerComplicationInnerTextColor outerColor:cornerComplicationOuterTextColor];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  v18.receiver = self;
  v18.super_class = NTKSalmonFaceView;
  [NTKSalmonFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKSalmonFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKSalmonFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
  [alaskanContentView setAlpha:v9];

  [(NTKSalmonFaceView *)self _timeViewAlphaForEditMode:mode];
  [(NTKSalmonFaceView *)self _timeViewAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  timeView = [(NTKSalmonFaceView *)self timeView];
  [timeView setAlpha:v12];

  alaskanContentView2 = [(NTKSalmonFaceView *)self alaskanContentView];
  [alaskanContentView2 setEditingAlpha:v12];

  [(NTKSalmonFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKSalmonFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  complicationContainerView = [(NTKSalmonFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v16];
}

- (void)_configureForEditMode:(int64_t)mode
{
  v15.receiver = self;
  v15.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v15 _configureForEditMode:?];
  [(NTKSalmonFaceView *)self _contentAlphaForEditMode:mode];
  v6 = v5;
  alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
  [alaskanContentView setAlpha:v6];

  [(NTKSalmonFaceView *)self _timeViewAlphaForEditMode:mode];
  v9 = v8;
  timeView = [(NTKSalmonFaceView *)self timeView];
  [timeView setAlpha:v9];

  alaskanContentView2 = [(NTKSalmonFaceView *)self alaskanContentView];
  [alaskanContentView2 setEditingAlpha:v9];

  [(NTKSalmonFaceView *)self _complicationAlphaForEditMode:mode];
  v13 = v12;
  complicationContainerView = [(NTKSalmonFaceView *)self complicationContainerView];
  [complicationContainerView setAlpha:v13];
}

- (void)createView
{
  if ([(NTKSalmonFaceView *)self viewsLoaded])
  {
    alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
    [alaskanContentView removeFromSuperview];

    v4 = [NTKAlaskanGMTStyleView alloc];
    [(NTKSalmonFaceView *)self contentViewFrame];
    v5 = [(NTKAlaskanGMTStyleView *)v4 initWithFrame:?];
    [(NTKSalmonFaceView *)self setAlaskanContentView:v5];

    createController = [(NTKSalmonFaceView *)self createController];
    [(NTKSalmonFaceView *)self setAlaskanContentController:createController];

    contentView = [(NTKSalmonFaceView *)self contentView];
    alaskanContentView2 = [(NTKSalmonFaceView *)self alaskanContentView];
    [contentView addSubview:alaskanContentView2];

    alaskanContentView3 = [(NTKSalmonFaceView *)self alaskanContentView];
    palette = [(NTKSalmonFaceView *)self palette];
    [alaskanContentView3 setPalette:palette];
  }

  palette2 = [(NTKSalmonFaceView *)self palette];
  dateComplicationColor = [palette2 dateComplicationColor];
  dateComplicationView = [(NTKSalmonFaceView *)self dateComplicationView];
  [dateComplicationView setForegroundColor:dateComplicationColor];

  [(NTKSalmonFaceView *)self updateTimeViewColor];
  alaskanContentController = [(NTKSalmonFaceView *)self alaskanContentController];
  [alaskanContentController applyVisibilityWithFraction:1.0];
}

- (void)updateTimeViewColor
{
  palette = [(NTKSalmonFaceView *)self palette];
  timeView = [(NTKSalmonFaceView *)self timeView];
  hourHandColor = [palette hourHandColor];
  hourHandView = [timeView hourHandView];
  [hourHandView setColor:hourHandColor];

  hourHandColor2 = [palette hourHandColor];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setColor:hourHandColor2];

  hourHandInlayColor = [palette hourHandInlayColor];
  hourHandView2 = [timeView hourHandView];
  [hourHandView2 setInlayColor:hourHandInlayColor];

  hourHandInlayColor2 = [palette hourHandInlayColor];
  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setInlayColor:hourHandInlayColor2];

  secondHandColor = [palette secondHandColor];
  secondHandView = [timeView secondHandView];
  [secondHandView setColor:secondHandColor];

  v14 = +[UIColor blackColor];
  hourHandView3 = [timeView hourHandView];
  [hourHandView3 setHandDotColor:v14];

  v16 = +[UIColor blackColor];
  minuteHandView3 = [timeView minuteHandView];
  [minuteHandView3 setHandDotColor:v16];

  v18 = +[UIColor blackColor];
  secondHandView2 = [timeView secondHandView];
  [secondHandView2 setHandDotColor:v18];
}

- (id)dateComplicationView
{
  v2 = [(NTKSalmonFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
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

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v14.receiver = self;
  v14.super_class = NTKSalmonFaceView;
  slotCopy = slot;
  v9 = [(NTKSalmonFaceView *)&v14 _newLegacyViewForComplication:complication family:family slot:slotCopy];
  LODWORD(complication) = [slotCopy isEqualToString:{NTKComplicationSlotDate, v14.receiver, v14.super_class}];

  if (complication)
  {
    v10 = v9;
    palette = [(NTKSalmonFaceView *)self palette];
    dateComplicationColor = [palette dateComplicationColor];
    [v10 setForegroundColor:dateComplicationColor];
  }

  return v9;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v19.receiver = self;
  v19.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v19 _configureComplicationView:viewCopy forSlot:slotCopy];
  if (([(NTKSalmonFaceView *)self editing]& 1) == 0)
  {
    alaskanContentView = [(NTKSalmonFaceView *)self alaskanContentView];
    [alaskanContentView setIsEditing:0];
  }

  v9 = qword_46B00;
  if (!qword_46B00)
  {
    v20[0] = NTKComplicationSlotTopLeft;
    v20[1] = NTKComplicationSlotTopRight;
    v20[2] = NTKComplicationSlotBottomLeft;
    v20[3] = NTKComplicationSlotBottomRight;
    v10 = [NSArray arrayWithObjects:v20 count:4];
    v11 = [NSSet setWithArray:v10];
    v12 = qword_46B00;
    qword_46B00 = v11;

    v9 = qword_46B00;
  }

  if ([v9 containsObject:slotCopy])
  {
    v13 = viewCopy;
    palette = [(NTKSalmonFaceView *)self palette];
    cornerComplicationInnerTextColor = [palette cornerComplicationInnerTextColor];
    [(NTKSalmonFaceView *)self setComplicationColor:cornerComplicationInnerTextColor];

    complicationColor = [(NTKSalmonFaceView *)self complicationColor];
    [(NTKSalmonFaceView *)self setInterpolatedComplicationColor:complicationColor];

    palette2 = [(NTKSalmonFaceView *)self palette];
    cornerComplicationOuterTextColor = [palette2 cornerComplicationOuterTextColor];
    [(NTKSalmonFaceView *)self setAlternateComplicationColor:cornerComplicationOuterTextColor];

    [v13 updateMonochromeColor];
  }
}

- (id)utilityDateComplicationFontForDateStyle:(unint64_t)style
{
  v7 = 0.0;
  v3 = [(NTKSalmonFaceView *)self device:style];
  sub_7120(v3, &v6);

  v4 = v7;

  return [CLKFont compactSoftFontOfSize:v4 weight:UIFontWeightSemibold];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode)
  {
    NTKScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    contentView = [(NTKSalmonFaceView *)self contentView];
    v11 = v12;
    [contentView setTransform:&v11];

    timeView = [(NTKSalmonFaceView *)self timeView];
    v11 = v12;
    [timeView setTransform:&v11];

    complicationContainerView = [(NTKSalmonFaceView *)self complicationContainerView];
    v11 = v12;
    [complicationContainerView setTransform:&v11];
  }
}

@end