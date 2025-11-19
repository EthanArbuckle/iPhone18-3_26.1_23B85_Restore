@interface NTKVictoryAnalogRichFaceView
- (CGPoint)_contentCenterOffset;
- (NTKVictoryAnalogRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4;
- (unint64_t)_layoutStyleForSlot:(id)a3;
- (void)_applyColor:(id)a3 alternateColor:(id)a4 toComplicationView:(id)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_loadSnapshotContentViews;
@end

@implementation NTKVictoryAnalogRichFaceView

- (NTKVictoryAnalogRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v17.receiver = self;
  v17.super_class = NTKVictoryAnalogRichFaceView;
  v9 = [(NTKVictoryAnalogFaceView *)&v17 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  v10 = v9;
  if (v9)
  {
    v11 = [(NTKVictoryAnalogRichFaceView *)v9 complicationFactory];
    [v11 setGraphicCornerComplications:1];
    sub_5CB0(v8, v13);
    [v11 setScreenEdgeInsets:{v14, v15, 0.0, v16}];
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
  v3 = [(NTKVictoryAnalogFaceView *)self scaleView];
  v4 = v5;
  [v3 setTransform:&v4];
}

- (void)_applyColor:(id)a3 alternateColor:(id)a4 toComplicationView:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v12.receiver = self;
  v12.super_class = NTKVictoryAnalogRichFaceView;
  [(NTKVictoryAnalogFaceView *)&v12 _applyColor:v8 alternateColor:v9 toComplicationView:v10];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
    [(NTKVictoryAnalogRichFaceView *)self setComplicationColor:v8];
    [(NTKVictoryAnalogRichFaceView *)self setAlternateComplicationColor:v9];
    [(NTKVictoryAnalogRichFaceView *)self setInterpolatedComplicationColor:v8];
    [v11 updateMonochromeColor];
  }
}

- (int64_t)_legacyLayoutOverrideforComplicationType:(unint64_t)a3 slot:(id)a4
{
  if (NTKComplicationSlotBottomCenter != a4)
  {
    return 0;
  }

  v8 = v4;
  v9 = v5;
  v7.receiver = self;
  v7.super_class = NTKVictoryAnalogRichFaceView;
  return [(NTKVictoryAnalogFaceView *)&v7 _legacyLayoutOverrideforComplicationType:a3 slot:?];
}

- (CGPoint)_contentCenterOffset
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  if (NTKComplicationSlotBottomCenter == a5)
  {
    v15.receiver = self;
    v15.super_class = NTKVictoryAnalogRichFaceView;
    v12 = a5;
    v13 = a3;
    v11 = [(NTKVictoryAnalogFaceView *)&v15 _newLegacyViewForComplication:v13 family:a4 slot:v12];
  }

  else
  {
    v8 = a5;
    v9 = a3;
    v10 = [(NTKVictoryAnalogRichFaceView *)self complicationFactory];
    v11 = [v10 newLegacyViewForComplication:v9 family:a4 slot:v8];
  }

  return v11;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = NTKVictoryAnalogRichFaceView;
  [(NTKVictoryAnalogFaceView *)&v10 _configureComplicationView:v6 forSlot:a4];
  v7 = [(NTKVictoryAnalogRichFaceView *)self optionForCustomEditMode:10 slot:0];
  v8 = [v7 pigmentEditOption];

  if (v8)
  {
    if ([v6 conformsToProtocol:&OBJC_PROTOCOL___NTKUtilityComplicationView])
    {
      v9 = v6;
      [v9 setUseRoundedFontDesign:1];
      [v9 setFontWeight:UIFontWeightMedium];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v6 transitionToMonochromeWithFraction:1.0];
    }
  }
}

- (unint64_t)_layoutStyleForSlot:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:NTKComplicationSlotBottomCenter])
  {
    v5 = &dword_0 + 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = NTKVictoryAnalogRichFaceView;
    v5 = [(NTKVictoryAnalogRichFaceView *)&v7 _layoutStyleForSlot:v4];
  }

  return v5;
}

@end