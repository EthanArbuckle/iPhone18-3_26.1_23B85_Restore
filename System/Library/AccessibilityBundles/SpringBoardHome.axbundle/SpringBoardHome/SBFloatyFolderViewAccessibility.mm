@interface SBFloatyFolderViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_currentPageIndexDidChange;
@end

@implementation SBFloatyFolderViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SBFloatyFolderView" isKindOfClass:@"SBFolderView"];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"currentPageIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceMethod:@"minimumPageIndex" withFullSignature:{"q", 0}];
  [validationsCopy validateClass:@"SBFolderView" hasInstanceVariable:@"_iconListViews" withType:"NSMutableArray"];
}

- (void)_currentPageIndexDidChange
{
  v9.receiver = self;
  v9.super_class = SBFloatyFolderViewAccessibility;
  [(SBFloatyFolderViewAccessibility *)&v9 _currentPageIndexDidChange];
  v3 = [(SBFloatyFolderViewAccessibility *)self safeIntegerForKey:@"minimumPageIndex"];
  v4 = [(SBFloatyFolderViewAccessibility *)self safeIntegerForKey:@"currentPageIndex"];
  v5 = [(SBFloatyFolderViewAccessibility *)self safeValueForKey:@"_iconListViews"];
  if ([v5 count])
  {
    v6 = 0;
    v7 = v4 - v3;
    do
    {
      v8 = [v5 objectAtIndexedSubscript:v6];
      [v8 setAccessibilityElementsHidden:v7 != v6];

      ++v6;
    }

    while ([v5 count] > v6);
  }
}

@end