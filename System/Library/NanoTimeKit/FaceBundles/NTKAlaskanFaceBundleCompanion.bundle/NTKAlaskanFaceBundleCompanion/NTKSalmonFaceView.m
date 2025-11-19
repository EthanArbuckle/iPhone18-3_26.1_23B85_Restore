@interface NTKSalmonFaceView
- (BOOL)_handlePhysicalButton:(unint64_t)a3 event:(unint64_t)a4;
- (BOOL)_wheelChangedWithEvent:(id)a3;
- (NTKSalmonFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)createController;
- (id)createFaceColorPalette;
- (id)dateComplicationView;
- (id)utilityDateComplicationFontForDateStyle:(unint64_t)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_cleanupAfterEditing;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadSnapshotContentViews;
- (void)_prepareForEditing;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)createView;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)updateTimeViewColor;
@end

@implementation NTKSalmonFaceView

- (NTKSalmonFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v21.receiver = self;
  v21.super_class = NTKSalmonFaceView;
  v9 = [(NTKSalmonFaceView *)&v21 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v11 = [(NTKSalmonFaceView *)v9 device];
    sub_7120(v11, &v18);

    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    v13 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v14 = [v13 initWithFaceView:v10 dialDiameter:v8 device:*&v18];
    [v14 setUsesNarrowTopSlots:1];
    [(NTKSalmonFaceView *)v10 setComplicationFactory:v14];
    v22[0] = NTKComplicationSlotTopLeft;
    v22[1] = NTKComplicationSlotTopRight;
    v22[2] = NTKComplicationSlotBottomLeft;
    v22[3] = NTKComplicationSlotBottomRight;
    v15 = [NSArray arrayWithObjects:v22 count:4];
    [v12 registerFactory:v14 forSlots:v15];

    v16 = [[NTKUtilityComplicationFactory alloc] initForDevice:v8];
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

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKSalmonFaceView;
  v4 = a3;
  [(NTKSalmonFaceView *)&v5 setDelegate:v4];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:v4, v5.receiver, v5.super_class];
}

- (void)_applyDataMode
{
  v3 = [(NTKSalmonFaceView *)self alaskanContentController];
  [v3 setDatamode:{-[NTKSalmonFaceView dataMode](self, "dataMode")}];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v6 = a3;
  v8.receiver = self;
  v8.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v8 setOverrideDate:v6 duration:a4];
  if (!v6)
  {
    v6 = [(NTKSalmonFaceView *)self currentDisplayDate];
  }

  v7 = [(NTKSalmonFaceView *)self alaskanContentController];
  [v7 setOverrideDate:v6 duration:a4];
}

- (void)_prepareForSnapshotting
{
  v3.receiver = self;
  v3.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v3 _prepareForSnapshotting];
  [(NTKSalmonFaceView *)self setStorage:0];
}

- (BOOL)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if (NTKStarbearEnabled())
  {
    v5 = [(NTKSalmonFaceView *)self alaskanContentView];
    v6 = [v5 isEditing];
  }

  else
  {
    v5 = [(NTKSalmonFaceView *)self crownInputHandler];
    v6 = [v5 _wheelChangedWithEvent:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)_handlePhysicalButton:(unint64_t)a3 event:(unint64_t)a4
{
  v6 = [(NTKSalmonFaceView *)self crownInputHandler];
  LOBYTE(a4) = [v6 _handlePhysicalButton:a3 event:a4];

  return a4;
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

  v5 = [(NTKSalmonFaceView *)self delegate];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:v5];

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
  v4 = [(NTKSalmonFaceView *)self alaskanContentView];
  v5 = [(NTKSalmonFaceView *)self crownInputHandler];
  v6 = [(NTKSalmonFaceView *)self storage];
  v7 = [(NTKAlaskanGMTStyleController *)v3 initWithContentView:v4 crownInputHandler:v5 storage:v6];

  [(NTKAlaskanGMTStyleController *)v7 setFaceView:self];
  [(NTKAlaskanGMTStyleController *)v7 setDatamode:[(NTKSalmonFaceView *)self dataMode]];

  return v7;
}

- (void)_prepareForEditing
{
  v4.receiver = self;
  v4.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v4 _prepareForEditing];
  v3 = [(NTKSalmonFaceView *)self alaskanContentController];
  [v3 setStorage:0];
}

