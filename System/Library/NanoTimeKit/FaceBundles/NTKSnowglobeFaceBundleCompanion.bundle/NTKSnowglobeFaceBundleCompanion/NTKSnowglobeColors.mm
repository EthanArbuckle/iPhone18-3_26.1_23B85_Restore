@interface NTKSnowglobeColors
- (NTKSnowglobeColors)initWithPalette:(id)palette;
- (id)_backgroundObjectColorsFromColors:(id)colors randoms:(id)randoms;
- (id)backgroundColorsForRandoms:(id)randoms;
@end

@implementation NTKSnowglobeColors

- (NTKSnowglobeColors)initWithPalette:(id)palette
{
  paletteCopy = palette;
  v22.receiver = self;
  v22.super_class = NTKSnowglobeColors;
  v5 = [(NTKSnowglobeColors *)&v22 init];
  if (v5)
  {
    backlightColor = [paletteCopy backlightColor];
    backlightColor = v5->_backlightColor;
    v5->_backlightColor = backlightColor;

    background = [paletteCopy background];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = background;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = paletteCopy;
      fromPalette = [v10 fromPalette];
      toPalette = [v10 toPalette];
      backgroundObjectColors = [fromPalette backgroundObjectColors];
      backgroundObjectColorFrom = v5->_backgroundObjectColorFrom;
      v5->_backgroundObjectColorFrom = backgroundObjectColors;

      backgroundObjectColors2 = [toPalette backgroundObjectColors];
      backgroundObjectColorTo = v5->_backgroundObjectColorTo;
      v5->_backgroundObjectColorTo = backgroundObjectColors2;

      [v10 transitionFraction];
      v18 = v17;

      v5->_backgroundObjectColorTransitionFraction = v18;
    }

    else
    {
      backgroundObjectColors3 = [paletteCopy backgroundObjectColors];
      objc_storeStrong(&v5->_backgroundObjectColorFrom, backgroundObjectColors3);
      v20 = v5->_backgroundObjectColorTo;
      v5->_backgroundObjectColorTo = backgroundObjectColors3;

      v5->_backgroundObjectColorTransitionFraction = 0.0;
    }
  }

  return v5;
}

- (id)backgroundColorsForRandoms:(id)randoms
{
  randomsCopy = randoms;
  [(NTKSnowglobeColors *)self backgroundObjectColorTransitionFraction];
  v6 = v5;
  backgroundObjectColorFrom = [(NTKSnowglobeColors *)self backgroundObjectColorFrom];
  backgroundObjectColorTo = [(NTKSnowglobeColors *)self backgroundObjectColorTo];
  [(NTKSnowglobeColors *)self backgroundObjectColorTransitionFraction];
  v10 = v9;
  v11 = [(NTKSnowglobeColors *)self _backgroundObjectColorsFromColors:backgroundObjectColorFrom randoms:randomsCopy];
  if (v10 != 0.0)
  {
    v12 = [(NTKSnowglobeColors *)self _backgroundObjectColorsFromColors:backgroundObjectColorTo randoms:randomsCopy];
    v13 = objc_opt_new();
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = sub_23C082B4C;
    v19[3] = &unk_278BAC5F0;
    v20 = v12;
    v14 = v13;
    v21 = v14;
    v22 = v6;
    v15 = v12;
    [v11 enumerateObjectsUsingBlock:v19];
    v16 = v21;
    v17 = v14;

    v11 = v17;
  }

  return v11;
}

- (id)_backgroundObjectColorsFromColors:(id)colors randoms:(id)randoms
{
  colorsCopy = colors;
  randomsCopy = randoms;
  v7 = objc_opt_new();
  if ([randomsCopy count])
  {
    v8 = 0;
    do
    {
      v9 = [randomsCopy objectAtIndexedSubscript:v8];
      unsignedIntegerValue = [v9 unsignedIntegerValue];
      v11 = unsignedIntegerValue % [colorsCopy count];

      v12 = [colorsCopy objectAtIndexedSubscript:v11];
      [v7 addObject:v12];

      ++v8;
    }

    while (v8 < [randomsCopy count]);
  }

  return v7;
}

@end