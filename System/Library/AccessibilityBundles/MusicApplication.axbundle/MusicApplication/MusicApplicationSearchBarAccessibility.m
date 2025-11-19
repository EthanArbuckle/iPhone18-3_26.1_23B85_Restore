@interface MusicApplicationSearchBarAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)textFieldDidBeginEditing:(id)a3;
@end

@implementation MusicApplicationSearchBarAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"_TtCC16MusicApplication6Search3Bar" hasSwiftField:@"scopeBarContentView" withSwiftType:"ScopeBarContainerView"];
  [v3 validateClass:@"_TtCC16MusicApplication6Search3Bar" hasInstanceMethod:@"textFieldDidBeginEditing:" withFullSignature:{"v", "{UITextField=#}", 0}];
  [v3 validateClass:@"_TtCC16MusicApplication6Search3Bar" hasInstanceMethod:@"setShowsScopeBar:animated:" withFullSignature:{"v", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MusicApplicationSearchBarAccessibility;
  [(MusicApplicationSearchBarAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MusicApplicationSearchBarAccessibility *)self safeSwiftValueForKey:@"scopeBarContentView"];
  v4 = [v3 subviews];
  v5 = [v4 axFilterObjectsUsingBlock:&__block_literal_global_0];

  [v3 setAccessibilityElements:v5];
}

- (void)textFieldDidBeginEditing:(id)a3
{
  v4.receiver = self;
  v4.super_class = MusicApplicationSearchBarAccessibility;
  [(MusicApplicationSearchBarAccessibility *)&v4 textFieldDidBeginEditing:a3];
  [(MusicApplicationSearchBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end