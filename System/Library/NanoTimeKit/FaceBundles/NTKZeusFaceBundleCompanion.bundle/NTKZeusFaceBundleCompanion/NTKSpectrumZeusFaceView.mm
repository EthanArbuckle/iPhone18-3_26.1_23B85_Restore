@interface NTKSpectrumZeusFaceView
+ (id)_supportedComplicationSlots;
- (NTKSpectrumZeusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (double)_complicationAlphaForEditMode:(int64_t)mode;
- (double)_contentAlphaForEditMode:(int64_t)mode;
- (double)_handAlphaForEditMode:(int64_t)mode;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (id)_snapshotWithStyle:(unint64_t)style size:(CGSize)size;
- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFrozen;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_cleanupAfterEditing;
- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode;
- (void)_configureTimeView:(id)view;
- (void)_loadActiveViews;
- (void)_loadCommonViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group;
- (void)_reorderSwitcherSnapshotView;
- (void)_unloadActiveViews;
- (void)_unloadCommonViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateColor;
- (void)_updateDateComplicationPositionIfNecessary;
- (void)_updateFramerate;
- (void)_updateStyle;
- (void)dealloc;
- (void)setDataMode:(int64_t)mode;
- (void)setOverrideDate:(id)date duration:(double)duration;
@end

@implementation NTKSpectrumZeusFaceView

- (NTKSpectrumZeusFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  v9.receiver = self;
  v9.super_class = NTKSpectrumZeusFaceView;
  v5 = [(NTKSpectrumZeusFaceView *)&v9 initWithFaceStyle:style forDevice:device clientIdentifier:identifier];
  if (v5)
  {
    v6 = objc_alloc_init(NTKSpectrumZeusColorPalette);
    palette = v5->_palette;
    v5->_palette = v6;
  }

  return v5;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v2 dealloc];
}

- (void)_loadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v3 _loadSnapshotContentViews];
  [(NTKSpectrumZeusFaceView *)self _loadCommonViews];
  [(NTKSpectrumZeusFaceView *)self _loadActiveViews];
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setOpaque:1];
  [(NTKSpectrumZeusFaceView *)self _updateColor];
  [(NTKSpectrumZeusFaceView *)self _updateStyle];
}

- (void)_unloadSnapshotContentViews
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v3 _unloadSnapshotContentViews];
  [(NTKSpectrumZeusFaceView *)self _unloadCommonViews];
  [(NTKSpectrumZeusFaceView *)self _unloadActiveViews];
}

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)discard inGroup:(id)group
{
  discardCopy = discard;
  v7.receiver = self;
  v7.super_class = NTKSpectrumZeusFaceView;
  groupCopy = group;
  [(NTKSpectrumZeusFaceView *)&v7 _renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy];
  [(CLKUIQuadView *)self->_conicQuadView renderSynchronouslyWithImageQueueDiscard:discardCopy inGroup:groupCopy, v7.receiver, v7.super_class];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v3 _applyFrozen];
  [(NTKSpectrumZeusFaceView *)self _updateFramerate];
}

- (void)setDataMode:(int64_t)mode
{
  v4.receiver = self;
  v4.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v4 setDataMode:mode];
  [(NTKSpectrumZeusFaceView *)self _updateFramerate];
}

- (void)_prepareForEditing
{
  v2.receiver = self;
  v2.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v2 _prepareForEditing];
}

- (void)_cleanupAfterEditing
{
  v2.receiver = self;
  v2.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v2 _cleanupAfterEditing];
}

- (void)_updateFramerate
{
  if (([(NTKSpectrumZeusFaceView *)self editing]& 1) != 0)
  {
    v3 = 0;
  }

  else
  {
    dataMode = [(NTKSpectrumZeusFaceView *)self dataMode];
    isFrozen = [(NTKSpectrumZeusFaceView *)self isFrozen];
    v7 = dataMode != 3 && (dataMode & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v3 = (isFrozen & 1) != 0 || v7;
  }

  conicQuadView = self->_conicQuadView;

  [(CLKUIQuadView *)conicQuadView setPaused:v3];
}

- (void)setOverrideDate:(id)date duration:(double)duration
{
  v7.receiver = self;
  v7.super_class = NTKSpectrumZeusFaceView;
  dateCopy = date;
  [(NTKSpectrumZeusFaceView *)&v7 setOverrideDate:dateCopy duration:duration];
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setOverrideDate:dateCopy duration:duration, v7.receiver, v7.super_class];
}

