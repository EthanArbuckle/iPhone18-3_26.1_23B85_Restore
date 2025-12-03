@interface NTKDigitalModularFaceView
+ (void)_performIfNonRichModuleView:(id)view actions:(id)actions;
- (double)_keylineCornerRadiusForComplicationSlot:(id)slot;
- (double)_minimumBreathingScaleForComplicationSlot:(id)slot;
- (id)_complicationSlotsForRow:(unint64_t)row;
- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds;
- (id)_moduleViewForComplicationSlot:(id)slot;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (int64_t)_keylineStyleForComplicationSlot:(id)slot;
- (int64_t)complicationFamilyForSlot:(id)slot;
- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyFaceColorPalette:(id)palette toModuleView:(id)view;
- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_enumerateModuleViewsWithBlock:(id)block;
- (void)_loadLayoutRules;
- (void)_loadLayoutRulesForState:(int64_t)state withTopGap:(double)gap largeModuleHeight:(double)height;
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
    foregroundContainerView = [(NTKDigitalModularFaceView *)self foregroundContainerView];
    layer = [foregroundContainerView layer];
    [layer setAnchorPoint:{v8, v10}];

    foregroundContainerView2 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
    [foregroundContainerView2 ntk_setBoundsAndPositionFromFrame:{x, y, width, height}];
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

- (id)_digitalTimeLabelStyleFromViewMode:(int64_t)mode faceBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v9 = [(NTKDigitalModularFaceView *)self device:mode];
  _NTKDigitalModularLayoutConstants();

  v10 = [CLKFont systemFontOfSize:0.0 weight:UIFontWeightLight];
  device = [(NTKDigitalModularFaceView *)self device];
  v12 = [NTKDigitalTimeLabelStyle defaultStyleForBounds:0 withRightSideMargin:v10 applyAdvanceFudge:device withBaselineY:x withFont:y forDevice:width, height, 0.0, 0.0];

  return v12;
}

- (void)_loadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKDigitalModularFaceView;
  [(NTKDigitalModularFaceView *)&v6 _loadSnapshotContentViews];
  timeView = [(NTKDigitalModularFaceView *)self timeView];
  v4 = +[UIColor whiteColor];
  [timeView setOverrideColor:v4];

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

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  v7 = NTKComplicationSlotCenter;
  slotCopy = slot;
  complicationCopy = complication;
  v10 = [slotCopy isEqual:v7];
  complicationType = [complicationCopy complicationType];

  if (v10)
  {
    [NTKComplicationModuleView largeModuleViewForComplicationType:complicationType];
  }

  else
  {
    [NTKComplicationModuleView smallModuleViewForComplicationType:complicationType];
  }
  v12 = ;
  [(NTKDigitalModularFaceView *)self _configureComplicationView:v12 forSlot:slotCopy];

  return v12;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  slotCopy = slot;
  v8 = objc_opt_class();
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1FE8;
  v11[3] = &unk_82B0;
  v12 = slotCopy;
  v13 = viewCopy;
  selfCopy = self;
  v9 = viewCopy;
  v10 = slotCopy;
  [v8 _performIfNonRichModuleView:v9 actions:v11];
}

- (void)_loadLayoutRules
{
  device = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  device2 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  [(NTKDigitalModularFaceView *)self _loadLayoutRulesForState:0 withTopGap:v10 largeModuleHeight:v9];

  device3 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  device4 = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();
  [(NTKDigitalModularFaceView *)self _loadLayoutRulesForState:1 withTopGap:v8 largeModuleHeight:v7];
}

