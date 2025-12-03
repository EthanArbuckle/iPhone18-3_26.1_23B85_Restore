@interface NTKAlaskanDiversColorPalette
- (NTKAlaskanDiversColorPalette)init;
- (id)_activeBackground;
- (id)_activeDialTicks;
- (id)_activeStateDateComplication;
- (id)_markerOutlineColor;
- (id)_ring;
@end

@implementation NTKAlaskanDiversColorPalette

- (NTKAlaskanDiversColorPalette)init
{
  v3 = objc_opt_class();
  v5.receiver = self;
  v5.super_class = NTKAlaskanDiversColorPalette;
  return [(NTKAlaskanDiversColorPalette *)&v5 initWithFaceClass:v3];
}

- (id)_activeDialTicks
{
  markers = [(NTKAlaskanDiversColorPalette *)self markers];
  v3 = [markers colorWithAlphaComponent:0.6];

  return v3;
}

- (id)_markerOutlineColor
{
  if ([(NTKAlaskanDiversColorPalette *)self isEvergreenCollection])
  {
    markers = [(NTKAlaskanDiversColorPalette *)self markers];
  }

  else
  {
    markers = 0;
  }

  return markers;
}

- (id)_activeBackground
{
  [(NTKAlaskanDiversColorPalette *)self isEvergreenCollection];
  primaryColor = [(NTKAlaskanDiversColorPalette *)self primaryColor];
  v4 = NTKColorByApplyingBlackOverlay();

  return v4;
}

- (id)_ring
{
  isEvergreenCollection = [(NTKAlaskanDiversColorPalette *)self isEvergreenCollection];
  primaryColor = [(NTKAlaskanDiversColorPalette *)self primaryColor];
  if ((isEvergreenCollection & 1) == 0)
  {
    v5 = NTKColorByApplyingBlackOverlay();

    primaryColor = v5;
  }

  return primaryColor;
}

- (id)_activeStateDateComplication
{
  if ([(NTKAlaskanDiversColorPalette *)self isEvergreenCollection])
  {
    [(NTKAlaskanDiversColorPalette *)self primaryColor];
  }

  else
  {
    [(NTKAlaskanDiversColorPalette *)self dateComplication];
  }
  v3 = ;

  return v3;
}

@end