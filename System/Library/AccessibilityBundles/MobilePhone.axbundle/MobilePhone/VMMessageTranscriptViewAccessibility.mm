@interface VMMessageTranscriptViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityActivateTextViewLink:(id)link;
@end

@implementation VMMessageTranscriptViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"VMMessageTranscriptView" hasInstanceMethod:@"openFeedbackURL:" withFullSignature:{"v", "@", 0}];
  [validationsCopy validateClass:@"VMMessageTranscriptView" hasInstanceVariable:@"_feedbackTextView" withType:"UITextView"];
  [validationsCopy validateClass:@"VMMessageTranscriptView" hasInstanceVariable:@"_textView" withType:"UITextView"];
}

- (BOOL)_accessibilityActivateTextViewLink:(id)link
{
  linkCopy = link;
  accessibilityContainer = [linkCopy accessibilityContainer];
  v5AccessibilityContainer = [accessibilityContainer accessibilityContainer];
  v7 = [(VMMessageTranscriptViewAccessibility *)self safeValueForKey:@"_feedbackTextView"];

  if (v5AccessibilityContainer == v7)
  {
    v17 = MEMORY[0x29EDCA5F8];
    v18 = 3221225472;
    v19 = __75__VMMessageTranscriptViewAccessibility__accessibilityActivateTextViewLink___block_invoke;
    v20 = &unk_29F2D5AF0;
    selfCopy = self;
    v22 = linkCopy;
    AXPerformSafeBlock();

    v11 = 1;
  }

  else
  {
    accessibilityContainer2 = [linkCopy accessibilityContainer];
    v8AccessibilityContainer = [accessibilityContainer2 accessibilityContainer];
    v10 = [(VMMessageTranscriptViewAccessibility *)self safeValueForKey:@"_textView"];

    if (v8AccessibilityContainer == v10)
    {
      v12 = [(VMMessageTranscriptViewAccessibility *)self safeUIViewForKey:@"_textView"];
      v13 = MEMORY[0x29EDBA168];
      [linkCopy accessibilityActivationPoint];
      v14 = [v13 valueWithPoint:?];
      v11 = [v12 _accessibilityShowContextMenuWithTargetPointValue:v14];
    }

    else
    {
      v16.receiver = self;
      v16.super_class = VMMessageTranscriptViewAccessibility;
      v11 = [(VMMessageTranscriptViewAccessibility *)&v16 _accessibilityActivateTextViewLink:linkCopy];
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