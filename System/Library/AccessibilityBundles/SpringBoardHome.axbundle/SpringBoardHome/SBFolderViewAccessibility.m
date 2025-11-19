@interface SBFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityPerformEscape;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SBFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFolderView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"folder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"scalingView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderView" hasInstanceMethod:@"_titleTextField" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconManager"];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"closingFolder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHIconManager" hasInstanceMethod:@"closeFolderAnimated:withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = SBFolderViewAccessibility;
  [(SBFolderViewAccessibility *)&v3 layoutSubviews];
  [(SBFolderViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = SBFolderViewAccessibility;
  [(SBFolderViewAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBFolderViewAccessibility *)self safeValueForKey:@"scalingView"];
  [v3 setAccessibilityIdentifier:@"SBFolderScalingView"];
}

- (id)automationElements
{
  if (AXProcessIsCarPlay())
  {
    objc_opt_class();
    v3 = __UIAccessibilityCastAsClass();
    v4 = [v3 _allSubviews];
  }

  else
  {
    v5 = [(SBFolderViewAccessibility *)self safeValueForKey:@"folder"];
    v3 = [v5 automationElements];

    v6 = [(SBFolderViewAccessibility *)self safeUIViewForKey:@"pageControl"];
    v4 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v3, "count") + 1}];
    v7 = [(SBFolderViewAccessibility *)self safeUIViewForKey:@"_titleTextField"];
    [v4 axSafelyAddObject:v7];

    [v4 axSafelyAddObjectsFromArray:v3];
    if ([v6 _accessibilityViewIsVisible])
    {
      [v4 axSafelyAddObject:v6];
    }
  }

  return v4;
}

- (BOOL)accessibilityPerformEscape
{
  v2 = AXSBHIconManagerFromSharedIconController();
  if ([v2 safeBoolForKey:@"hasOpenFolder"])
  {
    v6 = v2;
    AXPerformSafeBlock();
    v3 = [v6 safeValueForKey:@"closingFolder"];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end