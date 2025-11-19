@interface SUReviewCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUReviewCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUReviewCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = [v3 bytes];
  v5 = [(SUReviewCellConfigurationAccessibility *)self safeValueForKey:@"_representedObject"];
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

  v12 = v4[1];
  v16 = *v4;
  v15 = v4[2];
  v13 = __UIAXStringForVariables();

  return v13;
}

@end