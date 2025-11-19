@interface CKMessageSnippetContentViewAccessibility
- (id)accessibilityLabel;
- (void)setBalloonType:(int64_t)a3;
@end

@implementation CKMessageSnippetContentViewAccessibility

- (id)accessibilityLabel
{
  v3 = [(CKMessageSnippetContentViewAccessibility *)self safeValueForKey:@"_toLabel"];
  v4 = [v3 safeValueForKey:@"text"];

  v5 = [(CKMessageSnippetContentViewAccessibility *)self safeValueForKey:@"_balloonImageView"];
  v6 = [v5 safeValueForKey:@"attributedText"];
  v7 = [v6 safeValueForKey:@"string"];

  if (v7 && ([v7 isEqualToString:@" "] & 1) == 0)
  {
    v8 = MEMORY[0x29EDBA0F8];
    v9 = accessibilityAssistantLocalizedString(@"message.snippet.message");
    v10 = [v8 stringWithFormat:v9, v7];

    v7 = v10;
  }

  v11 = __UIAXStringForVariables();

  return v11;
}

- (void)setBalloonType:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CKMessageSnippetContentViewAccessibility;
  [(CKMessageSnippetContentViewAccessibility *)&v7 setBalloonType:?];
  if (a3 == 1)
  {
    v5 = @"message.snippet.status.sent";
  }

  else
  {
    v5 = @"message.snippet.status.unsent";
  }

  v6 = accessibilityAssistantLocalizedString(v5);
  [(CKMessageSnippetContentViewAccessibility *)self setAccessibilityValue:v6];
}

@end