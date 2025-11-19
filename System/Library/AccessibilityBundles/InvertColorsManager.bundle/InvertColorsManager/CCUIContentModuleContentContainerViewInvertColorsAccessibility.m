@interface CCUIContentModuleContentContainerViewInvertColorsAccessibility
- (void)_accessibilityLoadInvertColors;
- (void)_configureModuleMaterialViewIfNecessary;
@end

@implementation CCUIContentModuleContentContainerViewInvertColorsAccessibility

- (void)_configureModuleMaterialViewIfNecessary
{
  v3.receiver = self;
  v3.super_class = CCUIContentModuleContentContainerViewInvertColorsAccessibility;
  [(CCUIContentModuleContentContainerViewInvertColorsAccessibility *)&v3 _configureModuleMaterialViewIfNecessary];
  [(CCUIContentModuleContentContainerViewInvertColorsAccessibility *)self _accessibilityLoadInvertColors];
}

- (void)_accessibilityLoadInvertColors
{
  if (([(CCUIContentModuleContentContainerViewInvertColorsAccessibility *)self safeBoolForKey:@"moduleProvidesOwnPlatter"]& 1) == 0)
  {
    objc_opt_class();
    v3 = [(CCUIContentModuleContentContainerViewInvertColorsAccessibility *)self safeValueForKeyPath:@"_moduleMaterialView"];
    v4 = __UIAccessibilityCastAsClass();

    [v4 setAccessibilityMaterialViewMimicsReduceTransparency:_AXSInvertColorsEnabledGlobalCached() != 0];
  }
}

@end