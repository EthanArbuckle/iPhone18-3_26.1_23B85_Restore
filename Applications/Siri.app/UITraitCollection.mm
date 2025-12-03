@interface UITraitCollection
- (id)aceDisplayColorGamut;
- (id)aceDisplayColorScheme;
- (id)aceDisplayContrast;
- (id)aceDynamicTypeSize;
- (id)aceTextLegibilityWeight;
@end

@implementation UITraitCollection

- (id)aceDisplayColorScheme
{
  userInterfaceStyle = [(UITraitCollection *)self userInterfaceStyle];
  if (userInterfaceStyle <= UIUserInterfaceStyleDark)
  {
    v3 = **(&off_100167C20 + userInterfaceStyle);
  }

  return v3;
}

- (id)aceDisplayColorGamut
{
  displayGamut = [(UITraitCollection *)self displayGamut];
  if (displayGamut + 1 <= 2)
  {
    displayGamut = **(&off_100167C38 + displayGamut + 1);
  }

  return displayGamut;
}

- (id)aceTextLegibilityWeight
{
  legibilityWeight = [(UITraitCollection *)self legibilityWeight];
  if (legibilityWeight + 1 <= 2)
  {
    legibilityWeight = **(&off_100167C50 + legibilityWeight + 1);
  }

  return legibilityWeight;
}

- (id)aceDynamicTypeSize
{
  preferredContentSizeCategory = [(UITraitCollection *)self preferredContentSizeCategory];

  v4 = &SAUIDynamicTypeSizeUnspecifiedValue;
  if (preferredContentSizeCategory != UIContentSizeCategoryUnspecified)
  {
    preferredContentSizeCategory2 = [(UITraitCollection *)self preferredContentSizeCategory];

    if (preferredContentSizeCategory2 == UIContentSizeCategorySmall)
    {
      v4 = &SAUIDynamicTypeSizeSmallValue;
    }

    else
    {
      preferredContentSizeCategory3 = [(UITraitCollection *)self preferredContentSizeCategory];

      if (preferredContentSizeCategory3 == UIContentSizeCategoryMedium)
      {
        v4 = &SAUIDynamicTypeSizeMediumValue;
      }

      else
      {
        preferredContentSizeCategory4 = [(UITraitCollection *)self preferredContentSizeCategory];

        if (preferredContentSizeCategory4 == UIContentSizeCategoryExtraSmall)
        {
          v4 = &SAUIDynamicTypeSizeExtraSmallValue;
        }

        else
        {
          preferredContentSizeCategory5 = [(UITraitCollection *)self preferredContentSizeCategory];

          if (preferredContentSizeCategory5 == UIContentSizeCategoryLarge)
          {
            v4 = &SAUIDynamicTypeSizeLargeValue;
          }

          else
          {
            preferredContentSizeCategory6 = [(UITraitCollection *)self preferredContentSizeCategory];

            if (preferredContentSizeCategory6 == UIContentSizeCategoryExtraLarge)
            {
              v4 = &SAUIDynamicTypeSizeExtraLargeValue;
            }

            else
            {
              preferredContentSizeCategory7 = [(UITraitCollection *)self preferredContentSizeCategory];

              if (preferredContentSizeCategory7 == UIContentSizeCategoryExtraExtraLarge)
              {
                v4 = &SAUIDynamicTypeSizeExtraExtraLargeValue;
              }

              else
              {
                preferredContentSizeCategory8 = [(UITraitCollection *)self preferredContentSizeCategory];

                if (preferredContentSizeCategory8 == UIContentSizeCategoryExtraExtraExtraLarge)
                {
                  v4 = &SAUIDynamicTypeSizeExtraExtraExtraLargeValue;
                }

                else
                {
                  preferredContentSizeCategory9 = [(UITraitCollection *)self preferredContentSizeCategory];

                  if (preferredContentSizeCategory9 == UIContentSizeCategoryAccessibilityMedium)
                  {
                    v4 = &SAUIDynamicTypeSizeAccessibilityMediumValue;
                  }

                  else
                  {
                    preferredContentSizeCategory10 = [(UITraitCollection *)self preferredContentSizeCategory];

                    if (preferredContentSizeCategory10 == UIContentSizeCategoryAccessibilityLarge)
                    {
                      v4 = &SAUIDynamicTypeSizeAccessibilityLargeValue;
                    }

                    else
                    {
                      preferredContentSizeCategory11 = [(UITraitCollection *)self preferredContentSizeCategory];

                      if (preferredContentSizeCategory11 == UIContentSizeCategoryAccessibilityExtraLarge)
                      {
                        v4 = &SAUIDynamicTypeSizeAccessibilityExtraLargeValue;
                      }

                      else
                      {
                        preferredContentSizeCategory12 = [(UITraitCollection *)self preferredContentSizeCategory];

                        if (preferredContentSizeCategory12 == UIContentSizeCategoryAccessibilityExtraExtraLarge)
                        {
                          v4 = &SAUIDynamicTypeSizeAccessibilityExtraExtraLargeValue;
                        }

                        else
                        {
                          preferredContentSizeCategory13 = [(UITraitCollection *)self preferredContentSizeCategory];

                          if (preferredContentSizeCategory13 == UIContentSizeCategoryAccessibilityExtraExtraExtraLarge)
                          {
                            v4 = &SAUIDynamicTypeSizeAccessibilityExtraExtraExtraLargeValue;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  v17 = *v4;

  return v17;
}

- (id)aceDisplayContrast
{
  accessibilityContrast = [(UITraitCollection *)self accessibilityContrast];
  if (accessibilityContrast + 1 <= 2)
  {
    accessibilityContrast = **(&off_100167C68 + accessibilityContrast + 1);
  }

  return accessibilityContrast;
}

@end