- (void)_configureTimeView:(id)view
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v3 _configureTimeView:view];
}

- (void)_loadLayoutRules
{
  device = [(NTKSpectrumZeusFaceView *)self device];
  v14 = 0.0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_5934(device, v12);
  [(NTKSpectrumZeusFaceView *)self bounds];
  v5 = v4 * 0.5;
  [(NTKSpectrumZeusFaceView *)self bounds];
  v7 = [NTKComplicationLayoutRule layoutRuleForDevice:device withReferenceFrame:3 horizontalLayout:3 verticalLayout:v5 - *&v13 * 0.5, v14 + v6 * 0.5 - *(&v13 + 1) * 0.5];
  v10 = [(NTKSpectrumZeusFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  v11 = v7;
  v8 = v7;
  v9 = v10;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  complicationCopy = complication;
  if ([slot isEqualToString:NTKComplicationSlotBottom])
  {
    v8 = [NTKZeusComplicationBackgroundView alloc];
    device = [(NTKSpectrumZeusFaceView *)self device];
    v10 = [(NTKZeusComplicationBackgroundView *)v8 initWithDevice:device];

    v11 = +[NTKZeusComplicationView viewForComplicationType:backgroundView:](NTKZeusComplicationView, "viewForComplicationType:backgroundView:", [complicationCopy complicationType], v10);
    if ([v11 conformsToProtocol:&OBJC_PROTOCOL___NTKZeudleComplicationDisplay])
    {
      v12 = v11;
      [v12 setStyle:1];
      [v12 setLegibilityEnabled:1];
      [v12 applyPalette:self->_palette];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (void)_updateDateComplicationPositionIfNecessary
{
  [(NTKSpectrumZeusFaceView *)self _loadLayoutRules];
  delegate = [(NTKSpectrumZeusFaceView *)self delegate];
  [delegate faceViewWantsComplicationKeylineFramesReloaded];
}

+ (id)_supportedComplicationSlots
{
  v4 = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    style = [option style];

    [(NTKSpectrumZeusFaceView *)self _setStyle:style];
  }
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  if (mode == 15)
  {
    toOptionCopy = toOption;
    style = [option style];
    style2 = [toOptionCopy style];

    [(NTKSpectrumZeusFaceView *)self _applyTransitionFraction:style fromStyle:style2 toStyle:fraction];
  }
}

- (void)_configureForTransitionFraction:(double)fraction fromEditMode:(int64_t)mode toEditMode:(int64_t)editMode
{
  timeView = [(NTKSpectrumZeusFaceView *)self timeView];
  [(NTKSpectrumZeusFaceView *)self _handAlphaForEditMode:mode];
  [(NTKSpectrumZeusFaceView *)self _handAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [timeView setAlpha:?];

  conicQuadView = self->_conicQuadView;
  [(NTKSpectrumZeusFaceView *)self _contentAlphaForEditMode:mode];
  [(NTKSpectrumZeusFaceView *)self _contentAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)conicQuadView setAlpha:?];
  complicationContainerView = [(NTKSpectrumZeusFaceView *)self complicationContainerView];
  [(NTKSpectrumZeusFaceView *)self _complicationAlphaForEditMode:mode];
  [(NTKSpectrumZeusFaceView *)self _complicationAlphaForEditMode:editMode];
  CLKInterpolateBetweenFloatsClipped();
  [complicationContainerView setAlpha:?];
}

- (double)_complicationAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (mode != 15)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v19.receiver = self;
  v19.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v19 _applyRubberBandingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 15)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v7, v7);
    contentView = [(NTKSpectrumZeusFaceView *)self contentView];
    v17 = v18;
    [contentView setTransform:&v17];

    timeView = [(NTKSpectrumZeusFaceView *)self timeView];
    v17 = v18;
    [timeView setTransform:&v17];

    dialComplicationContainerView = [(NTKSpectrumZeusFaceView *)self dialComplicationContainerView];
    v17 = v18;
    [dialComplicationContainerView setTransform:&v17];

    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    [(NTKSpectrumZeusFaceView *)self _contentAlphaForEditMode:15];
    v14 = v12 * v13;
    contentView2 = [(NTKSpectrumZeusFaceView *)self contentView];
    [contentView2 setAlpha:v14];

    dialComplicationContainerView2 = [(NTKSpectrumZeusFaceView *)self dialComplicationContainerView];
    [dialComplicationContainerView2 setAlpha:v14];
  }
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v13.receiver = self;
  v13.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v13 _applyBreathingFraction:mode forCustomEditMode:slot slot:?];
  if (mode == 15)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    contentView = [(NTKSpectrumZeusFaceView *)self contentView];
    v11 = v12;
    [contentView setTransform:&v11];

    timeView = [(NTKSpectrumZeusFaceView *)self timeView];
    v11 = v12;
    [timeView setTransform:&v11];

    dialComplicationContainerView = [(NTKSpectrumZeusFaceView *)self dialComplicationContainerView];
    v11 = v12;
    [dialComplicationContainerView setTransform:&v11];
  }
}

