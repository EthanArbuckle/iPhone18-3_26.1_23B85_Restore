@interface NTKNumeralsHourView
- (CGSize)sizeThatFits:(CGSize)fits;
- (id)_hourColorForDevice:(id)device faceColorPalette:(id)palette colorSchemeUnits:(unint64_t)units;
- (id)_imageNameForStyle:(unint64_t)style hour:(int64_t)hour;
- (id)initForHour:(int64_t)hour style:(unint64_t)style faceConfiguration:(id)configuration;
- (id)initUnloadedHourViewForHour:(int64_t)hour style:(unint64_t)style faceConfiguration:(id)configuration;
- (void)_applyTintColor:(id)color;
- (void)applyFaceColorFromFaceConfiguration:(id)configuration;
- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette faceConfiguration:(id)configuration;
- (void)load;
@end

@implementation NTKNumeralsHourView

- (id)initForHour:(int64_t)hour style:(unint64_t)style faceConfiguration:(id)configuration
{
  v5 = [(NTKNumeralsHourView *)self initUnloadedHourViewForHour:hour style:style faceConfiguration:configuration];
  v6 = v5;
  if (v5)
  {
    [v5 load];
  }

  return v6;
}

- (id)initUnloadedHourViewForHour:(int64_t)hour style:(unint64_t)style faceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v13.receiver = self;
  v13.super_class = NTKNumeralsHourView;
  v10 = [(NTKNumeralsHourView *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_hour = hour;
    v10->_style = style;
    objc_storeStrong(&v10->_faceConfiguration, configuration);
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

    _imageThatSuppressesAccessibilityHairlineThickening = [v5 _imageThatSuppressesAccessibilityHairlineThickening];

    [(NTKNumeralsHourView *)self setImage:_imageThatSuppressesAccessibilityHairlineThickening];
    [(NTKNumeralsHourView *)self applyFaceColorFromFaceConfiguration:self->_faceConfiguration];
  }

  self->_isLoaded = 1;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
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

- (void)applyTransitionFraction:(double)fraction fromFaceColorPalette:(id)palette toFaceColorPalette:(id)colorPalette faceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  colorPaletteCopy = colorPalette;
  paletteCopy = palette;
  device = [configurationCopy device];
  v17 = -[NTKNumeralsHourView _hourColorForDevice:faceColorPalette:colorSchemeUnits:](self, "_hourColorForDevice:faceColorPalette:colorSchemeUnits:", device, paletteCopy, [configurationCopy colorSchemeUnits]);

  device2 = [configurationCopy device];
  colorSchemeUnits = [configurationCopy colorSchemeUnits];

  v15 = [(NTKNumeralsHourView *)self _hourColorForDevice:device2 faceColorPalette:colorPaletteCopy colorSchemeUnits:colorSchemeUnits];

  v16 = NTKInterpolateBetweenColors();
  [(NTKNumeralsHourView *)self _applyTintColor:v16];
}

- (void)applyFaceColorFromFaceConfiguration:(id)configuration
{
  configurationCopy = configuration;
  device = [configurationCopy device];
  faceColorPalette = [configurationCopy faceColorPalette];
  colorSchemeUnits = [configurationCopy colorSchemeUnits];

  v8 = [(NTKNumeralsHourView *)self _hourColorForDevice:device faceColorPalette:faceColorPalette colorSchemeUnits:colorSchemeUnits];

  [(NTKNumeralsHourView *)self _applyTintColor:v8];
}

- (id)_hourColorForDevice:(id)device faceColorPalette:(id)palette colorSchemeUnits:(unint64_t)units
{
  v5 = [NTKFaceColorScheme colorSchemeForDevice:device withFaceColorPalette:palette units:units];
  foregroundColor = [v5 foregroundColor];
  v7 = [foregroundColor colorWithAlphaComponent:1.0];

  return v7;
}

- (void)_applyTintColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_appliedColor isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->_appliedColor, color);
    [(NTKNumeralsHourView *)self setTintColor:self->_appliedColor];
  }
}

- (id)_imageNameForStyle:(unint64_t)style hour:(int64_t)hour
{
  v4 = @"numerals_analog_latn_alt%lu_%lu";
  if (style == 8)
  {
    v4 = @"numerals-analog_deva_alt%lu_%lu";
  }

  if (style == 7)
  {
    v4 = @"numerals-analog_arab_alt%lu_%lu";
    v5 = 1;
  }

  else
  {
    v5 = style - 7;
  }

  if (style < 7)
  {
    v5 = style + 1;
  }

  return [NSString stringWithFormat:v4, v5, hour];
}

@end