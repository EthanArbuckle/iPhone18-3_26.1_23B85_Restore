@interface HUStringInLabelTapGestureRecognizerAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)shouldReceiveEvent:(id)event;
@end

@implementation HUStringInLabelTapGestureRecognizerAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  validationsCopy = validations;
  [validationsCopy validateClass:@"HUStringInLabelTapGestureRecognizer" isKindOfClass:@"UITapGestureRecognizer"];
  [validationsCopy validateClass:@"HUStringInLabelTapGestureRecognizer" hasInstanceMethod:@"shouldReceiveEvent:" withFullSignature:{"B", "@", 0}];
  [validationsCopy validateClass:@"HUStringInLabelTapGestureRecognizer" hasInstanceMethod:@"_didTapAttributedTextInLabel: targetRange: event:" withFullSignature:{"B", "@", "{_NSRange=QQ}", "@", 0}];
}

- (BOOL)shouldReceiveEvent:(id)event
{
  eventCopy = event;
  v19.receiver = self;
  v19.super_class = HUStringInLabelTapGestureRecognizerAccessibility;
  [(HUStringInLabelTapGestureRecognizerAccessibility *)&v19 shouldReceiveEvent:eventCopy];
  LOBYTE(v15) = 0;
  objc_opt_class();
  v5 = [(HUStringInLabelTapGestureRecognizerAccessibility *)self safeValueForKey:@"view"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    attributedText = [v6 attributedText];
    if (attributedText)
    {
      v8 = [(HUStringInLabelTapGestureRecognizerAccessibility *)self safeValueForKey:@"view"];
      accessibilityLabel = [v8 accessibilityLabel];

      if (accessibilityLabel)
      {
        string = [attributedText string];
        [string rangeOfString:accessibilityLabel options:4];

        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v13 = v6;
        v14 = eventCopy;
        AXPerformSafeBlock();
        v11 = *(v16 + 24);

        _Block_object_dispose(&v15, 8);
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      accessibilityLabel = AXLogCommon();
      if (os_log_type_enabled(accessibilityLabel, OS_LOG_TYPE_ERROR))
      {
        [HUStringInLabelTapGestureRecognizerAccessibility shouldReceiveEvent:accessibilityLabel];
      }
    }

    v11 = 0;
    goto LABEL_11;
  }

  attributedText = AXLogCommon();
  if (os_log_type_enabled(attributedText, OS_LOG_TYPE_ERROR))
  {
    [HUStringInLabelTapGestureRecognizerAccessibility shouldReceiveEvent:attributedText];
  }

  v11 = 0;
LABEL_12:

  return v11 & 1;
}

uint64_t __71__HUStringInLabelTapGestureRecognizerAccessibility_shouldReceiveEvent___block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) _didTapAttributedTextInLabel:*(a1 + 40) targetRange:*(a1 + 64) event:{*(a1 + 72), *(a1 + 48)}];
  *(*(*(a1 + 56) + 8) + 24) = result;
  return result;
}

@end