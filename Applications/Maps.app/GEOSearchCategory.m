@interface GEOSearchCategory
- (CGColor)_maps_newSignificantColorForScreenScale:(double)a3;
- (CGColor)_maps_newSignificantColorForScreenScale:(double)a3 isTouchBar:(BOOL)a4;
@end

@implementation GEOSearchCategory

- (CGColor)_maps_newSignificantColorForScreenScale:(double)a3 isTouchBar:(BOOL)a4
{
  v4 = a4;
  v6 = [(GEOSearchCategory *)self styleAttributes];
  v7 = v6;
  if (v4)
  {
    v8 = [v6 copy];

    v11 = 0x10001003FLL;
    [v8 replaceAttributes:&v11 count:1];
    v7 = v8;
  }

  v9 = [MKIconManager newSignificantColorForStyleAttributes:v7 forScale:a3];

  return v9;
}

- (CGColor)_maps_newSignificantColorForScreenScale:(double)a3
{
  v4 = [(GEOSearchCategory *)self styleAttributes];
  v5 = [MKIconManager newSignificantColorForStyleAttributes:v4 forScale:a3];

  return v5;
}

@end