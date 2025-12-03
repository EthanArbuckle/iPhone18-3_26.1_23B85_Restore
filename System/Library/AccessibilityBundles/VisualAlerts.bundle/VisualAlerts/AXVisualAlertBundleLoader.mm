@interface AXVisualAlertBundleLoader
+ (void)initialize;
@end

@implementation AXVisualAlertBundleLoader

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    v3 = objc_opt_new();
    v2 = +[AXVisualAlertManager sharedVisualAlertManager];
    [v2 startForAlertTypes:63 cameraTorchManager:v3];
  }
}

@end