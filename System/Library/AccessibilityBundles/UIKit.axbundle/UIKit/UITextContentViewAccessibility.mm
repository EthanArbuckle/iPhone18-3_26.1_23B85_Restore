@interface UITextContentViewAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilitySupportsActivateAction;
- (BOOL)accessibilityActivate;
- (BOOL)isAccessibilityElement;
- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText;
- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text;
- (BOOL)keyboardInputChanged:(id)changed;
- (CGPoint)accessibilityActivationPoint;
- (CGRect)accessibilityFrame;
- (_NSRange)_accessibilitySelectedTextRange;
- (id)_accessibilityAttributedValueForRange:(_NSRange *)range;
- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme;
- (id)_accessibilitySupplementaryHeaderViews;
- (id)accessibilityCustomRotors;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_accessibilitySetValue:(id)value;
- (void)keyboardInputChangedSelection:(id)selection;
@end

@implementation UITextContentViewAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v8 = location;
  v7 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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
  _accessibleNonSupplementarySubviews = [(UITextContentViewAccessibility *)self _accessibleNonSupplementarySubviews];
  v8[0] = [_accessibleNonSupplementarySubviews mutableCopy];
  *&v2 = MEMORY[0x29EDC9740](_accessibleNonSupplementarySubviews).n128_u64[0];
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
  bOOLValue = [v3 BOOLValue];
  MEMORY[0x29EDC9740](v3);
  return bOOLValue;
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

- (id)_accessibilityDataDetectorScheme:(CGPoint)scheme
{
  v4 = [(UITextContentViewAccessibility *)self safeValueForKey:@"m_webView"];
  v5 = [v4 _accessibilityDataDetectorScheme:{scheme.x, scheme.y}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (void)_accessibilitySetValue:(id)value
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, value);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"isFirstResponder"];
    bOOLValue = [v5 BOOLValue];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if ((bOOLValue & 1) == 0)
    {
      v4 = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"becomeFirstResponder", v3];
    }

    [(UITextContentViewAccessibility *)selfCopy setText:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)keyboardInputChanged:(id)changed
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, changed);
  v5.receiver = selfCopy;
  v5.super_class = UITextContentViewAccessibility;
  v6 = [(UITextContentViewAccessibility *)&v5 keyboardInputChanged:location[0]];
  [(UITextContentViewAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"AXAttrCacheIsClean"];
  v4 = v6;
  objc_storeStrong(location, 0);
  return v4 & 1;
}