- (void)_loadLayoutRulesForState:(int64_t)state withTopGap:(double)gap largeModuleHeight:(double)height
{
  [(NTKDigitalModularFaceView *)self bounds];
  v32 = v8;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  device = [(NTKDigitalModularFaceView *)self device];
  _NTKDigitalModularLayoutConstants();

  device2 = [(NTKDigitalModularFaceView *)self device];
  right = [NTKComplicationLayoutRule layoutRuleForDevice:device2 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:gap, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v15 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotTopLeft];
  [v15 setDefaultLayoutRule:right forState:state];

  v34.origin.x = 0.0;
  v34.origin.y = gap;
  v34.size.width = 0.0;
  v34.size.height = 0.0;
  v16 = CGRectGetMaxY(v34) + 0.0;
  device3 = [(NTKDigitalModularFaceView *)self device];
  right2 = [NTKComplicationLayoutRule layoutRuleForDevice:device3 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:v16, v32 + 0.0 * -2.0, height, UIEdgeInsetsZero.top, left, bottom, right];

  v19 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotCenter];
  [v19 setDefaultLayoutRule:right2 forState:state];

  v35.origin.x = 0.0;
  v35.origin.y = v16;
  v35.size.width = v32 + 0.0 * -2.0;
  v35.size.height = height;
  v20 = CGRectGetMaxY(v35) + 0.0;
  device4 = [(NTKDigitalModularFaceView *)self device];
  right3 = [NTKComplicationLayoutRule layoutRuleForDevice:device4 withReferenceFrame:3 horizontalLayout:3 verticalLayout:0.0 keylinePadding:v20, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v23 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomLeft];
  [v23 setDefaultLayoutRule:right3 forState:state];

  v36.origin.x = 0.0;
  v36.origin.y = v20;
  v36.size.width = 0.0;
  v36.size.height = 0.0;
  v24 = CGRectGetMaxX(v36) + 0.0;
  device5 = [(NTKDigitalModularFaceView *)self device];
  right4 = [NTKComplicationLayoutRule layoutRuleForDevice:device5 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v24 keylinePadding:v20, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v27 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomCenter];
  [v27 setDefaultLayoutRule:right4 forState:state];

  v37.origin.x = v24;
  v37.origin.y = v20;
  v37.size.width = 0.0;
  v37.size.height = 0.0;
  v28 = CGRectGetMaxX(v37) + 0.0;
  device6 = [(NTKDigitalModularFaceView *)self device];
  right5 = [NTKComplicationLayoutRule layoutRuleForDevice:device6 withReferenceFrame:3 horizontalLayout:3 verticalLayout:v28 keylinePadding:v20, 0.0, 0.0, UIEdgeInsetsZero.top, left, bottom, right];

  v31 = [(NTKDigitalModularFaceView *)self complicationLayoutforSlot:NTKComplicationSlotBottomRight];
  [v31 setDefaultLayoutRule:right5 forState:state];
}

- (int64_t)_keylineStyleForComplicationSlot:(id)slot
{
  slotCopy = slot;
  device = [(NTKDigitalModularFaceView *)self device];
  if ([device deviceCategory] == &dword_0 + 1)
  {
  }

  else
  {
    v6 = [slotCopy isEqualToString:NTKComplicationSlotCenter];

    if ((v6 & 1) == 0)
    {
      v7 = &dword_0 + 1;
      goto LABEL_6;
    }
  }

  v9.receiver = self;
  v9.super_class = NTKDigitalModularFaceView;
  v7 = [(NTKDigitalModularFaceView *)&v9 _keylineStyleForComplicationSlot:slotCopy];
LABEL_6:

  return v7;
}

- (void)_applyOption:(id)option forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_26FC;
  v9[3] = &unk_82D8;
  v9[4] = self;
  [(NTKDigitalModularFaceView *)self _enumerateModuleViewsWithBlock:v9, mode, slot];
  timeView = [(NTKDigitalModularFaceView *)self timeView];
  faceColorPalette = [(NTKDigitalModularFaceView *)self faceColorPalette];
  device = [(NTKDigitalModularFaceView *)self device];
  [timeView applyFaceColorPalette:faceColorPalette device:device];
}

