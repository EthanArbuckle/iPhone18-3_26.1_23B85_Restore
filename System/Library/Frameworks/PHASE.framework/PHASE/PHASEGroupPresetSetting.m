@interface PHASEGroupPresetSetting
- (PHASEGroupPresetSetting)init;
- (PHASEGroupPresetSetting)initWithGain:(double)a3 rate:(double)a4 gainHighFrequency:(double)a5 gainLowFrequency:(double)a6 gainCurveType:(int64_t)a7 rateCurveType:(int64_t)a8;
@end

@implementation PHASEGroupPresetSetting

- (PHASEGroupPresetSetting)init
{
  [(PHASEGroupPresetSetting *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (PHASEGroupPresetSetting)initWithGain:(double)a3 rate:(double)a4 gainHighFrequency:(double)a5 gainLowFrequency:(double)a6 gainCurveType:(int64_t)a7 rateCurveType:(int64_t)a8
{
  v29.receiver = self;
  v29.super_class = PHASEGroupPresetSetting;
  v15 = [(PHASEGroupPresetSetting *)&v29 init];
  if (v15)
  {
    v16 = objc_opt_class();
    v17 = NSStringFromClass(v16);
    v18 = NSStringFromSelector(a2);
    v15->_gain = PHASEGetPropertyBounded<double>(v17, v18, a3, 0.0, 1.0);

    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    v21 = NSStringFromSelector(a2);
    v15->_gainHighFrequency = PHASEGetPropertyBounded<double>(v20, v21, a5, 0.0, 1.0);

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    v24 = NSStringFromSelector(a2);
    v15->_gainLowFrequency = PHASEGetPropertyBounded<double>(v23, v24, a6, 0.0, 1.0);

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    v27 = NSStringFromSelector(a2);
    v15->_rate = PHASEGetPropertyBounded<double>(v26, v27, a4, 0.25, 4.0);

    v15->_gainCurveType = a7;
    v15->_rateCurveType = a8;
  }

  return v15;
}

@end