- (void)keyboardInputChangedSelection:(id)selection
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, selection);
  v3.receiver = selfCopy;
  v3.super_class = UITextContentViewAccessibility;
  [(UITextContentViewAccessibility *)&v3 keyboardInputChangedSelection:location[0]];
  _UIAccessibilitySetAssociatedElementContextForNextNotification();
  UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityAttributedValueForRange:(_NSRange *)range
{
  selfCopy = self;
  v27 = a2;
  rangeCopy = range;
  v25 = 0;
  _accessibilityAXAttributedValue = [(UITextContentViewAccessibility *)self _accessibilityAXAttributedValue];
  v23 = 0;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    cfAttributedString = [_accessibilityAXAttributedValue cfAttributedString];
    v5 = v23;
    v23 = cfAttributedString;
    v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  }

  else if (_accessibilityAXAttributedValue)
  {
    v6 = [objc_alloc(MEMORY[0x29EDB9F30]) initWithString:_accessibilityAXAttributedValue];
    v7 = v23;
    v23 = v6;
    v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  }

  length = rangeCopy->length;
  v29 = rangeCopy->location;
  v30 = length;
  if (v29 + length <= [_accessibilityAXAttributedValue length])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v20 = [v23 attributedSubstringFromRange:{rangeCopy->location, rangeCopy->length}];
      v9 = [v20 mutableCopy];
      v10 = v25;
      v25 = v9;
      MEMORY[0x29EDC9740](v10);
      MEMORY[0x29EDC9740](v20);
    }
  }

  if (!v25)
  {
    location = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"m_webView"];
    if ([location _accessibilityIsWebDocumentView])
    {
      v19 = [location _accessibilityAttributedValueForRange:rangeCopy];
      v11 = [v19 mutableCopy];
      v12 = v25;
      v25 = v11;
      MEMORY[0x29EDC9740](v12);
      MEMORY[0x29EDC9740](v19);
    }

    if (![v25 length])
    {
      v21.receiver = selfCopy;
      v21.super_class = UITextContentViewAccessibility;
      v18 = [(UITextContentViewAccessibility *)&v21 _accessibilityAttributedValueForRange:rangeCopy];
      v13 = [v18 mutableCopy];
      v14 = v25;
      v25 = v13;
      MEMORY[0x29EDC9740](v14);
      MEMORY[0x29EDC9740](v18);
    }

    objc_storeStrong(&location, 0);
  }

  [(UITextContentViewAccessibility *)selfCopy _accessibilityConvertStyleAttributesToAccessibility:v25, &v25];
  [(UITextContentViewAccessibility *)selfCopy _accessibilityAddMispellingsToAttributedString:v25];
  v17 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(&_accessibilityAXAttributedValue, 0);
  objc_storeStrong(v16, 0);

  return v17;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v15[1] = a2;
  v15[0] = [(UITextContentViewAccessibility *)self accessibilityUserDefinedValue];
  if (!v15[0])
  {
    v15[0] = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"attributedText"];
    MEMORY[0x29EDC9740](0);
    v2 = UIAccessibilityConvertAttachmentsInAttributedStringToAX();
    v3 = v15[0];
    v15[0] = v2;
    *&v4 = MEMORY[0x29EDC9740](v3).n128_u64[0];
    if (!v15[0])
    {
      v15[0] = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"text", v4];
      MEMORY[0x29EDC9740](0);
    }
  }

  accessibilityTraits = [(UITextContentViewAccessibility *)selfCopy accessibilityTraits];
  if ((accessibilityTraits & *MEMORY[0x29EDC7568]) == *MEMORY[0x29EDC7568])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      string = [v15[0] string];
      v7 = v15[0];
      v15[0] = string;
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
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  superview = [(UITextContentViewAccessibility *)self superview];
  while (superview)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_storeStrong(location, superview);
      break;
    }

    v29Superview = [superview superview];
    v3 = superview;
    superview = v29Superview;
    MEMORY[0x29EDC9740](v3);
  }

  if (location[0])
  {
    [(UITextContentViewAccessibility *)selfCopy bounds];
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
    v19.receiver = selfCopy;
    v19.super_class = UITextContentViewAccessibility;
    [(UITextContentViewAccessibility *)&v19 accessibilityFrame];
  }

  v32 = v11;
  v33 = v12;
  v34 = v13;
  v35 = v14;
  v20 = 1;
  objc_storeStrong(&superview, 0);
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
  selfCopy = self;
  v8[1] = a2;
  v8[0] = [MEMORY[0x29EDB8DE8] array];
  _accessibilityInternalTextLinkCustomRotors = [(UITextContentViewAccessibility *)selfCopy _accessibilityInternalTextLinkCustomRotors];
  [v8[0] axSafelyAddObjectsFromArray:?];
  if (([(UITextContentViewAccessibility *)selfCopy isEditable]& 1) != 0)
  {
    _accessibilityCommonStylingRotors = [(UITextContentViewAccessibility *)selfCopy _accessibilityCommonStylingRotors];
    [v8[0] axSafelyAddObjectsFromArray:?];
    keyboardType = [(UITextContentViewAccessibility *)selfCopy keyboardType];
    if (!AXUIKeyboardTypeSupportsMisspelledRotor(keyboardType))
    {
      _accessibilityMisspelledRotor = [(UITextContentViewAccessibility *)selfCopy _accessibilityMisspelledRotor];
      [v8[0] removeObject:?];
      MEMORY[0x29EDC9740](_accessibilityMisspelledRotor);
    }
  }

  v4 = MEMORY[0x29EDC9748](v8[0]);
  objc_storeStrong(v8, 0);

  return v4;
}

