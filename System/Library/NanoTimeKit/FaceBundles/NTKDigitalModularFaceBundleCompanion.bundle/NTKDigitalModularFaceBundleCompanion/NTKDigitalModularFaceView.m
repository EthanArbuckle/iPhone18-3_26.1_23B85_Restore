@interface NTKDigitalModularFaceView
+ (void)_performIfNonRichModuleView:(id)a3 actions:(id)a4;
- (double)_keylineCornerRadiusForComplicationSlot:(id)a3;
- (double)_minimumBreathingScaleForComplicationSlot:(id)a3;
- (id)_complicationSlotsForRow:(unint64_t)a3;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4;
- (id)_moduleViewForComplicationSlot:(id)a3;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (int64_t)_keylineStyleForComplicationSlot:(id)a3;
- (int64_t)complicationFamilyForSlot:(id)a3;
- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyFaceColorPalette:(id)a3 toModuleView:(id)a4;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_enumerateModuleViewsWithBlock:(id)a3;
- (void)_loadLayoutRules;
- (void)_loadLayoutRulesForState:(int64_t)a3 withTopGap:(double)a4 largeModuleHeight:(double)a5;
- (void)_loadSnapshotContentViews;
- (void)_unloadSnapshotContentViews;
- (void)_updateLocale;
- (void)dealloc;
- (void)layoutSubviews;
- (void)performTapAction;
@end

@implementation NTKDigitalModularFaceView

- (void)layoutSubviews
{
  v14.receiver = self;
  v14.super_class = NTKDigitalModularFaceView;
  [(NTKDigitalModularFaceView *)&v14 layoutSubviews];
  [(NTKDigitalModularFaceView *)self bounds];
  x = v15.origin.x;
  y = v15.origin.y;
  width = v15.size.width;
  height = v15.size.height;
  if (!CGRectIsEmpty(v15))
  {
    [(NTKDigitalModularFaceView *)self _relativeKeylineFrameForCustomEditMode:10 slot:0];
    CLKRectGetCenter();
    v8 = v7 / width;
    v10 = v9 / height;
    v11 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
    v12 = [v11 layer];
    [v12 setAnchorPoint:{v8, v10}];

    v13 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
    [v13 ntk_setBoundsAndPositionFromFrame:{x, y, width, height}];
  }
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];

  v4.receiver = self;
  v4.super_class = NTKDigitalModularFaceView;
  [(NTKDigitalModularFaceView *)&v4 dealloc];
}

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)a3 faceBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = [(NTKDigitalModularFaceView *)self device:a3];
  _NTKDigitalModularLayoutConstants();

  v10 = [CLKFont systemFontOfSize:0.0 weight:UIFontWeightLight];
  v11 = [(NTKDigitalModularFaceView *)self device];
  v12 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v10 applyAdvanceFudge:v11 withBaselineY:x withFont:y forDevice:width, height, 0.0, 0.0];

  return v12;
}

- (void)_loadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKDigitalModularFaceView;
  [(NTKDigitalModularFaceView *)&v6 _loadSnapshotContentViews];
  v3 = [(NTKDigitalModularFaceView *)self timeView];
  v4 = +[UIColor whiteColor];
  [v3 setOverrideColor:v4];

  [(NTKDigitalModularFaceView *)self _updateLocale];
  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_updateLocale" name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)_unloadSnapshotContentViews
{
  v4.receiver = self;
  v4.super_class = NTKDigitalModularFaceView;
  [(NTKDigitalModularFaceView *)&v4 _unloadSnapshotContentViews];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:NSCurrentLocaleDidChangeNotification object:0];
}

- (void)performTapAction
{
  if ([(NTKDigitalModularFaceView *)self timeScrubbing])
  {

    [(NTKDigitalModularFaceView *)self endScrubbingAnimated:1];
  }
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v7 = NTKComplicationSlotCenter;
  v8 = a5;
  v9 = a3;
  v10 = [v8 isEqual:v7];
  v11 = [v9 complicationType];

  if (v10)
  {
    [NTKComplicationModuleView largeModuleViewForComplicationType:v11];
  }

  else
  {
    [NTKComplicationModuleView smallModuleViewForComplicationType:v11];
  }
  v12 = ;
  [(NTKDigitalModularFaceView *)self _configureComplicationView:v12 forSlot:v8];

  return v12;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_class();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1FE8;
  v11[3] = &unk_82B0;
  v12 = v7;
  v13 = v6;
  v14 = self;
  v9 = v6;
  v10 = v7;
  [v8 _performIfNonRichModuleView:v9 actions:v11];
}

