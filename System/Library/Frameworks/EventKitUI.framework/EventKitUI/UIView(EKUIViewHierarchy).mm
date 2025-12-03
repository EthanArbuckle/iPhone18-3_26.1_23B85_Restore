@interface UIView(EKUIViewHierarchy)
- (double)ekui_height;
- (double)ekui_width;
- (uint64_t)ekui_horizontalSizeClass;
- (uint64_t)ekui_interfaceOrientation;
- (uint64_t)ekui_verticalSizeClass;
- (void)ekui_affineTransform;
@end

@implementation UIView(EKUIViewHierarchy)

- (double)ekui_width
{
  [self bounds];

  return CGRectGetWidth(*&v1);
}

- (double)ekui_height
{
  [self bounds];

  return CGRectGetHeight(*&v1);
}

- (uint64_t)ekui_horizontalSizeClass
{
  traitCollection = [self traitCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootViewController = [self rootViewController];
    ekui_futureTraitCollection = [rootViewController ekui_futureTraitCollection];

    traitCollection = ekui_futureTraitCollection;
  }

  horizontalSizeClass = [traitCollection horizontalSizeClass];

  return horizontalSizeClass;
}

- (uint64_t)ekui_verticalSizeClass
{
  traitCollection = [self traitCollection];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    rootViewController = [self rootViewController];
    ekui_futureTraitCollection = [rootViewController ekui_futureTraitCollection];

    traitCollection = ekui_futureTraitCollection;
  }

  verticalSizeClass = [traitCollection verticalSizeClass];

  return verticalSizeClass;
}

- (uint64_t)ekui_interfaceOrientation
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  windowScene = [self windowScene];
  interfaceOrientation = [windowScene interfaceOrientation];

  return interfaceOrientation;
}

- (void)ekui_affineTransform
{
  layer = [self layer];
  if (layer)
  {
    v4 = layer;
    [layer affineTransform];
    layer = v4;
  }

  else
  {
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

@end