@interface NTKVictoryAnalogColorPalette
- (BOOL)hasWhiteElements;
- (NSNumber)dotMarkerAlpha;
- (id)_cornerComplicationsAccent;
- (id)_dotMarker;
- (id)_hands;
- (id)_logo;
- (id)_markerAtIndex:(id)index;
- (id)_numbers;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dotMarkerColorAtIndex:(id)index;
- (id)identifier;
- (id)numberColorAtIndex:(id)index;
- (void)configurationDidChange:(id)change;
- (void)setStyle:(unint64_t)style;
@end

@implementation NTKVictoryAnalogColorPalette

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = NTKVictoryAnalogColorPalette;
  v4 = [(NTKVictoryAnalogColorPalette *)&v6 copyWithZone:zone];
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
    identifier = [(NTKVictoryAnalogColorPalette *)&v8 identifier];
    v5 = [NSString stringWithFormat:@"%@-%lu", identifier, self->_style];
    v6 = self->_cachedIdentifier;
    self->_cachedIdentifier = v5;

    cachedIdentifier = self->_cachedIdentifier;
  }

  return cachedIdentifier;
}

- (void)configurationDidChange:(id)change
{
  v5.receiver = self;
  v5.super_class = NTKVictoryAnalogColorPalette;
  [(NTKVictoryAnalogColorPalette *)&v5 configurationDidChange:change];
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
}

- (void)setStyle:(unint64_t)style
{
  self->_style = style;
  cachedIdentifier = self->_cachedIdentifier;
  self->_cachedIdentifier = 0;
  _objc_release_x1();
}

- (id)_numbers
{
  if ([(NTKVictoryAnalogColorPalette *)self isCompositePalette])
  {
    v3 = [(NTKVictoryAnalogColorPalette *)self paletteAtIndex:0];
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKVictoryAnalogColorPalette *)self primaryColor];
  }

  return primaryColor;
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
    primaryColor = [v3 primaryColor];
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
    primaryColor = ;
  }

  return primaryColor;
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
    primaryColor = [v3 primaryColor];
  }

  else
  {
    primaryColor = [(NTKVictoryAnalogColorPalette *)self primaryColor];
  }

  return primaryColor;
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

  pigmentEditOption = [(NTKVictoryAnalogColorPalette *)self pigmentEditOption];
  identifier = [pigmentEditOption identifier];
  v6 = [identifier isEqual:ntk_victory_white];

  return v6;
}

- (id)dotMarkerColorAtIndex:(id)index
{
  indexCopy = index;
  dotMarker = [(NTKVictoryAnalogColorPalette *)self dotMarker];
  if ([(NTKVictoryAnalogColorPalette *)self isRainbowColor])
  {
    v6 = [(NTKVictoryAnalogColorPalette *)self _markerAtIndex:indexCopy];

    dotMarker = v6;
  }

  return dotMarker;
}

- (id)numberColorAtIndex:(id)index
{
  indexCopy = index;
  numbers = [(NTKVictoryAnalogColorPalette *)self numbers];
  if ([(NTKVictoryAnalogColorPalette *)self isRainbowColor])
  {
    v6 = [(NTKVictoryAnalogColorPalette *)self _markerAtIndex:indexCopy];

    numbers = v6;
  }

  return numbers;
}

- (id)_markerAtIndex:(id)index
{
  indexCopy = index;
  style = [(NTKVictoryAnalogColorPalette *)self style];
  v6 = @"largeDigit";
  if (style < 3)
  {
    v6 = @"digit";
  }

  v7 = v6;
  style2 = [(NTKVictoryAnalogColorPalette *)self style];
  integerValue = [indexCopy integerValue];

  if (style2 >= 3)
  {
    v10 = integerValue;
  }

  else
  {
    v10 = integerValue + 1;
  }

  v11 = [NSString stringWithFormat:@"%@%lu", v7, v10];

  v12 = [(NTKVictoryAnalogColorPalette *)self valueForKey:v11];

  return v12;
}

@end