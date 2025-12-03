@interface AXSettings_DBSLargeTextSliderListControllerOverride
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)loadView;
- (void)viewDidLayoutSubviews;
@end

@implementation AXSettings_DBSLargeTextSliderListControllerOverride

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"DBSLargeTextSliderListController" isKindOfClass:@"PSListController"];
  [validationsCopy validateClass:@"PSListController" isKindOfClass:@"UIViewController"];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"viewDidLayoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"UIViewController" hasInstanceMethod:@"loadView" withFullSignature:{"v", 0}];
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
    backgroundColor = [v3 backgroundColor];
    table = [v2 table];
    [table setBackgroundColor:backgroundColor];
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
  view = [v3 view];
  [view bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  objc_opt_class();
  v13 = __UIAccessibilityCastAsClass();
  table = [v13 table];
  [table setFrame:{v6, v8, v10, v12}];

  v16 = v13;
  v15 = v13;
  AXPerformSafeBlock();
}

@end