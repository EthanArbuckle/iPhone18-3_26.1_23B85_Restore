@interface SBFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityPerformEscape;
- (id)automationElements;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation SBFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFolderView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"folder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"layoutSubviews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"pageControl" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"scalingView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"_titleTextField" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager"];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"closingFolder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"closeFolderAnimated:withCompletion:" withFullSignature:{"v", "B", "@?", 0}];
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
    automationElements = __UIAccessibilityCastAsClass();
    _allSubviews = [automationElements _allSubviews];
  }

  else
  {
    v5 = [(SBFolderViewAccessibility *)self safeValueForKey:@"folder"];
    automationElements = [v5 automationElements];

    v6 = [(SBFolderViewAccessibility *)self safeUIViewForKey:@"pageControl"];
    _allSubviews = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(automationElements, "count") + 1}];
    v7 = [(SBFolderViewAccessibility *)self safeUIViewForKey:@"_titleTextField"];
    [_allSubviews axSafelyAddObject:v7];

    [_allSubviews axSafelyAddObjectsFromArray:automationElements];
    if ([v6 _accessibilityViewIsVisible])
    {
      [_allSubviews axSafelyAddObject:v6];
    }
  }

  return _allSubviews;
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