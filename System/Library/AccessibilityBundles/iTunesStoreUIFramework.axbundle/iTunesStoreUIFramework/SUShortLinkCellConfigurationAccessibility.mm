@interface SUShortLinkCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUShortLinkCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUShortLinkCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  bytes = [v3 bytes];
  v5 = *(bytes + 16);
  v6 = *(bytes + 8);
  v7 = *(bytes + 24);
  v8 = v5;
  v9 = __UIAXStringForVariables();

  return v9;
}

@end