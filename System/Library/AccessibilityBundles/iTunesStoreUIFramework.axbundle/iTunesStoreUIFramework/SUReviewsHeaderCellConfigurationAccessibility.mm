@interface SUReviewsHeaderCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUReviewsHeaderCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUReviewsHeaderCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  bytes = [v3 bytes];
  v5 = [(SUReviewsHeaderCellConfigurationAccessibility *)self safeValueForKey:@"_representedObject"];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 safeValueForKey:@"reviewStatistics"];
    v8 = [v7 safeValueForKey:@"averageUserRating"];
    [v8 floatValue];
    v10 = v9;

    v11 = starStringForStarCount(v10);
  }

  else
  {
    v11 = 0;
  }

  v12 = bytes[1];
  v15 = *bytes;
  v13 = __UIAXStringForVariables();

  return v13;
}

@end