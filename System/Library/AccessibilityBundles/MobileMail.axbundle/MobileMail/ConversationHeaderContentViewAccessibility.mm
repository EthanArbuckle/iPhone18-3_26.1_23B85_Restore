@interface ConversationHeaderContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_accessibilityLoadAccessibilityInformation;
- (void)_createPrimaryViews;
- (void)setText:(id)text;
@end

@implementation ConversationHeaderContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ConversationHeaderContentView" hasInstanceMethod:@"_createPrimaryViews" withFullSignature:{"v", 0}];
  [validationsCopy validateClass:@"ConversationHeaderContentView" hasInstanceMethod:@"textLabel" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ConversationHeaderContentView" hasInstanceMethod:@"setText:" withFullSignature:{"v", "@", 0}];
}

- (void)_accessibilityLoadAccessibilityInformation
{
  v9.receiver = self;
  v9.super_class = ConversationHeaderContentViewAccessibility;
  [(ConversationHeaderContentViewAccessibility *)&v9 _accessibilityLoadAccessibilityInformation];
  objc_opt_class();
  v3 = [(ConversationHeaderContentViewAccessibility *)self safeValueForKey:@"textLabel"];
  v4 = __UIAccessibilityCastAsClass();

  text = [v4 text];

  v6 = accessibilityLocalizedString(@"subject");
  if (text)
  {
    text2 = [v4 text];
    v8 = __AXStringForVariables();
    [v4 setAccessibilityLabel:{v8, text2, @"__AXStringForVariablesSentinel"}];
  }

  else
  {
    [v4 setAccessibilityLabel:v6];
  }
}

- (void)_createPrimaryViews
{
  v3.receiver = self;
  v3.super_class = ConversationHeaderContentViewAccessibility;
  [(ConversationHeaderContentViewAccessibility *)&v3 _createPrimaryViews];
  [(ConversationHeaderContentViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

- (void)setText:(id)text
{
  v4.receiver = self;
  v4.super_class = ConversationHeaderContentViewAccessibility;
  [(ConversationHeaderContentViewAccessibility *)&v4 setText:text];
  [(ConversationHeaderContentViewAccessibility *)self _accessibilityLoadAccessibilityInformation];
}

@end