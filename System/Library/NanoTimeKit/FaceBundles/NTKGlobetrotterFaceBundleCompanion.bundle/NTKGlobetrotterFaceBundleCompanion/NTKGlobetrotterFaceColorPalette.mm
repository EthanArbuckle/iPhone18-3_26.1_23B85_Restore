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
  isEvergreenCollection = [(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection];
  primaryColor = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  v5 = primaryColor;
  if ((isEvergreenCollection & 1) == 0)
  {
    v6 = [primaryColor colorWithAlphaComponent:0.2];

    v5 = v6;
  }

  return v5;
}

- (id)_innerComplication
{
  primaryColor = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  v3 = NTKColorByApplyingWhiteOverlay();

  return v3;
}

- (id)_hourMarkerLabel
{
  if ([(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection])
  {
    primaryColor = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  }

  else
  {
    hourMarkerDialBackground = [(NTKGlobetrotterFaceColorPalette *)self hourMarkerDialBackground];
    hourMarkerLabelLight = [(NTKGlobetrotterFaceColorPalette *)self hourMarkerLabelLight];
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
    primaryColor = ;
  }

  return primaryColor;
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
    cityDialLabel = [(NTKGlobetrotterFaceColorPalette *)self cityDialLabel];
  }

  else
  {
    secondHand = [(NTKGlobetrotterFaceColorPalette *)self secondHand];
    redSecondHand = [(NTKGlobetrotterFaceColorPalette *)self redSecondHand];
    if ([secondHand isEqual:redSecondHand])
    {
      [(NTKGlobetrotterFaceColorPalette *)self redCityDialArrowMarker];
    }

    else
    {
      [(NTKGlobetrotterFaceColorPalette *)self whiteCityDialArrowMarker];
    }
    cityDialLabel = ;
  }

  return cityDialLabel;
}

- (id)_secondHand
{
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0.0;
  primaryColor = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  [primaryColor getRed:&v11 green:&v10 blue:&v9 alpha:0];

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
  secondTickActive = [(NTKGlobetrotterFaceColorPalette *)self secondTickActive];
  v3 = [secondTickActive colorWithAlphaComponent:0.3];

  return v3;
}

- (id)_globe
{
  isEvergreenCollection = [(NTKGlobetrotterFaceColorPalette *)self isEvergreenCollection];
  primaryColor = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
  if ((isEvergreenCollection & 1) == 0)
  {
    CLKUILightnessForColor();
    v6 = v5;

    primaryColor2 = [(NTKGlobetrotterFaceColorPalette *)self primaryColor];
    primaryColor = primaryColor2;
    if (v6 > 50.0)
    {
      v8 = [primaryColor2 colorWithAlphaComponent:0.5];

      primaryColor = v8;
    }
  }

  return primaryColor;
}

@end