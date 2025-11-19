@interface HUStringInLabelTapGestureRecognizerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)shouldReceiveEvent:(id)a3;
@end

@implementation HUStringInLabelTapGestureRecognizerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"HUStringInLabelTapGestureRecognizer" isKindOfClass:@"UITapGestureRecognizer"];
  [v3 validateClass:@"HUStringInLabelTapGestureRecognizer" hasInstanceMethod:@"shouldReceiveEvent:" withFullSignature:{"B", "@", 0}];
  [v3 validateClass:@"HUStringInLabelTapGestureRecognizer" hasInstanceMethod:@"_didTapAttributedTextInLabel: targetRange: event:" withFullSignature:{"B", "@", "{_NSRange=QQ}", "@", 0}];
}

- (BOOL)shouldReceiveEvent:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = HUStringInLabelTapGestureRecognizerAccessibility;
  [(HUStringInLabelTapGestureRecognizerAccessibility *)&v19 shouldReceiveEvent:v4];
  LOBYTE(v15) = 0;
  objc_opt_class();
  v5 = [(HUStringInLabelTapGestureRecognizerAccessibility *)self safeValueForKey:@"view"];
  v6 = __UIAccessibilityCastAsClass();

  if (v6)
  {
    v7 = [v6 attributedText];
    if (v7)
    {
      v8 = [(HUStringInLabelTapGestureRecognizerAccessibility *)self safeValueForKey:@"view"];
      v9 = [v8 accessibilityLabel];

      if (v9)
      {
        v10 = [v7 string];
        [v10 rangeOfString:v9 options:4];

        v15 = 0;
        v16 = &v15;
        v17 = 0x2020000000;
        v18 = 0;
        v13 = v6;
        v14 = v4;
        AXPerformSafeBlock();
        v11 = *(v16 + 24);

        _Block_object_dispose(&v15, 8);
LABEL_11:

        goto LABEL_12;
      }
    }

    else
    {
      v9 = AXLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [HUStringInLabelTapGestureRecognizerAccessibility shouldReceiveEvent:v9];
      }
    }

    v11 = 0;
    goto LABEL_11;
  }

  v7 = AXLogCommon();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    [HUStringInLabelTapGestureRecognizerAccessibility shouldReceiveEvent:v7];
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