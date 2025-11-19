@interface NTKTroutFaceView
- (BOOL)_handlePhysicalButton:(unint64_t)a3 event:(unint64_t)a4;
- (BOOL)_wantsStatusBarHidden;
- (BOOL)_wheelChangedWithEvent:(id)a3;
- (NTKTroutFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (double)_complicationAlphaForEditMode:(int64_t)a3;
- (double)_contentAlphaForEditMode:(int64_t)a3;
- (double)_timeViewAlphaForEditMode:(int64_t)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (id)colorForDateComplicationPalette:(id)a3;
- (id)createController;
- (id)createFaceColorPalette;
- (id)dateComplicationView;
- (id)utilityDateComplicationFontForDateStyle:(unint64_t)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyDataMode;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_configureForEditMode:(int64_t)a3;
- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5;
- (void)_loadSnapshotContentViews;
- (void)_prepareForSnapshotting;
- (void)_removeViews;
- (void)_setupViews;
- (void)_unloadSnapshotContentViews;
- (void)createView;
- (void)layoutSubviews;
- (void)setDelegate:(id)a3;
- (void)setOverrideDate:(id)a3 duration:(double)a4;
- (void)setTimeOffset:(double)a3;
- (void)updateComplicationsColorWithPalette:(id)a3;
- (void)updateTimeViewColor;
@end

@implementation NTKTroutFaceView

- (NTKTroutFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v21.receiver = self;
  v21.super_class = NTKTroutFaceView;
  v9 = [(NTKTroutFaceView *)&v21 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    v11 = [(NTKTroutFaceView *)v9 device];
    sub_BA8C(v11, &v18);

    v12 = objc_alloc_init(NTKCompositeComplicationFactory);
    v13 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    v14 = [v13 initWithFaceView:v10 dialDiameter:v8 device:*&v18];
    [v14 setUsesNarrowTopSlots:1];
    [(NTKTroutFaceView *)v10 setComplicationFactory:v14];
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
    [(NTKTroutFaceView *)v10 setComplicationFactory:v12];
  }

  return v10;
}

- (id)createFaceColorPalette
{
  v2 = objc_alloc_init(NTKAlaskanDiversColorPalette);

  return v2;
}

- (void)setDelegate:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKTroutFaceView;
  v4 = a3;
  [(NTKTroutFaceView *)&v5 setDelegate:v4];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:v4, v5.receiver, v5.super_class];
}

- (void)_applyDataMode
{
  v3 = [(NTKTroutFaceView *)self alaskanContentController];
  [v3 setDatamode:{-[NTKTroutFaceView dataMode](self, "dataMode")}];

  v5 = [(NTKTroutFaceView *)self delegate];
  v4 = [(NTKTroutFaceView *)self alaskanContentController];
  [v5 faceViewWantsStatusBarHidden:objc_msgSend(v4 animated:{"wantsStatusBarHidden"), 0}];
}

- (void)setOverrideDate:(id)a3 duration:(double)a4
{
  v8.receiver = self;
  v8.super_class = NTKTroutFaceView;
  v6 = a3;
  [(NTKTroutFaceView *)&v8 setOverrideDate:v6 duration:a4];
  v7 = [(NTKTroutFaceView *)self alaskanContentController:v8.receiver];
  [v7 setOverrideDate:v6 duration:a4];
}

- (void)setTimeOffset:(double)a3
{
  v4 = [(NTKTroutFaceView *)self alaskanContentController];
  [v4 setTimeOffset:a3];
}

- (void)_prepareForSnapshotting
{
  v3.receiver = self;
  v3.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v3 _prepareForSnapshotting];
  [(NTKTroutFaceView *)self setStorage:0];
}

- (BOOL)_wheelChangedWithEvent:(id)a3
{
  v4 = a3;
  if (NTKStarbearEnabled() && (-[NTKTroutFaceView alaskanContentView](self, "alaskanContentView"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 currentMode], v5, v6 != &dword_0 + 1))
  {
    v8 = 0;
  }

  else
  {
    v7 = [(NTKTroutFaceView *)self crownInputHandler];
    v8 = [v7 _wheelChangedWithEvent:v4];
  }

  return v8;
}

