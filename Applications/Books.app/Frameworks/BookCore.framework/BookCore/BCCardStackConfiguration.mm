@interface BCCardStackConfiguration
+ (id)createCardSetPresentationTimingParameters;
+ (id)createCardSetPresentationTimingParametersWithInitialVelocity:(CGVector)a3;
- (BCCardStackConfiguration)initWithEnvironment:(id)a3;
- (BOOL)cardsCanExpand;
- (double)auxiliaryNavigationBarHorizontalInset;
- (double)auxiliaryNavigationBarVerticalInset;
- (double)auxiliaryNavigationBarVisibilityOffset;
- (double)cardContractedScale;
- (double)cardCornerRadius;
- (double)cardExpandedTopOffset;
- (double)cardGap;
- (double)cardUnexpandedTopOffset;
- (double)contractedCardWidthForContainerWidth:(double)a3;
- (int64_t)_viewport;
@end

@implementation BCCardStackConfiguration

- (BCCardStackConfiguration)initWithEnvironment:(id)a3
{
  v4.receiver = self;
  v4.super_class = BCCardStackConfiguration;
  return [(BCLayoutConfiguration *)&v4 initWithViewController:0 configurationEnvironment:a3];
}

- (int64_t)_viewport
{
  v2 = [(BCLayoutConfiguration *)self environment];
  [v2 screenSize];
  v5 = BCViewportSize(v3, v4);

  return v5;
}

- (double)cardExpandedTopOffset
{
  v2 = [(BCCardStackConfiguration *)self cardsCanExpand];
  result = -100.0;
  if (!v2)
  {
    return 0.0;
  }

  return result;
}

- (double)cardUnexpandedTopOffset
{
  v3 = [(BCLayoutConfiguration *)self environment];
  [v3 defaultStatusBarHeight];
  v5 = v4;

  if (isPad())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  v7 = [(BCCardStackConfiguration *)self cardsCanExpand];
  v8 = 44.0;
  if (v7)
  {
    v8 = 13.0;
  }

  return v6 + v5 + v8;
}

- (double)cardGap
{
  v3 = [(BCCardStackConfiguration *)self cardsCanExpand];
  result = 4.0;
  if ((v3 & 1) == 0)
  {
    v5 = [(BCCardStackConfiguration *)self _viewport];
    result = 4.0;
    if (v5 == 2)
    {
      result = 8.0;
    }

    if (v5 == 3)
    {
      return 12.0;
    }
  }

  return result;
}

- (double)cardCornerRadius
{
  if (_UISolariumEnabled())
  {
    if (isPhone())
    {
      return 38.0;
    }

    else
    {
      return 32.0;
    }
  }

  else
  {
    v4 = [(BCLayoutConfiguration *)self environment];
    if ([v4 isCompactWidth])
    {
      v3 = 12.0;
    }

    else
    {
      v3 = 16.0;
    }
  }

  return v3;
}

- (double)auxiliaryNavigationBarHorizontalInset
{
  v2 = [(BCLayoutConfiguration *)self environment];
  if ([v2 isCompactWidth])
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 15.0;
  }

  return v3;
}

- (double)auxiliaryNavigationBarVerticalInset
{
  v2 = [(BCLayoutConfiguration *)self environment];
  if ([v2 isCompactWidth])
  {
    v3 = 12.0;
  }

  else
  {
    v3 = 15.0;
  }

  return v3;
}

- (double)auxiliaryNavigationBarVisibilityOffset
{
  if ([(BCCardStackConfiguration *)self cardsCanExpand])
  {
    v3 = [(BCLayoutConfiguration *)self environment];
    [v3 defaultStatusBarHeight];
    v5 = v4;

    return v5;
  }

  else
  {

    [(BCCardStackConfiguration *)self auxiliaryNavigationBarBlurBleedHeight];
  }

  return result;
}

- (BOOL)cardsCanExpand
{
  v3 = _os_feature_enabled_impl();
  v4 = [(BCLayoutConfiguration *)self environment];
  v5 = [v4 isCompactWidth];
  v6 = v3 ^ 1 | v5;
  if ((v3 & 1) == 0 && (v5 & 1) == 0)
  {
    [v4 size];
    v8 = v7;
    [(BCCardStackConfiguration *)self maxCardWidth];
    v6 = v8 <= v9;
  }

  return v6 & 1;
}

- (double)cardContractedScale
{
  v3 = [(BCCardStackConfiguration *)self cardsCanExpand];
  result = 1.0;
  if (v3)
  {
    v5 = [(BCLayoutConfiguration *)self environment];
    [v5 size];
    v7 = v6;

    [(BCCardStackConfiguration *)self cardGap];
    v9 = v8;
    [(BCCardStackConfiguration *)self cardPeekWidth];
    return (v7 + (v9 + v10) * -2.0) / v7;
  }

  return result;
}

+ (id)createCardSetPresentationTimingParameters
{
  v2 = objc_opt_class();

  return [v2 createCardSetPresentationTimingParametersWithInitialVelocity:{0.0, 0.0}];
}

+ (id)createCardSetPresentationTimingParametersWithInitialVelocity:(CGVector)a3
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:380.0 damping:32.0 initialVelocity:{a3.dx, a3.dy}];

  return v3;
}

- (double)contractedCardWidthForContainerWidth:(double)a3
{
  [(BCCardStackConfiguration *)self cardPeekWidth];
  v6 = a3 - v5 * 2.0;
  [(BCCardStackConfiguration *)self cardGapForContainerWidth:a3];
  v8 = v6 - v7 * 2.0;
  [(BCCardStackConfiguration *)self maxCardWidth];
  if (v8 < result)
  {
    return v8;
  }

  return result;
}

@end