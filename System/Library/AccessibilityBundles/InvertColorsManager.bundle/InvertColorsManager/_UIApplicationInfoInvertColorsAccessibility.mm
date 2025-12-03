@interface _UIApplicationInfoInvertColorsAccessibility
- (int64_t)xb_userInterfaceStyleForRequestedUserInterfaceStyle:(int64_t)style;
@end

@implementation _UIApplicationInfoInvertColorsAccessibility

- (int64_t)xb_userInterfaceStyleForRequestedUserInterfaceStyle:(int64_t)style
{
  v5 = [(_UIApplicationInfoInvertColorsAccessibility *)self safeStringForKey:@"bundleIdentifier"];
  if (_AXSInvertColorsEnabledAppCached())
  {
    v6 = &dword_0 + 2;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = _UIApplicationInfoInvertColorsAccessibility;
    v6 = [(_UIApplicationInfoInvertColorsAccessibility *)&v8 xb_userInterfaceStyleForRequestedUserInterfaceStyle:style];
  }

  return v6;
}

@end