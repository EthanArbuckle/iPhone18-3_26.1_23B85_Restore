@interface NTKKuiperFontLoader
+ (CGSize)_discretizedTypographicSizeForTypographicSize:(CGSize)size;
+ (id)_fontVariationAttributesForTypographicSize:(CGSize)size tickRotation:(double)rotation;
+ (id)_kuiperFontDescriptorWithTypographicSize:(CGSize)size tickRotation:(double)rotation flipped:(BOOL)flipped background:(BOOL)background;
- (NTKKuiperFontLoader)initWithFontSize:(double)size;
- (id)fontForMaximumOverscrollTypographicSize;
@end

@implementation NTKKuiperFontLoader

- (NTKKuiperFontLoader)initWithFontSize:(double)size
{
  v9.receiver = self;
  v9.super_class = NTKKuiperFontLoader;
  v4 = [(NTKKuiperFontLoader *)&v9 init];
  v5 = v4;
  if (v4)
  {
    v4->_fontSize = size;
    v6 = objc_opt_new();
    fontCache = v5->_fontCache;
    v5->_fontCache = v6;
  }

  return v5;
}

- (id)fontForMaximumOverscrollTypographicSize
{
  v3 = NTKKuiperMaximumOverscrollTypographicSize();

  return [(NTKKuiperFontLoader *)self _cachedFontWithTypographicSize:0 tickRotation:0 flipped:v3 background:?];
}

+ (CGSize)_discretizedTypographicSizeForTypographicSize:(CGSize)size
{
  height = size.height;
  v4 = roundf(height);
  width = size.width;
  v6 = roundf(width);
  v7 = v4;
  result.height = v6;
  result.width = v7;
  return result;
}

+ (id)_kuiperFontDescriptorWithTypographicSize:(CGSize)size tickRotation:(double)rotation flipped:(BOOL)flipped background:(BOOL)background
{
  backgroundCopy = background;
  flippedCopy = flipped;
  height = size.height;
  width = size.width;
  if (qword_16E08 != -1)
  {
    sub_79E0();
  }

  v12 = [qword_16E00 copy];
  v13 = objc_opt_new();
  v14 = [self _fontVariationAttributesForTypographicSize:width tickRotation:{height, rotation}];
  [v13 setObject:v14 forKey:kCTFontVariationAttribute];
  v15 = objc_opt_new();
  if (rotation > 0.0 || backgroundCopy)
  {
    if (backgroundCopy)
    {
      if (qword_16E18 != -1)
      {
        sub_7A08();
      }

      v16 = &qword_16E10;
    }

    else
    {
      if (qword_16E28 != -1)
      {
        sub_79F4();
      }

      v16 = &qword_16E20;
    }

    v17 = *v16;
    [v15 addObject:v17];
  }

  if (flippedCopy)
  {
    if (qword_16E38 != -1)
    {
      sub_7A1C();
    }

    [v15 addObject:qword_16E30];
  }

  if ([v15 count])
  {
    [v13 setObject:v15 forKey:UIFontDescriptorFeatureSettingsAttribute];
  }

  v18 = [v12 fontDescriptorByAddingAttributes:v13];

  return v18;
}

+ (id)_fontVariationAttributesForTypographicSize:(CGSize)size tickRotation:(double)rotation
{
  height = size.height;
  width = size.width;
  v7 = objc_opt_new();
  v8 = [NSNumber numberWithDouble:width];
  v9 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  [v7 setObject:v8 forKey:v9];

  v10 = [NSNumber numberWithDouble:height];
  v11 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
  [v7 setObject:v10 forKey:v11];

  if (rotation > 0.0)
  {
    v12 = [NSNumber numberWithDouble:rotation];
    v13 = [NSNumber numberWithUnsignedInt:TextToFourCharCode()];
    [v7 setObject:v12 forKey:v13];
  }

  return v7;
}

@end