@interface NavbarConversationTitleAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
- (void)_accessibilityLoadAccessibilityInformation;
@end

@implementation NavbarConversationTitleAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ChatKit.NavbarConversationTitle" hasSwiftField:@"titleLabel" withSwiftType:"CKLabel"];
  [v3 validateClass:@"ChatKit.NavbarConversationTitle" hasSwiftField:@"title" withSwiftType:"String"];
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

  v5 = [v4 titleIconImageType];
  if (v5 == 1)
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
  v3 = [(NavbarConversationTitleAccessibility *)self accessibilityUserDefinedHint];

  if (v3)
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