- (BOOL)_handlePhysicalButton:(unint64_t)a3 event:(unint64_t)a4
{
  v6 = [(NTKTroutFaceView *)self crownInputHandler];
  LOBYTE(a4) = [v6 _handlePhysicalButton:a3 event:a4];

  return a4;
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

  v5 = [(NTKTroutFaceView *)self delegate];
  [(NTKAlaskanPersistenceStorage *)self->_storage setDelegate:v5];

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
  v4 = [(NTKTroutFaceView *)self alaskanContentView];
  v5 = [(NTKTroutFaceView *)self crownInputHandler];
  v6 = [(NTKTroutFaceView *)self storage];
  v7 = [(NTKAlaskanDiverStyleController *)v3 initWithContentView:v4 crownInputHandler:v5 storage:v6];

  [(NTKAlaskanDiverStyleController *)v7 setFaceView:self];
  [(NTKAlaskanDiverStyleController *)v7 setDatamode:[(NTKTroutFaceView *)self dataMode]];

  return v7;
}

- (BOOL)_wantsStatusBarHidden
{
  v2 = [(NTKTroutFaceView *)self alaskanContentController];
  v3 = [v2 wantsStatusBarHidden];

  return v3;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  if (([(NTKTroutFaceView *)self editing:a3]& 1) == 0)
  {
    v7 = [(NTKTroutFaceView *)self alaskanContentView];
    v8 = [v7 delegate];
    [v8 alaskanDiverStyleViewDidCancelPreCountUpWithCompletionBlock:0 animated:1];
  }

  if (a4 == 10)
  {
    v12 = [(NTKTroutFaceView *)self palette];
    v9 = [(NTKTroutFaceView *)self alaskanContentView];
    [v9 setPalette:v12];

    [(NTKTroutFaceView *)self updateComplicationsColorWithPalette:v12];
    v10 = [(NTKTroutFaceView *)self colorForDateComplicationPalette:v12];
    v11 = [(NTKTroutFaceView *)self dateComplicationView];
    [v11 setForegroundColor:v10];
  }
}

- (id)colorForDateComplicationPalette:(id)a3
{
  v4 = a3;
  v5 = [(NTKTroutFaceView *)self storage];
  v6 = [v5 diverCountUpStartDate];
  if (v6)
  {
    v7 = v6;
    v8 = [(NTKTroutFaceView *)self alaskanContentView];
    v9 = [v8 isEditing];

    if ((v9 & 1) == 0)
    {
      v10 = [v4 activeStateDateComplication];
      goto LABEL_6;
    }
  }

  else
  {
  }

  v10 = [v4 dateComplication];
LABEL_6:
  v11 = v10;

  return v11;
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  if (a6 == 10)
  {
    v12 = [(NTKTroutFaceView *)self interpolatedColorPalette:a4];
    v9 = [(NTKTroutFaceView *)self alaskanContentView];
    [v9 setPalette:v12];

    [(NTKTroutFaceView *)self updateTimeViewColor];
    [(NTKTroutFaceView *)self updateComplicationsColorWithPalette:v12];
    v10 = [(NTKTroutFaceView *)self colorForDateComplicationPalette:v12];
    v11 = [(NTKTroutFaceView *)self dateComplicationView];
    [v11 setForegroundColor:v10];
  }
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v15.receiver = self;
  v15.super_class = NTKTroutFaceView;
  v8 = a5;
  v9 = [(NTKTroutFaceView *)&v15 _newLegacyViewForComplication:a3 family:a4 slot:v8];
  LODWORD(a3) = [v8 isEqualToString:{NTKComplicationSlotDate, v15.receiver, v15.super_class}];

  if (a3)
  {
    v10 = v9;
    v11 = [(NTKTroutFaceView *)self alaskanContentView];
    v12 = [v11 palette];
    v13 = [(NTKTroutFaceView *)self colorForDateComplicationPalette:v12];
    [v10 setForegroundColor:v13];
  }

  return v9;
}

