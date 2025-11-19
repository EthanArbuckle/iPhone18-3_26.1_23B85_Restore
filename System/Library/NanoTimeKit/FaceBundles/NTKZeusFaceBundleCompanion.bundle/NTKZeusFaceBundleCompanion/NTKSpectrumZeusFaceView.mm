@interface NTKSpectrumZeusFaceView
+ (id)_supportedComplicationSlots;
- (NTKSpectrumZeusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_handAlphaForEditMode:(int64_t)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)_snapshotWithStyle:(unint64_t)a3 size:(CGSize)a4;
- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyFrozen;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_configureTimeView:(id)a3;
- (void)_loadActiveViews;
- (void)_loadCommonViews;
- (void)_loadLayoutRules;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4;
- (void)_reorderSwitcherSnapshotView;
- (void)_unloadActiveViews;
- (void)_unloadCommonViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateColor;
- (void)_updateDateComplicationPositionIfNecessary;
- (void)_updateFramerate;
- (void)_updateStyle;
- (void)dealloc;
- (void)setDataMode:(int64_t)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
@end

@implementation NTKSpectrumZeusFaceView

- (NTKSpectrumZeusFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v9.receiver = self;
  v9.super_class = NTKSpectrumZeusFaceView;
  v5 = [(NTKSpectrumZeusFaceView *)&v9 initWithFaceStyle:a3 forDevice:a4 clientIdentifier:a5];
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

- (void)_renderSynchronouslyWithImageQueueDiscard:(BOOL)a3 inGroup:(id)a4
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = NTKSpectrumZeusFaceView;
  v6 = a4;
  [(NTKSpectrumZeusFaceView *)&v7 _renderSynchronouslyWithImageQueueDiscard:v4 inGroup:v6];
  [(CLKUIQuadView *)self->_conicQuadView renderSynchronouslyWithImageQueueDiscard:v4 inGroup:v6, v7.receiver, v7.super_class];
}

- (void)_applyFrozen
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v3 _applyFrozen];
  [(NTKSpectrumZeusFaceView *)self _updateFramerate];
}

- (void)setDataMode:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v4 setDataMode:a3];
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
    v4 = [(NTKSpectrumZeusFaceView *)self dataMode];
    v5 = [(NTKSpectrumZeusFaceView *)self isFrozen];
    v7 = v4 != 3 && (v4 & 0xFFFFFFFFFFFFFFFBLL) != 1;
    v3 = (v5 & 1) != 0 || v7;
  }

  conicQuadView = self->_conicQuadView;

  [(CLKUIQuadView *)conicQuadView setPaused:v3];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v7.receiver = self;
  v7.super_class = NTKSpectrumZeusFaceView;
  v6 = a3;
  [(NTKSpectrumZeusFaceView *)&v7 setOverrideDate:v6 duration:a4];
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setOverrideDate:v6 duration:a4, v7.receiver, v7.super_class];
}

- (void)_configureTimeView:(id)a3
{
  v3.receiver = self;
  v3.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v3 _configureTimeView:a3];
}

