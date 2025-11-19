@interface SBHLibraryPodCategoryIconAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)automationElements;
@end

@implementation SBHLibraryPodCategoryIconAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SBHLibraryPodCategoryIcon" hasInstanceMethod:@"category" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHLibraryCategory" hasInstanceMethod:@"compactPodFolder" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBFolder" hasInstanceMethod:@"icons" withFullSignature:{"@", 0}];
  [v3 validateClass:@"SBHLibraryCategoryFolder" isKindOfClass:@"SBFolder"];
}

- (id)automationElements
{
  v2 = [(SBHLibraryPodCategoryIconAccessibility *)self safeValueForKey:@"category"];
  v3 = [v2 safeValueForKey:@"compactPodFolder"];
  v4 = [v3 safeArrayForKey:@"icons"];

  return v4;
}

@end