@interface SidebarContentDimmingViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilityObscuredScreenAllowedViews;
@end

@implementation SidebarContentDimmingViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SidebarContentDimmingView" hasInstanceVariable:@"_passthroughView" withType:"UIView"];
  [validationsCopy validateClass:@"SidebarContentDimmingView" hasInstanceMethod:@"delegate" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BrowserToolbar" hasInstanceVariable:@"_barRegistration" withType:"<_SFBarRegistrationToken>"];
  [validationsCopy validateClass:@"SFBarRegistration" hasInstanceVariable:@"_bookmarksItem" withType:"UIBarButtonItem"];
  [validationsCopy validateClass:@"BrowserRootViewController" hasInstanceMethod:@"bottomToolbar" withFullSignature:{"@", 0}];
}

- (id)_accessibilityObscuredScreenAllowedViews
{
  v3 = [(SidebarContentDimmingViewAccessibility *)self safeValueForKey:@"delegate"];
  v4 = [v3 safeValueForKey:@"bottomToolbar"];
  v5 = [v4 safeValueForKey:@"_barRegistration"];

  objc_opt_class();
  v6 = [v5 safeValueForKey:@"_bookmarksItem"];
  v7 = [v6 safeValueForKey:@"view"];
  v8 = __UIAccessibilityCastAsClass();

  v9 = MEMORY[0x29EDB8D80];
  v10 = [(SidebarContentDimmingViewAccessibility *)self safeValueForKey:@"_passthroughView"];
  v11 = [v9 axArrayByIgnoringNilElementsWithCount:{2, v10, v8}];

  return v11;
}

@end