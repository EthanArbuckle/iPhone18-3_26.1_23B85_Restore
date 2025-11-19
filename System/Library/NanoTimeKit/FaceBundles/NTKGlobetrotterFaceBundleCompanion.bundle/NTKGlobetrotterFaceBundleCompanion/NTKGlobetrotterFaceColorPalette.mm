@interface NTKGlobetrotterFaceColorPalette
- (id)_cityDialArrowMarker;
- (id)_cityDialDots;
- (id)_dialBackground;
- (id)_globe;
- (id)_hourMarkerDialBackground;
- (id)_hourMarkerLabel;
- (id)_hourTick;
- (id)_innerComplication;
- (id)_secondHand;
- (id)_secondTickInactive;
@end

@implementation NTKGlobetrotterFaceColorPalette

- (id)_dialBackground
{
  v3 = [(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection];
  v4 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  v5 = v4;
  if ((v3 & 1) == 0)
  {
    v6 = [v4 colorWithAlphaComponent:0.2];

    v5 = v6;
  }

  return v5;
}

- (id)_innerComplication
{
  v2 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  v3 = NTKColorByApplyingWhiteOverlay();

  return v3;
}

- (id)_hourMarkerLabel
{
  if ([(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  }

  else
  {
    v4 = [(NTKGlobetrotterFaceColorPalette *)self hourMarkerDialBackground];
    v5 = [(NTKGlobetrotterFaceColorPalette *)self hourMarkerLabelLight];
    CLKContrastRatioForColors();
    v7 = v6;

    if (v7 >= 4.5)
    {
      [(NTKGlobetrotterFaceColorPalette *)self hourMarkerLabelLight];
    }

    else
    {
      +[UIColor blackColor];
    }
    v3 = ;
  }

  return v3;
}

- (id)_hourMarkerDialBackground
{
  if ([(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection])
  {
    [(NTKGlobetrotterFaceColorPalette *)self cityDialLabel];
  }

  else
  {
    [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  }
  v3 = ;

  return v3;
}

- (id)_cityDialDots
{
  if ([(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection])
  {
    [(NTKGlobetrotterFaceColorPalette *)self cityDialLabel];
  }

  else
  {
    [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  }
  v3 = ;

  return v3;
}

- (id)_cityDialArrowMarker
{
  if ([(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection])
  {
    v3 = [(NTKGlobetrotterFaceColorPalette *)self cityDialLabel];
  }

  else
  {
    v4 = [(NTKGlobetrotterFaceColorPalette *)self secondHand];
    v5 = [(NTKGlobetrotterFaceColorPalette *)self redSecondHand];
    if ([v4 isEqual:v5])
    {
      [(NTKGlobetrotterFaceColorPalette *)self redCityDialArrowMarker];
    }

    else
    {
      [(NTKGlobetrotterFaceColorPalette *)self whiteCityDialArrowMarker];
    }
    v3 = ;
  }

  return v3;
}

- (id)_secondHand
{
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  v3 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  [v3 getRed:&v11 green:&v10 blue:&v9 alpha:0];

  v4 = v11 * 255.0;
  v9 = v9 * 255.0;
  v10 = v10 * 255.0;
  v11 = v4;
  if (v4 <= 150.0 || v4 <= v10 + v10 || v4 <= v9 + v9)
  {
    [(NTKGlobetrotterFaceColorPalette *)self redSecondHand];
  }

  else
  {
    [(NTKGlobetrotterFaceColorPalette *)self yellowSecondHand];
  }
  v7 = ;

  return v7;
}

- (id)_hourTick
{
  if ([(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection])
  {
    [(NTKGlobetrotterFaceColorPalette *)self cityDialLabel];
  }

  else
  {
    [(NTKGlobetrotterFaceColorPalette *)self hourTickLight];
  }
  v3 = ;

  return v3;
}

- (id)_secondTickInactive
{
  v2 = [(NTKGlobetrotterFaceColorPalette *)self secondTickActive];
  v3 = [v2 colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_globe
{
  v3 = [(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection];
  v4 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  if ((v3 & 1) == 0)
  {
    CLKUILightnessForColor();
    v6 = v5;

    v7 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
    v4 = v7;
    if (v6 > 50.0)
    {
      v8 = [v7 colorWithAlphaComponent:0.5];

      v4 = v8;
    }
  }

  return v4;
}

@end