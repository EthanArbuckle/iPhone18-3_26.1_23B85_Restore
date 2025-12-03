@interface UIView(AppStoreComponents)
- (id)asc_layoutTraitEnvironment;
- (id)asc_nearestSuperviewPassingTest:()AppStoreComponents;
- (uint64_t)asc_isEqualToOrDescendantOfFocusItem:()AppStoreComponents;
@end

@implementation UIView(AppStoreComponents)

- (id)asc_layoutTraitEnvironment
{
  effectiveUserInterfaceLayoutDirection = [self effectiveUserInterfaceLayoutDirection];
  if (effectiveUserInterfaceLayoutDirection == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (effectiveUserInterfaceLayoutDirection)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  traitCollection = [self traitCollection];
  if ([traitCollection layoutDirection] == v4)
  {
    selfCopy = self;
  }

  else
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __56__UIView_AppStoreComponents__asc_layoutTraitEnvironment__block_invoke;
    v9[3] = &__block_descriptor_40_e27_v16__0___UIMutableTraits__8l;
    v9[4] = v4;
    v7 = [traitCollection traitCollectionByModifyingTraits:v9];
    selfCopy = [__ASCLayoutProxy traitEnvironmentWithTraitCollection:v7];
  }

  return selfCopy;
}

- (uint64_t)asc_isEqualToOrDescendantOfFocusItem:()AppStoreComponents
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if (v4 == self)
    {
      v9 = 1;
    }

    else
    {
      objc_opt_class();
      v6 = v5;
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      if (v8)
      {
        v9 = [self isDescendantOfView:v8];
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)asc_nearestSuperviewPassingTest:()AppStoreComponents
{
  v4 = a3;
  v8 = 0;
  superview = [self superview];
  if (superview)
  {
    while ((v4[2](v4, superview, &v8) & 1) == 0)
    {
      if ((v8 & 1) == 0)
      {
        v5Superview = [superview superview];

        superview = v5Superview;
        if (v5Superview)
        {
          continue;
        }
      }

      superview = 0;
      break;
    }
  }

  return superview;
}

@end