- (void)_configureForTransitionFraction:(double)a3 fromEditMode:(int64_t)a4 toEditMode:(int64_t)a5
{
  v17.receiver = self;
  v17.super_class = NTKTroutFaceView;
  [NTKTroutFaceView _configureForTransitionFraction:"_configureForTransitionFraction:fromEditMode:toEditMode:" fromEditMode:? toEditMode:?];
  [(NTKTroutFaceView *)self _contentAlphaForEditMode:a4];
  [(NTKTroutFaceView *)self _contentAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v9 = v8;
  v10 = [(NTKTroutFaceView *)self alaskanContentView];
  [v10 setAlpha:v9];

  [(NTKTroutFaceView *)self _complicationAlphaForEditMode:a4];
  [(NTKTroutFaceView *)self _complicationAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v12 = v11;
  v13 = [(NTKTroutFaceView *)self complicationContainerView];
  [v13 setAlpha:v12];

  [(NTKTroutFaceView *)self _timeViewAlphaForEditMode:a4];
  [(NTKTroutFaceView *)self _timeViewAlphaForEditMode:a5];
  CLKInterpolateBetweenFloatsClipped();
  v15 = v14;
  v16 = [(NTKTroutFaceView *)self timeView];
  [v16 setAlpha:v15];
}

- (void)_configureForEditMode:(int64_t)a3
{
  v14.receiver = self;
  v14.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v14 _configureForEditMode:?];
  [(NTKTroutFaceView *)self _contentAlphaForEditMode:a3];
  v6 = v5;
  v7 = [(NTKTroutFaceView *)self alaskanContentView];
  [v7 setAlpha:v6];

  [(NTKTroutFaceView *)self _complicationAlphaForEditMode:a3];
  v9 = v8;
  v10 = [(NTKTroutFaceView *)self complicationContainerView];
  [v10 setAlpha:v9];

  [(NTKTroutFaceView *)self _timeViewAlphaForEditMode:a3];
  v12 = v11;
  v13 = [(NTKTroutFaceView *)self timeView];
  [v13 setAlpha:v12];
}

- (void)createView
{
  if ([(NTKTroutFaceView *)self viewsLoaded])
  {
    v3 = [(NTKTroutFaceView *)self alaskanContentView];
    [v3 removeFromSuperview];

    v4 = [NTKAlaskanDiverStyleView alloc];
    [(NTKTroutFaceView *)self contentViewFrame];
    v5 = [(NTKAlaskanDiverStyleView *)v4 initWithFrame:?];
    [(NTKTroutFaceView *)self setAlaskanContentView:v5];

    v6 = [(NTKTroutFaceView *)self createController];
    [(NTKTroutFaceView *)self setAlaskanContentController:v6];

    v7 = [(NTKTroutFaceView *)self contentView];
    v8 = [(NTKTroutFaceView *)self alaskanContentView];
    [v7 addSubview:v8];

    if (([(NTKTroutFaceView *)self editing]& 1) == 0)
    {
      v9 = [(NTKTroutFaceView *)self delegate];
      v10 = [(NTKTroutFaceView *)self alaskanContentController];
      [v9 faceViewWantsStatusBarHidden:objc_msgSend(v10 animated:{"wantsStatusBarHidden"), 0}];
    }

    v11 = [(NTKTroutFaceView *)self alaskanContentView];
    v12 = [(NTKTroutFaceView *)self palette];
    [v11 setPalette:v12];
  }

  v13 = [(NTKTroutFaceView *)self alaskanContentView];
  v14 = [v13 palette];
  [(NTKTroutFaceView *)self updateComplicationsColorWithPalette:v14];

  [(NTKTroutFaceView *)self updateTimeViewColor];
  v15 = [(NTKTroutFaceView *)self alaskanContentController];
  [v15 applyVisibilityWithFraction:1.0];
}

- (void)updateTimeViewColor
{
  v3 = [(NTKTroutFaceView *)self palette];
  v4 = [(NTKTroutFaceView *)self timeView];
  v5 = [(NTKAlaskanDiverStyleView *)self->_alaskanContentView currentMode];
  switch(v5)
  {
    case 2uLL:
      v14 = [v3 countUpClockHands];
      v15 = [v4 hourHandView];
      [v15 setInlayColor:v14];

      v16 = [v3 countUpClockHands];
      v17 = [v4 minuteHandView];
      [v17 setInlayColor:v16];

      CGAffineTransformMakeScale(&v31, 0.9, 0.9);
      v30 = v31;
      [v4 setTransform:&v30];
      [(NTKTroutFaceView *)self setCurrentTimeViewScale:0.9];
      v12 = [v4 secondHandView];
      [v12 setAlpha:0.0];
      goto LABEL_7;
    case 1uLL:
      v10 = [v3 preCountUpClockHands];
      v11 = [v4 hourHandView];
      [v11 setInlayColor:v10];

      v12 = [v3 preCountUpClockHands];
      v13 = [v4 minuteHandView];
      [v13 setInlayColor:v12];

LABEL_7:
      break;
    case 0uLL:
      v6 = [v3 clockHandsInlay];
      v7 = [v4 hourHandView];
      [v7 setInlayColor:v6];

      v8 = [v3 clockHandsInlay];
      v9 = [v4 minuteHandView];
      [v9 setInlayColor:v8];

      [(NTKTroutFaceView *)self setCurrentTimeViewScale:1.0];
      break;
  }

  v18 = [v3 clockHands];
  v19 = [v4 hourHandView];
  [v19 setColor:v18];

  v20 = [v3 clockHands];
  v21 = [v4 minuteHandView];
  [v21 setColor:v20];

  v22 = [v3 secondHand];
  v23 = [v4 secondHandView];
  [v23 setColor:v22];

  v24 = +[UIColor blackColor];
  v25 = [v4 hourHandView];
  [v25 setHandDotColor:v24];

  v26 = +[UIColor blackColor];
  v27 = [v4 minuteHandView];
  [v27 setHandDotColor:v26];

  v28 = +[UIColor blackColor];
  v29 = [v4 secondHandView];
  [v29 setHandDotColor:v28];
}

- (void)updateComplicationsColorWithPalette:(id)a3
{
  v4 = [a3 cornerComplication];
  [(NTKTroutFaceView *)self updateRichCornerComplicationsInnerColor:v4 outerColor:0];
}

- (id)dateComplicationView
{
  v2 = [(NTKTroutFaceView *)self normalComplicationDisplayWrapperForSlot:NTKComplicationSlotDate];
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

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19.receiver = self;
  v19.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v19 _configureComplicationView:v6 forSlot:v7];
  if (([(NTKTroutFaceView *)self editing]& 1) == 0)
  {
    v8 = [(NTKTroutFaceView *)self alaskanContentView];
    v9 = [v8 delegate];
    [v9 alaskanDiverStyleViewDidCancelPreCountUpWithCompletionBlock:0 animated:1];
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

  if ([v10 containsObject:v7])
  {
    v14 = v6;
    v15 = [(NTKTroutFaceView *)self palette];
    v16 = [v15 cornerComplication];
    [(NTKTroutFaceView *)self setComplicationColor:v16];

    v17 = [v15 cornerComplication];
    [(NTKTroutFaceView *)self setInterpolatedComplicationColor:v17];

    v18 = [v15 cornerComplicationSecondary];
    [(NTKTroutFaceView *)self setAlternateComplicationColor:v18];

    [v14 updateMonochromeColor];
  }
}

- (id)utilityDateComplicationFontForDateStyle:(unint64_t)a3
{
  v7 = 0.0;
  v3 = [(NTKTroutFaceView *)self device:a3];
  sub_BA8C(v3, &v6);

  v4 = v7;

  return [CLKFont compactSoftFontOfSize:v4 weight:UIFontWeightSemibold];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v15.receiver = self;
  v15.super_class = NTKTroutFaceView;
  [(NTKTroutFaceView *)&v15 _applyBreathingFraction:a4 forCustomEditMode:a5 slot:?];
  if (a4)
  {
    NTKScaleForBreathingFraction();
    v8 = v7;
    memset(&v14, 0, sizeof(v14));
    CGAffineTransformMakeScale(&v14, v7, v7);
    memset(&v13, 0, sizeof(v13));
    CGAffineTransformMakeScale(&v13, v8 * self->_currentTimeViewScale, v8 * self->_currentTimeViewScale);
    v9 = [(NTKTroutFaceView *)self contentView];
    v12 = v14;
    [v9 setTransform:&v12];

    v10 = [(NTKTroutFaceView *)self timeView];
    v12 = v13;
    [v10 setTransform:&v12];

    v11 = [(NTKTroutFaceView *)self complicationContainerView];
    v12 = v14;
    [v11 setTransform:&v12];
  }
}

@end