@interface VMMessageTranscriptViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityActivateTextViewLink:(id)a3;
@end

@implementation VMMessageTranscriptViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"VMMessageTranscriptView" hasInstanceMethod:@"openFeedbackURL:" withFullSignature:{"v", "@", 0}];
  [v3 validateClass:@"VMMessageTranscriptView" hasInstanceVariable:@"_feedbackTextView" withType:"UITextView"];
  [v3 validateClass:@"VMMessageTranscriptView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (BOOL)_accessibilityActivateTextViewLink:(id)a3
{
  v4 = a3;
  v5 = [v4 accessibilityContainer];
  v6 = [v5 accessibilityContainer];
  v7 = [(VMMessageTranscriptViewAccessibility *)self safeValueForKey:@"_feedbackTextView"];

  if (v6 == v7)
  {
    v17 = MEMORY[0x29EDCA5F8];
    v18 = 3221225472;
    v19 = __75__VMMessageTranscriptViewAccessibility__accessibilityActivateTextViewLink___block_invoke;
    v20 = &unk_29F2D5AF0;
    v21 = self;
    v22 = v4;
    AXPerformSafeBlock();

    v11 = 1;
  }

  else
  {
    v8 = [v4 accessibilityContainer];
    v9 = [v8 accessibilityContainer];
    v10 = [(VMMessageTranscriptViewAccessibility *)self safeValueForKey:@"_textView"];

    if (v9 == v10)
    {
      v12 = [(VMMessageTranscriptViewAccessibility *)self safeUIViewForKey:@"_textView"];
      v13 = MEMORY[0x29EDBA168];
      [v4 accessibilityActivationPoint];
      v14 = [v13 valueWithPoint:?];
      v11 = [v12 _accessibilityShowContextMenuWithTargetPointValue:v14];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = VMMessageTranscriptViewAccessibility;
      v11 = [(VMMessageTranscriptViewAccessibility *)&v16 _accessibilityActivateTextViewLink:v4];
    }
  }

  return v11;
}

void __75__VMMessageTranscriptViewAccessibility__accessibilityActivateTextViewLink___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) url];
  [v1 openFeedbackURL:v2];
}

@end