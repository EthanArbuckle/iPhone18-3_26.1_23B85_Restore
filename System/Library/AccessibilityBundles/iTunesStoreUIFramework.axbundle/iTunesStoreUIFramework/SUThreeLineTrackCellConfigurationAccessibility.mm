@interface SUThreeLineTrackCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUThreeLineTrackCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUThreeLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  bytes = [v3 bytes];
  v5 = *(bytes + 16);
  v6 = *(bytes + 24);
  v7 = *(bytes + 8);
  v8 = v5;
  v9 = v6;
  v13 = [(SUThreeLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityVideoIconString"];
  v12 = *bytes;
  v10 = __UIAXStringForVariables();

  return v10;
}

@end