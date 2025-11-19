@interface BuddyLocaleControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)_accessibilitySelectedLanguage;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (void)_accessibilityUpdateLanguageOnLabel:(id)a3;
- (void)setLanguage:(id)a3;
@end

@implementation BuddyLocaleControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"OBTemplateLabel"];
  [v3 validateClass:@"BuddyLocaleController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [v3 validateClass:@"BuddyLocaleController" hasInstanceVariable:@"_language" withType:"NSString"];
  [v3 validateClass:@"BuddyLocaleController" isKindOfClass:@"OBWelcomeController"];
  [v3 validateClass:@"BuddyLocaleController" hasInstanceMethod:@"setLanguage:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageLocaleCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell"];
  [v3 validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [v3 validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell" hasInstanceMethod:@"learnMoreButton" withFullSignature:{"@", 0}];
}

- (void)setLanguage:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = BuddyLocaleControllerAccessibility;
  [(BuddyLocaleControllerAccessibility *)&v8 setLanguage:v4];
  v5 = [(BuddyLocaleControllerAccessibility *)self safeValueForKey:@"headerView"];
  v6 = [v5 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Obtemplatelabe.isa)];

  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  [(BuddyLocaleControllerAccessibility *)self _accessibilityUpdateLanguageOnLabel:v7];
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = BuddyLocaleControllerAccessibility;
  v8 = [(BuddyLocaleControllerAccessibility *)&v17 tableView:v6 cellForRowAtIndexPath:v7];
  v9 = [(BuddyLocaleControllerAccessibility *)self _accessibilitySelectedLanguage];
  v10 = __UIAccessibilitySafeClass();
  if (v10)
  {
    objc_opt_class();
    v11 = [v10 safeValueForKey:@"titleLabel"];
    v12 = __UIAccessibilityCastAsClass();

    v13 = [v12 text];

    v14 = AXAttributedStringForLanguage(v13, v9);
    if (v14)
    {
      [v10 setAccessibilityLabel:v14];
    }
  }

  else
  {
    v10 = __UIAccessibilitySafeClass();
    [v10 setAccessibilityLanguage:v9];
    objc_opt_class();
    v15 = [v10 safeValueForKey:@"learnMoreButton"];
    v13 = __UIAccessibilityCastAsClass();

    [v13 setAccessibilityLanguage:v9];
  }

  return v8;
}

- (id)_accessibilitySelectedLanguage
{
  objc_opt_class();
  v3 = [(BuddyLocaleControllerAccessibility *)self safeValueForKey:@"_language"];
  v4 = __UIAccessibilityCastAsClass();

  return v4;
}

- (void)_accessibilityUpdateLanguageOnLabel:(id)a3
{
  v7 = a3;
  v4 = [v7 text];
  v5 = [(BuddyLocaleControllerAccessibility *)self _accessibilitySelectedLanguage];
  v6 = AXAttributedStringForLanguage(v4, v5);

  if (v6)
  {
    [v7 setAccessibilityLabel:v6];
  }
}

@end