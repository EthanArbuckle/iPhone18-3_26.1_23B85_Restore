@interface SUTwoLineTrackCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUTwoLineTrackCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUTwoLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  bytes = [v3 bytes];
  v5 = bytes[2];
  v6 = bytes[1];
  v7 = *bytes;
  v8 = [(SUTwoLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityVideoIconString"];
  if ([v7 length])
  {
    v11 = accessibilityLocalizedString(@"explicit.content");
    v9 = __UIAXStringForVariables();
  }

  else
  {
    v9 = __UIAXStringForVariables();
  }

  return v9;
}

@end