@interface SULoadMoreMediaCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SULoadMoreMediaCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SULoadMoreMediaCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = [v3 bytes];
  v5 = v4[1];
  v8 = *v4;
  v6 = __UIAXStringForVariables();

  return v6;
}

@end