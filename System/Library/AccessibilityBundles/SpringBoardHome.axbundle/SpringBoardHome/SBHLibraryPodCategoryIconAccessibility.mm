@interface SBHLibraryPodCategoryIconAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)automationElements;
@end

@implementation SBHLibraryPodCategoryIconAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBHLibraryPodCategoryIcon" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHLibraryCategory" hasInstanceMethod:@"compactPodFolder" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBFolder" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"SBHLibraryCategoryFolder" isKindOfClass:@"SBFolder"];
}

- (id)automationElements
{
  v2 = [(SBHLibraryPodCategoryIconAccessibility *)self safeValueForKey:@"category"];
  v3 = [v2 safeValueForKey:@"compactPodFolder"];
  v4 = [v3 safeArrayForKey:@"icons"];

  return v4;
}

@end