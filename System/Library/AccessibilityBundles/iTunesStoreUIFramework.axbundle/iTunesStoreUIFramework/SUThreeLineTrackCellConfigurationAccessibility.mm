@interface SUThreeLineTrackCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUThreeLineTrackCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUThreeLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = [v3 bytes];
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(v4 + 8);
  v8 = v5;
  v9 = v6;
  v13 = [(SUThreeLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityVideoIconString"];
  v12 = *v4;
  v10 = __UIAXStringForVariables();

  return v10;
}

@end