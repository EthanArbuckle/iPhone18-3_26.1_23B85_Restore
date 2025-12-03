@interface _SFFindOnPageInputBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)layoutSubviews;
@end

@implementation _SFFindOnPageInputBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_SFFindOnPageInputBar" isKindOfClass:@"UISearchBar"];
  [validationsCopy validateClass:@"UISearchBar" hasInstanceMethod:@"_visualProvider" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"_UISearchBarVisualProviderBase" hasInstanceMethod:@"searchField" withFullSignature:{"@", 0}];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = _SFFindOnPageInputBarAccessibility;
  [(_SFFindOnPageInputBarAccessibility *)&v3 layoutSubviews];
  [(_SFFindOnPageInputBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v5.receiver = self;
  v5.super_class = _SFFindOnPageInputBarAccessibility;
  [(_SFFindOnPageInputBarAccessibility *)&v5 _accessibilityLoadAccessibilityInformation];
  v3 = [(_SFFindOnPageInputBarAccessibility *)self safeValueForKey:@"_visualProvider"];
  v4 = [v3 safeUIViewForKey:@"searchField"];
  [v4 setAccessibilityIdentifier:@"SFFindOnPageBarIdentifier"];
}

@end