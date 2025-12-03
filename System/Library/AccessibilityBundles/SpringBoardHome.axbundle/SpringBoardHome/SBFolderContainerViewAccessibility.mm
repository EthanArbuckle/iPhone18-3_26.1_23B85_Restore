@interface SBFolderContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)accessibilityViewIsModal;
- (BOOL)isTransparentFocusItem;
@end

@implementation SBFolderContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFloatyFolderView"];
  [validationsCopy validateClass:@"SBFolderContainerView" hasInstanceMethod:@"folderView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolderContainerView" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
}

- (BOOL)accessibilityViewIsModal
{
  v2 = [(SBFolderContainerViewAccessibility *)self safeValueForKey:@"folderView"];
  NSClassFromString(&cfstr_Sbfloatyfolder_0.isa);
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

- (BOOL)isTransparentFocusItem
{
  v5.receiver = self;
  v5.super_class = SBFolderContainerViewAccessibility;
  isTransparentFocusItem = [(SBFolderContainerViewAccessibility *)&v5 isTransparentFocusItem];
  return ([(SBFolderContainerViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]| isTransparentFocusItem) & 1;
}

@end