@interface NTKNumeralsHourView
- (CGSize)sizeThatFits:(CGSize)a3;
- (id)_hourColorForDevice:(id)a3 faceColorPalette:(id)a4 colorSchemeUnits:(unint64_t)a5;
- (id)_imageNameForStyle:(unint64_t)a3 hour:(int64_t)a4;
- (id)initForHour:(int64_t)a3 style:(unint64_t)a4 faceConfiguration:(id)a5;
- (id)initUnloadedHourViewForHour:(int64_t)a3 style:(unint64_t)a4 faceConfiguration:(id)a5;
- (void)_applyTintColor:(id)a3;
- (void)applyFaceColorFromFaceConfiguration:(id)a3;
- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 faceConfiguration:(id)a6;
- (void)load;
@end

@implementation NTKNumeralsHourView

- (id)initForHour:(int64_t)a3 style:(unint64_t)a4 faceConfiguration:(id)a5
{
  v5 = [(NTKNumeralsHourView *)self initUnloadedHourViewForHour:a3 style:a4 faceConfiguration:a5];
  v6 = v5;
  if (v5)
  {
    [v5 load];
  }

  return v6;
}

- (id)initUnloadedHourViewForHour:(int64_t)a3 style:(unint64_t)a4 faceConfiguration:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = NTKNumeralsHourView;
  v10 = [(NTKNumeralsHourView *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hour = a3;
    v10->_style = a4;
    objc_storeStrong(&v10->_faceConfiguration, a5);
  }

  return v11;
}

- (void)load
{
  if (!self->_isLoaded)
  {
    v3 = [(NTKNumeralsHourView *)self _imageNameForStyle:self->_style hour:self->_hour];
    v4 = [NTKNumeralsAnalogFaceBundle imageWithName:v3];
    v5 = [v4 imageWithRenderingMode:2];

    v6 = [v5 _imageThatSuppressesAccessibilityHairlineThickening];

    [(NTKNumeralsHourView *)self setImage:v6];
    [(NTKNumeralsHourView *)self applyFaceColorFromFaceConfiguration:self->_faceConfiguration];
  }

  self->_isLoaded = 1;
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = +[CLKDevice currentDevice];
  if ([v6 deviceCategory] == &dword_0 + 1)
  {
    v7 = +[CLKDevice currentDevice];
    [v7 screenBounds];
    v9 = v8;
    v11 = v10;
  }

  else
  {
    v16.receiver = self;
    v16.super_class = NTKNumeralsHourView;
    [(NTKNumeralsHourView *)&v16 sizeThatFits:width, height];
    v9 = v12;
    v11 = v13;
  }

  v14 = v9;
  v15 = v11;
  result.height = v15;
  result.width = v14;
  return result;
}

- (void)applyTransitionFraction:(double)a3 fromFaceColorPalette:(id)a4 toFaceColorPalette:(id)a5 faceConfiguration:(id)a6
{
  v9 = a6;
  v10 = a5;
  v11 = a4;
  v12 = [v9 device];
  v17 = -[NTKNumeralsHourView _hourColorForDevice:faceColorPalette:colorSchemeUnits:](self, "_hourColorForDevice:faceColorPalette:colorSchemeUnits:", v12, v11, [v9 colorSchemeUnits]);

  v13 = [v9 device];
  v14 = [v9 colorSchemeUnits];

  v15 = [(NTKNumeralsHourView *)self _hourColorForDevice:v13 faceColorPalette:v10 colorSchemeUnits:v14];

  v16 = NTKInterpolateBetweenColors();
  [(NTKNumeralsHourView *)self _applyTintColor:v16];
}

- (void)applyFaceColorFromFaceConfiguration:(id)a3
{
  v4 = a3;
  v5 = [v4 device];
  v6 = [v4 faceColorPalette];
  v7 = [v4 colorSchemeUnits];

  v8 = [(NTKNumeralsHourView *)self _hourColorForDevice:v5 faceColorPalette:v6 colorSchemeUnits:v7];

  [(NTKNumeralsHourView *)self _applyTintColor:v8];
}

- (id)_hourColorForDevice:(id)a3 faceColorPalette:(id)a4 colorSchemeUnits:(unint64_t)a5
{
  v5 = [NTKFaceColorScheme colorSchemeForDevice:a3 withFaceColorPalette:a4 units:a5];
  v6 = [v5 foregroundColor];
  v7 = [v6 colorWithAlphaComponent:1.0];

  return v7;
}

- (void)_applyTintColor:(id)a3
{
  v5 = a3;
  if (([(UIColor *)self->_appliedColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_appliedColor, a3);
    [(NTKNumeralsHourView *)self setTintColor:self->_appliedColor];
  }
}

- (id)_imageNameForStyle:(unint64_t)a3 hour:(int64_t)a4
{
  v4 = @"numerals_analog_latn_alt%lu_%lu";
  if (a3 == 8)
  {
    v4 = @"numerals-analog_deva_alt%lu_%lu";
  }

  if (a3 == 7)
  {
    v4 = @"numerals-analog_arab_alt%lu_%lu";
    v5 = 1;
  }

  else
  {
    v5 = a3 - 7;
  }

  if (a3 < 7)
  {
    v5 = a3 + 1;
  }

  return [NSString stringWithFormat:v4, v5, a4];
}

@end