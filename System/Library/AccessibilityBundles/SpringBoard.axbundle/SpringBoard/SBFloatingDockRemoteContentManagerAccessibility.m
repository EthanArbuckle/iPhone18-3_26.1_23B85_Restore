@interface SBFloatingDockRemoteContentManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)setRemoteViewVisible:(BOOL)a3;
@end

@implementation SBFloatingDockRemoteContentManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFloatingDockRemoteContentManager" hasInstanceMethod:@"sceneView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFloatingDockRemoteContentManager" hasInstanceMethod:@"isRemoteViewVisible" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBFloatingDockRemoteContentManager" hasInstanceMethod:@"setRemoteViewVisible:" withFullSignature:{"v", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFloatingDockRemoteContentManagerAccessibility;
  [(SBFloatingDockRemoteContentManagerAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFloatingDockRemoteContentManagerAccessibility *)self safeValueForKey:@"sceneView"];
  [v3 setAccessibilityElementsHidden:{-[SBFloatingDockRemoteContentManagerAccessibility safeBoolForKey:](self, "safeBoolForKey:", @"isRemoteViewVisible"}];
}

- (void)setRemoteViewVisible:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = SBFloatingDockRemoteContentManagerAccessibility;
  [(SBFloatingDockRemoteContentManagerAccessibility *)&v6 setRemoteViewVisible:?];
  v5 = [(SBFloatingDockRemoteContentManagerAccessibility *)self safeValueForKey:@"sceneView"];
  [v5 setAccessibilityElementsHidden:!v3];
}

@end