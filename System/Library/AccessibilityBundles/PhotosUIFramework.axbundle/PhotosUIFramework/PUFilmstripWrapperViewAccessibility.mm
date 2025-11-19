@interface PUFilmstripWrapperViewAccessibility
- (BOOL)canBecomeFocused;
@end

@implementation PUFilmstripWrapperViewAccessibility

- (BOOL)canBecomeFocused
{
  if (([(PUFilmstripWrapperViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]& 1) != 0)
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PUFilmstripWrapperViewAccessibility;
  return [(PUFilmstripWrapperViewAccessibility *)&v4 canBecomeFocused];
}

@end