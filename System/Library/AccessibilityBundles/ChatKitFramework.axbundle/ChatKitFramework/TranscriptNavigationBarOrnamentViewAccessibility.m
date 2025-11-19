@interface TranscriptNavigationBarOrnamentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation TranscriptNavigationBarOrnamentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"ChatKit.TranscriptNavigationBarOrnamentView" hasInstanceMethod:@"conversationTitle" withFullSignature:{"@", 0}];
  [v3 validateClass:@"ChatKit.ConversationTitle" hasSwiftField:@"leadingIndicatorIcons" withSwiftType:"Array<CKTitleIcon>"];
  [v3 validateClass:@"ChatKit.ConversationTitle" hasSwiftField:@"title" withSwiftType:"String"];
  [v3 validateClass:@"ChatKit.TranscriptNavigationBarOrnamentView" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(TranscriptNavigationBarOrnamentViewAccessibility *)self safeValueForKey:@"conversationTitle"];
  v4 = [v3 safeSwiftArrayForKey:@"leadingIndicatorIcons"];
  v5 = [v4 firstObject];
  v6 = __UIAccessibilitySafeClass();

  v7 = [v6 imageType];
  if (v7 == 1)
  {
    v8 = accessibilityLocalizedString(@"conversation.verified");
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TranscriptNavigationBarOrnamentViewAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v10 = [v3 safeSwiftStringForKey:@"title"];
  v13 = [v9 accessibilityLabel];
  v11 = __UIAXStringForVariables();

  return v11;
}

- (id)accessibilityHint
{
  v3 = [(TranscriptNavigationBarOrnamentViewAccessibility *)self accessibilityUserDefinedHint];

  if (v3)
  {
    [(TranscriptNavigationBarOrnamentViewAccessibility *)self accessibilityUserDefinedHint];
  }

  else
  {
    accessibilityLocalizedString(@"multi.person.header.hint");
  }
  v4 = ;

  return v4;
}

@end