@interface NavbarConversationTitleAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NavbarConversationTitleAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.NavbarConversationTitle" hasSwiftField:@"titleLabel" withSwiftType:"CKLabel"];
  [validationsCopy validateClass:@"ChatKit.NavbarConversationTitle" hasSwiftField:@"title" withSwiftType:"String"];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v4.receiver = self;
  v4.super_class = NavbarConversationTitleAccessibility;
  [(NavbarConversationTitleAccessibility *)&v4 _accessibilityLoadAccessibilityInformation];
  v3 = [(NavbarConversationTitleAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  [v3 setIsAccessibilityElement:0];
}

- (id)accessibilityLabel
{
  v3 = [(NavbarConversationTitleAccessibility *)self safeSwiftValueForKey:@"titleLabel"];
  v4 = __UIAccessibilitySafeClass();

  titleIconImageType = [v4 titleIconImageType];
  if (titleIconImageType == 1)
  {
    v6 = accessibilityLocalizedString(@"conversation.verified");
  }

  else
  {
    v6 = 0;
  }

  v7 = [(NavbarConversationTitleAccessibility *)self safeSwiftStringForKey:@"title"];
  v8 = __UIAXStringForVariables();

  return v8;
}

- (id)accessibilityHint
{
  accessibilityUserDefinedHint = [(NavbarConversationTitleAccessibility *)self accessibilityUserDefinedHint];

  if (accessibilityUserDefinedHint)
  {
    [(NavbarConversationTitleAccessibility *)self accessibilityUserDefinedHint];
  }

  else
  {
    accessibilityLocalizedString(@"multi.person.header.hint");
  }
  v4 = ;

  return v4;
}

@end