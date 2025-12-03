@interface AKToolbarViewController_iOSAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_buildBasicItems;
@end

@implementation AKToolbarViewController_iOSAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"AKToolbarViewController_iOS" hasInstanceMethod:@"undoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKToolbarViewController_iOS" hasInstanceMethod:@"redoButton" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"AKToolbarViewController_iOS" hasInstanceMethod:@"_buildBasicItems" withFullSignature:{"v", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v7.receiver = self;
  v7.super_class = AKToolbarViewController_iOSAccessibility;
  [(AKToolbarViewController_iOSAccessibility *)&v7 _accessibilityLoadAccessibilityInformation];
  v3 = [(AKToolbarViewController_iOSAccessibility *)self safeValueForKey:@"undoButton"];
  v4 = accessibilityLocalizedString(@"undo.button");
  [v3 setAccessibilityLabel:v4];

  v5 = [(AKToolbarViewController_iOSAccessibility *)self safeValueForKey:@"redoButton"];
  v6 = accessibilityLocalizedString(@"redo.button");
  [v5 setAccessibilityLabel:v6];
}

- (void)_buildBasicItems
{
  v3.receiver = self;
  v3.super_class = AKToolbarViewController_iOSAccessibility;
  [(AKToolbarViewController_iOSAccessibility *)&v3 _buildBasicItems];
  [(AKToolbarViewController_iOSAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end