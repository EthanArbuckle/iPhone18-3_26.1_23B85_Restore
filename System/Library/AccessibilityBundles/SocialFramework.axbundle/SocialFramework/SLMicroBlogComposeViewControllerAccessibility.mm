@interface SLMicroBlogComposeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (void)_presentMentionsViewControllerWithSearchString:(id)string;
- (void)noteLocationInfoChanged:(id)changed;
@end

@implementation SLMicroBlogComposeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"SLMicroBlogComposeViewController" hasInstanceMethod:@"noteLocationInfoChanged:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"SLMicroBlogComposeViewController" hasInstanceMethod:@"_presentMentionsViewControllerWithSearchString:" withFullSignature:{"v", "@", 0}];
}

- (void)noteLocationInfoChanged:(id)changed
{
  v3.receiver = self;
  v3.super_class = SLMicroBlogComposeViewControllerAccessibility;
  [(SLMicroBlogComposeViewControllerAccessibility *)&v3 noteLocationInfoChanged:changed];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_presentMentionsViewControllerWithSearchString:(id)string
{
  v7.receiver = self;
  v7.super_class = SLMicroBlogComposeViewControllerAccessibility;
  [(SLMicroBlogComposeViewControllerAccessibility *)&v7 _presentMentionsViewControllerWithSearchString:string];
  v3 = accessibilityLocalizedString(@"mention.sheet.appeared");
  v6 = accessibilityLocalizedString(@"mention.sheet.hint");
  v4 = __UIAXStringForVariables();

  v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v4, v6, @"__AXStringForVariablesSentinel"}];
  [v5 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8E8]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
}

@end