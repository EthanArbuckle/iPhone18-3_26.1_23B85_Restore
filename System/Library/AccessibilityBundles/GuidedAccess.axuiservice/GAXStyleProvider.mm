@interface GAXStyleProvider
+ (GAXStyleProvider)allocWithZone:(_NSZone *)a3;
- (BOOL)reduceTransparencyAndGraphics;
- (BOOL)workspaceInstructionsLabelShouldBeDisplayed;
- (CGSize)appFeatureViewIconSize;
- (CGSize)minimumSizeForInterestAreaPath;
- (GAXStyleProvider)init;
- (NSBundle)bundle;
- (NSDictionary)workspaceNavigationBarButtonTextAttributes;
- (UIEdgeInsets)featureViewFrameEdgeInsets;
- (UIEdgeInsets)hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:(int64_t)a3;
- (UIEdgeInsets)workspaceInstructionsLabelEdgeInsets;
- (UIFont)featureViewOptionsButtonFont;
- (UIFont)featureViewTextFont;
- (UIImage)hardwareFeatureViewHomeIcon;
- (UIImage)hardwareFeatureViewLockIcon;
- (UIImage)hardwareFeatureViewVolumeIcon;
- (UIImage)systemFeatureViewMotionIcon;
- (UIImage)systemFeatureViewTouchIcon;
- (UIOffset)featureViewControllerOptionsButtonMiniOffset;
- (UIOffset)featureViewControllerOptionsButtonOffset;
- (UIOffset)featureViewOptionsButtonOffset;
- (UIOffset)featureViewToggleOffset;
- (UIOffset)optionsFeatureViewTextOffset;
- (double)_scaledFontSizeFromValue:(double)a3 maximum:(double)a4;
- (double)featureViewMinimumHeight;
- (double)optionsButtonBottomPadding;
- (id)_boldLabelFontWithSize:(double)a3 scale:(BOOL)a4;
- (id)_cachedIconWithName:(id)a3 forPropertyWithSelector:(SEL)a4;
- (id)_cachedIconWithName:(id)a3 inBundle:(id)a4 withSize:(CGSize)a5 forPropertyWithSelector:(SEL)a6;
- (id)_cachedImageWithName:(id)a3 forPropertyWithSelector:(SEL)a4;
- (id)_cachedStyleObjectForPropertyWithSelector:(SEL)a3;
- (id)_lightLabelFontWithSize:(double)a3;
- (id)_mediumLabelFontWithSize:(double)a3;
- (id)_regularLabelFontWithSize:(double)a3;
- (void)_didReceiveMemoryWarning:(id)a3;
- (void)_setCachedStyleObject:(id)a3 forPropertyWithSelector:(SEL)a4;
- (void)dealloc;
@end

@implementation GAXStyleProvider

+ (GAXStyleProvider)allocWithZone:(_NSZone *)a3
{
  if (objc_opt_class() == a1)
  {
    if (!GAXUserInterfaceIdiomIsPad())
    {
      GAXIsWidescreenPhone();
    }

    v6 = objc_opt_class();

    return [v6 allocWithZone:a3];
  }

  else
  {
    v7.receiver = a1;
    v7.super_class = &OBJC_METACLASS___GAXStyleProvider;
    return objc_msgSendSuper2(&v7, "allocWithZone:", a3);
  }
}

- (GAXStyleProvider)init
{
  v5.receiver = self;
  v5.super_class = GAXStyleProvider;
  v2 = [(GAXStyleProvider *)&v5 init];
  if (v2)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:v2 selector:"_didReceiveMemoryWarning:" name:UIApplicationDidReceiveMemoryWarningNotification object:0];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:UIApplicationDidReceiveMemoryWarningNotification object:0];

  v4.receiver = self;
  v4.super_class = GAXStyleProvider;
  [(GAXStyleProvider *)&v4 dealloc];
}

- (NSBundle)bundle
{
  bundle = self->_bundle;
  if (!bundle)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = self->_bundle;
    self->_bundle = v4;

    bundle = self->_bundle;
  }

  return bundle;
}

