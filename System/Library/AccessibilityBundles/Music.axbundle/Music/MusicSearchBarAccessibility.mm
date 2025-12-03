@interface MusicSearchBarAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)textFieldDidBeginEditing:(id)editing;
@end

@implementation MusicSearchBarAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"_TtCC16Music6Search3Bar" hasSwiftField:@"scopeBarContentView" withSwiftType:"ScopeBarContainerView"];
  [validationsCopy validateClass:@"_TtCC16Music6Search3Bar" hasInstanceMethod:@"textFieldDidBeginEditing:" withFullSignature:{"v", "{UITextField=#}", 0}];
  [validationsCopy validateClass:@"_TtCC16Music6Search3Bar" hasInstanceMethod:@"setShowsScopeBar:animated:" withFullSignature:{"v", "B", "B", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v6.receiver = self;
  v6.super_class = MusicSearchBarAccessibility;
  [(MusicSearchBarAccessibility *)&v6 _accessibilityLoadAccessibilityInformation];
  v3 = [(MusicSearchBarAccessibility *)self safeSwiftValueForKey:@"scopeBarContentView"];
  subviews = [v3 subviews];
  v5 = [subviews axFilterObjectsUsingBlock:&__block_literal_global_4];

  [v3 setAccessibilityElements:v5];
}

- (void)textFieldDidBeginEditing:(id)editing
{
  v4.receiver = self;
  v4.super_class = MusicSearchBarAccessibility;
  [(MusicSearchBarAccessibility *)&v4 textFieldDidBeginEditing:editing];
  [(MusicSearchBarAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end