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
  v2 = [(NTKAlaskanDiversColorPalette *)self markers];
  v3 = [v2 colorWithAlphaComponent:0.6];

  return v3;
}

- (id)_markerOutlineColor
{
  if ([(NTKAlaskanDiversColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKAlaskanDiversColorPalette *)self markers];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_activeBackground
{
  [(NTKAlaskanDiversColorPalette *)self isEvergreenCollection];
  v3 = [(NTKAlaskanDiversColorPalette *)self primaryColor];
  v4 = NTKColorByApplyingBlackOverlay();

  return v4;
}

- (id)_ring
{
  v3 = [(NTKAlaskanDiversColorPalette *)self isEvergreenCollection];
  v4 = [(NTKAlaskanDiversColorPalette *)self primaryColor];
  if ((v3 & 1) == 0)
  {
    v5 = NTKColorByApplyingBlackOverlay();

    v4 = v5;
  }

  return v4;
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