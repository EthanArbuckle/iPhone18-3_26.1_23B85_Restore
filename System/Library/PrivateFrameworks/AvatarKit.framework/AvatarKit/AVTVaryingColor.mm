@interface AVTVaryingColor
- (id)baseColor;
- (id)variationMaxColor;
- (id)variationMinColor;
- (void)setBaseColor:(void *)color;
- (void)setVariationMaxColor:(void *)color;
- (void)setVariationMinColor:(void *)color;
@end

@implementation AVTVaryingColor

- (id)baseColor
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_5(result, a2, 8);
  }

  return result;
}

- (void)setBaseColor:(void *)color
{
  if (color)
  {
    objc_setProperty_atomic(color, newValue, newValue, 8);
  }
}

- (id)variationMinColor
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_5(result, a2, 16);
  }

  return result;
}

- (void)setVariationMinColor:(void *)color
{
  if (color)
  {
    objc_setProperty_atomic(color, newValue, newValue, 16);
  }
}

- (id)variationMaxColor
{
  if (result)
  {
    return OUTLINED_FUNCTION_0_5(result, a2, 24);
  }

  return result;
}

- (void)setVariationMaxColor:(void *)color
{
  if (color)
  {
    objc_setProperty_atomic(color, newValue, newValue, 24);
  }
}

@end