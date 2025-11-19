@interface UITextContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5;
- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5;
- (BOOL)keyboardInputChanged:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3;
- (id)_accessibilityDataDetectorScheme:(CGPoint)a3;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityCustomRotors;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_accessibilitySetValue:(id)a3;
- (void)keyboardInputChangedSelection:(id)a3;
@end

@implementation UITextContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = @"UITextContentView";
  v4 = "B";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  v3 = "@";
  [location[0] validateClass:v5 hasInstanceMethod:@"keyboardInput: shouldInsertText: isMarkedText:" withFullSignature:{"@", "@", v4, 0}];
  v6 = "{_NSRange=QQ}";
  [location[0] validateClass:v5 hasInstanceMethod:@"keyboardInput: shouldReplaceTextInRange: replacementText:" withFullSignature:{v4, v3, "{_NSRange=QQ}", v3, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"keyboardInputChangedSelection:" withFullSignature:{"v", v3, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"keyboardInputChanged:" withFullSignature:{v4, v3, 0}];
  [location[0] validateClass:v5 hasInstanceMethod:@"selectedRange" withFullSignature:{v6, 0}];
  objc_storeStrong(v8, v7);
}

- (id)_accessibilitySupplementaryHeaderViews
{
  v8[2] = self;
  v8[1] = a2;
  v4 = [(UITextContentViewAccessibility *)self _accessibleNonSupplementarySubviews];
  v8[0] = [v4 mutableCopy];
  *&v2 = MEMORY[0x29EDC9740](v4).n128_u64[0];
  v5 = v8[0];
  v6 = [v8[0] indexesOfObjectsPassingTest:{&__block_literal_global_45, v2}];
  [v5 removeObjectsAtIndexes:?];
  MEMORY[0x29EDC9740](v6);
  v7 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v7;
}

BOOL __72__UITextContentViewAccessibility__accessibilitySupplementaryHeaderViews__block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = ([location[0] _accessibilityIsWebDocumentView] & 1) != 0;
  objc_storeStrong(location, 0);
  return v4;
}

- (BOOL)_accessibilitySupportsActivateAction
{
  v3 = [(UITextContentViewAccessibility *)self safeValueForKey:@"canBecomeFirstResponder"];
  v4 = [v3 BOOLValue];
  MEMORY[0x29EDC9740](v3);
  return v4;
}

- (BOOL)accessibilityActivate
{
  v4 = 0;
  if ([(UITextContentViewAccessibility *)self _accessibilitySupportsActivateAction])
  {
    [(UITextContentViewAccessibility *)self becomeFirstResponder];
    if (([(UITextContentViewAccessibility *)self isFirstResponder]& 1) != 0)
    {
      return 1;
    }
  }

  return v4;
}

- (id)_accessibilityDataDetectorScheme:(CGPoint)a3
{
  v4 = [(UITextContentViewAccessibility *)self safeValueForKey:@"m_webView"];
  v5 = [v4 _accessibilityDataDetectorScheme:{a3.x, a3.y}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (void)_accessibilitySetValue:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UITextContentViewAccessibility *)v8 safeValueForKey:@"isFirstResponder"];
    v6 = [v5 BOOLValue];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if ((v6 & 1) == 0)
    {
      v4 = [(UITextContentViewAccessibility *)v8 safeValueForKey:@"becomeFirstResponder", v3];
    }

    [(UITextContentViewAccessibility *)v8 setText:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)keyboardInputChanged:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5.receiver = v8;
  v5.super_class = UITextContentViewAccessibility;
  v6 = [(UITextContentViewAccessibility *)&v5 keyboardInputChanged:location[0]];
  [(UITextContentViewAccessibility *)v8 _accessibilitySetBoolValue:0 forKey:@"AXAttrCacheIsClean"];
  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)keyboardInputChangedSelection:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3.receiver = v5;
  v3.super_class = UITextContentViewAccessibility;
  [(UITextContentViewAccessibility *)&v3 keyboardInputChangedSelection:location[0]];
  _UIAccessibilitySetAssociatedElementContextForNextNotification();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)a3
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = 0;
  v24 = [(UITextContentViewAccessibility *)self _accessibilityAXAttributedValue];
  v23 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v24 cfAttributedString];
    v5 = v23;
    v23 = v4;
    v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  }

  else if (v24)
  {
    v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:v24];
    v7 = v23;
    v23 = v6;
    v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  }

  length = v26->length;
  v29 = v26->location;
  v30 = length;
  if (v29 + length <= [v24 length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v20 = [v23 attributedSubstringFromRange:{v26->location, v26->length}];
      v9 = [v20 mutableCopy];
      v10 = v25;
      v25 = v9;
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v20);
    }
  }

  if (!v25)
  {
    location = [(UITextContentViewAccessibility *)v28 safeValueForKey:@"m_webView"];
    if ([location _accessibilityIsWebDocumentView])
    {
      v19 = [location _accessibilityAttributedValueForRange:v26];
      v11 = [v19 mutableCopy];
      v12 = v25;
      v25 = v11;
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v19);
    }

    if (![v25 length])
    {
      v21.receiver = v28;
      v21.super_class = UITextContentViewAccessibility;
      v18 = [(UITextContentViewAccessibility *)&v21 _accessibilityAttributedValueForRange:v26];
      v13 = [v18 mutableCopy];
      v14 = v25;
      v25 = v13;
      MEMORY[0x29EDC9740](v14);
      MEMORY[0x29EDC9740](v18);
    }

    objc_storeStrong(&location, 0);
  }

  [(UITextContentViewAccessibility *)v28 _accessibilityConvertStyleAttributesToAccessibility:v25, &v25];
  [(UITextContentViewAccessibility *)v28 _accessibilityAddMispellingsToAttributedString:v25];
  v17 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&v24, 0);
  objc_storeStrong(v16, 0);

  return v17;
}

