@interface BCCardStackConfiguration
+ (id)createCardSetPresentationTimingParameters;
+ (id)createCardSetPresentationTimingParametersWithInitialVelocity:(CGVector)velocity;
- (BCCardStackConfiguration)initWithEnvironment:(id)environment;
- (BOOL)cardsCanExpand;
- (double)auxiliaryNavigationBarHorizontalInset;
- (double)auxiliaryNavigationBarVerticalInset;
- (double)auxiliaryNavigationBarVisibilityOffset;
- (double)cardContractedScale;
- (double)cardCornerRadius;
- (double)cardExpandedTopOffset;
- (double)cardGap;
- (double)cardUnexpandedTopOffset;
- (double)contractedCardWidthForContainerWidth:(double)width;
- (int64_t)_viewport;
@end

@implementation BCCardStackConfiguration

- (BCCardStackConfiguration)initWithEnvironment:(id)environment
{
  v4.receiver = self;
  v4.super_class = BCCardStackConfiguration;
  return [(BCLayoutConfiguration *)&v4 initWithViewController:0 configurationEnvironment:environment];
}

- (int64_t)_viewport
{
  environment = [(BCLayoutConfiguration *)self environment];
  [environment screenSize];
  v5 = BCViewportSize(v3, v4);

  return v5;
}

- (double)cardExpandedTopOffset
{
  cardsCanExpand = [(BCCardStackConfiguration *)self cardsCanExpand];
  result = -100.0;
  if (!cardsCanExpand)
  {
    return 0.0;
  }

  return result;
}

- (double)cardUnexpandedTopOffset
{
  environment = [(BCLayoutConfiguration *)self environment];
  [environment defaultStatusBarHeight];
  v5 = v4;

  if (isPad())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0.0;
  }

  cardsCanExpand = [(BCCardStackConfiguration *)self cardsCanExpand];
  v8 = 44.0;
  if (cardsCanExpand)
  {
    v8 = 13.0;
  }

  return v6 + v5 + v8;
}

- (double)cardGap
{
  cardsCanExpand = [(BCCardStackConfiguration *)self cardsCanExpand];
  result = 4.0;
  if ((cardsCanExpand & 1) == 0)
  {
    _viewport = [(BCCardStackConfiguration *)self _viewport];
    result = 4.0;
    if (_viewport == 2)
    {
      result = 8.0;
    }

    if (_viewport == 3)
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
    environment = [(BCLayoutConfiguration *)self environment];
    if ([environment isCompactWidth])
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
  environment = [(BCLayoutConfiguration *)self environment];
  if ([environment isCompactWidth])
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
  environment = [(BCLayoutConfiguration *)self environment];
  if ([environment isCompactWidth])
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
    environment = [(BCLayoutConfiguration *)self environment];
    [environment defaultStatusBarHeight];
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
  environment = [(BCLayoutConfiguration *)self environment];
  isCompactWidth = [environment isCompactWidth];
  v6 = v3 ^ 1 | isCompactWidth;
  if ((v3 & 1) == 0 && (isCompactWidth & 1) == 0)
  {
    [environment size];
    v8 = v7;
    [(BCCardStackConfiguration *)self maxCardWidth];
    v6 = v8 <= v9;
  }

  return v6 & 1;
}

- (double)cardContractedScale
{
  cardsCanExpand = [(BCCardStackConfiguration *)self cardsCanExpand];
  result = 1.0;
  if (cardsCanExpand)
  {
    environment = [(BCLayoutConfiguration *)self environment];
    [environment size];
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

+ (id)createCardSetPresentationTimingParametersWithInitialVelocity:(CGVector)velocity
{
  v3 = [[UISpringTimingParameters alloc] initWithMass:1.0 stiffness:380.0 damping:32.0 initialVelocity:{velocity.dx, velocity.dy}];

  return v3;
}

- (double)contractedCardWidthForContainerWidth:(double)width
{
  [(BCCardStackConfiguration *)self cardPeekWidth];
  v6 = width - v5 * 2.0;
  [(BCCardStackConfiguration *)self cardGapForContainerWidth:width];
  v8 = v6 - v7 * 2.0;
  [(BCCardStackConfiguration *)self maxCardWidth];
  if (v8 < result)
  {
    return v8;
  }

  return result;
}

@end