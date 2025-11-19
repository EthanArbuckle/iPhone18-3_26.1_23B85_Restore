@interface AVTVaryingColor
- (id)baseColor;
- (id)variationMaxColor;
- (id)variationMinColor;
- (void)setBaseColor:(void *)a1;
- (void)setVariationMaxColor:(void *)a1;
- (void)setVariationMinColor:(void *)a1;
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

- (void)setBaseColor:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 8);
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

- (void)setVariationMinColor:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 16);
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

- (void)setVariationMaxColor:(void *)a1
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 24);
  }
}

@end