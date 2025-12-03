@interface SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)updateConfigurationUsingState:(id)state;
@end

@implementation SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SFBookmarksCollectionViewControllerSegmentedControlCell" hasSwiftField:@"segmentedControl" withSwiftType:"UISegmentedControl"];
  [validationsCopy validateClass:@"UICollectionViewCell" hasInstanceMethod:@"updateConfigurationUsingState:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"UIImage" hasInstanceVariable:@"_imageAsset" withType:"UIImageAsset"];
  [validationsCopy validateClass:@"UIImageAsset" hasInstanceMethod:@"assetName" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"UISegmentedControl" hasInstanceMethod:@"_segmentAtIndex:" withFullSignature:{"@", "i", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v15.receiver = self;
  v15.super_class = SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility;
  [(SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility *)&v15 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility *)self safeSwiftValueForKey:@"segmentedControl"];
  v4 = __UIAccessibilityCastAsClass();

  if (v4 && [v4 numberOfSegments])
  {
    v5 = 0;
    do
    {
      v6 = [v4 imageForSegmentAtIndex:v5];
      v7 = [v6 safeValueForKey:@"_imageAsset"];
      v8 = [v7 safeStringForKey:@"assetName"];

      v9 = [v8 isEqualToString:@"book"];
      v10 = @"segment.bookmarks";
      if (v9 & 1) != 0 || (v11 = [v8 isEqualToString:@"eyeglasses"], v10 = @"segment.reading.list", (v11) || (v12 = objc_msgSend(v8, "isEqualToString:", @"clock"), v10 = @"segment.history", v12))
      {
        v13 = accessibilityMobileSafariLocalizedString(v10);
      }

      else
      {
        v13 = 0;
      }

      [v6 setAccessibilityLabel:v13];
      v14 = [v4 _segmentAtIndex:v5];
      [v14 _accessibilitySetShouldIncludeRowRangeInElementDescription:1];

      ++v5;
    }

    while ([v4 numberOfSegments] > v5);
  }
}

- (void)updateConfigurationUsingState:(id)state
{
  v4.receiver = self;
  v4.super_class = SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility;
  [(SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility *)&v4 updateConfigurationUsingState:state];
  [(SFBookmarksCollectionViewControllerSegmentedControlCellAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end