- (void)_updateColor
{
  conicActiveQuad = self->_conicActiveQuad;
  backgroundColor = [(NTKSpectrumZeusColorPalette *)self->_palette backgroundColor];
  splitColor = [(NTKSpectrumZeusColorPalette *)self->_palette splitColor];
  [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:backgroundColor toColor:splitColor];

  timeView = [(NTKSpectrumZeusFaceView *)self timeView];
  handInlayColor = [(NTKSpectrumZeusColorPalette *)self->_palette handInlayColor];
  minuteHandDotColor = [(NTKSpectrumZeusColorPalette *)self->_palette minuteHandDotColor];
  minuteHandView = [timeView minuteHandView];
  [minuteHandView setInlayColor:handInlayColor];
  minuteHandColor = [(NTKSpectrumZeusColorPalette *)self->_palette minuteHandColor];
  [minuteHandView setColor:minuteHandColor];

  hourHandView = [timeView hourHandView];
  [hourHandView setInlayColor:handInlayColor];
  hourHandColor = [(NTKSpectrumZeusColorPalette *)self->_palette hourHandColor];
  [hourHandView setColor:hourHandColor];

  logoView1 = self->_logoView1;
  bottomComplication = [(NTKSpectrumZeusColorPalette *)self->_palette bottomComplication];
  [(UIImageView *)logoView1 setTintColor:bottomComplication];

  logoView2 = self->_logoView2;
  bottomComplication2 = [(NTKSpectrumZeusColorPalette *)self->_palette bottomComplication];
  [(UIImageView *)logoView2 setTintColor:bottomComplication2];

  minuteHandView2 = [timeView minuteHandView];
  [minuteHandView2 setHandDotColor:minuteHandDotColor];
}

- (void)_updateStyle
{
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setStyle:self->_style];
  conicInactiveQuad = self->_conicInactiveQuad;
  style = self->_style;

  [(NTKSpectrumConicQuad *)conicInactiveQuad setStyle:style];
}

