@interface AXInvertColorsAppHelper
+ (BOOL)hasInvertFilter:(id)filter;
+ (BOOL)initializedOverrides;
+ (id)_accessibilityUpdateInvertColorsFilters:(id)filters traverseAncestors:(BOOL)ancestors updateType:(int64_t)type;
+ (id)bundleName;
+ (id)insertBackgroundView:(id)view alpha:(double)alpha;
+ (id)insertBackgroundView:(id)view color:(id)color;
+ (id)invertImage:(id)image;
+ (void)_initializeOverrides;
+ (void)_removeInvertFilter:(id)filter;
+ (void)applyInvertFilterToLayer:(id)layer;
+ (void)initializeOverrides;
+ (void)moveInvertFilterToFront:(id)front;
+ (void)removeBackgroundView:(id)view;
+ (void)toggleDarkModeWindowInvertFilterToLayer:(id)layer enabled:(BOOL)enabled;
+ (void)toggleInvertColorsOnLayer:(id)layer moveFilterToFront:(BOOL)front;
+ (void)toggleInvertColorsOnView:(id)view;
+ (void)unapplyInvertFilterToLayer:(id)layer;
@end

@implementation AXInvertColorsAppHelper

+ (BOOL)initializedOverrides
{
  v2 = qword_834E0;
  v3 = NSStringFromClass(self);
  v4 = [v2 objectForKeyedSubscript:v3];
  bOOLValue = [v4 BOOLValue];

  return bOOLValue;
}

+ (id)insertBackgroundView:(id)view color:(id)color
{
  viewCopy = view;
  colorCopy = color;
  if (viewCopy && ![AXInvertColorsManager objectIsOnCarScreen:viewCopy])
  {
    v7 = [viewCopy viewWithTag:123456789];
    if (!v7)
    {
      v8 = [UIView alloc];
      window = [viewCopy window];
      [window bounds];
      v7 = [v8 initWithFrame:?];

      [v7 setTag:123456789];
      [v7 setBackgroundColor:colorCopy];
      [v7 setUserInteractionEnabled:0];
      [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v7 setAccessibilityIgnoresInvertColors:1];
      [viewCopy insertSubview:v7 atIndex:0];
      leadingAnchor = [v7 leadingAnchor];
      leadingAnchor2 = [viewCopy leadingAnchor];
      v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
      v24[0] = v21;
      trailingAnchor = [v7 trailingAnchor];
      trailingAnchor2 = [viewCopy trailingAnchor];
      v18 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
      v24[1] = v18;
      topAnchor = [v7 topAnchor];
      topAnchor2 = [viewCopy topAnchor];
      v12 = [topAnchor constraintEqualToAnchor:topAnchor2];
      v24[2] = v12;
      bottomAnchor = [v7 bottomAnchor];
      bottomAnchor2 = [viewCopy bottomAnchor];
      v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
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

+ (id)insertBackgroundView:(id)view alpha:(double)alpha
{
  viewCopy = view;
  v7 = [UIColor colorWithRed:0.1 green:0.1 blue:0.1 alpha:alpha];
  v8 = [self insertBackgroundView:viewCopy color:v7];

  return v8;
}

+ (void)removeBackgroundView:(id)view
{
  v3 = [view viewWithTag:123456789];
  [v3 removeFromSuperview];
}

+ (id)_accessibilityUpdateInvertColorsFilters:(id)filters traverseAncestors:(BOOL)ancestors updateType:(int64_t)type
{
  filtersCopy = filters;
  IsInvertColorsEnabled = UIAccessibilityIsInvertColorsEnabled();
  if (type == 1 && !IsInvertColorsEnabled)
  {
    v10 = 0;
    goto LABEL_20;
  }

  v11 = filtersCopy;
  if (v11 && !type)
  {
    while (1)
    {
      filters = [v11 filters];
      v13 = [filters indexOfObjectPassingTest:&stru_445C0] == 0x7FFFFFFFFFFFFFFFLL || filters == 0;
      if (!v13 || !ancestors)
      {
        break;
      }

      superlayer = [v11 superlayer];

      v11 = superlayer;
      if (!superlayer)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_17;
  }

LABEL_13:
  if (!type)
  {
LABEL_17:
    [self unapplyInvertFilterToLayer:v11];
    goto LABEL_18;
  }

  if (type < 1)
  {
LABEL_18:
    v10 = 0;
    goto LABEL_19;
  }

  [self applyInvertFilterToLayer:v11];
  v10 = v11;
LABEL_19:

LABEL_20:

  return v10;
}

+ (void)toggleDarkModeWindowInvertFilterToLayer:(id)layer enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  layerCopy = layer;
  filters = [layerCopy filters];
  v7 = [filters mutableCopy];

  if (enabledCopy)
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
      [layerCopy setValue:v7 forKey:@"filters"];
      [self unapplyInvertFilterToLayer:layerCopy];
    }
  }

  else
  {
    [v7 ax_removeObjectsFromArrayUsingBlock:&stru_44620];
    [layerCopy setValue:v7 forKey:@"filters"];
  }
}

+ (void)unapplyInvertFilterToLayer:(id)layer
{
  layerCopy = layer;
  filters = [layerCopy filters];
  v4 = filters;
  if (filters)
  {
    v5 = [filters indexOfObjectPassingTest:&stru_445C0];
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v6 = v5;
      v7 = [v4 mutableCopy];
      [v7 removeObjectAtIndex:v6];
      [layerCopy setValue:v7 forKey:@"filters"];
    }
  }
}

