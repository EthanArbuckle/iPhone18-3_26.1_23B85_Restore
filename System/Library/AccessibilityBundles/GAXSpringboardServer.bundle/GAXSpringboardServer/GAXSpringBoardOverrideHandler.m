@interface GAXSpringBoardOverrideHandler
- (void)_initializeOverrides;
- (void)_validateAndInstall;
- (void)dealloc;
@end

@implementation GAXSpringBoardOverrideHandler

- (void)dealloc
{
  [(GAXSpringBoardOverrideHandler *)self tearDown];
  v3.receiver = self;
  v3.super_class = GAXSpringBoardOverrideHandler;
  [(GAXSpringBoardOverrideHandler *)&v3 dealloc];
}

- (void)_validateAndInstall
{
  v3 = +[AXValidationManager sharedInstance];
  [v3 performValidations:&stru_2CCF8 withPreValidationHandler:&stru_2CD18 postValidationHandler:0 safeCategoryInstallationHandler:&stru_2CD58];

  v4 = +[AXBinaryMonitor sharedInstance];
  [v4 addHandler:&stru_2CD78 forBundleName:@"ChatKit.servicebundle"];

  v5 = +[AXBinaryMonitor sharedInstance];
  [v5 addHandler:&stru_2CDF8 forFramework:@"AssistantServices"];

  v6 = +[AXBinaryMonitor sharedInstance];
  [v6 addHandler:&stru_2CE78 forFramework:@"AssistantUI"];

  [(GAXSpringBoardOverrideHandler *)self _initializeOverrides];
}

- (void)_initializeOverrides
{
  objc_opt_class();
  v2 = [AXSafeClassFromString() safeValueForKey:@"sharedInstance"];
  v3 = __UIAccessibilityCastAsSafeCategory();

  [v3 _gaxInitializeOverride];
}

@end