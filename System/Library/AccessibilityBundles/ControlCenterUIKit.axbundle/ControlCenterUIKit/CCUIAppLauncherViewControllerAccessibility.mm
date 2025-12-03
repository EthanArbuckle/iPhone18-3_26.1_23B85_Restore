@interface CCUIAppLauncherViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityControlCenterShouldExpandContentModule;
- (id)_accessibilityControlCenterButtonIdentifier;
- (id)_accessibilityControlCenterButtonLabel;
@end

@implementation CCUIAppLauncherViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"CCUIAppLauncherViewController" isKindOfClass:@"CCUIMenuModuleViewController"];
  [validationsCopy validateClass:@"CCUIMenuModuleViewController" isKindOfClass:@"CCUIButtonModuleViewController"];
  [validationsCopy validateClass:@"CCUIAppLauncherViewController" hasInstanceMethod:@"module" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIAppLauncherModule" hasInstanceMethod:@"displayName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIAppLauncherModule" hasInstanceMethod:@"applicationIdentifier" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"CCUIAppLauncherModule" hasInstanceVariable:@"_application" withType:"SBFApplication"];
  [validationsCopy validateClass:@"CCUIAppLauncherModule" hasInstanceMethod:@"supportsApplicationShortcuts" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFApplication" hasInstanceMethod:@"staticApplicationShortcutItems" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFApplication" hasInstanceMethod:@"dynamicApplicationShortcutItems" withFullSignature:{"@", 0}];
}

- (BOOL)_accessibilityControlCenterShouldExpandContentModule
{
  v3 = [(CCUIAppLauncherViewControllerAccessibility *)self safeValueForKey:@"module"];
  v4 = [v3 safeBoolForKey:@"supportsApplicationShortcuts"];

  v5 = [(CCUIAppLauncherViewControllerAccessibility *)self safeValueForKey:@"module"];
  v6 = [v5 safeValueForKey:@"_application"];
  v7 = [v6 safeArrayForKey:@"staticApplicationShortcutItems"];
  if ([v7 count])
  {
    v8 = 1;
  }

  else
  {
    v9 = [(CCUIAppLauncherViewControllerAccessibility *)self safeValueForKey:@"_application"];
    v10 = [v9 safeArrayForKey:@"dynamicApplicationShortcutItems"];
    v8 = [v10 count] != 0;
  }

  return v4 & v8;
}

- (id)_accessibilityControlCenterButtonLabel
{
  v2 = [(CCUIAppLauncherViewControllerAccessibility *)self safeValueForKey:@"module"];
  v3 = [v2 safeStringForKey:@"displayName"];

  return v3;
}

- (id)_accessibilityControlCenterButtonIdentifier
{
  v2 = [(CCUIAppLauncherViewControllerAccessibility *)self safeValueForKey:@"module"];
  v3 = [v2 safeStringForKey:@"applicationIdentifier"];

  return v3;
}

@end