- (void)_loadLayoutRules
{
  v3 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  v4 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  [(NTKDigitalModularFaceView *)self _loadLayoutRulesForState:0 withTopGap:v10 largeModuleHeight:v9];

  v5 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  v6 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  [(NTKDigitalModularFaceView *)self _loadLayoutRulesForState:1 withTopGap:v8 largeModuleHeight:v7];
}

- (void)_loadLayoutRulesForState:(int64_t)a3 withTopGap:(double)a4 largeModuleHeight:(double)a5
{
  [(NTKDigitalModularFaceView *)self bounds];
  v32 = v8;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  v12 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();

  v13 = [(NTKDigitalModularFaceView *)self device];
  v14 = [NTKComplicationLayoutRule layoutRuleForDevice:v13 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:a4, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v15 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v15 setDefaultLayoutRule:v14 forState:a3];

  v34.origin.x = 0.0;
  v34.origin.y = a4;
  v34.size.width = 0.0;
  v34.size.height = 0.0;
  v16 = CGRectGetMaxY(v34) + 0.0;
  v17 = [(NTKDigitalModularFaceView *)self device];
  v18 = [NTKComplicationLayoutRule layoutRuleForDevice:v17 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:v16, v32 + 0.0 * -2.0, a5, UIEdgeInsetsZero.top, left, bottom, right];

  v19 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v19 setDefaultLayoutRule:v18 forState:a3];

  v35.origin.x = 0.0;
  v35.origin.y = v16;
  v35.size.width = v32 + 0.0 * -2.0;
  v35.size.height = a5;
  v20 = CGRectGetMaxY(v35) + 0.0;
  v21 = [(NTKDigitalModularFaceView *)self device];
  v22 = [NTKComplicationLayoutRule layoutRuleForDevice:v21 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:v20, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v23 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomLeft];
  [v23 setDefaultLayoutRule:v22 forState:a3];

  v36.origin.x = 0.0;
  v36.origin.y = v20;
  v36.size.width = 0.0;
  v36.size.height = 0.0;
  v24 = CGRectGetMaxX(v36) + 0.0;
  v25 = [(NTKDigitalModularFaceView *)self device];
  v26 = [NTKComplicationLayoutRule layoutRuleForDevice:v25 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v24 keylinePadding:v20, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v27 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomCenter];
  [v27 setDefaultLayoutRule:v26 forState:a3];

  v37.origin.x = v24;
  v37.origin.y = v20;
  v37.size.width = 0.0;
  v37.size.height = 0.0;
  v28 = CGRectGetMaxX(v37) + 0.0;
  v29 = [(NTKDigitalModularFaceView *)self device];
  v30 = [NTKComplicationLayoutRule layoutRuleForDevice:v29 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v28 keylinePadding:v20, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v31 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomRight];
  [v31 setDefaultLayoutRule:v30 forState:a3];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)a3
{
  v4 = a3;
  v5 = [(NTKDigitalModularFaceView *)self device];
  if ([v5 deviceCategory] == &dword_0 + 1)
  {
  }

  else
  {
    v6 = [v4 isEqualToString:NTKComplicationSlotCenter];

    if ((v6 & 1) == 0)
    {
      v7 = &dword_0 + 1;
      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = NTKDigitalModularFaceView;
  v7 = [(NTKDigitalModularFaceView *)&v9 _keylineStyleForComplicationSlot:v4];
LABEL_6:

  return v7;
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_26FC;
  v9[3] = &unk_82D8;
  v9[4] = self;
  [(NTKDigitalModularFaceView *)self _enumerateModuleViewsWithBlock:v9, a4, a5];
  v6 = [(NTKDigitalModularFaceView *)self timeView];
  v7 = [(NTKDigitalModularFaceView *)self faceColorPalette];
  v8 = [(NTKDigitalModularFaceView *)self device];
  [v6 applyFaceColorPalette:v7 device:v8];
}

- (void)_applyTransitionFraction:(double)a3 fromOption:(id)a4 toOption:(id)a5 forCustomEditMode:(int64_t)a6 slot:(id)a7
{
  v9 = [(NTKDigitalModularFaceView *)self interpolatedColorPalette:a4];
  v10 = [v9 fromPalette];

  v11 = [(NTKDigitalModularFaceView *)self interpolatedColorPalette];
  v12 = [v11 toPalette];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_28C0;
  v19[3] = &unk_8300;
  v22 = a3;
  v20 = v10;
  v21 = v12;
  v13 = v12;
  v14 = v10;
  [(NTKDigitalModularFaceView *)self _enumerateModuleViewsWithBlock:v19];
  v15 = [(NTKDigitalModularFaceView *)self timeView];
  CLKCompressFraction();
  *&a3 = v16;
  v17 = [(NTKDigitalModularFaceView *)self device];
  LODWORD(v18) = LODWORD(a3);
  [v15 applyFaceFromColorPalette:v14 toColorPalette:v13 fraction:v17 device:v18];
}

- (void)_applyBreathingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  v8 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [v8 setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  v10 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  [v10 setTransform:&v12];

  v11 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
  [v11 setAlpha:v9];
}

- (int64_t)complicationFamilyForSlot:(id)a3
{
  v3 = a3;
  if ([v3 isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", NTKComplicationSlotBottomLeft) & 1) != 0 || (objc_msgSend(v3, "isEqualToString:", NTKComplicationSlotBottomCenter))
  {
    v4 = 0;
  }

  else
  {
    v4 = [v3 isEqualToString:NTKComplicationSlotBottomRight] ^ 1;
  }

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)a3
{
  v4 = [(NTKDigitalModularFaceView *)self complicationFamilyForSlot:a3];
  v5 = [(NTKDigitalModularFaceView *)self device];
  [NTKModuleView cornerRadiusForComplicationFamily:v4 forDevice:v5];
  v7 = v6;

  return v7;
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)a3
{
  v3 = [a3 isEqual:NTKComplicationSlotCenter];
  v4 = &NTKLargeElementMinimumBreathingScale;
  if (!v3)
  {
    v4 = &NTKSmallElementMinimumBreathingScale;
  }

  return *v4;
}

- (id)_complicationSlotsForRow:(unint64_t)a3
{
  switch(a3)
  {
    case 2uLL:
      v7 = NTKComplicationSlotBottomLeft;
      v8 = NTKComplicationSlotBottomCenter;
      v9 = NTKComplicationSlotBottomRight;
      v3 = &v7;
      v4 = 3;
      goto LABEL_8;
    case 1uLL:
      v10 = NTKComplicationSlotCenter;
      v3 = &v10;
      goto LABEL_6;
    case 0uLL:
      v11 = NTKComplicationSlotTopLeft;
      v3 = &v11;
LABEL_6:
      v4 = 1;
LABEL_8:
      v5 = [NSArray arrayWithObjects:v3 count:v4, v7, v8, v9, v10, v11];
      goto LABEL_10;
  }

  v5 = 0;
LABEL_10:

  return v5;
}

- (id)_moduleViewForComplicationSlot:(id)a3
{
  v3 = [(NTKDigitalModularFaceView *)self normalComplicationDisplayWrapperForSlot:a3];
  v4 = [v3 display];

  return v4;
}

- (void)_enumerateModuleViewsWithBlock:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2E64;
  v5[3] = &unk_8350;
  v5[4] = self;
  v6 = a3;
  v3 = v6;
  v4 = objc_retainBlock(v5);
  (v4[2])(v4, 0);
  (v4[2])(v4, 1);
  (v4[2])(v4, 2);
}

- (void)_applyFaceColorPalette:(id)a3 toModuleView:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_class();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3104;
  v10[3] = &unk_8378;
  v11 = v6;
  v12 = v5;
  v8 = v5;
  v9 = v6;
  [v7 _performIfNonRichModuleView:v9 actions:v10];
}

- (void)_updateLocale
{
  v3 = +[NSLocale currentLocale];
  v4 = CLKLocaleIs24HourMode();
  if (self->_is24HourMode != v4)
  {
    self->_is24HourMode = v4;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_31D0;
    block[3] = &unk_83A0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }

  [(NTKDigitalModularFaceView *)self _handleLocaleDidChange];
}

+ (void)_performIfNonRichModuleView:(id)a3 actions:(id)a4
{
  v7 = a4;
  v5 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v7[2]();
  }
}

@end