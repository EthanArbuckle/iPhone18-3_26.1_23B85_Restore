@interface AXInvertColorsAppHelper
+ (BOOL)hasInvertFilter:(id)a3;
+ (BOOL)initializedOverrides;
+ (id)_accessibilityUpdateInvertColorsFilters:(id)a3 traverseAncestors:(BOOL)a4 updateType:(int64_t)a5;
+ (id)bundleName;
+ (id)insertBackgroundView:(id)a3 alpha:(double)a4;
+ (id)insertBackgroundView:(id)a3 color:(id)a4;
+ (id)invertImage:(id)a3;
+ (void)_initializeOverrides;
+ (void)_removeInvertFilter:(id)a3;
+ (void)applyInvertFilterToLayer:(id)a3;
+ (void)initializeOverrides;
+ (void)moveInvertFilterToFront:(id)a3;
+ (void)removeBackgroundView:(id)a3;
+ (void)toggleDarkModeWindowInvertFilterToLayer:(id)a3 enabled:(BOOL)a4;
+ (void)toggleInvertColorsOnLayer:(id)a3 moveFilterToFront:(BOOL)a4;
+ (void)toggleInvertColorsOnView:(id)a3;
+ (void)unapplyInvertFilterToLayer:(id)a3;
@end

@implementation AXInvertColorsAppHelper

+ (BOOL)initializedOverrides
{
  v2 = qword_834E0;
  v3 = NSStringFromClass(a1);
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 BOOLValue];

  return v5;
}

+ (id)insertBackgroundView:(id)a3 color:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && ![AXInvertColorsManager objectIsOnCarScreen:v5])
  {
    v7 = [v5 viewWithTag:123456789];
    if (!v7)
    {
      v8 = [UIView alloc];
      v9 = [v5 window];
      [v9 bounds];
      v7 = [v8 initWithFrame:?];

      [v7 setTag:123456789];
      [v7 setBackgroundColor:v6];
      [v7 setUserInteractionEnabled:0];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setAccessibilityIgnoresInvertColors:1];
      [v5 insertSubview:v7 atIndex:0];
      v23 = [v7 leadingAnchor];
      v22 = [v5 leadingAnchor];
      v21 = [v23 constraintEqualToAnchor:v22];
      v24[0] = v21;
      v20 = [v7 trailingAnchor];
      v19 = [v5 trailingAnchor];
      v18 = [v20 constraintEqualToAnchor:v19];
      v24[1] = v18;
      v10 = [v7 topAnchor];
      v11 = [v5 topAnchor];
      v12 = [v10 constraintEqualToAnchor:v11];
      v24[2] = v12;
      v13 = [v7 bottomAnchor];
      v14 = [v5 bottomAnchor];
      v15 = [v13 constraintEqualToAnchor:v14];
      v24[3] = v15;
      v16 = [NSArray arrayWithObjects:v24 count:4];
      [NSLayoutConstraint activateConstraints:v16];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)insertBackgroundView:(id)a3 alpha:(double)a4
{
  v6 = a3;
  v7 = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:a4];
  v8 = [a1 insertBackgroundView:v6 color:v7];

  return v8;
}

+ (void)removeBackgroundView:(id)a3
{
  v3 = [a3 viewWithTag:123456789];
  [v3 removeFromSuperview];
}

+ (id)_accessibilityUpdateInvertColorsFilters:(id)a3 traverseAncestors:(BOOL)a4 updateType:(int64_t)a5
{
  v8 = a3;
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  if (a5 == 1 && !IsInvertColorsEnabled)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v11 = v8;
  if (v11 && !a5)
  {
    while (1)
    {
      v12 = [v11 filters];
      v13 = [v12 indexOfObjectPassingTest:&stru_445C0] == 0x7FFFFFFFFFFFFFFFLL || v12 == 0;
      if (!v13 || !a4)
      {
        break;
      }

      v14 = [v11 superlayer];

      v11 = v14;
      if (!v14)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

LABEL_13:
  if (!a5)
  {
LABEL_17:
    [a1 unapplyInvertFilterToLayer:v11];
    goto LABEL_18;
  }

  if (a5 < 1)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  [a1 applyInvertFilterToLayer:v11];
  v10 = v11;
LABEL_19:

LABEL_20:

  return v10;
}

+ (void)toggleDarkModeWindowInvertFilterToLayer:(id)a3 enabled:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [v9 filters];
  v7 = [v6 mutableCopy];

  if (v4)
  {
    if (([v7 ax_containsObjectUsingBlock:&stru_44600] & 1) == 0)
    {
      if (!v7)
      {
        v7 = +[NSMutableArray array];
      }

      v8 = [CAFilter filterWithType:kCAFilterColorInvert];
      [v8 setName:@"InvertColorsDarkModeWindowFilter"];
      [v8 setAccessibility:1];
      [v7 addObject:v8];
      [v9 setValue:v7 forKey:@"filters"];
      [a1 unapplyInvertFilterToLayer:v9];
    }
  }

  else
  {
    [v7 ax_removeObjectsFromArrayUsingBlock:&stru_44620];
    [v9 setValue:v7 forKey:@"filters"];
  }
}

+ (void)unapplyInvertFilterToLayer:(id)a3
{
  v8 = a3;
  v3 = [v8 filters];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 indexOfObjectPassingTest:&stru_445C0];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [v4 mutableCopy];
      [v7 removeObjectAtIndex:v6];
      [v8 setValue:v7 forKey:@"filters"];
    }
  }
}

