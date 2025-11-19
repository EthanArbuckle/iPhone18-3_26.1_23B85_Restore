@interface SBFolderContainerViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)accessibilityViewIsModal;
- (BOOL)isTransparentFocusItem;
@end

@implementation SBFolderContainerViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBFloatyFolderView"];
  [v3 validateClass:@"SBFolderContainerView" hasInstanceMethod:@"folderView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolderContainerView" isKindOfClass:@"UIView"];
  [v3 validateClass:@"UIView" hasInstanceMethod:@"isTransparentFocusItem" withFullSignature:{"B", 0}];
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
  v3 = [(SBFolderContainerViewAccessibility *)&v5 isTransparentFocusItem];
  return ([(SBFolderContainerViewAccessibility *)self _accessibilityIsFKARunningForFocusItem]| v3) & 1;
}

@end