- (id)accessibilityValue
{
  v16 = self;
  v15[1] = a2;
  v15[0] = [(UITextContentViewAccessibility *)self accessibilityUserDefinedValue];
  if (!v15[0])
  {
    v15[0] = [(UITextContentViewAccessibility *)v16 safeValueForKey:@"attributedText"];
    MEMORY[0x29EDC9740](0);
    v2 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
    v3 = v15[0];
    v15[0] = v2;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    if (!v15[0])
    {
      v15[0] = [(UITextContentViewAccessibility *)v16 safeValueForKey:@"text", v4];
      MEMORY[0x29EDC9740](0);
    }
  }

  v5 = [(UITextContentViewAccessibility *)v16 accessibilityTraits];
  if ((v5 & *MEMORY[0x29EDC7568]) == *MEMORY[0x29EDC7568])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [v15[0] string];
      v7 = v15[0];
      v15[0] = v6;
      MEMORY[0x29EDC9740](v7);
    }

    v14 = 0;
    objc_opt_class();
    v13 = __UIAccessibilityCastAsClass();
    v12 = MEMORY[0x29EDC9748](v13);
    objc_storeStrong(&v13, 0);
    v8 = [(UIView *)v12 _accessibilitySecureTextForString:?];
    v9 = v15[0];
    v15[0] = v8;
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v12);
  }

  v11 = MEMORY[0x29EDC9748](v15[0]);
  objc_storeStrong(v15, 0);

  return v11;
}

