@interface SULoadMoreMediaCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SULoadMoreMediaCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SULoadMoreMediaCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  bytes = [v3 bytes];
  v5 = bytes[1];
  v8 = *bytes;
  v6 = __UIAXStringForVariables();

  return v6;
}

@end