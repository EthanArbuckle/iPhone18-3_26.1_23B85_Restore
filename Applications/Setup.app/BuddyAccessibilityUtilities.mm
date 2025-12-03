@interface BuddyAccessibilityUtilities
+ (id)accessibilityViewController;
+ (id)navigationBarButton;
+ (id)navigationBarButtonItemWithButton:(id)button;
+ (id)navigationBarButtonItemWithTarget:(id)target selector:(SEL)selector;
@end

@implementation BuddyAccessibilityUtilities

+ (id)accessibilityViewController
{
  v20[2] = self;
  v20[1] = a2;
  v20[0] = [NSBundle bundleWithPath:@"/System/Library/AccessibilityBundles/AXBuddyBundle.bundle"];
  location = 0;
  obj = 0;
  v2 = [v20[0] loadAndReturnError:&obj];
  objc_storeStrong(&location, obj);
  if ((v2 & 1) == 0)
  {
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10006AE18(v22, location);
      _os_log_error_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to load accessibility bundle: %@", v22, 0xCu);
    }

    objc_storeStrong(&v9, 0);
    goto LABEL_12;
  }

  aClass = [v20[0] principalClass];
  if (([(objc_class *)aClass isSubclassOfClass:objc_opt_class()]& 1) == 0)
  {
    oslog = _BYLoggingFacility();
    v11 = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      v10 = NSStringFromClass(aClass);
      sub_10006AE18(buf, v10);
      _os_log_error_impl(&_mh_execute_header, oslog, v11, "Accessibility bundle is not subclass of UIViewController (is %@)", buf, 0xCu);

      objc_storeStrong(&v10, 0);
    }

    objc_storeStrong(&oslog, 0);
LABEL_12:
    v21 = 0;
    v13 = 1;
    goto LABEL_13;
  }

  v16 = objc_alloc_init(aClass);
  v3 = +[BYDevice currentDevice];
  type = [v3 type];

  if (type == 1)
  {
    [v16 setModalPresentationStyle:2];
    +[OBBaseWelcomeController preferredContentSize];
    *&v15 = v5;
    *(&v15 + 1) = v6;
    v14 = v15;
    [v16 setPreferredContentSize:{v5, v6}];
  }

  v21 = v16;
  v13 = 1;
  objc_storeStrong(&v16, 0);
LABEL_13:
  objc_storeStrong(&location, 0);
  objc_storeStrong(v20, 0);
  v7 = v21;

  return v7;
}

+ (id)navigationBarButton
{
  v14[2] = self;
  v14[1] = a2;
  v2 = [UIImage imageNamed:@"AccessibilityButtonItem"];
  v14[0] = [(UIImage *)v2 _imageThatSuppressesAccessibilityHairlineThickening];

  location = [UIButton buttonWithType:0];
  [location setBackgroundImage:v14[0] forState:0];
  v3 = +[UIColor systemWhiteColor];
  cGColor = [v3 CGColor];
  layer = [location layer];
  [layer setBackgroundColor:cGColor];

  [v14[0] size];
  v7 = v6 / 2.0;
  layer2 = [location layer];
  [layer2 setCornerRadius:v7];

  v10 = +[UIColor systemBlueColor];
  [location setTintColor:v10];

  v11 = location;
  objc_storeStrong(&location, 0);
  objc_storeStrong(v14, 0);
  return v11;
}

+ (id)navigationBarButtonItemWithButton:(id)button
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, button);
  v3 = [UIBarButtonItem alloc];
  v6 = [v3 initWithCustomView:location[0]];
  [v6 setStyle:0];
  v4 = v6;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
  return v4;
}

+ (id)navigationBarButtonItemWithTarget:(id)target selector:(SEL)selector
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, target);
  v8[1] = selector;
  v8[0] = [UIImage systemImageNamed:@"figure"];
  v5 = [UIBarButtonItem alloc];
  v6 = [v5 initWithImage:v8[0] style:0 target:location[0] action:selector];
  objc_storeStrong(v8, 0);
  objc_storeStrong(location, 0);

  return v6;
}

@end