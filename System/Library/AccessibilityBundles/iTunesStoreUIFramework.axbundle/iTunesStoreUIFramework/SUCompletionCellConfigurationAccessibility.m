@interface SUCompletionCellConfigurationAccessibility
- (id)accessibilityLabel;
@end

@implementation SUCompletionCellConfigurationAccessibility

- (id)accessibilityLabel
{
  [self _accessibilityReloadMediaStrings];
  v3 = [(SUCompletionCellConfigurationAccessibility *)self safeValueForKey:@"_accessibilityStringsArrayPointer"];
  v4 = *[v3 bytes];
  v5 = v4;

  return v4;
}

@end