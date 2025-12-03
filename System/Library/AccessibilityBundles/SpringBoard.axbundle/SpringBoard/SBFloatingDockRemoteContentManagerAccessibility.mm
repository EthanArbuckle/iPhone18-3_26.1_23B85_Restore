@interface SBFloatingDockRemoteContentManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setRemoteViewVisible:(BOOL)visible;
@end

@implementation SBFloatingDockRemoteContentManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFloatingDockRemoteContentManager" hasInstanceMethod:@"sceneView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFloatingDockRemoteContentManager" hasInstanceMethod:@"isRemoteViewVisible" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBFloatingDockRemoteContentManager" hasInstanceMethod:@"setRemoteViewVisible:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFloatingDockRemoteContentManagerAccessibility;
  [(SBFloatingDockRemoteContentManagerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFloatingDockRemoteContentManagerAccessibility *)self safeValueForKey:@"sceneView"];
  [v3 setAccessibilityElementsHidden:{-[SBFloatingDockRemoteContentManagerAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isRemoteViewVisible"}];
}

- (void)setRemoteViewVisible:(BOOL)visible
{
  visibleCopy = visible;
  v6.receiver = self;
  v6.super_class = SBFloatingDockRemoteContentManagerAccessibility;
  [(SBFloatingDockRemoteContentManagerAccessibility *)&v6 setRemoteViewVisible:?];
  v5 = [(SBFloatingDockRemoteContentManagerAccessibility *)self safeValueForKey:@"sceneView"];
  [v5 setAccessibilityElementsHidden:!visibleCopy];
}

@end