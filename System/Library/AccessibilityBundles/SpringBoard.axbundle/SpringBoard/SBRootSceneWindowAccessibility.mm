@interface SBRootSceneWindowAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation SBRootSceneWindowAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBRootSceneWindow" isKindOfClass:@"UIView"];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"isEditing" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBHIconManager" hasInstanceMethod:@"hasOpenFolder" withFullSignature:{"B", 0}];
  [validationsCopy validateClass:@"SBIconController"];
  [validationsCopy validateClass:@"SBIconController" hasClassMethod:@"sharedInstance" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBIconController" hasInstanceMethod:@"iconManager" withFullSignature:{"@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = SBRootSceneWindowAccessibility;
  [(SBRootSceneWindowAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(SBRootSceneWindowAccessibility *)self safeArrayForKey:@"subviews"];
  firstObject = [v3 firstObject];
  [firstObject _setAccessibilityElementsHiddenBlock:&__block_literal_global_11];
}

uint64_t __76__SBRootSceneWindowAccessibility__accessibilityLoadAccessibilityInformation__block_invoke()
{
  v1 = AXSBHIconManagerFromSharedIconController();
  v2 = [v1 safeBoolForKey:@"isEditing"];
  if (v2)
  {
    v0 = +[AXSpringBoardGlue sharedInstance];
    if ([v0 _axIsAppLibraryOrTodayViewPresent])
    {
      v3 = 1;
LABEL_5:

      goto LABEL_6;
    }
  }

  v4 = AXSBHIconManagerFromSharedIconController();
  v3 = [v4 safeBoolForKey:@"hasOpenFolder"];

  if (v2)
  {
    goto LABEL_5;
  }

LABEL_6:

  return v3;
}

@end