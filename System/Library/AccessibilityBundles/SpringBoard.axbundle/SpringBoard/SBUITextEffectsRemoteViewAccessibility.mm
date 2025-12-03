@interface SBUITextEffectsRemoteViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityElements;
@end

@implementation SBUITextEffectsRemoteViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBTodayViewController"];
  [validationsCopy validateClass:@"_WGWidgetRemoteViewController"];
  [validationsCopy validateClass:@"_UITextEffectsRemoteView" isKindOfClass:@"_UIRemoteView"];
  [validationsCopy validateClass:@"_UIRemoteView" hasInstanceMethod:@"remoteViewController" withFullSignature:{"@", 0}];
}

- (id)accessibilityElements
{
  v10 = 0;
  objc_opt_class();
  v3 = [(SBUITextEffectsRemoteViewAccessibility *)self safeValueForKey:@"remoteViewController"];
  v4 = __UIAccessibilityCastAsClass();

  view = [v4 view];
  v6 = [view _accessibilityFindAncestor:&__block_literal_global_17 startWithSelf:1];

  if (v6)
  {
    accessibilityElements = 0;
  }

  else
  {
    v9.receiver = self;
    v9.super_class = SBUITextEffectsRemoteViewAccessibility;
    accessibilityElements = [(SBUITextEffectsRemoteViewAccessibility *)&v9 accessibilityElements];
  }

  return accessibilityElements;
}

uint64_t __63__SBUITextEffectsRemoteViewAccessibility_accessibilityElements__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 _accessibilityViewController];
  NSClassFromString(&cfstr_Sbtodayviewcon.isa);
  if (objc_opt_isKindOfClass())
  {
    isKindOfClass = 1;
  }

  else
  {
    NSClassFromString(&cfstr_Wgwidgetremote.isa);
    isKindOfClass = objc_opt_isKindOfClass();
  }

  return isKindOfClass & 1;
}

@end