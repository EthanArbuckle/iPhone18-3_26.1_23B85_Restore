@interface _UIApplicationInfoInvertColorsAccessibility
- (int64_t)xb_userInterfaceStyleForRequestedUserInterfaceStyle:(int64_t)a3;
@end

@implementation _UIApplicationInfoInvertColorsAccessibility

- (int64_t)xb_userInterfaceStyleForRequestedUserInterfaceStyle:(int64_t)a3
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
    v6 = [(_UIApplicationInfoInvertColorsAccessibility *)&v8 xb_userInterfaceStyleForRequestedUserInterfaceStyle:a3];
  }

  return v6;
}

@end