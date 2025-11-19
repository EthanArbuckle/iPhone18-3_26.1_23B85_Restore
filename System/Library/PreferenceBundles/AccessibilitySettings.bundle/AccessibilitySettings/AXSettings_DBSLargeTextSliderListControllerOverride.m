@interface AXSettings_DBSLargeTextSliderListControllerOverride
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation AXSettings_DBSLargeTextSliderListControllerOverride

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"DBSLargeTextSliderListController" isKindOfClass:@"PSListController"];
  [v3 validateClass:@"PSListController" isKindOfClass:@"UIViewController"];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"UIViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
}

- (void)loadView
{
  v6.receiver = self;
  v6.super_class = AXSettings_DBSLargeTextSliderListControllerOverride;
  [(AXSettings_DBSLargeTextSliderListControllerOverride *)&v6 loadView];
  if (AXProcessIsSetup())
  {
    objc_opt_class();
    v2 = __UIAccessibilityCastAsClass();
    v3 = sharedBFFStyle();
    v4 = [v3 backgroundColor];
    v5 = [v2 table];
    [v5 setBackgroundColor:v4];
  }
}

- (void)viewDidLayoutSubviews
{
  v17.receiver = self;
  v17.super_class = AXSettings_DBSLargeTextSliderListControllerOverride;
  [(AXSettings_DBSLargeTextSliderListControllerOverride *)&v17 viewDidLayoutSubviews];
  if ((AXProcessIsSetup() & 1) == 0)
  {
    v2 = AXLogSettings();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      [(AXSettings_DBSLargeTextSliderListControllerOverride *)v2 viewDidLayoutSubviews];
    }
  }

  objc_opt_class();
  v3 = __UIAccessibilityCastAsClass();
  v4 = [v3 view];
  [v4 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();
  v14 = [v13 table];
  [v14 setFrame:{v6, v8, v10, v12}];

  v16 = v13;
  v15 = v13;
  AXPerformSafeBlock();
}

@end