- (void)_loadLayoutRules
{
  v3 = [(NTKSpectrumZeusFaceView *)self device];
  v14 = 0.0;
  v13 = 0u;
  memset(v12, 0, sizeof(v12));
  sub_5934(v3, v12);
  [(NTKSpectrumZeusFaceView *)self bounds];
  v5 = v4 * 0.5;
  [(NTKSpectrumZeusFaceView *)self bounds];
  v7 = [NTKComplicationLayoutRule layoutRuleForDevice:v3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v5 - *&v13 * 0.5, v14 + v6 * 0.5 - *(&v13 + 1) * 0.5];
  v10 = [(NTKSpectrumZeusFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottom];
  v11 = v7;
  v8 = v7;
  v9 = v10;
  NTKEnumerateComplicationStates();
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v7 = a3;
  if ([a5 isEqualToString:NTKComplicationSlotBottom])
  {
    v8 = [NTKZeusComplicationBackgroundView alloc];
    v9 = [(NTKSpectrumZeusFaceView *)self device];
    v10 = [(NTKZeusComplicationBackgroundView *)v8 initWithDevice:v9];

    v11 = +[NTKZeusComplicationView viewForComplicationType:backgroundView:](NTKZeusComplicationView, "viewForComplicationType:backgroundView:", [v7 complicationType], v10);
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
  v3 = [(NTKSpectrumZeusFaceView *)self delegate];
  [v3 faceViewWantsComplicationKeylineFramesReloaded];
}

+ (id)_supportedComplicationSlots
{
  v4 = NTKComplicationSlotBottom;
  v2 = [NSArray arrayWithObjects:&v4 count:1];

  return v2;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (a4 == 15)
  {
    v7 = [a3 style];

    [(NTKSpectrumZeusFaceView *)self _setStyle:v7];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 15)
  {
    v11 = a5;
    v12 = [a4 style];
    v13 = [v11 style];

    [(NTKSpectrumZeusFaceView *)self _applyTransitionFraction:v12 fromStyle:v13 toStyle:a3];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v8 = [(NTKSpectrumZeusFaceView *)self timeView];
  [(NTKSpectrumZeusFaceView *)self _handAlphaForEditMode:a4];
  [(NTKSpectrumZeusFaceView *)self _handAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v8 setAlpha:?];

  conicQuadView = self->_conicQuadView;
  [(NTKSpectrumZeusFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKSpectrumZeusFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [(CLKUIQuadView *)conicQuadView setAlpha:?];
  v10 = [(NTKSpectrumZeusFaceView *)self complicationContainerView];
  [(NTKSpectrumZeusFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKSpectrumZeusFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  [v10 setAlpha:?];
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 != 15)
  {
    return 1.0;
  }

  return result;
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v19.receiver = self;
  v19.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v19 _applyRubberBandingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 15)
  {
    NTKScaleForRubberBandingFraction();
    memset(&v18, 0, sizeof(v18));
    CGAffineTransformMakeScale(&v18, v7, v7);
    v8 = [(NTKSpectrumZeusFaceView *)self contentView];
    v17 = v18;
    [v8 setTransform:&v17];

    v9 = [(NTKSpectrumZeusFaceView *)self timeView];
    v17 = v18;
    [v9 setTransform:&v17];

    v10 = [(NTKSpectrumZeusFaceView *)self dialComplicationContainerView];
    v17 = v18;
    [v10 setTransform:&v17];

    NTKAlphaForRubberBandingFraction();
    v12 = v11;
    [(NTKSpectrumZeusFaceView *)self _contentAlphaForEditMode:15];
    v14 = v12 * v13;
    v15 = [(NTKSpectrumZeusFaceView *)self contentView];
    [v15 setAlpha:v14];

    v16 = [(NTKSpectrumZeusFaceView *)self dialComplicationContainerView];
    [v16 setAlpha:v14];
  }
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKSpectrumZeusFaceView;
  [(NTKSpectrumZeusFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4 == 15)
  {
    NTKLargeElementScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    v8 = [(NTKSpectrumZeusFaceView *)self contentView];
    v11 = v12;
    [v8 setTransform:&v11];

    v9 = [(NTKSpectrumZeusFaceView *)self timeView];
    v11 = v12;
    [v9 setTransform:&v11];

    v10 = [(NTKSpectrumZeusFaceView *)self dialComplicationContainerView];
    v11 = v12;
    [v10 setTransform:&v11];
  }
}

- (void)_updateColor
{
  conicActiveQuad = self->_conicActiveQuad;
  v4 = [(NTKSpectrumZeusColorPalette *)self->_palette backgroundColor];
  v5 = [(NTKSpectrumZeusColorPalette *)self->_palette splitColor];
  [(NTKSpectrumConicQuad *)conicActiveQuad setFromColor:v4 toColor:v5];

  v17 = [(NTKSpectrumZeusFaceView *)self timeView];
  v6 = [(NTKSpectrumZeusColorPalette *)self->_palette handInlayColor];
  v7 = [(NTKSpectrumZeusColorPalette *)self->_palette minuteHandDotColor];
  v8 = [v17 minuteHandView];
  [v8 setInlayColor:v6];
  v9 = [(NTKSpectrumZeusColorPalette *)self->_palette minuteHandColor];
  [v8 setColor:v9];

  v10 = [v17 hourHandView];
  [v10 setInlayColor:v6];
  v11 = [(NTKSpectrumZeusColorPalette *)self->_palette hourHandColor];
  [v10 setColor:v11];

  logoView1 = self->_logoView1;
  v13 = [(NTKSpectrumZeusColorPalette *)self->_palette bottomComplication];
  [(UIImageView *)logoView1 setTintColor:v13];

  logoView2 = self->_logoView2;
  v15 = [(NTKSpectrumZeusColorPalette *)self->_palette bottomComplication];
  [(UIImageView *)logoView2 setTintColor:v15];

  v16 = [v17 minuteHandView];
  [v16 setHandDotColor:v7];
}

- (void)_updateStyle
{
  [(NTKSpectrumConicQuad *)self->_conicActiveQuad setStyle:self->_style];
  conicInactiveQuad = self->_conicInactiveQuad;
  style = self->_style;

  [(NTKSpectrumConicQuad *)conicInactiveQuad setStyle:style];
}

- (double)_handAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (!a3)
  {
    return 1.0;
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

- (void)_reorderSwitcherSnapshotView
{
  v3 = [(NTKSpectrumZeusFaceView *)self switcherSnapshotView];

  if (v3)
  {
    v4 = [(NTKSpectrumZeusFaceView *)self switcherSnapshotView];
    [(NTKSpectrumZeusFaceView *)self bringSubviewToFront:v4];
  }
}

- (id)_swatchImageForEditOption:(id)a3 mode:(int64_t)a4 withSelectedOptions:(id)a5
{
  v8 = a3;
  v9 = a5;
  if (!qword_585C8)
  {
    v10 = objc_opt_new();
    v11 = qword_585C8;
    qword_585C8 = v10;
  }

  if (a4 == 15)
  {
    v12 = [NSString stringWithFormat:@"%@", v8];
    v13 = [qword_585C8 objectForKey:v12];
    if (!v13)
    {
      v14 = v8;
      v15 = [v14 style];
      v16 = [v14 swatchStyle];

      [NTKEditOption sizeForSwatchStyle:v16];
      v13 = [(NTKSpectrumZeusFaceView *)self _snapshotWithStyle:v15 size:?];
      [qword_585C8 setObject:v13 forKey:v12];
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = NTKSpectrumZeusFaceView;
    v13 = [(NTKSpectrumZeusFaceView *)&v18 _swatchImageForEditOption:v8 mode:a4 withSelectedOptions:v9];
  }

  return v13;
}

- (id)_snapshotWithStyle:(unint64_t)a3 size:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  y = CGPointZero.y;
  v9 = [CLKUIQuadView quadViewWithFrame:@"HmSb" identifier:CGPointZero.x, y, a4.width, a4.height];
  v10 = +[UIScreen mainScreen];
  [v10 scale];
  v12 = v11;

  v13 = [[NTKSpectrumConicQuad alloc] initWithRole:0 screenScale:v12];
  [v13 setOpaque:1];
  [v13 setStyle:a3];
  v14 = [(NTKSpectrumZeusColorPalette *)self->_palette backgroundColor];
  v15 = [(NTKSpectrumZeusColorPalette *)self->_palette splitColor];
  [v13 setFromColor:v14 toColor:v15];

  [v9 addQuad:v13];
  v16 = [v9 snapshotInRect:CGPointZero.x scale:y time:{width, height, v12, 0.0}];

  return v16;
}

- (void)_loadCommonViews
{
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v3 = [(NTKSpectrumZeusFaceView *)self device];
  sub_5934(v3, v32);

  v31 = [(NTKSpectrumZeusFaceView *)self timeView];
  v4 = [v31 secondHandView];
  [v4 setHidden:1];

  [(NTKSpectrumZeusFaceView *)self bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = [CLKUIQuadView quadViewWithFrame:@"HmSb" identifier:?];
  conicQuadView = self->_conicQuadView;
  self->_conicQuadView = v13;

  v15 = [(NTKSpectrumZeusFaceView *)self contentView];
  v16 = [(NTKSpectrumZeusFaceView *)self device];
  v17 = [[NTKRoundedCornerOverlayView alloc] initWithFrame:v16 forDeviceCornerRadius:{v6, v8, v10, v12}];
  cornerView = self->_cornerView;
  self->_cornerView = v17;

  [v15 addSubview:self->_cornerView];
  [v15 addSubview:self->_conicQuadView];
  [v15 sendSubviewToBack:self->_conicQuadView];
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
  [v15 insertSubview:self->_logoView1 aboveSubview:self->_conicQuadView];
  [v15 insertSubview:self->_logoView2 aboveSubview:self->_conicQuadView];
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
  v4 = [(NTKSpectrumZeusFaceView *)self device];
  [v4 screenScale];
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