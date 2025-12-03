@interface BEAccessibilityManager
+ (BOOL)isAccessibilityLoaded;
+ (id)sharedInstance;
+ (void)accessibilityInitialize;
+ (void)accessibilityNeedsReload;
- (void)addSafeCategoryNamesToCollection:(id)collection;
- (void)loadAccessibilitySupport;
- (void)loadAccessibilitySupportWithDelay;
@end

@implementation BEAccessibilityManager

+ (id)sharedInstance
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_BEE4;
  block[3] = &unk_208C0;
  block[4] = self;
  if (qword_26D78 != -1)
  {
    dispatch_once(&qword_26D78, block);
  }

  v2 = qword_26D80;

  return v2;
}

+ (void)accessibilityInitialize
{
  sharedInstance = [self sharedInstance];
  [sharedInstance loadAccessibilitySupport];
}

+ (BOOL)isAccessibilityLoaded
{
  sharedInstance = [self sharedInstance];
  isAccessibilityLoaded = [sharedInstance isAccessibilityLoaded];

  return isAccessibilityLoaded;
}

+ (void)accessibilityNeedsReload
{
  sharedInstance = [self sharedInstance];
  [sharedInstance setIsAccessibilitySupportLoaded:0];
  [sharedInstance loadAccessibilitySupportWithDelay];
  UIAccessibilityPostNotification(UIAccessibilityLayoutChangedNotification, 0);
}

- (void)loadAccessibilitySupportWithDelay
{
  v3 = dispatch_time(0, 500000000);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_C0E0;
  block[3] = &unk_207A0;
  block[4] = self;
  dispatch_after(v3, &_dispatch_main_q, block);
}

- (void)loadAccessibilitySupport
{
  if (![(BEAccessibilityManager *)self isAccessibilitySupportLoaded])
  {
    if (BAXShouldPerformValidationChecks())
    {
      [(BEAccessibilityManager *)self performValidation];
    }

    v3 = objc_opt_new();
    [(BEAccessibilityManager *)self addSafeCategoryNamesToCollection:v3];
    BAXInstallSafeCategories(v3);
    [(BEAccessibilityManager *)self setIsAccessibilitySupportLoaded:1];
  }
}

- (void)addSafeCategoryNamesToCollection:(id)collection
{
  collectionCopy = collection;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    [collectionCopy addObject:@"BAXObjectWrapper"];
  }

  [collectionCopy addObject:@"BEAXObjectWrapper_Notifications"];
  [collectionCopy addObject:@"BAXWebPageAccessibilityObjectWrapper"];
}

@end