- (void)_applyTransitionFraction:(double)fraction fromOption:(id)option toOption:(id)toOption forCustomEditMode:(int64_t)mode slot:(id)slot
{
  v9 = [(NTKDigitalModularFaceView *)self interpolatedColorPalette:option];
  fromPalette = [v9 fromPalette];

  interpolatedColorPalette = [(NTKDigitalModularFaceView *)self interpolatedColorPalette];
  toPalette = [interpolatedColorPalette toPalette];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_28C0;
  v19[3] = &unk_8300;
  fractionCopy = fraction;
  v20 = fromPalette;
  v21 = toPalette;
  v13 = toPalette;
  v14 = fromPalette;
  [(NTKDigitalModularFaceView *)self _enumerateModuleViewsWithBlock:v19];
  timeView = [(NTKDigitalModularFaceView *)self timeView];
  CLKCompressFraction();
  *&fraction = v16;
  device = [(NTKDigitalModularFaceView *)self device];
  LODWORD(v18) = LODWORD(fraction);
  [timeView applyFaceFromColorPalette:v14 toColorPalette:v13 fraction:device device:v18];
}

- (void)_applyBreathingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKLargeElementScaleForBreathingFraction();
  v7 = v6;
  foregroundContainerView = [(NTKDigitalModularFaceView *)self foregroundContainerView];
  CGAffineTransformMakeScale(&v9, v7, v7);
  [foregroundContainerView setTransform:&v9];
}

- (void)_applyRubberBandingFraction:(double)fraction forCustomEditMode:(int64_t)mode slot:(id)slot
{
  NTKScaleForRubberBandingFraction();
  v7 = v6;
  NTKAlphaForRubberBandingFraction();
  v9 = v8;
  foregroundContainerView = [(NTKDigitalModularFaceView *)self foregroundContainerView];
  CGAffineTransformMakeScale(&v12, v7, v7);
  [foregroundContainerView setTransform:&v12];

  foregroundContainerView2 = [(NTKDigitalModularFaceView *)self foregroundContainerView];
  [foregroundContainerView2 setAlpha:v9];
}

- (int64_t)complicationFamilyForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotTopLeft] & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomLeft) & 1) != 0 || (objc_msgSend(slotCopy, "isEqualToString:", NTKComplicationSlotBottomCenter))
  {
    v4 = 0;
  }

  else
  {
    v4 = [slotCopy isEqualToString:NTKComplicationSlotBottomRight] ^ 1;
  }

  return v4;
}

- (double)_keylineCornerRadiusForComplicationSlot:(id)slot
{
  v4 = [(NTKDigitalModularFaceView *)self complicationFamilyForSlot:slot];
  device = [(NTKDigitalModularFaceView *)self device];
  [NTKModuleView cornerRadiusForComplicationFamily:v4 forDevice:device];
  v7 = v6;

  return v7;
}

- (double)_minimumBreathingScaleForComplicationSlot:(id)slot
{
  v3 = [slot isEqual:NTKComplicationSlotCenter];
  v4 = &NTKLargeElementMinimumBreathingScale;
  if (!v3)
  {
    v4 = &NTKSmallElementMinimumBreathingScale;
  }

  return *v4;
}

- (id)_complicationSlotsForRow:(unint64_t)row
{
  switch(row)
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

- (id)_moduleViewForComplicationSlot:(id)slot
{
  v3 = [(NTKDigitalModularFaceView *)self normalComplicationDisplayWrapperForSlot:slot];
  display = [v3 display];

  return display;
}

- (void)_enumerateModuleViewsWithBlock:(id)block
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_2E64;
  v5[3] = &unk_8350;
  v5[4] = self;
  blockCopy = block;
  v3 = blockCopy;
  v4 = objc_retainBlock(v5);
  (v4[2])(v4, 0);
  (v4[2])(v4, 1);
  (v4[2])(v4, 2);
}

- (void)_applyFaceColorPalette:(id)palette toModuleView:(id)view
{
  paletteCopy = palette;
  viewCopy = view;
  v7 = objc_opt_class();
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_3104;
  v10[3] = &unk_8378;
  v11 = viewCopy;
  v12 = paletteCopy;
  v8 = paletteCopy;
  v9 = viewCopy;
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

+ (void)_performIfNonRichModuleView:(id)view actions:(id)actions
{
  actionsCopy = actions;
  viewCopy = view;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    actionsCopy[2]();
  }
}

@end