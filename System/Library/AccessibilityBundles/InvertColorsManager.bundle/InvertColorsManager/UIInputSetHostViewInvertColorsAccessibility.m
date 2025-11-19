@interface UIInputSetHostViewInvertColorsAccessibility
- (BOOL)accessibilityIgnoresInvertColors;
@end

@implementation UIInputSetHostViewInvertColorsAccessibility

- (BOOL)accessibilityIgnoresInvertColors
{
  v2 = +[UIKeyboardImpl activeInstance];

  if (v2)
  {
    v3 = +[UIKeyboardImpl activeInstance];
    v4 = [v3 safeValueForKey:@"_inheritedRenderConfig"];
    v5 = [v4 safeBoolForKey:@"lightKeyboard"];

    v6 = +[NSBundle mainBundle];
    v7 = [v6 bundleIdentifier];
    v8 = [v7 isEqualToString:AX_InputUIBundleName];

    if (!v8)
    {
      v24 = (AXProcessIsSpotlight() | v5) ^ 1;
      return v24 & 1;
    }

    if (v5)
    {
      v9 = [UIApp safeUIViewForKey:@"keyWindow"];
      v10 = [v9 safeValueForKey:@"rootViewController"];
      v11 = [v10 safeValueForKey:@"textInputSource"];
      v12 = [v11 safeValueForKey:@"sourceSession"];
      v13 = [v12 safeValueForKey:@"documentTraits"];
      v14 = [v13 safeStringForKey:@"bundleId"];
      v15 = [v14 isEqualToString:AX_SpotlightBundleName];

      return v15;
    }
  }

  else
  {
    v17 = +[AXSubsystemInvertColors sharedInstance];
    v18 = [v17 ignoreLogging];

    if ((v18 & 1) == 0)
    {
      v19 = +[AXSubsystemInvertColors identifier];
      v20 = AXLoggerForFacility();

      v21 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = AXColorizeFormatLog();
        v23 = _AXStringForArgs();
        if (os_log_type_enabled(v20, v21))
        {
          v25 = 138543362;
          v26 = v23;
          _os_log_impl(&dword_0, v20, v21, "%{public}@", &v25, 0xCu);
        }
      }
    }
  }

  v24 = 0;
  return v24 & 1;
}

@end