- (void)_cleanupAfterEditing
{
  v5.receiver = self;
  v5.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v5 _cleanupAfterEditing];
  v3 = [(NTKSalmonFaceView *)self storage];
  v4 = [(NTKSalmonFaceView *)self alaskanContentController];
  [v4 setStorage:v3];
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (([(NTKSalmonFaceView *)self editing:a3]& 1) == 0)
  {
    v7 = [(NTKSalmonFaceView *)self alaskanContentView];
    [v7 setIsEditing:0];
  }

  if (a4 == 10)
  {
    v8 = [(NTKSalmonFaceView *)self alaskanContentView];
    v9 = [(NTKSalmonFaceView *)self palette];
    [v8 setPalette:v9];

    [(NTKSalmonFaceView *)self updateTimeViewColor];
    v10 = [(NTKSalmonFaceView *)self palette];
    v11 = [v10 dateComplicationColor];
    v12 = [(NTKSalmonFaceView *)self dateComplicationView];
    [v12 setForegroundColor:v11];

    v16 = [(NTKSalmonFaceView *)self palette];
    v13 = [v16 cornerComplicationInnerTextColor];
    v14 = [(NTKSalmonFaceView *)self palette];
    v15 = [v14 cornerComplicationOuterTextColor];
    [(NTKSalmonFaceView *)self updateRichCornerComplicationsInnerColor:v13 outerColor:v15];
  }
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v9 = [(NTKSalmonFaceView *)self interpolatedColorPalette:a4];
    v10 = [v9 dateComplicationColor];
    v11 = [(NTKSalmonFaceView *)self dateComplicationView];
    [v11 setForegroundColor:v10];

    v12 = [(NTKSalmonFaceView *)self alaskanContentView];
    v13 = [(NTKSalmonFaceView *)self interpolatedColorPalette];
    [v12 setPalette:v13];

    [(NTKSalmonFaceView *)self updateTimeViewColor];
    v17 = [(NTKSalmonFaceView *)self interpolatedColorPalette];
    v14 = [v17 cornerComplicationInnerTextColor];
    v15 = [(NTKSalmonFaceView *)self interpolatedColorPalette];
    v16 = [v15 cornerComplicationOuterTextColor];
    [(NTKSalmonFaceView *)self updateRichCornerComplicationsInnerColor:v14 outerColor:v16];
  }
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v18.receiver = self;
  v18.super_class = NTKSalmonFaceView;
  [NTKSalmonFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKSalmonFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKSalmonFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKSalmonFaceView *)self alaskanContentView];
  [v10 setAlpha:v9];

  [(NTKSalmonFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKSalmonFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKSalmonFaceView *)self timeView];
  [v13 setAlpha:v12];

  v14 = [(NTKSalmonFaceView *)self alaskanContentView];
  [v14 setEditingAlpha:v12];

  [(NTKSalmonFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKSalmonFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v16 = v15;
  v17 = [(NTKSalmonFaceView *)self complicationContainerView];
  [v17 setAlpha:v16];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v15.receiver = self;
  v15.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v15 _configureForEditMode:?];
  [(NTKSalmonFaceView *)self _contentAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKSalmonFaceView *)self alaskanContentView];
  [v7 setAlpha:v6];

  [(NTKSalmonFaceView *)self _timeViewAlphaForEditMode:a3];
  v9 = v8;
  v10 = [(NTKSalmonFaceView *)self timeView];
  [v10 setAlpha:v9];

  v11 = [(NTKSalmonFaceView *)self alaskanContentView];
  [v11 setEditingAlpha:v9];

  [(NTKSalmonFaceView *)self _complicationAlphaForEditMode:a3];
  v13 = v12;
  v14 = [(NTKSalmonFaceView *)self complicationContainerView];
  [v14 setAlpha:v13];
}

- (void)createView
{
  if ([(NTKSalmonFaceView *)self viewsLoaded])
  {
    v3 = [(NTKSalmonFaceView *)self alaskanContentView];
    [v3 removeFromSuperview];

    v4 = [NTKAlaskanGMTStyleView alloc];
    [(NTKSalmonFaceView *)self contentViewFrame];
    v5 = [(NTKAlaskanGMTStyleView *)v4 initWithFrame:?];
    [(NTKSalmonFaceView *)self setAlaskanContentView:v5];

    v6 = [(NTKSalmonFaceView *)self createController];
    [(NTKSalmonFaceView *)self setAlaskanContentController:v6];

    v7 = [(NTKSalmonFaceView *)self contentView];
    v8 = [(NTKSalmonFaceView *)self alaskanContentView];
    [v7 addSubview:v8];

    v9 = [(NTKSalmonFaceView *)self alaskanContentView];
    v10 = [(NTKSalmonFaceView *)self palette];
    [v9 setPalette:v10];
  }

  v11 = [(NTKSalmonFaceView *)self palette];
  v12 = [v11 dateComplicationColor];
  v13 = [(NTKSalmonFaceView *)self dateComplicationView];
  [v13 setForegroundColor:v12];

  [(NTKSalmonFaceView *)self updateTimeViewColor];
  v14 = [(NTKSalmonFaceView *)self alaskanContentController];
  [v14 applyVisibilityWithFraction:1.0];
}

