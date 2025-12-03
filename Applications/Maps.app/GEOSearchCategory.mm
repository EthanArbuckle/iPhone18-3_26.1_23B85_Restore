@interface GEOSearchCategory
- (CGColor)_maps_newSignificantColorForScreenScale:(double)scale;
- (CGColor)_maps_newSignificantColorForScreenScale:(double)scale isTouchBar:(BOOL)bar;
@end

@implementation GEOSearchCategory

- (CGColor)_maps_newSignificantColorForScreenScale:(double)scale isTouchBar:(BOOL)bar
{
  barCopy = bar;
  styleAttributes = [(GEOSearchCategory *)self styleAttributes];
  v7 = styleAttributes;
  if (barCopy)
  {
    v8 = [styleAttributes copy];

    v11 = 0x10001003FLL;
    [v8 replaceAttributes:&v11 count:1];
    v7 = v8;
  }

  v9 = [MKIconManager newSignificantColorForStyleAttributes:v7 forScale:scale];

  return v9;
}

- (CGColor)_maps_newSignificantColorForScreenScale:(double)scale
{
  styleAttributes = [(GEOSearchCategory *)self styleAttributes];
  v5 = [MKIconManager newSignificantColorForStyleAttributes:styleAttributes forScale:scale];

  return v5;
}

@end