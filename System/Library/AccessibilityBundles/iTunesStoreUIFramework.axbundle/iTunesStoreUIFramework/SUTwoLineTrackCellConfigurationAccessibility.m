@interface SUTwoLineTrackCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUTwoLineTrackCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUTwoLineTrackCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = [v3 bytes];
  v5 = v4[2];
  v6 = v4[1];
  v7 = *v4;
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