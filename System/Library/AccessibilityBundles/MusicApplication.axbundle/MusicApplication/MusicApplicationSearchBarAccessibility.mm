@interface MusicApplicationSearchBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation MusicApplicationSearchBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TtCC16MusicApplication6Search3Bar" hasSwiftField:@"scopeBarContentView" withSwiftType:"ScopeBarContainerView"];
  [validationsCopy validateClass:@"_TtCC16MusicApplication6Search3Bar" hasInstanceMethod:@"textFieldDidBeginEditing:" withFullSignature:{"v", "{UITextField=#}", 0}];
  [validationsCopy validateClass:@"_TtCC16MusicApplication6Search3Bar" hasInstanceMethod:@"setShowsScopeBar:animated:" withFullSignature:{"v", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MusicApplicationSearchBarAccessibility;
  [(MusicApplicationSearchBarAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MusicApplicationSearchBarAccessibility *)self safeSwiftValueForKey:@"scopeBarContentView"];
  subviews = [v3 subviews];
  v5 = [subviews axFilterObjectsUsingBlock:&__block_literal_global_0];

  [v3 setAccessibilityElements:v5];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4.receiver = self;
  v4.super_class = MusicApplicationSearchBarAccessibility;
  [(MusicApplicationSearchBarAccessibility *)&v4 textFieldDidBeginEditing:editing];
  [(MusicApplicationSearchBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end