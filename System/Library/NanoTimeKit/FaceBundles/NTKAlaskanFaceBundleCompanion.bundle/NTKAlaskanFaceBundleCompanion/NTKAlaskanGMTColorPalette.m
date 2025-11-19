@interface NTKAlaskanGMTColorPalette
- (NTKAlaskanGMTColorPalette)init;
- (id)_cornerComplicationInnerTextColor;
- (id)_dayDialColor;
- (id)_nightDialColor;
- (id)_outerMarkersColor;
@end

@implementation NTKAlaskanGMTColorPalette

- (NTKAlaskanGMTColorPalette)init
{
  v3 = objc_opt_class();
  v9.receiver = self;
  v9.super_class = NTKAlaskanGMTColorPalette;
  v4 = [(NTKAlaskanGMTColorPalette *)&v9 initWithFaceClass:v3];
  v5 = v4;
  if (v4)
  {
    v6 = [(NTKAlaskanGMTColorPalette *)v4 lightTickColor];
    CLKUIConvertToRGBfFromUIColor_fast();

    CLKUIConvertRGBtoLAB();
    *v5->_lightTickColorLABRepresentation = v7;
  }

  return v5;
}

- (id)_dayDialColor
{
  if ([(NTKAlaskanGMTColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKAlaskanGMTColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = NTKColorWithRGBA();
  }

  return v4;
}

- (id)_nightDialColor
{
  if ([(NTKAlaskanGMTColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKAlaskanGMTColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKAlaskanGMTColorPalette *)self primaryColor];
  }

  return v4;
}

- (id)_outerMarkersColor
{
  v3 = [(NTKAlaskanGMTColorPalette *)self nightDialColor];
  CLKUIConvertToRGBfFromUIColor_fast();

  CLKUIConvertRGBtoLAB();
  v5 = v4 - *self->_lightTickColorLABRepresentation;
  if (v5 < 0.0)
  {
    v5 = -v5;
  }

  if (v5 >= 20.0)
  {
    [(NTKAlaskanGMTColorPalette *)self lightTickColor];
  }

  else
  {
    [(NTKAlaskanGMTColorPalette *)self darkTickColor];
  }
  v6 = ;

  return v6;
}

- (id)_cornerComplicationInnerTextColor
{
  if ([(NTKAlaskanGMTColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKAlaskanGMTColorPalette *)self paletteAtIndex:0];
    v4 = [v3 cornerComplicationInnerTextColor];
  }

  else
  {
    v4 = [(NTKAlaskanGMTColorPalette *)self nightDialColor];
  }

  return v4;
}

@end