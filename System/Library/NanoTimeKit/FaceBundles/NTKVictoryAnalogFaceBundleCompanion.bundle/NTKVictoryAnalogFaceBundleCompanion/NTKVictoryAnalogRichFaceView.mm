@interface NTKVictoryAnalogRichFaceView
- (CGPoint)_contentCenterOffset;
- (NTKVictoryAnalogRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier;
- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot;
- (unint64_t)_layoutStyleForSlot:(id)slot;
- (void)_applyColor:(id)color alternateColor:(id)alternateColor toComplicationView:(id)view;
- (void)_configureComplicationView:(id)view forSlot:(id)slot;
- (void)_loadSnapshotContentViews;
@end

@implementation NTKVictoryAnalogRichFaceView

- (NTKVictoryAnalogRichFaceView)initWithFaceStyle:(int64_t)style forDevice:(id)device clientIdentifier:(id)identifier
{
  deviceCopy = device;
  v17.receiver = self;
  v17.super_class = NTKVictoryAnalogRichFaceView;
  v9 = [(NTKVictoryAnalogFaceView *)&v17 initWithFaceStyle:style forDevice:deviceCopy clientIdentifier:identifier];
  v10 = v9;
  if (v9)
  {
    complicationFactory = [(NTKVictoryAnalogRichFaceView *)v9 complicationFactory];
    [complicationFactory setGraphicCornerComplications:1];
    sub_5CB0(deviceCopy, v13);
    [complicationFactory setScreenEdgeInsets:{v14, v15, 0.0, v16}];
  }

  return v10;
}

- (void)_loadSnapshotContentViews
{
  v6.receiver = self;
  v6.super_class = NTKVictoryAnalogRichFaceView;
  [(NTKVictoryAnalogFaceView *)&v6 _loadSnapshotContentViews];
  memset(&v5, 0, sizeof(v5));
  CGAffineTransformMakeScale(&v5, 0.93, 0.93);
  scaleView = [(NTKVictoryAnalogFaceView *)self scaleView];
  v4 = v5;
  [scaleView setTransform:&v4];
}

- (void)_applyColor:(id)color alternateColor:(id)alternateColor toComplicationView:(id)view
{
  colorCopy = color;
  alternateColorCopy = alternateColor;
  viewCopy = view;
  v12.receiver = self;
  v12.super_class = NTKVictoryAnalogRichFaceView;
  [(NTKVictoryAnalogFaceView *)&v12 _applyColor:colorCopy alternateColor:alternateColorCopy toComplicationView:viewCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = viewCopy;
    [(NTKVictoryAnalogRichFaceView *)self setComplicationColor:colorCopy];
    [(NTKVictoryAnalogRichFaceView *)self setAlternateComplicationColor:alternateColorCopy];
    [(NTKVictoryAnalogRichFaceView *)self setInterpolatedComplicationColor:colorCopy];
    [v11 updateMonochromeColor];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)type slot:(id)slot
{
  if (NTKComplicationSlotBottomCenter != slot)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKVictoryAnalogRichFaceView;
  return [(NTKVictoryAnalogFaceView *)&v7 _legacyLayoutOverrideforComplicationType:type slot:?];
}

- (CGPoint)_contentCenterOffset
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)_newLegacyViewForComplication:(id)complication family:(int64_t)family slot:(id)slot
{
  if (NTKComplicationSlotBottomCenter == slot)
  {
    v15.receiver = self;
    v15.super_class = NTKVictoryAnalogRichFaceView;
    slotCopy = slot;
    complicationCopy = complication;
    v11 = [(NTKVictoryAnalogFaceView *)&v15 _newLegacyViewForComplication:complicationCopy family:family slot:slotCopy];
  }

  else
  {
    slotCopy2 = slot;
    complicationCopy2 = complication;
    complicationFactory = [(NTKVictoryAnalogRichFaceView *)self complicationFactory];
    v11 = [complicationFactory newLegacyViewForComplication:complicationCopy2 family:family slot:slotCopy2];
  }

  return v11;
}

- (void)_configureComplicationView:(id)view forSlot:(id)slot
{
  viewCopy = view;
  v10.receiver = self;
  v10.super_class = NTKVictoryAnalogRichFaceView;
  [(NTKVictoryAnalogFaceView *)&v10 _configureComplicationView:viewCopy forSlot:slot];
  v7 = [(NTKVictoryAnalogRichFaceView *)self optionForCustomEditMode:10 slot:0];
  pigmentEditOption = [v7 pigmentEditOption];

  if (pigmentEditOption)
  {
    if ([viewCopy conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
    {
      v9 = viewCopy;
      [v9 setUseRoundedFontDesign:1];
      [v9 setFontWeight:UIFontWeightMedium];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [viewCopy transitionToMonochromeWithFraction:1.0];
    }
  }
}

- (unint64_t)_layoutStyleForSlot:(id)slot
{
  slotCopy = slot;
  if ([slotCopy isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKVictoryAnalogRichFaceView;
    v5 = [(NTKVictoryAnalogRichFaceView *)&v7 _layoutStyleForSlot:slotCopy];
  }

  return v5;
}

@end