- (unint64_t)accessibilityTraits
{
  selfCopy = self;
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

  v7 = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"selectedRange"];
  rangeValue = [v7 rangeValue];
  v19 = v2;
  v8 = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"isEditing", MEMORY[0x29EDC9740](v7).n128_f64[0]];
  v16 = 0;
  v14 = 0;
  v9 = 0;
  if ([v8 BOOLValue])
  {
    v9 = 0;
    if (rangeValue != 0x7FFFFFFFFFFFFFFFLL)
    {
      _accessibilityWindow = [(UITextContentViewAccessibility *)selfCopy _accessibilityWindow];
      v16 = 1;
      firstResponder = [_accessibilityWindow firstResponder];
      v14 = 1;
      v9 = firstResponder == selfCopy;
    }
  }

  if (v14)
  {
    MEMORY[0x29EDC9740](firstResponder);
  }

  if (v16)
  {
    MEMORY[0x29EDC9740](_accessibilityWindow);
  }

  *&v3 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v9 && (([*MEMORY[0x29EDC8008] _accessibilityHardwareKeyboardActive] & 1) != 0 || (objc_msgSend(*MEMORY[0x29EDC8008], "_accessibilitySoftwareKeyboardActive") & 1) != 0 || _AXSMossdeepEnabled()))
  {
    v20 |= *MEMORY[0x29EDC7528];
  }

  accessibilityUserDefinedTraits = [(UITextContentViewAccessibility *)selfCopy accessibilityUserDefinedTraits];
  if (accessibilityUserDefinedTraits)
  {
    v20 |= [accessibilityUserDefinedTraits unsignedLongLongValue];
  }

  v12 = 0;
  objc_opt_class();
  v11 = __UIAccessibilityCastAsClass();
  v10 = MEMORY[0x29EDC9748](v11);
  objc_storeStrong(&v11, 0);
  _accessibilityTextAreaTraits = [(UIView *)v10 _accessibilityTextAreaTraits];
  v20 |= _accessibilityTextAreaTraits;
  MEMORY[0x29EDC9740](v10);
  v6 = v20;
  objc_storeStrong(&accessibilityUserDefinedTraits, 0);
  return v6;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v13 = a2;
  accessibilityTraits = [(UITextContentViewAccessibility *)self accessibilityTraits];
  if ((accessibilityTraits & *MEMORY[0x29EDC7528]) != 0)
  {
    v10 = [(UITextContentViewAccessibility *)selfCopy safeValueForKey:@"m_webView"];
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
    v11.receiver = selfCopy;
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

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITextContentViewAccessibility *)self accessibilityValue];
  if (!location[0])
  {
    location[0] = [(UITextContentViewAccessibility *)selfCopy accessibilityLabel];
    MEMORY[0x29EDC9740](0);
  }

  if (rangeCopy.length || (v6 = rangeCopy.location, v7 = 0, rangeCopy.location > [location[0] length]))
  {
    if (rangeCopy.length)
    {
      [selfCopy _accessibilitySetTextSelection:rangeCopy.length];
    }
  }

  else
  {
    [(UITextContentViewAccessibility *)selfCopy setSelectedRange:rangeCopy.location, rangeCopy.length];
  }

  objc_storeStrong(location, 0);
}

- (BOOL)keyboardInput:(id)input shouldReplaceTextInRange:(_NSRange)range replacementText:(id)text
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v10 = 0;
  objc_storeStrong(&v10, text);
  v8.receiver = selfCopy;
  v8.super_class = UITextContentViewAccessibility;
  v9 = [(UITextContentViewAccessibility *)&v8 keyboardInput:location[0] shouldReplaceTextInRange:rangeCopy.location replacementText:rangeCopy.length, v10];
  if ((v9 & 1) == 0)
  {
    UIAccessibilityPostNotification(*MEMORY[0x29EDC7458], 0);
  }

  v6 = v9;
  objc_storeStrong(&v10, 0);
  objc_storeStrong(location, 0);
  return v6 & 1;
}

- (BOOL)keyboardInput:(id)input shouldInsertText:(id)text isMarkedText:(BOOL)markedText
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, input);
  v12 = 0;
  objc_storeStrong(&v12, text);
  markedTextCopy = markedText;
  v9.receiver = selfCopy;
  v9.super_class = UITextContentViewAccessibility;
  v10 = [(UITextContentViewAccessibility *)&v9 keyboardInput:location[0] shouldInsertText:v12 isMarkedText:markedText];
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