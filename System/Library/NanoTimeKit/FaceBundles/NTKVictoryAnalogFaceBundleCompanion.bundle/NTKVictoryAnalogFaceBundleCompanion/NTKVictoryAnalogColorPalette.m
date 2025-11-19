@interface NTKVictoryAnalogColorPalette
- (BOOL)hasWhiteElements;
- (NSNumber)dotMarkerAlpha;
- (id)_cornerComplicationsAccent;
- (id)_dotMarker;
- (id)_hands;
- (id)_logo;
- (id)_markerAtIndex:(id)a3;
- (id)_numbers;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dotMarkerColorAtIndex:(id)a3;
- (id)identifier;
- (id)numberColorAtIndex:(id)a3;
- (void)configurationDidChange:(id)a3;
- (void)setStyle:(unint64_t)a3;
@end

@implementation NTKVictoryAnalogColorPalette

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = NTKVictoryAnalogColorPalette;
  v4 = [(NTKVictoryAnalogColorPalette *)&v6 copyWithZone:a3];
  [v4 setStyle:{-[NTKVictoryAnalogColorPalette style](self, "style")}];
  return v4;
}

- (id)identifier
{
  cachedIdentifier = self->_cachedIdentifier;
  if (!cachedIdentifier)
  {
    v8.receiver = self;
    v8.super_class = NTKVictoryAnalogColorPalette;
    v4 = [(NTKVictoryAnalogColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", v4, self->_style];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)a3
{
  v5.receiver = self;
  v5.super_class = NTKVictoryAnalogColorPalette;
  [(NTKVictoryAnalogColorPalette *)&v5 configurationDidChange:a3];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setStyle:(unint64_t)a3
{
  self->_style = a3;
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (id)_numbers
{
  if ([(NTKVictoryAnalogColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryAnalogColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKVictoryAnalogColorPalette *)self primaryColor];
  }

  return v4;
}

- (id)_hands
{
  if ([(NTKVictoryAnalogColorPalette *)self isCompositePalette])
  {
    [(NTKVictoryAnalogColorPalette *)self logo];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)_logo
{
  if ([(NTKVictoryAnalogColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryAnalogColorPalette *)self paletteAtIndex:1];
    v4 = [v3 primaryColor];
  }

  else
  {
    if ([(NTKVictoryAnalogColorPalette *)self style]== &dword_0 + 3)
    {
      [(NTKVictoryAnalogColorPalette *)self valueForKey:@"logoForLargeNumbers"];
    }

    else
    {
      +[UIColor whiteColor];
    }
    v4 = ;
  }

  return v4;
}

- (id)_cornerComplicationsAccent
{
  if ([(NTKVictoryAnalogColorPalette *)self isCompositePalette])
  {
    [(NTKVictoryAnalogColorPalette *)self logo];
  }

  else
  {
    +[UIColor whiteColor];
  }
  v3 = ;

  return v3;
}

- (id)_dotMarker
{
  if ([(NTKVictoryAnalogColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryAnalogColorPalette *)self paletteAtIndex:0];
    v4 = [v3 primaryColor];
  }

  else
  {
    v4 = [(NTKVictoryAnalogColorPalette *)self primaryColor];
  }

  return v4;
}

- (NSNumber)dotMarkerAlpha
{
  if ([(NTKVictoryAnalogColorPalette *)self hasWhiteElements])
  {
    return &off_CE38;
  }

  v3 = &off_CE38;
  if ([(NTKVictoryAnalogColorPalette *)self style]&& ![(NTKVictoryAnalogColorPalette *)self isMulticolor])
  {
    return &off_CE48;
  }

  return v3;
}

- (BOOL)hasWhiteElements
{
  if (([(NTKVictoryAnalogColorPalette *)self isCompositePalette]& 1) != 0)
  {
    return 1;
  }

  v4 = [(NTKVictoryAnalogColorPalette *)self pigmentEditOption];
  v5 = [v4 identifier];
  v6 = [v5 isEqual:ntk_victory_white];

  return v6;
}

- (id)dotMarkerColorAtIndex:(id)a3
{
  v4 = a3;
  v5 = [(NTKVictoryAnalogColorPalette *)self dotMarker];
  if ([(NTKVictoryAnalogColorPalette *)self isRainbowColor])
  {
    v6 = [(NTKVictoryAnalogColorPalette *)self _markerAtIndex:v4];

    v5 = v6;
  }

  return v5;
}

- (id)numberColorAtIndex:(id)a3
{
  v4 = a3;
  v5 = [(NTKVictoryAnalogColorPalette *)self numbers];
  if ([(NTKVictoryAnalogColorPalette *)self isRainbowColor])
  {
    v6 = [(NTKVictoryAnalogColorPalette *)self _markerAtIndex:v4];

    v5 = v6;
  }

  return v5;
}

- (id)_markerAtIndex:(id)a3
{
  v4 = a3;
  v5 = [(NTKVictoryAnalogColorPalette *)self style];
  v6 = @"largeDigit";
  if (v5 < 3)
  {
    v6 = @"digit";
  }

  v7 = v6;
  v8 = [(NTKVictoryAnalogColorPalette *)self style];
  v9 = [v4 integerValue];

  if (v8 >= 3)
  {
    v10 = v9;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = [NSString stringWithFormat:@"%@%lu", v7, v10];

  v12 = [(NTKVictoryAnalogColorPalette *)self valueForKey:v11];

  return v12;
}

@end