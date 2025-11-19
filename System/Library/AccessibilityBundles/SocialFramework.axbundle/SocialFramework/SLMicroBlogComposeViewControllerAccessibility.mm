@interface SLMicroBlogComposeViewControllerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (void)_presentMentionsViewControllerWithSearchString:(id)a3;
- (void)noteLocationInfoChanged:(id)a3;
@end

@implementation SLMicroBlogComposeViewControllerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"SLMicroBlogComposeViewController" hasInstanceMethod:@"noteLocationInfoChanged:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"SLMicroBlogComposeViewController" hasInstanceMethod:@"_presentMentionsViewControllerWithSearchString:" withFullSignature:{"v", "@", 0}];
}

- (void)noteLocationInfoChanged:(id)a3
{
  v3.receiver = self;
  v3.super_class = SLMicroBlogComposeViewControllerAccessibility;
  [(SLMicroBlogComposeViewControllerAccessibility *)&v3 noteLocationInfoChanged:a3];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7ED8], 0);
}

- (void)_presentMentionsViewControllerWithSearchString:(id)a3
{
  v7.receiver = self;
  v7.super_class = SLMicroBlogComposeViewControllerAccessibility;
  [(SLMicroBlogComposeViewControllerAccessibility *)&v7 _presentMentionsViewControllerWithSearchString:a3];
  v3 = accessibilityLocalizedString(@"mention.sheet.appeared");
  v6 = accessibilityLocalizedString(@"mention.sheet.hint");
  v4 = __UIAXStringForVariables();

  v5 = [MEMORY[0x29EDBD7E8] axAttributedStringWithString:{v4, v6, @"__AXStringForVariablesSentinel"}];
  [v5 setAttribute:*MEMORY[0x29EDB8F00] forKey:*MEMORY[0x29EDBD8E8]];
  UIAccessibilityPostNotification(*MEMORY[0x29EDC7EA8], v5);
}

@end