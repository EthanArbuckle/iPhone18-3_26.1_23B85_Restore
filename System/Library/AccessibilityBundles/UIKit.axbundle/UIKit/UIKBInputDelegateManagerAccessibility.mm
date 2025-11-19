@interface UIKBInputDelegateManagerAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)callShouldReplaceExtendedRange:(int64_t)a3 withText:(id)a4 includeMarkedText:(BOOL)a5;
- (void)_deleteBackwardAndNotify:(BOOL)a3 reinsertText:(BOOL)a4;
- (void)insertText:(id)a3 updateInputSource:(BOOL)a4;
@end

@implementation UIKBInputDelegateManagerAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = "@";
  v3 = "B";
  v4 = @"UIKBInputDelegateManager";
  [location[0] validateClass:"q" hasInstanceMethod:"@" withFullSignature:{"B", 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"__content" withFullSignature:{v7, 0}];
  v5 = "v";
  [location[0] validateClass:v4 hasInstanceMethod:@"insertText:updateInputSource:" withFullSignature:{v7, v3, 0}];
  [location[0] validateClass:v4 hasInstanceMethod:@"_deleteBackwardAndNotify:reinsertText:" withFullSignature:{v5, v3, v3, 0}];
  [location[0] validateClass:@"WKContentView"];
  [location[0] validateClass:@"UIKeyboardImpl" hasInstanceMethod:@"inlineTextCompletionController" withFullSignature:{v7, 0}];
  [location[0] validateClass:@"UIInlineTextCompletionController" hasInstanceMethod:@"lastAcceptedTextCompletion" withFullSignature:{v7, 0}];
  v6 = @"_UIInlineTextCompletion";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v6 hasInstanceMethod:@"input" withFullSignature:{v7, 0}];
  objc_storeStrong(v9, v8);
}

- (BOOL)callShouldReplaceExtendedRange:(int64_t)a3 withText:(id)a4 includeMarkedText:(BOOL)a5
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v22 = a5;
  v20.receiver = v26;
  v20.super_class = UIKBInputDelegateManagerAccessibility;
  v21 = [(UIKBInputDelegateManagerAccessibility *)&v20 callShouldReplaceExtendedRange:v24 withText:location includeMarkedText:a5];
  if (v21)
  {
    v14[1] = MEMORY[0x29EDCA5F8];
    v15 = -1073741824;
    v16 = 0;
    v17 = __99__UIKBInputDelegateManagerAccessibility_callShouldReplaceExtendedRange_withText_includeMarkedText___block_invoke;
    v18 = &unk_29F30C7C8;
    v19 = MEMORY[0x29EDC9748](v26);
    AXPerformSafeBlock();
    v14[0] = [MEMORY[0x29EDC7B08] activeInstance];
    v13 = [v14[0] safeValueForKeyPath:@"inlineTextCompletionController.lastAcceptedTextCompletion"];
    v8 = [v13 safeStringForKey:@"candidate"];
    v11 = 0;
    v9 = 0;
    if ([v8 isEqualToString:location])
    {
      v12 = [v13 safeStringForKey:@"input"];
      v11 = 1;
      v5 = [v12 length];
      v9 = v5 == v24;
    }

    if (v11)
    {
      MEMORY[0x29EDC9740](v12);
    }

    MEMORY[0x29EDC9740](v8);
    if (!v9)
    {
      UIAccessibilityPostNotification(*MEMORY[0x29EDC74E8], location);
    }

    objc_storeStrong(&v13, 0);
    objc_storeStrong(v14, 0);
    objc_storeStrong(&v19, 0);
  }

  v7 = v21;
  objc_storeStrong(&location, 0);
  return v7 & 1;
}

double __99__UIKBInputDelegateManagerAccessibility_callShouldReplaceExtendedRange_withText_includeMarkedText___block_invoke(uint64_t a1)
{
  v8 = a1;
  v7 = a1;
  v6 = 0;
  objc_opt_class();
  v3 = [*(a1 + 32) safeValueForKey:@"__content"];
  v5 = __UIAccessibilityCastAsSafeCategory();
  MEMORY[0x29EDC9740](v3);
  v4 = MEMORY[0x29EDC9748](v5);
  objc_storeStrong(&v5, 0);
  [(UITextInputUIResponderAccessibility *)v4 _axResetFKAFocusToFirstResponder];
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (void)insertText:(id)a3 updateInputSource:(BOOL)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = a4;
  v6.receiver = v9;
  v6.super_class = UIKBInputDelegateManagerAccessibility;
  [(UIKBInputDelegateManagerAccessibility *)&v6 insertText:location[0] updateInputSource:a4];
  v5 = [(UIKBInputDelegateManagerAccessibility *)v9 safeValueForKey:@"keyInputDelegate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSClassFromString(&cfstr_Wkcontentview.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(UIKBInputDelegateManagerAccessibility *)v9 _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCD8]];
      }
    }
  }

  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)_deleteBackwardAndNotify:(BOOL)a3 reinsertText:(BOOL)a4
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  v6 = a4;
  v5.receiver = self;
  v5.super_class = UIKBInputDelegateManagerAccessibility;
  [(UIKBInputDelegateManagerAccessibility *)&v5 _deleteBackwardAndNotify:a3 reinsertText:a4];
  location = [(UIKBInputDelegateManagerAccessibility *)v9 safeValueForKey:@"keyInputDelegate"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      NSClassFromString(&cfstr_Wkcontentview.isa);
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        [(UIKBInputDelegateManagerAccessibility *)v9 _accessibilityPostValueChangedNotificationWithChangeType:*MEMORY[0x29EDBDCC8]];
      }
    }
  }

  objc_storeStrong(&location, 0);
}

@end