+ (id)invertImage:(id)a3
{
  v3 = a3;
  [v3 size];
  v5 = v4;
  [v3 size];
  v7 = v6;
  if (fabs(v5) < 0.001 || fabs(v6) < 0.001 || v5 <= 0.0 || v6 <= 0.0)
  {
    v15 = v3;
  }

  else
  {
    [v3 scale];
    v9 = v8;
    v18.width = v5;
    v18.height = v7;
    UIGraphicsBeginImageContextWithOptions(v18, 0, v9);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
    [v3 drawInRect:{0.0, 0.0, v5, v7}];
    v11 = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(v11, kCGBlendModeDifference);
    v12 = UIGraphicsGetCurrentContext();
    v13 = +[UIColor clearColor];
    CGContextSetFillColorWithColor(v12, [v13 CGColor]);

    v14 = UIGraphicsGetCurrentContext();
    v19.origin.x = 0.0;
    v19.origin.y = 0.0;
    v19.size.width = v5;
    v19.size.height = v7;
    CGContextFillRect(v14, v19);
    v15 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
  }

  return v15;
}

+ (void)applyInvertFilterToLayer:(id)a3
{
  v7 = a3;
  v3 = [v7 valueForKeyPath:@"filters.InvertColorsDoubleInvert"];
  if (v3)
  {
LABEL_2:

    goto LABEL_4;
  }

  v4 = [v7 valueForKeyPath:@"filters.InvertColorsDarkModeWindowFilter"];

  if (!v4)
  {
    v5 = [v7 filters];
    v3 = [v5 mutableCopy];

    if (!v3)
    {
      v3 = +[NSMutableArray array];
    }

    v6 = [CAFilter filterWithType:kCAFilterColorInvert];
    [v6 setName:@"InvertColorsDoubleInvert"];
    [v6 setAccessibility:1];
    [v3 addObject:v6];
    [v7 setValue:v3 forKey:@"filters"];

    goto LABEL_2;
  }

LABEL_4:
}

+ (void)moveInvertFilterToFront:(id)a3
{
  v8 = a3;
  v3 = [v8 filters];
  v4 = [v3 indexOfObjectPassingTest:&stru_445C0];

  if ((v4 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    v5 = [v8 filters];
    v6 = [v5 mutableCopy];

    v7 = [v6 objectAtIndex:v4];
    [v6 removeObjectAtIndex:v4];
    [v6 insertObject:v7 atIndex:0];
    [v8 setValue:v6 forKey:@"filters"];
  }
}

+ (void)_removeInvertFilter:(id)a3
{
  v9 = a3;
  v3 = [v9 layer];
  v4 = [v3 filters];

  if (v4)
  {
    v5 = [v4 indexOfObjectPassingTest:&stru_445C0];
    if (v5 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v6 = v5;
      v7 = [v4 mutableCopy];
      [v7 removeObjectAtIndex:v6];
      v8 = [v9 layer];
      [v8 setValue:v7 forKey:@"filters"];
    }
  }
}

+ (BOOL)hasInvertFilter:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 layer];
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
LABEL_8:
      v7 = 0;
      goto LABEL_11;
    }

    v4 = v3;
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v6 = [v4 valueForKeyPath:@"filters.InvertColorsDoubleInvert"];
  if (v6)
  {
    v7 = 1;
  }

  else
  {
    v8 = [v5 valueForKeyPath:@"filters.InvertColorsDarkModeWindowFilter"];
    v7 = v8 != 0;
  }

LABEL_11:
  return v7;
}

