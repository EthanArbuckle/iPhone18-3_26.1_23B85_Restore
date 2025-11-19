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
  v2 = [(UITraitCollection *)self userInterfaceStyle];
  if (v2 <= UIUserInterfaceStyleDark)
  {
    v3 = **(&off_100167C20 + v2);
  }

  return v3;
}

- (id)aceDisplayColorGamut
{
  v2 = [(UITraitCollection *)self displayGamut];
  if (v2 + 1 <= 2)
  {
    v2 = **(&off_100167C38 + v2 + 1);
  }

  return v2;
}

- (id)aceTextLegibilityWeight
{
  v2 = [(UITraitCollection *)self legibilityWeight];
  if (v2 + 1 <= 2)
  {
    v2 = **(&off_100167C50 + v2 + 1);
  }

  return v2;
}

- (id)aceDynamicTypeSize
{
  v3 = [(UITraitCollection *)self preferredContentSizeCategory];

  v4 = &SAUIDynamicTypeSizeUnspecifiedValue;
  if (v3 != UIContentSizeCategoryUnspecified)
  {
    v5 = [(UITraitCollection *)self preferredContentSizeCategory];

    if (v5 == UIContentSizeCategorySmall)
    {
      v4 = &SAUIDynamicTypeSizeSmallValue;
    }

    else
    {
      v6 = [(UITraitCollection *)self preferredContentSizeCategory];

      if (v6 == UIContentSizeCategoryMedium)
      {
        v4 = &SAUIDynamicTypeSizeMediumValue;
      }

      else
      {
        v7 = [(UITraitCollection *)self preferredContentSizeCategory];

        if (v7 == UIContentSizeCategoryExtraSmall)
        {
          v4 = &SAUIDynamicTypeSizeExtraSmallValue;
        }

        else
        {
          v8 = [(UITraitCollection *)self preferredContentSizeCategory];

          if (v8 == UIContentSizeCategoryLarge)
          {
            v4 = &SAUIDynamicTypeSizeLargeValue;
          }

          else
          {
            v9 = [(UITraitCollection *)self preferredContentSizeCategory];

            if (v9 == UIContentSizeCategoryExtraLarge)
            {
              v4 = &SAUIDynamicTypeSizeExtraLargeValue;
            }

            else
            {
              v10 = [(UITraitCollection *)self preferredContentSizeCategory];

              if (v10 == UIContentSizeCategoryExtraExtraLarge)
              {
                v4 = &SAUIDynamicTypeSizeExtraExtraLargeValue;
              }

              else
              {
                v11 = [(UITraitCollection *)self preferredContentSizeCategory];

                if (v11 == UIContentSizeCategoryExtraExtraExtraLarge)
                {
                  v4 = &SAUIDynamicTypeSizeExtraExtraExtraLargeValue;
                }

                else
                {
                  v12 = [(UITraitCollection *)self preferredContentSizeCategory];

                  if (v12 == UIContentSizeCategoryAccessibilityMedium)
                  {
                    v4 = &SAUIDynamicTypeSizeAccessibilityMediumValue;
                  }

                  else
                  {
                    v13 = [(UITraitCollection *)self preferredContentSizeCategory];

                    if (v13 == UIContentSizeCategoryAccessibilityLarge)
                    {
                      v4 = &SAUIDynamicTypeSizeAccessibilityLargeValue;
                    }

                    else
                    {
                      v14 = [(UITraitCollection *)self preferredContentSizeCategory];

                      if (v14 == UIContentSizeCategoryAccessibilityExtraLarge)
                      {
                        v4 = &SAUIDynamicTypeSizeAccessibilityExtraLargeValue;
                      }

                      else
                      {
                        v15 = [(UITraitCollection *)self preferredContentSizeCategory];

                        if (v15 == UIContentSizeCategoryAccessibilityExtraExtraLarge)
                        {
                          v4 = &SAUIDynamicTypeSizeAccessibilityExtraExtraLargeValue;
                        }

                        else
                        {
                          v16 = [(UITraitCollection *)self preferredContentSizeCategory];

                          if (v16 == UIContentSizeCategoryAccessibilityExtraExtraExtraLarge)
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
  v2 = [(UITraitCollection *)self accessibilityContrast];
  if (v2 + 1 <= 2)
  {
    v2 = **(&off_100167C68 + v2 + 1);
  }

  return v2;
}

@end