- (id)_cachedStyleObjectForPropertyWithSelector:(SEL)a3
{
  if (a3)
  {
    v4 = NSStringFromSelector(a3);
    if (v4)
    {
      v5 = [(GAXStyleProvider *)self cachedStyleProperties];
      v6 = [v5 objectForKey:v4];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_setCachedStyleObject:(id)a3 forPropertyWithSelector:(SEL)a4
{
  v6 = a3;
  if (v6 && a4)
  {
    v9 = v6;
    v7 = NSStringFromSelector(a4);
    if (v7)
    {
      v8 = [(GAXStyleProvider *)self cachedStyleProperties];
      if (!v8)
      {
        v8 = objc_opt_new();
        [(GAXStyleProvider *)self setCachedStyleProperties:v8];
      }

      [v8 setObject:v9 forKey:v7];
    }

    v6 = v9;
  }
}

- (id)_cachedImageWithName:(id)a3 forPropertyWithSelector:(SEL)a4
{
  v6 = a3;
  v7 = [(GAXStyleProvider *)self _cachedStyleObjectForPropertyWithSelector:a4];
  if (!v7)
  {
    if ([v6 length])
    {
      v8 = [(GAXStyleProvider *)self bundle];
      v7 = [UIImage imageNamed:v6 inBundle:v8];

      [(GAXStyleProvider *)self _setCachedStyleObject:v7 forPropertyWithSelector:a4];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (id)_cachedIconWithName:(id)a3 forPropertyWithSelector:(SEL)a4
{
  v6 = a3;
  v7 = [(GAXStyleProvider *)self bundle];
  v8 = [(GAXStyleProvider *)self _cachedIconWithName:v6 inBundle:v7 forPropertyWithSelector:a4];

  return v8;
}

- (id)_cachedIconWithName:(id)a3 inBundle:(id)a4 withSize:(CGSize)a5 forPropertyWithSelector:(SEL)a6
{
  height = a5.height;
  width = a5.width;
  v11 = a3;
  v12 = a4;
  v13 = [(GAXStyleProvider *)self _cachedStyleObjectForPropertyWithSelector:a6];
  if (!v13)
  {
    if ([v11 length])
    {
      v14 = [UIImage imageNamed:v11 inBundle:v12];
      v15 = v14;
      if (width != CGSizeZero.width || height != CGSizeZero.height)
      {
        v17 = [v14 imageByPreparingThumbnailOfSize:{width, height}];

        v15 = v17;
      }

      v18 = [(GAXStyleProvider *)self featureViewIconColor];
      v13 = [v15 flattenedImageWithColor:v18];

      [(GAXStyleProvider *)self _setCachedStyleObject:v13 forPropertyWithSelector:a6];
    }

    else
    {
      v13 = 0;
    }
  }

  return v13;
}

- (double)_scaledFontSizeFromValue:(double)a3 maximum:(double)a4
{
  v6 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody];
  [v6 _scaledValueForValue:a3];
  v8 = fmin(a4, v7);

  return v8;
}

- (id)_boldLabelFontWithSize:(double)a3 scale:(BOOL)a4
{
  if (a4)
  {
    [(GAXStyleProvider *)self _scaledFontSizeFromValue:a3 maximum:1.79769313e308];
  }

  return [UIFont boldSystemFontOfSize:a3];
}

- (id)_mediumLabelFontWithSize:(double)a3
{
  [(GAXStyleProvider *)self _scaledFontSizeFromValue:a3 maximum:1.79769313e308];

  return [UIFont boldSystemFontOfSize:?];
}

- (id)_regularLabelFontWithSize:(double)a3
{
  [(GAXStyleProvider *)self _scaledFontSizeFromValue:a3 maximum:1.79769313e308];

  return [UIFont systemFontOfSize:?];
}

- (id)_lightLabelFontWithSize:(double)a3
{
  [(GAXStyleProvider *)self _scaledFontSizeFromValue:a3 maximum:1.79769313e308];

  return [UIFont systemFontOfSize:?];
}

- (void)_didReceiveMemoryWarning:(id)a3
{
  [(GAXStyleProvider *)self setCachedStyleProperties:0];

  [(GAXStyleProvider *)self setBundle:0];
}

- (BOOL)reduceTransparencyAndGraphics
{
  if (UIAccessibilityIsReduceTransparencyEnabled())
  {
    return 1;
  }

  v3 = +[UIDevice currentDevice];
  v2 = [v3 _graphicsQuality] == &dword_8 + 2;

  return v2;
}

- (NSDictionary)workspaceNavigationBarButtonTextAttributes
{
  v5 = NSForegroundColorAttributeName;
  v2 = +[UIColor whiteColor];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

- (UIEdgeInsets)workspaceInstructionsLabelEdgeInsets
{
  v2 = 0.0;
  v3 = 20.0;
  v4 = 27.0;
  v5 = 20.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (double)optionsButtonBottomPadding
{
  HasHomeButton = AXDeviceHasHomeButton();
  result = 18.0;
  if (HasHomeButton)
  {
    return -8.0;
  }

  return result;
}

- (CGSize)minimumSizeForInterestAreaPath
{
  v2 = 30.0;
  v3 = 30.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIOffset)featureViewControllerOptionsButtonMiniOffset
{
  v2 = 4.0;
  v3 = 5.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIOffset)featureViewControllerOptionsButtonOffset
{
  v2 = 9.0;
  v3 = 10.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIEdgeInsets)featureViewFrameEdgeInsets
{
  v2 = 0.0;
  v3 = 15.0;
  v4 = 0.0;
  v5 = 15.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIFont)featureViewOptionsButtonFont
{
  v3 = [UITraitCollection traitCollectionWithPreferredContentSizeCategory:UIContentSizeCategoryAccessibilityLarge];
  v4 = [UIFont preferredFontForTextStyle:UIFontTextStyleBody compatibleWithTraitCollection:v3];
  [v4 pointSize];
  v6 = v5;

  [(GAXStyleProvider *)self _scaledFontSizeFromValue:17.0 maximum:v6];
  v7 = [UIFont systemFontOfSize:?];

  return v7;
}

- (UIOffset)featureViewOptionsButtonOffset
{
  v2 = 15.0;
  v3 = -1.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (CGSize)appFeatureViewIconSize
{
  v2 = 45.0;
  v3 = 45.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (UIImage)hardwareFeatureViewHomeIcon
{
  if (MGGetBoolAnswer())
  {
    v4 = @"feature-home-mesa";
  }

  else
  {
    v4 = @"feature-home";
  }

  v5 = [(GAXStyleProvider *)self _cachedIconWithName:v4 forPropertyWithSelector:a2];

  return v5;
}

- (UIImage)hardwareFeatureViewLockIcon
{
  v4 = AXAssistiveTouchBundle();
  v5 = [(GAXStyleProvider *)self _cachedIconWithName:@"IconLock" inBundle:v4 withSize:a2 forPropertyWithSelector:40.0, 40.0];

  return v5;
}

- (UIImage)hardwareFeatureViewVolumeIcon
{
  v4 = AXAssistiveTouchBundle();
  v5 = [(GAXStyleProvider *)self _cachedIconWithName:@"IconVolumeUp" inBundle:v4 withSize:a2 forPropertyWithSelector:25.0, 25.0];

  return v5;
}

- (UIOffset)optionsFeatureViewTextOffset
{
  v2 = 0.0;
  v3 = -6.0;
  result.vertical = v3;
  result.horizontal = v2;
  return result;
}

- (UIImage)systemFeatureViewMotionIcon
{
  v4 = AXAssistiveTouchBundle();
  v5 = [(GAXStyleProvider *)self _cachedIconWithName:@"IconRotate" inBundle:v4 withSize:a2 forPropertyWithSelector:35.0, 35.0];

  return v5;
}

- (UIImage)systemFeatureViewTouchIcon
{
  v4 = AXAssistiveTouchBundle();
  v5 = [(GAXStyleProvider *)self _cachedIconWithName:@"SCATIcon_gestures_fingers1" inBundle:v4 withSize:a2 forPropertyWithSelector:43.0, 43.0];

  return v5;
}

- (BOOL)workspaceInstructionsLabelShouldBeDisplayed
{
  sub_C4C4();
  objc_opt_class();
  sub_C4A8();
  return 0;
}

- (UIEdgeInsets)hostedApplicationScaledFrameEdgeInsetsForInterfaceOrientation:(int64_t)a3
{
  sub_C4C4();
  objc_opt_class();
  sub_C4A8();
  top = UIEdgeInsetsZero.top;
  left = UIEdgeInsetsZero.left;
  bottom = UIEdgeInsetsZero.bottom;
  right = UIEdgeInsetsZero.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (double)featureViewMinimumHeight
{
  sub_C4C4();
  objc_opt_class();
  sub_C4A8();
  return 0.0;
}

- (UIFont)featureViewTextFont
{
  sub_C4C4();
  objc_opt_class();
  sub_C4A8();
  return 0;
}

- (UIOffset)featureViewToggleOffset
{
  sub_C4C4();
  objc_opt_class();
  sub_C4A8();
  horizontal = UIOffsetZero.horizontal;
  vertical = UIOffsetZero.vertical;
  result.vertical = vertical;
  result.horizontal = horizontal;
  return result;
}

@end