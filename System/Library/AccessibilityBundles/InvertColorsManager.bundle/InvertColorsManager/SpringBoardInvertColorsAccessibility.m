@interface SpringBoardInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
@end

@implementation SpringBoardInvertColorsAccessibility

- (void)_accessibilityLoadInvertColors
{
  v2 = AXLogInvertColors();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_0, v2, OS_LOG_TYPE_INFO, "SpringBoardInvertColorsAccessibility: loading invert colors", v3, 2u);
  }

  AXPerformSafeBlock();
}

@end