- (double)_handAlphaForEditMode:(int64_t)mode
{
  result = NTKEditModeDimmedAlpha;
  if (!mode)
  {
    return 1.0;
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

- (void)_reorderSwitcherSnapshotView
{
  switcherSnapshotView = [(NTKSpectrumZeusFaceView *)self switcherSnapshotView];

  if (switcherSnapshotView)
  {
    switcherSnapshotView2 = [(NTKSpectrumZeusFaceView *)self switcherSnapshotView];
    [(NTKSpectrumZeusFaceView *)self bringSubviewToFront:switcherSnapshotView2];
  }
}

- (id)_swatchImageForEditOption:(id)option mode:(int64_t)mode withSelectedOptions:(id)options
{
  optionCopy = option;
  optionsCopy = options;
  if (!qword_585C8)
  {
    v10 = objc_opt_new();
    v11 = qword_585C8;
    qword_585C8 = v10;
  }

  if (mode == 15)
  {
    optionCopy = [NSString stringWithFormat:@"%@", optionCopy];
    v13 = [qword_585C8 objectForKey:optionCopy];
    if (!v13)
    {
      v14 = optionCopy;
      style = [v14 style];
      swatchStyle = [v14 swatchStyle];

      [NTKEditOption sizeForSwatchStyle:swatchStyle];
      v13 = [(NTKSpectrumZeusFaceView *)self _snapshotWithStyle:style size:?];
      [qword_585C8 setObject:v13 forKey:optionCopy];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKSpectrumZeusFaceView;
    v13 = [(NTKSpectrumZeusFaceView *)&v18 _swatchImageForEditOption:optionCopy mode:mode withSelectedOptions:optionsCopy];
  }

  return v13;
}

- (id)_snapshotWithStyle:(unint64_t)style size:(CGSize)size
{
  height = size.height;
  width = size.width;
  y = CGPointZero.y;
  v9 = [CLKUIQuadView quadViewWithFrame:@"HmSb" identifier:CGPointZero.x, y, size.width, size.height];
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [[NTKSpectrumConicQuad alloc] initWithRole:0 screenScale:v12];
  [v13 setOpaque:1];
  [v13 setStyle:style];
  backgroundColor = [(NTKSpectrumZeusColorPalette *)self->_palette backgroundColor];
  splitColor = [(NTKSpectrumZeusColorPalette *)self->_palette splitColor];
  [v13 setFromColor:backgroundColor toColor:splitColor];

  [v9 addQuad:v13];
  v16 = [v9 snapshotInRect:CGPointZero.x scale:y time:{width, height, v12, 0.0}];

  return v16;
}

- (void)_loadCommonViews
{
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  device = [(NTKSpectrumZeusFaceView *)self device];
  sub_5934(device, v32);

  timeView = [(NTKSpectrumZeusFaceView *)self timeView];
  secondHandView = [timeView secondHandView];
  [secondHandView setHidden:1];

  [(NTKSpectrumZeusFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [CLKUIQuadView quadViewWithFrame:@"HmSb" identifier:?];
  conicQuadView = self->_conicQuadView;
  self->_conicQuadView = v13;

  contentView = [(NTKSpectrumZeusFaceView *)self contentView];
  device2 = [(NTKSpectrumZeusFaceView *)self device];
  v17 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:device2 forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [contentView addSubview:self->_cornerView];
  [contentView addSubview:self->_conicQuadView];
  [contentView sendSubviewToBack:self->_conicQuadView];
  v19 = [UIImageView alloc];
  v20 = [NTKZeusSpectrumFaceBundle imageWithName:@"ZeusSpectrumLogo1"];
  v21 = [v20 imageWithRenderingMode:2];
  v22 = [v19 initWithImage:v21];
  logoView1 = self->_logoView1;
  self->_logoView1 = v22;

  v24 = self->_logoView1;
  CLKRectIntegralForDevice();
  [(UIImageView *)v24 ntk_setBoundsAndPositionFromFrame:?];
  v25 = [UIImageView alloc];
  v26 = [NTKZeusSpectrumFaceBundle imageWithName:@"ZeusSpectrumLogo2"];
  v27 = [v26 imageWithRenderingMode:2];
  v28 = [v25 initWithImage:v27];
  logoView2 = self->_logoView2;
  self->_logoView2 = v28;

  [(UIImageView *)self->_logoView1 frame];
  v30 = self->_logoView2;
  CLKRectIntegralForDevice();
  [(UIImageView *)v30 ntk_setBoundsAndPositionFromFrame:?];
  _NTKZeusApplyLegibilityToView(self->_logoView1);
  _NTKZeusApplyLegibilityToView(self->_logoView2);
  [contentView insertSubview:self->_logoView1 aboveSubview:self->_conicQuadView];
  [contentView insertSubview:self->_logoView2 aboveSubview:self->_conicQuadView];
}

- (void)_unloadCommonViews
{
  [(CLKUIQuadView *)self->_conicQuadView removeFromSuperview];
  conicQuadView = self->_conicQuadView;
  self->_conicQuadView = 0;
}

- (void)_loadActiveViews
{
  v3 = [NTKSpectrumConicQuad alloc];
  device = [(NTKSpectrumZeusFaceView *)self device];
  [device screenScale];
  v5 = [v3 initWithRole:0 screenScale:?];
  conicActiveQuad = self->_conicActiveQuad;
  self->_conicActiveQuad = v5;

  conicQuadView = self->_conicQuadView;
  v8 = self->_conicActiveQuad;

  [(CLKUIQuadView *)conicQuadView addQuad:v8];
}

- (void)_unloadActiveViews
{
  [(CLKUIQuadView *)self->_conicQuadView removeQuad:self->_conicActiveQuad];
  conicActiveQuad = self->_conicActiveQuad;
  self->_conicActiveQuad = 0;
}

@end