@interface TranscriptNavigationBarOrnamentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (id)accessibilityHint;
- (id)accessibilityLabel;
@end

@implementation TranscriptNavigationBarOrnamentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"ChatKit.TranscriptNavigationBarOrnamentView" hasInstanceMethod:@"conversationTitle" withFullSignature:{"@", 0}];
  [validationsCopy validateClass:@"ChatKit.ConversationTitle" hasSwiftField:@"leadingIndicatorIcons" withSwiftType:"Array<CKTitleIcon>"];
  [validationsCopy validateClass:@"ChatKit.ConversationTitle" hasSwiftField:@"title" withSwiftType:"String"];
  [validationsCopy validateClass:@"ChatKit.TranscriptNavigationBarOrnamentView" hasSwiftField:@"subtitleLabel" withSwiftType:"UILabel"];
}

- (id)accessibilityLabel
{
  v3 = [(TranscriptNavigationBarOrnamentViewAccessibility *)self safeValueForKey:@"conversationTitle"];
  v4 = [v3 safeSwiftArrayForKey:@"leadingIndicatorIcons"];
  firstObject = [v4 firstObject];
  v6 = __UIAccessibilitySafeClass();

  imageType = [v6 imageType];
  if (imageType == 1)
  {
    v8 = accessibilityLocalizedString(@"conversation.verified");
  }

  else
  {
    v8 = 0;
  }

  v9 = [(TranscriptNavigationBarOrnamentViewAccessibility *)self safeSwiftValueForKey:@"subtitleLabel"];
  v10 = [v3 safeSwiftStringForKey:@"title"];
  accessibilityLabel = [v9 accessibilityLabel];
  v11 = __UIAXStringForVariables();

  return v11;
}

- (id)accessibilityHint
{
  accessibilityUserDefinedHint = [(TranscriptNavigationBarOrnamentViewAccessibility *)self accessibilityUserDefinedHint];

  if (accessibilityUserDefinedHint)
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