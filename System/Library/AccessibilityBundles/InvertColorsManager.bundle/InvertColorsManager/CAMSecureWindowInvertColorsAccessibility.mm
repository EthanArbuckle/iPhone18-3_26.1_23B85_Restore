@interface CAMSecureWindowInvertColorsAccessibility
- (BOOL)_accessibilityInvertColorsIsInHostedDarkWindow;
- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert;
@end

@implementation CAMSecureWindowInvertColorsAccessibility

- (BOOL)_accessibilityInvertColorsSupportsDarkWindowInvert
{
  v2 = +[AXSpringBoardServer server];
  v3 = [v2 isScreenLockedWithPasscode:0];

  if (!v3)
  {
    return 1;
  }

  v4 = +[AXSpringBoardServer server];
  isDarkModeActive = [v4 isDarkModeActive];

  return isDarkModeActive ^ 1;
}

- (BOOL)_accessibilityInvertColorsIsInHostedDarkWindow
{
  v2 = +[AXSpringBoardServer server];
  v3 = [v2 isScreenLockedWithPasscode:0];

  if (!v3)
  {
    return 0;
  }

  v4 = +[AXSpringBoardServer server];
  isDarkModeActive = [v4 isDarkModeActive];

  return isDarkModeActive;
}

@end