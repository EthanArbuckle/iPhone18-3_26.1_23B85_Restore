@interface NTKColorAnalogRichFaceView
- (NTKColorAnalogRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5;
- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5;
- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5;
- (void)_configureComplicationView:(id)a3 forSlot:(id)a4;
- (void)_fadeComplicationFraction:(double)a3 entry:(double)a4 exit:(double)a5 slot:(id)a6;
- (void)_loadLayoutRules;
@end

@implementation NTKColorAnalogRichFaceView

- (NTKColorAnalogRichFaceView)initWithFaceStyle:(int64_t)a3 forDevice:(id)a4 clientIdentifier:(id)a5
{
  v8 = a4;
  v14.receiver = self;
  v14.super_class = NTKColorAnalogRichFaceView;
  v9 = [(NTKColorAnalogFaceView *)&v14 initWithFaceStyle:a3 forDevice:v8 clientIdentifier:a5];
  if (v9)
  {
    v10 = [NTKWhistlerAnalogFaceViewComplicationFactory alloc];
    [NTKAnalogUtilities dialSizeForDevice:v8];
    v11 = [v10 initWithFaceView:v9 dialDiameter:v8 device:?];
    cornerComplicationFactory = v9->_cornerComplicationFactory;
    v9->_cornerComplicationFactory = v11;

    [(NTKWhistlerAnalogFaceViewComplicationFactory *)v9->_cornerComplicationFactory setUsesNarrowTopSlots:1];
    [(NTKColorAnalogRichFaceView *)v9 setComplicationFactory:v9->_cornerComplicationFactory];
  }

  return v9;
}

- (id)_newLegacyViewForComplication:(id)a3 family:(int64_t)a4 slot:(id)a5
{
  v8 = a3;
  v9 = a5;
  if ([v9 isEqualToString:NTKComplicationSlotMonogram])
  {
    v13.receiver = self;
    v13.super_class = NTKColorAnalogRichFaceView;
    v10 = [(NTKColorAnalogFaceView *)&v13 _newLegacyViewForComplication:v8 family:a4 slot:v9];
  }

  else
  {
    v11 = [(NTKColorAnalogRichFaceView *)self complicationFactory];
    v10 = [v11 newLegacyViewForComplication:v8 family:a4 slot:v9];
  }

  return v10;
}

- (void)_configureComplicationView:(id)a3 forSlot:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = NTKColorAnalogRichFaceView;
  [(NTKColorAnalogFaceView *)&v12 _configureComplicationView:v6 forSlot:v7];
  if (([v7 isEqualToString:NTKComplicationSlotMonogram] & 1) == 0)
  {
    v8 = [(NTKColorAnalogRichFaceView *)self complicationFactory];
    [v8 configureComplicationView:v6 forSlot:v7];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v10 = [(NTKColorAnalogFaceView *)self complicationForegroundColor];
    [(NTKColorAnalogRichFaceView *)self setComplicationColor:v10];

    v11 = [(NTKColorAnalogFaceView *)self complicationForegroundColor];
    [(NTKColorAnalogRichFaceView *)self setInterpolatedComplicationColor:v11];

    [v9 transitionToMonochromeWithFraction:1.0];
    [v9 updateMonochromeColor];
  }
}

- (void)_loadLayoutRules
{
  v2 = [(NTKColorAnalogRichFaceView *)self complicationFactory];
  [v2 loadLayoutRules];

  NTKEnumerateComplicationStates();
}

- (void)_applyOption:(id)a3 forCustomEditMode:(int64_t)a4 slot:(id)a5
{
  v8.receiver = self;
  v8.super_class = NTKColorAnalogRichFaceView;
  [(NTKColorAnalogFaceView *)&v8 _applyOption:a3 forCustomEditMode:a4 slot:a5];
  if (a4 == 10)
  {
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_72DC;
    v7[3] = &unk_10520;
    v7[4] = self;
    [(NTKColorAnalogRichFaceView *)self enumerateComplicationDisplayWrappersWithBlock:v7];
  }
}

- (void)_fadeComplicationFraction:(double)a3 entry:(double)a4 exit:(double)a5 slot:(id)a6
{
  v7 = a6;
  CLKCompressFraction();
  v9 = v8;
  v10 = [(NTKColorAnalogRichFaceView *)self interpolatedColorPalette];
  [v10 setTransitionFraction:v9];

  v11 = [(NTKColorAnalogRichFaceView *)self normalComplicationDisplayWrapperForSlot:v7];

  v19 = [v11 display];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v19;
    v13 = [(NTKColorAnalogRichFaceView *)self complicationColor];
    v14 = [(NTKColorAnalogRichFaceView *)self interpolatedComplicationColor];
    v15 = [(NTKColorAnalogRichFaceView *)self interpolatedColorPalette];
    v16 = [v15 primaryShiftedColor];
    [(NTKColorAnalogRichFaceView *)self setComplicationColor:v16];

    v17 = [(NTKColorAnalogRichFaceView *)self interpolatedColorPalette];
    v18 = [v17 primaryShiftedColor];
    [(NTKColorAnalogRichFaceView *)self setInterpolatedComplicationColor:v18];

    [v12 updateMonochromeColor];
    [(NTKColorAnalogRichFaceView *)self setComplicationColor:v13];
    [(NTKColorAnalogRichFaceView *)self setInterpolatedComplicationColor:v14];
  }
}

@end