- (BOOL)isAccessibilityElement
{
  location[2] = self;
  location[1] = a2;
  location[0] = [(UITextContentViewAccessibility *)self isAccessibilityUserDefinedElement];
  if (location[0])
  {
    v4 = [location[0] BOOLValue] & 1;
  }

  else
  {
    v4 = 1;
  }

  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (CGRect)accessibilityFrame
{
  v31 = self;
  location[1] = a2;
  location[0] = 0;
  v29 = [(UITextContentViewAccessibility *)self superview];
  while (v29)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(location, v29);
      break;
    }

    v2 = [v29 superview];
    v3 = v29;
    v29 = v2;
    MEMORY[0x29EDC9740](v3);
  }

  if (location[0])
  {
    [(UITextContentViewAccessibility *)v31 bounds];
    v25 = v4;
    v26 = v5;
    v27 = v6;
    [location[0] bounds];
    v21 = v7;
    v22 = v8;
    v23 = v9;
    v24 = v10;
    v28 = v10;
    UIAccessibilityFrameForBounds();
  }

  else
  {
    v19.receiver = v31;
    v19.super_class = UITextContentViewAccessibility;
    [(UITextContentViewAccessibility *)&v19 accessibilityFrame];
  }

  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v20 = 1;
  objc_storeStrong(&v29, 0);
  objc_storeStrong(location, 0);
  v15 = v32;
  v16 = v33;
  v17 = v34;
  v18 = v35;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (id)accessibilityCustomRotors
{
  v9 = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDB8DE8] array];
  v7 = [(UITextContentViewAccessibility *)v9 _accessibilityInternalTextLinkCustomRotors];
  [v8[0] axSafelyAddObjectsFromArray:?];
  if (([(UITextContentViewAccessibility *)v9 isEditable]& 1) != 0)
  {
    v6 = [(UITextContentViewAccessibility *)v9 _accessibilityCommonStylingRotors];
    [v8[0] axSafelyAddObjectsFromArray:?];
    v2 = [(UITextContentViewAccessibility *)v9 keyboardType];
    if (!AXUIKeyboardTypeSupportsMisspelledRotor(v2))
    {
      v5 = [(UITextContentViewAccessibility *)v9 _accessibilityMisspelledRotor];
      [v8[0] removeObject:?];
      MEMORY[0x29EDC9740](v5);
    }
  }

  v4 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  v22 = self;
  v21 = a2;
  v20 = 0;
  if (([(UITextContentViewAccessibility *)self isEditable]& 1) != 0)
  {
    v20 = *MEMORY[0x29EDC7598] | *MEMORY[0x29EDBDC00];
  }

  else
  {
    v20 = *MEMORY[0x29EDC7FD0] | *MEMORY[0x29EDBDC00];
  }

  v7 = [(UITextContentViewAccessibility *)v22 safeValueForKey:@"selectedRange"];
  v18 = [v7 rangeValue];
  v19 = v2;
  v8 = [(UITextContentViewAccessibility *)v22 safeValueForKey:@"isEditing", MEMORY[0x29EDC9740](v7).n128_f64[0]];
  v16 = 0;
  v14 = 0;
  v9 = 0;
  if ([v8 BOOLValue])
  {
    v9 = 0;
    if (v18 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = [(UITextContentViewAccessibility *)v22 _accessibilityWindow];
      v16 = 1;
      v15 = [v17 firstResponder];
      v14 = 1;
      v9 = v15 == v22;
    }
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](v15);
  }

  if (v16)
  {
    MEMORY[0x29EDC9740](v17);
  }

  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v9 && (([*MEMORY[0x29EDC8008] _accessibilityHardwareKeyboardActive] & 1) != 0 || (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilitySoftwareKeyboardActive") & 1) != 0 || _AXSMossdeepEnabled()))
  {
    v20 |= *MEMORY[0x29EDC7528];
  }

  v13 = [(UITextContentViewAccessibility *)v22 accessibilityUserDefinedTraits];
  if (v13)
  {
    v20 |= [v13 unsignedLongLongValue];
  }

  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  v4 = [(UIView *)v10 _accessibilityTextAreaTraits];
  v20 |= v4;
  MEMORY[0x29EDC9740](v10);
  v6 = v20;
  objc_storeStrong(&v13, 0);
  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  v14 = self;
  v13 = a2;
  v2 = [(UITextContentViewAccessibility *)self accessibilityTraits];
  if ((v2 & *MEMORY[0x29EDC7528]) != 0)
  {
    v10 = [(UITextContentViewAccessibility *)v14 safeValueForKey:@"m_webView"];
    v9 = [v10 safeValueForKey:@"caretRect"];
    [v9 rectValue];
    MEMORY[0x29EDC9740](v9);
    MEMORY[0x29EDC9740](v10);
    UIAccessibilityFrameForBounds();
    v12.origin.x = v3;
    v12.origin.y = v4;
    v12.size.width = v5;
    v12.size.height = v6;
    CGRectGetMidX(v12);
    CGRectGetMidY(v12);
    CGPointMake_9();
  }

  else
  {
    v11.receiver = v14;
    v11.super_class = UITextContentViewAccessibility;
    [(UITextContentViewAccessibility *)&v11 accessibilityActivationPoint];
  }

  result.y = v8;
  result.x = v7;
  return result;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v2 = [(UITextContentViewAccessibility *)self selectedRange:a2];
  result.length = v3;
  result.location = v2;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v5 = a3;
  v4 = self;
  location[1] = a2;
  location[0] = [(UITextContentViewAccessibility *)self accessibilityValue];
  if (!location[0])
  {
    location[0] = [(UITextContentViewAccessibility *)v4 accessibilityLabel];
    MEMORY[0x29EDC9740](0);
  }

  if (v5.length || (v6 = v5.location, v7 = 0, v5.location > [location[0] length]))
  {
    if (v5.length)
    {
      [v4 _accessibilitySetTextSelection:v5.length];
    }
  }

  else
  {
    [(UITextContentViewAccessibility *)v4 setSelectedRange:v5.location, v5.length];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)keyboardInput:(id)a3 shouldReplaceTextInRange:(_NSRange)a4 replacementText:(id)a5
{
  v13 = a4;
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = 0;
  objc_storeStrong(&v10, a5);
  v8.receiver = v12;
  v8.super_class = UITextContentViewAccessibility;
  v9 = [(UITextContentViewAccessibility *)&v8 keyboardInput:location[0] shouldReplaceTextInRange:v13.location replacementText:v13.length, v10];
  if ((v9 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v9;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)keyboardInput:(id)a3 shouldInsertText:(id)a4 isMarkedText:(BOOL)a5
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v12 = 0;
  objc_storeStrong(&v12, a4);
  v11 = a5;
  v9.receiver = v14;
  v9.super_class = UITextContentViewAccessibility;
  v10 = [(UITextContentViewAccessibility *)&v9 keyboardInput:location[0] shouldInsertText:v12 isMarkedText:a5];
  if ((v10 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v10;
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

@end