- (void)updateTimeViewColor
{
  v20 = [(NTKSalmonFaceView *)self palette];
  v3 = [(NTKSalmonFaceView *)self timeView];
  v4 = [v20 hourHandColor];
  v5 = [v3 hourHandView];
  [v5 setColor:v4];

  v6 = [v20 hourHandColor];
  v7 = [v3 minuteHandView];
  [v7 setColor:v6];

  v8 = [v20 hourHandInlayColor];
  v9 = [v3 hourHandView];
  [v9 setInlayColor:v8];

  v10 = [v20 hourHandInlayColor];
  v11 = [v3 minuteHandView];
  [v11 setInlayColor:v10];

  v12 = [v20 secondHandColor];
  v13 = [v3 secondHandView];
  [v13 setColor:v12];

  v14 = +[UIColor blackColor];
  v15 = [v3 hourHandView];
  [v15 setHandDotColor:v14];

  v16 = +[UIColor blackColor];
  v17 = [v3 minuteHandView];
  [v17 setHandDotColor:v16];

  v18 = +[UIColor blackColor];
  v19 = [v3 secondHandView];
  [v19 setHandDotColor:v18];
}

- (id)dateComplicationView
{
  v2 = [(NTKSalmonFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
  v3 = [v2 display];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v5 = [v2 display];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)_complicationAlphaForEditMode:(int64_t)a3
{
  result = NTKEditModeDimmedAlpha;
  if (a3 < 2)
  {
    return 1.0;
  }

  return result;
}

- (double)_contentAlphaForEditMode:(int64_t)a3
{
  result = 0.3;
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

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v14.receiver = self;
  v14.super_class = NTKSalmonFaceView;
  v8 = a5;
  v9 = [(NTKSalmonFaceView *)&v14 _newLegacyViewForComplication:a3 family:a4 slot:v8];
  LODWORD(a3) = [v8 isEqualToString:{NTKComplicationSlotDate, v14.receiver, v14.super_class}];

  if (a3)
  {
    v10 = v9;
    v11 = [(NTKSalmonFaceView *)self palette];
    v12 = [v11 dateComplicationColor];
    [v10 setForegroundColor:v12];
  }

  return v9;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v19 _configureComplicationView:v6 forSlot:v7];
  if (([(NTKSalmonFaceView *)self editing]& 1) == 0)
  {
    v8 = [(NTKSalmonFaceView *)self alaskanContentView];
    [v8 setIsEditing:0];
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

  if ([v9 containsObject:v7])
  {
    v13 = v6;
    v14 = [(NTKSalmonFaceView *)self palette];
    v15 = [v14 cornerComplicationInnerTextColor];
    [(NTKSalmonFaceView *)self setComplicationColor:v15];

    v16 = [(NTKSalmonFaceView *)self complicationColor];
    [(NTKSalmonFaceView *)self setInterpolatedComplicationColor:v16];

    v17 = [(NTKSalmonFaceView *)self palette];
    v18 = [v17 cornerComplicationOuterTextColor];
    [(NTKSalmonFaceView *)self setAlternateComplicationColor:v18];

    [v13 updateMonochromeColor];
  }
}

- (id)utilityDateComplicationFontForDateStyle:(unint64_t)a3
{
  v7 = 0.0;
  v3 = [(NTKSalmonFaceView *)self device:a3];
  sub_7120(v3, &v6);

  v4 = v7;

  return [CLKFont compactSoftFontOfSize:v4 weight:UIFontWeightSemibold];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v13.receiver = self;
  v13.super_class = NTKSalmonFaceView;
  [(NTKSalmonFaceView *)&v13 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForBreathingFraction();
    memset(&v12, 0, sizeof(v12));
    CGAffineTransformMakeScale(&v12, v7, v7);
    v8 = [(NTKSalmonFaceView *)self contentView];
    v11 = v12;
    [v8 setTransform:&v11];

    v9 = [(NTKSalmonFaceView *)self timeView];
    v11 = v12;
    [v9 setTransform:&v11];

    v10 = [(NTKSalmonFaceView *)self complicationContainerView];
    v11 = v12;
    [v10 setTransform:&v11];
  }
}

@end