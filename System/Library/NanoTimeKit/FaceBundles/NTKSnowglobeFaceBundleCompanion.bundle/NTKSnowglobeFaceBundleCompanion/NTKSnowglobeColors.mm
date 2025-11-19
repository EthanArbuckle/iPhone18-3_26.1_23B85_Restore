@interface NTKSnowglobeColors
- (NTKSnowglobeColors)initWithPalette:(id)a3;
- (id)_backgroundObjectColorsFromColors:(id)a3 randoms:(id)a4;
- (id)backgroundColorsForRandoms:(id)a3;
@end

@implementation NTKSnowglobeColors

- (NTKSnowglobeColors)initWithPalette:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = NTKSnowglobeColors;
  v5 = [(NTKSnowglobeColors *)&v22 init];
  if (v5)
  {
    v6 = [v4 backlightColor];
    backlightColor = v5->_backlightColor;
    v5->_backlightColor = v6;

    v8 = [v4 background];
    backgroundColor = v5->_backgroundColor;
    v5->_backgroundColor = v8;

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v4;
      v11 = [v10 fromPalette];
      v12 = [v10 toPalette];
      v13 = [v11 backgroundObjectColors];
      backgroundObjectColorFrom = v5->_backgroundObjectColorFrom;
      v5->_backgroundObjectColorFrom = v13;

      v15 = [v12 backgroundObjectColors];
      backgroundObjectColorTo = v5->_backgroundObjectColorTo;
      v5->_backgroundObjectColorTo = v15;

      [v10 transitionFraction];
      v18 = v17;

      v5->_backgroundObjectColorTransitionFraction = v18;
    }

    else
    {
      v19 = [v4 backgroundObjectColors];
      objc_storeStrong(&v5->_backgroundObjectColorFrom, v19);
      v20 = v5->_backgroundObjectColorTo;
      v5->_backgroundObjectColorTo = v19;

      v5->_backgroundObjectColorTransitionFraction = 0.0;
    }
  }

  return v5;
}

- (id)backgroundColorsForRandoms:(id)a3
{
  v4 = a3;
  [(NTKSnowglobeColors *)self backgroundObjectColorTransitionFraction];
  v6 = v5;
  v7 = [(NTKSnowglobeColors *)self backgroundObjectColorFrom];
  v8 = [(NTKSnowglobeColors *)self backgroundObjectColorTo];
  [(NTKSnowglobeColors *)self backgroundObjectColorTransitionFraction];
  v10 = v9;
  v11 = [(NTKSnowglobeColors *)self _backgroundObjectColorsFromColors:v7 randoms:v4];
  if (v10 != 0.0)
  {
    v12 = [(NTKSnowglobeColors *)self _backgroundObjectColorsFromColors:v8 randoms:v4];
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

- (id)_backgroundObjectColorsFromColors:(id)a3 randoms:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = objc_opt_new();
  if ([v6 count])
  {
    v8 = 0;
    do
    {
      v9 = [v6 objectAtIndexedSubscript:v8];
      v10 = [v9 unsignedIntegerValue];
      v11 = v10 % [v5 count];

      v12 = [v5 objectAtIndexedSubscript:v11];
      [v7 addObject:v12];

      ++v8;
    }

    while (v8 < [v6 count]);
  }

  return v7;
}

@end