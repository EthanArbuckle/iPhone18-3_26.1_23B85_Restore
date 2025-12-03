@interface BuddyLocaleControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)_accessibilitySelectedLanguage;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (void)_accessibilityUpdateLanguageOnLabel:(id)label;
- (void)setLanguage:(id)language;
@end

@implementation BuddyLocaleControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"OBTemplateLabel"];
  [validationsCopy validateClass:@"BuddyLocaleController" hasInstanceMethod:@"tableView: cellForRowAtIndexPath:" withFullSignature:{"@", "@", "@", 0}];
  [validationsCopy validateClass:@"BuddyLocaleController" hasInstanceVariable:@"_language" withType:"NSString"];
  [validationsCopy validateClass:@"BuddyLocaleController" isKindOfClass:@"OBWelcomeController"];
  [validationsCopy validateClass:@"BuddyLocaleController" hasInstanceMethod:@"setLanguage:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"OBWelcomeController" hasInstanceMethod:@"headerView" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageLocaleCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell"];
  [validationsCopy validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell" hasInstanceMethod:@"titleLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell" hasInstanceMethod:@"descriptionLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"BuddyLanguageLocaleSafetyAndHandlingTableViewCell" hasInstanceMethod:@"learnMoreButton" withFullSignature:{"@", 0}];
}

- (void)setLanguage:(id)language
{
  languageCopy = language;
  v8.receiver = self;
  v8.super_class = BuddyLocaleControllerAccessibility;
  [(BuddyLocaleControllerAccessibility *)&v8 setLanguage:languageCopy];
  v5 = [(BuddyLocaleControllerAccessibility *)self safeValueForKey:@"headerView"];
  v6 = [v5 _accessibilityDescendantOfType:NSClassFromString(&cfstr_Obtemplatelabe.isa)];

  objc_opt_class();
  v7 = __UIAccessibilityCastAsClass();
  [(BuddyLocaleControllerAccessibility *)self _accessibilityUpdateLanguageOnLabel:v7];
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = BuddyLocaleControllerAccessibility;
  v8 = [(BuddyLocaleControllerAccessibility *)&v17 tableView:viewCopy cellForRowAtIndexPath:pathCopy];
  _accessibilitySelectedLanguage = [(BuddyLocaleControllerAccessibility *)self _accessibilitySelectedLanguage];
  v10 = __UIAccessibilitySafeClass();
  if (v10)
  {
    objc_opt_class();
    v11 = [v10 safeValueForKey:@"titleLabel"];
    v12 = __UIAccessibilityCastAsClass();

    text = [v12 text];

    v14 = AXAttributedStringForLanguage(text, _accessibilitySelectedLanguage);
    if (v14)
    {
      [v10 setAccessibilityLabel:v14];
    }
  }

  else
  {
    v10 = __UIAccessibilitySafeClass();
    [v10 setAccessibilityLanguage:_accessibilitySelectedLanguage];
    objc_opt_class();
    v15 = [v10 safeValueForKey:@"learnMoreButton"];
    text = __UIAccessibilityCastAsClass();

    [text setAccessibilityLanguage:_accessibilitySelectedLanguage];
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

- (void)_accessibilityUpdateLanguageOnLabel:(id)label
{
  labelCopy = label;
  text = [labelCopy text];
  _accessibilitySelectedLanguage = [(BuddyLocaleControllerAccessibility *)self _accessibilitySelectedLanguage];
  v6 = AXAttributedStringForLanguage(text, _accessibilitySelectedLanguage);

  if (v6)
  {
    [labelCopy setAccessibilityLabel:v6];
  }
}

@end