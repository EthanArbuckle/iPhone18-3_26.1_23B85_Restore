@interface HomeScreenPosterCollectionViewCell_InvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation HomeScreenPosterCollectionViewCell_InvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  selfCopy = self;
  if (_AXSInvertColorsEnabled())
  {
    window = [(HomeScreenPosterCollectionViewCell_InvertColorsAccessibility *)selfCopy window];
    traitCollection = [window traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if (userInterfaceStyle != &dword_0 + 2)
    {
      goto LABEL_6;
    }

    layer = [(HomeScreenPosterCollectionViewCell_InvertColorsAccessibility *)selfCopy layer];
    [AXInvertColorsAppHelper applyInvertFilterToLayer:layer];
  }

  else
  {
    layer = [(HomeScreenPosterCollectionViewCell_InvertColorsAccessibility *)selfCopy layer];
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layer];
  }

LABEL_6:
}

@end