+ (id)bundleName
{
  v2 = objc_opt_class();
  v3 = NSStringFromClass(v2);
  v4 = [v3 rangeOfString:@"_"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    objc_opt_class();
    _AXAssert();
    v5 = 0;
  }

  else
  {
    v5 = [v3 substringFromIndex:v4 + 1];
  }

  return v5;
}

+ (void)_initializeOverrides
{
  if (([a1 initializedOverrides] & 1) == 0)
  {
    v3 = +[AXValidationManager sharedInstance];
    v13[4] = a1;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_4EC8;
    v14[3] = &unk_44640;
    v14[4] = a1;
    v12[4] = a1;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4EEC;
    v13[3] = &unk_44640;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4F8C;
    v12[3] = &unk_446A0;
    [v3 performValidations:v14 withPreValidationHandler:v13 postValidationHandler:&stru_44680 safeCategoryInstallationHandler:v12];

    [a1 setInitializedOverrides:1];
    v4 = +[AXSubsystemInvertColors sharedInstance];
    v5 = [v4 ignoreLogging];

    if ((v5 & 1) == 0)
    {
      v6 = +[AXSubsystemInvertColors identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        v11 = [a1 bundleName];
        v10 = _AXStringForArgs();

        if (os_log_type_enabled(v7, v8))
        {
          *buf = 138543362;
          v16 = v10;
          _os_log_impl(&dword_0, v7, v8, "%{public}@", buf, 0xCu);
        }
      }
    }
  }
}

+ (void)initializeOverrides
{
  v3 = +[AXSubsystemInvertColors sharedInstance];
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
  {
    v5 = +[AXSubsystemInvertColors identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v14 = [a1 bundleName];
      v9 = _AXStringForArgs();

      if (os_log_type_enabled(v6, v7))
      {
        *buf = 138543362;
        v17 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", buf, 0xCu);
      }
    }
  }

  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_5248;
  v15[3] = &unk_446C0;
  v15[4] = a1;
  v10 = objc_retainBlock(v15);
  v11 = [a1 helperType];
  if (v11 > 2)
  {
    if (v11 == (&dword_0 + 3))
    {
      v12 = [sub_5390() sharedInstance];
      v13 = [a1 bundleName];
      [v12 addHandler:v10 forAppExtension:v13];
      goto LABEL_16;
    }

    if (v11 == &dword_4)
    {
      v12 = [sub_5390() sharedInstance];
      v13 = [a1 bundleName];
      [v12 addHandler:v10 forBundleName:v13];
      goto LABEL_16;
    }
  }

  else
  {
    if (v11 == (&dword_0 + 1))
    {
      v12 = [sub_5390() sharedInstance];
      v13 = [a1 bundleName];
      [v12 addHandler:v10 forFramework:v13];
      goto LABEL_16;
    }

    if (v11 == (&dword_0 + 2))
    {
      v12 = [sub_5390() sharedInstance];
      v13 = [a1 bundleName];
      [v12 addHandler:v10 forApp:v13];
LABEL_16:
    }
  }
}

+ (void)toggleInvertColorsOnLayer:(id)a3 moveFilterToFront:(BOOL)a4
{
  v4 = a4;
  v10 = a3;
  v5 = [v10 delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v10 delegate];
  }

  else
  {
    v6 = 0;
  }

  v7 = [v6 window];
  v8 = [v7 traitCollection];
  v9 = [v8 userInterfaceStyle];

  if (!_AXSInvertColorsEnabled() || v9 == &dword_0 + 2)
  {
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:v10];
  }

  else
  {
    [AXInvertColorsAppHelper applyInvertFilterToLayer:v10];
    if (v4)
    {
      [AXInvertColorsAppHelper moveInvertFilterToFront:v10];
    }
  }
}

+ (void)toggleInvertColorsOnView:(id)a3
{
  v7 = a3;
  if (([v7 accessibilityInvertColorsIsolatedTree] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v7;
    }

    else
    {
      v3 = [v7 window];
    }

    v4 = v3;
    v5 = [v3 traitCollection];
    v6 = [v5 userInterfaceStyle];

    if ([v7 _accessibilityAppliesInvertColors] && v6 != &dword_0 + 2 || objc_msgSend(v7, "_accessibilityAppliesInvertColorsInDarkUI") && v6 == &dword_0 + 2)
    {
      [v7 _accessibilityApplyInvertFilter];
    }

    else
    {
      [AXInvertColorsAppHelper _removeInvertFilter:v7];
    }
  }
}

@end