+ (id)invertImage:(id)image
{
  imageCopy = image;
  [imageCopy size];
  v5 = v4;
  [imageCopy size];
  v7 = v6;
  if (fabs(v5) < 0.001 || fabs(v6) < 0.001 || v5 <= 0.0 || v6 <= 0.0)
  {
    v15 = imageCopy;
  }

  else
  {
    [imageCopy scale];
    v9 = v8;
    v18.width = v5;
    v18.height = v7;
    UIGraphicsBeginImageContextWithOptions(v18, 0, v9);
    CurrentContext = UIGraphicsGetCurrentContext();
    CGContextSetBlendMode(CurrentContext, kCGBlendModeCopy);
    [imageCopy drawInRect:{0.0, 0.0, v5, v7}];
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

+ (void)applyInvertFilterToLayer:(id)layer
{
  layerCopy = layer;
  v3 = [layerCopy valueForKeyPath:@"filters.InvertColorsDoubleInvert"];
  if (v3)
  {
LABEL_2:

    goto LABEL_4;
  }

  v4 = [layerCopy valueForKeyPath:@"filters.InvertColorsDarkModeWindowFilter"];

  if (!v4)
  {
    filters = [layerCopy filters];
    v3 = [filters mutableCopy];

    if (!v3)
    {
      v3 = +[NSMutableArray array];
    }

    v6 = [CAFilter filterWithType:kCAFilterColorInvert];
    [v6 setName:@"InvertColorsDoubleInvert"];
    [v6 setAccessibility:1];
    [v3 addObject:v6];
    [layerCopy setValue:v3 forKey:@"filters"];

    goto LABEL_2;
  }

LABEL_4:
}

+ (void)moveInvertFilterToFront:(id)front
{
  frontCopy = front;
  filters = [frontCopy filters];
  v4 = [filters indexOfObjectPassingTest:&stru_445C0];

  if ((v4 - 1) <= 0x7FFFFFFFFFFFFFFDLL)
  {
    filters2 = [frontCopy filters];
    v6 = [filters2 mutableCopy];

    v7 = [v6 objectAtIndex:v4];
    [v6 removeObjectAtIndex:v4];
    [v6 insertObject:v7 atIndex:0];
    [frontCopy setValue:v6 forKey:@"filters"];
  }
}

+ (void)_removeInvertFilter:(id)filter
{
  filterCopy = filter;
  layer = [filterCopy layer];
  filters = [layer filters];

  if (filters)
  {
    v5 = [filters indexOfObjectPassingTest:&stru_445C0];
    if (v5 <= 0x7FFFFFFFFFFFFFFELL)
    {
      v6 = v5;
      v7 = [filters mutableCopy];
      [v7 removeObjectAtIndex:v6];
      layer2 = [filterCopy layer];
      [layer2 setValue:v7 forKey:@"filters"];
    }
  }
}

+ (BOOL)hasInvertFilter:(id)filter
{
  filterCopy = filter;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    layer = [filterCopy layer];
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

    layer = filterCopy;
  }

  v5 = layer;
  if (!layer)
  {
    goto LABEL_8;
  }

  v6 = [layer valueForKeyPath:@"filters.InvertColorsDoubleInvert"];
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
  if (([self initializedOverrides] & 1) == 0)
  {
    v3 = +[AXValidationManager sharedInstance];
    v13[4] = self;
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_4EC8;
    v14[3] = &unk_44640;
    v14[4] = self;
    v12[4] = self;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_4EEC;
    v13[3] = &unk_44640;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_4F8C;
    v12[3] = &unk_446A0;
    [v3 performValidations:v14 withPreValidationHandler:v13 postValidationHandler:&stru_44680 safeCategoryInstallationHandler:v12];

    [self setInitializedOverrides:1];
    v4 = +[AXSubsystemInvertColors sharedInstance];
    ignoreLogging = [v4 ignoreLogging];

    if ((ignoreLogging & 1) == 0)
    {
      v6 = +[AXSubsystemInvertColors identifier];
      v7 = AXLoggerForFacility();

      v8 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v7, v8))
      {
        v9 = AXColorizeFormatLog();
        bundleName = [self bundleName];
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
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v5 = +[AXSubsystemInvertColors identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      bundleName = [self bundleName];
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
  v15[4] = self;
  v10 = objc_retainBlock(v15);
  helperType = [self helperType];
  if (helperType > 2)
  {
    if (helperType == (&dword_0 + 3))
    {
      sharedInstance = [sub_5390() sharedInstance];
      bundleName2 = [self bundleName];
      [sharedInstance addHandler:v10 forAppExtension:bundleName2];
      goto LABEL_16;
    }

    if (helperType == &dword_4)
    {
      sharedInstance = [sub_5390() sharedInstance];
      bundleName2 = [self bundleName];
      [sharedInstance addHandler:v10 forBundleName:bundleName2];
      goto LABEL_16;
    }
  }

  else
  {
    if (helperType == (&dword_0 + 1))
    {
      sharedInstance = [sub_5390() sharedInstance];
      bundleName2 = [self bundleName];
      [sharedInstance addHandler:v10 forFramework:bundleName2];
      goto LABEL_16;
    }

    if (helperType == (&dword_0 + 2))
    {
      sharedInstance = [sub_5390() sharedInstance];
      bundleName2 = [self bundleName];
      [sharedInstance addHandler:v10 forApp:bundleName2];
LABEL_16:
    }
  }
}

+ (void)toggleInvertColorsOnLayer:(id)layer moveFilterToFront:(BOOL)front
{
  frontCopy = front;
  layerCopy = layer;
  delegate = [layerCopy delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = [layerCopy delegate];
  }

  else
  {
    delegate2 = 0;
  }

  window = [delegate2 window];
  traitCollection = [window traitCollection];
  userInterfaceStyle = [traitCollection userInterfaceStyle];

  if (!_AXSInvertColorsEnabled() || userInterfaceStyle == &dword_0 + 2)
  {
    [AXInvertColorsAppHelper unapplyInvertFilterToLayer:layerCopy];
  }

  else
  {
    [AXInvertColorsAppHelper applyInvertFilterToLayer:layerCopy];
    if (frontCopy)
    {
      [AXInvertColorsAppHelper moveInvertFilterToFront:layerCopy];
    }
  }
}

+ (void)toggleInvertColorsOnView:(id)view
{
  viewCopy = view;
  if (([viewCopy accessibilityInvertColorsIsolatedTree] & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      window = viewCopy;
    }

    else
    {
      window = [viewCopy window];
    }

    v4 = window;
    traitCollection = [window traitCollection];
    userInterfaceStyle = [traitCollection userInterfaceStyle];

    if ([viewCopy _accessibilityAppliesInvertColors] && userInterfaceStyle != &dword_0 + 2 || objc_msgSend(viewCopy, "_accessibilityAppliesInvertColorsInDarkUI") && userInterfaceStyle == &dword_0 + 2)
    {
      [viewCopy _accessibilityApplyInvertFilter];
    }

    else
    {
      [AXInvertColorsAppHelper _removeInvertFilter:viewCopy];
    }
  }
}

@end