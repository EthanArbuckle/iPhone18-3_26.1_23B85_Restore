@interface UITextInputUIResponderAccessibility
+ (void)_accessibilityPerformValidations:(id)a3;
- (BOOL)_accessibilityHandlesTabKey;
- (BOOL)_accessibilityInsertTextWithAlternatives:(id)a3;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)becomeFirstResponder;
- (BOOL)isAccessibilityElement;
- (BOOL)resignFirstResponder;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3;
- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)a3;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3;
- (_NSRange)_accessibilityRawRangeForUITextRange:(id)a3;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_accessibilityVisibleTextRange;
- (id)_accessibilityAlternativesForTextAtPosition:(unint64_t)a3;
- (id)_accessibilityBeginningOfDocument;
- (id)_accessibilityEndOfDocument;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3;
- (id)_accessibilityPositionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilityTextRangeFromNSRange:(_NSRange)a3;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3 string:(id)a4 wantsSentences:(BOOL)a5;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3 wantsSentences:(BOOL)a4;
- (id)_accessibilityTextResponder;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_axTextInputView;
- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4;
- (id)_moveRight:(BOOL)a3 withHistory:(id)a4;
- (id)accessibilityValue;
- (int64_t)_accessibilityLineEndPosition;
- (int64_t)_accessibilityLineStartPosition;
- (int64_t)_accessibilityOffsetFromPosition:(id)a3 toPosition:(id)a4;
- (int64_t)_accessibilityTextInputLinePosition:(BOOL)a3;
- (unint64_t)_accessibilityPositionInDirection:(int64_t)a3 offset:(unint64_t)a4 forPosition:(unint64_t)a5;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCheckBorderHit:(char)a3 left:;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3;
- (void)_axDrawFocusRingAroundFirstResponderAndMoveFocus:(void *)a1;
- (void)_axResetFKAFocusToFirstResponder;
- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4;
@end

@implementation UITextInputUIResponderAccessibility

+ (void)_accessibilityPerformValidations:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = "@";
  [location[0] validateClass:@"UIKeyboardCandidateController" hasInstanceMethod:@"firstNonEmptyActiveCandidateView" withFullSignature:0];
  v3 = @"UIKeyboardImpl";
  [location[0] validateClass:0 hasInstanceMethod:? withFullSignature:?];
  [location[0] validateClass:v3 hasInstanceMethod:@"_keyboardBehaviorState" withFullSignature:{v6, 0}];
  [location[0] validateClass:v3 hasInstanceMethod:@"keyboardStateManager" withFullSignature:{v6, 0}];
  [location[0] validateClass:@"_UIKeyboardStateManager" hasInstanceVariable:@"m_candidateList" withType:"<UIKeyboardCandidateList>"];
  v4 = "B";
  v5 = @"_visibleRangeWithLayout:";
  v7 = "{_NSRange=QQ}";
  [location[0] validateClass:@"UITextView" hasInstanceMethod:"B" withFullSignature:0];
  [location[0] validateClass:@"UITextField" hasInstanceMethod:v5 withFullSignature:{v7, v4, 0}];
  [location[0] validateClass:@"UIResponder" hasInstanceMethod:@"_nsrangeForTextRange:" withFullSignature:{v7, v6, 0}];
  objc_storeStrong(v9, v8);
}

- (void)_updateSelectionWithTextRange:(id)a3 withAffinityDownstream:(BOOL)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v6 = MEMORY[0x29EDC74D0];
  _UIAccessibilityBlockPostingOfNotification();
  v7.receiver = v10;
  v7.super_class = UITextInputUIResponderAccessibility;
  [(UITextInputUIResponderAccessibility *)&v7 _updateSelectionWithTextRange:location[0] withAffinityDownstream:a4];
  _UIAccessibilityUnblockPostingOfNotification();
  v5 = [*MEMORY[0x29EDC8008] _accessibilityResponderElementForFocus];
  _UIAccessibilitySetAssociatedElementContextForNextNotification();
  MEMORY[0x29EDC9740](v5);
  UIAccessibilityPostNotification(*v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityTextResponder
{
  v6 = self;
  location[1] = a2;
  location[0] = [(UITextInputUIResponderAccessibility *)self accessibilityTextInputResponder];
  if (location[0])
  {
    v2 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v2 = MEMORY[0x29EDC9748](v6);
  }

  v4 = v2;
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_accessibilityCheckBorderHit:(char)a3 left:
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  if (a1)
  {
    v11 = [v14 safeValueForKey:@"_selectableText"];
    v7 = [v11 selectedTextRange];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    if (v7)
    {
      v9 = [v11 selectedTextRange];
      location = [v9 start];
      if ([v9 isEmpty] & 1) != 0 || (v13)
      {
        if (v12)
        {
          v4 = 3;
        }

        else
        {
          v4 = 2;
        }

        v5 = [v11 positionFromPosition:location inDirection:v4 offset:1];
        v6 = location;
        location = v5;
        MEMORY[0x29EDC9740](v6);
      }

      if (!location)
      {
        UIAccessibilityPostNotification(*MEMORY[0x29EDC74D0], 0);
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v9, 0);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_moveLeft:(BOOL)a3 withHistory:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(UITextInputUIResponderAccessibility *)v10 _accessibilityCheckBorderHit:v8 left:1];
  v6.receiver = v10;
  v6.super_class = UITextInputUIResponderAccessibility;
  v5 = [(UITextInputUIResponderAccessibility *)&v6 _moveLeft:v8 withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)_moveRight:(BOOL)a3 withHistory:(id)a4
{
  v10 = self;
  v9 = a2;
  v8 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  [(UITextInputUIResponderAccessibility *)v10 _accessibilityCheckBorderHit:v8 left:0];
  v6.receiver = v10;
  v6.super_class = UITextInputUIResponderAccessibility;
  v5 = [(UITextInputUIResponderAccessibility *)&v6 _moveRight:v8 withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  v12 = self;
  v11 = a2;
  v7 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v8 = [v7 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if (v8)
  {
    v5 = [(UITextInputUIResponderAccessibility *)v12 _accessibilityTextResponder];
    v6 = [v5 __accessibilityRespondsToTextInput];
    *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
    if (v6)
    {
      return 1;
    }

    else
    {
      v9.receiver = v12;
      v9.super_class = UITextInputUIResponderAccessibility;
      return [(UITextInputUIResponderAccessibility *)&v9 isAccessibilityElement];
    }
  }

  else
  {
    v10.receiver = v12;
    v10.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v10 isAccessibilityElement];
  }
}

- (int64_t)_accessibilityTextInputLinePosition:(BOOL)a3
{
  v25 = self;
  v24 = a2;
  v23 = a3;
  v22 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v21 = [v22 safeValueForKey:@"selectedTextRange"];
  v20 = [v22 tokenizer];
  v19 = 0;
  v18 = [v21 start];
  v17 = [v21 end];
  v15 = [(UITextInputUIResponderAccessibility *)v25 _accessibilityTextResponder];
  location = [v15 _accessibilityBeginningOfDocument];
  *&v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  if (v23 && ([v18 isEqual:{location, v3}] & 1) != 0)
  {
    v26 = 0;
  }

  else
  {
    if (v23)
    {
      v4 = [v20 positionFromPosition:v17 toBoundary:4 inDirection:{1, v3}];
      v5 = v17;
      v17 = v4;
      *&v6 = MEMORY[0x29EDC9740](v5).n128_u64[0];
      if (!v17)
      {
        v26 = 0x7FFFFFFFLL;
        goto LABEL_16;
      }

      v7 = [v22 textRangeFromPosition:v18 toPosition:{v17, v6}];
      v8 = v19;
      v19 = v7;
      v9 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    }

    else
    {
      if ([v20 isPosition:v17 atBoundary:4 inDirection:{0, v3}])
      {
        v14 = [(UITextInputUIResponderAccessibility *)v25 _accessibilityTextResponder];
        v26 = [v14 _accessibilityOffsetFromPosition:location toPosition:v17];
        MEMORY[0x29EDC9740](v14);
        goto LABEL_16;
      }

      if (!v17)
      {
        v26 = 0x7FFFFFFFLL;
        goto LABEL_16;
      }

      v10 = [v20 rangeEnclosingPosition:v17 withGranularity:4 inDirection:0];
      v11 = v19;
      v19 = v10;
      v9 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    }

    if (v19)
    {
      v13 = [(UITextInputUIResponderAccessibility *)v25 _accessibilityTextResponder];
      v26 = [v13 _accessibilityOffsetFromPosition:location toPosition:v17];
      MEMORY[0x29EDC9740](v13);
    }

    else
    {
      v26 = 0x7FFFFFFFLL;
    }
  }

LABEL_16:
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v22, 0);
  return v26;
}

- (int64_t)_accessibilityLineEndPosition
{
  v9 = self;
  v8 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v6 = [v5 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(UITextInputUIResponderAccessibility *)v9 _accessibilityTextResponder];
    v10 = [v4 _accessibilityTextInputLinePosition:0];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v7.receiver = v9;
    v7.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v7 _accessibilityLineEndPosition];
  }

  return v10;
}

- (int64_t)_accessibilityLineStartPosition
{
  v9 = self;
  v8 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v6 = [v5 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v4 = [(UITextInputUIResponderAccessibility *)v9 _accessibilityTextResponder];
    v10 = [v4 _accessibilityTextInputLinePosition:1];
    MEMORY[0x29EDC9740](v4);
  }

  else
  {
    v7.receiver = v9;
    v7.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v7 _accessibilityLineStartPosition];
  }

  return v10;
}

- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)a3
{
  v26 = self;
  v25 = a2;
  v24 = a3;
  v15 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v16 = [v15 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v15).n128_u64[0];
  if (v16)
  {
    if (v24 == 0x7FFFFFFF || v24 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFLL;
      v28 = 0;
    }

    else
    {
      v22 = [(UITextInputUIResponderAccessibility *)v26 _accessibilityTextResponder];
      v14 = [(UITextInputUIResponderAccessibility *)v26 _accessibilityTextResponder];
      v21 = [v14 _accessibilityBeginningOfDocument];
      *&v5 = MEMORY[0x29EDC9740](v14).n128_u64[0];
      if (v21)
      {
        v13 = [(UITextInputUIResponderAccessibility *)v26 _accessibilityTextResponder];
        v19 = [v13 _accessibilityPositionFromPosition:v21 offset:v24];
        *&v6 = MEMORY[0x29EDC9740](v13).n128_u64[0];
        if (v19)
        {
          v18 = [v22 tokenizer];
          location = [v18 positionFromPosition:v19 toBoundary:0 inDirection:?];
          if (location)
          {
            v9 = [(UITextInputUIResponderAccessibility *)v26 _accessibilityTextResponder];
            v10 = [v9 _accessibilityOffsetFromPosition:v21 toPosition:v19];
            v11 = [(UITextInputUIResponderAccessibility *)v26 _accessibilityTextResponder];
            v12 = [v11 _accessibilityOffsetFromPosition:v21 toPosition:location];
            MEMORY[0x29EDC9740](v11);
            v30 = v10;
            v29 = v12 - v10;
            v31 = v10;
            v32 = v12 - v10;
            v27 = v10;
            v28 = v12 - v10;
          }

          else
          {
            v34 = 0x7FFFFFFFLL;
            v33 = 0;
            v35 = 0x7FFFFFFFLL;
            v36 = 0;
            v27 = 0x7FFFFFFFLL;
            v28 = 0;
          }

          v20 = 1;
          objc_storeStrong(&location, 0);
          objc_storeStrong(&v18, 0);
        }

        else
        {
          v38 = 0x7FFFFFFFLL;
          v37 = 0;
          v39 = 0x7FFFFFFFLL;
          v40 = 0;
          v27 = 0x7FFFFFFFLL;
          v28 = 0;
          v20 = 1;
        }

        objc_storeStrong(&v19, 0);
      }

      else
      {
        v42 = 0x7FFFFFFFLL;
        v41 = 0;
        v43 = 0x7FFFFFFFLL;
        v44 = 0;
        v27 = 0x7FFFFFFFLL;
        v28 = 0;
        v20 = 1;
      }

      objc_storeStrong(&v21, 0);
      objc_storeStrong(&v22, 0);
    }
  }

  else
  {
    v23.receiver = v26;
    v23.super_class = UITextInputUIResponderAccessibility;
    v27 = [(UITextInputUIResponderAccessibility *)&v23 _accessibilityLineRangeForPosition:v24, v3];
    v28 = v4;
  }

  v7 = v27;
  v8 = v28;
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)a3
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  v17 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v18 = [v17 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v17).n128_u64[0];
  if (v18)
  {
    if (v26 == 0x7FFFFFFF || v26 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFLL;
      v30 = 0;
    }

    else
    {
      v24 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
      v16 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
      v23 = [v16 _accessibilityBeginningOfDocument];
      *&v5 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      if (v23)
      {
        v15 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
        v21 = [v15 _accessibilityPositionFromPosition:v23 offset:v26];
        *&v6 = MEMORY[0x29EDC9740](v15).n128_u64[0];
        if (v21)
        {
          v20 = [v24 tokenizer];
          location = [v20 rangeEnclosingPosition:v21 withGranularity:4 inDirection:0];
          if (location || (location = [v20 rangeEnclosingPosition:v21 withGranularity:4 inDirection:1], MEMORY[0x29EDC9740](0), location))
          {
            v10 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
            v9 = [location start];
            v11 = [v10 _accessibilityOffsetFromPosition:v23 toPosition:?];
            MEMORY[0x29EDC9740](v9);
            v13 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
            v12 = [location end];
            v14 = [v13 _accessibilityOffsetFromPosition:v23 toPosition:?];
            MEMORY[0x29EDC9740](v12);
            MEMORY[0x29EDC9740](v13);
            v32 = v11;
            v31 = v14 - v11;
            v33 = v11;
            v34 = v14 - v11;
            v29 = v11;
            v30 = v14 - v11;
            v22 = 1;
          }

          else
          {
            v36 = 0x7FFFFFFFLL;
            v35 = 0;
            v37 = 0x7FFFFFFFLL;
            v38 = 0;
            v29 = 0x7FFFFFFFLL;
            v30 = 0;
            v22 = 1;
          }

          objc_storeStrong(&location, 0);
          objc_storeStrong(&v20, 0);
        }

        else
        {
          v40 = 0x7FFFFFFFLL;
          v39 = 0;
          v41 = 0x7FFFFFFFLL;
          v42 = 0;
          v29 = 0x7FFFFFFFLL;
          v30 = 0;
          v22 = 1;
        }

        objc_storeStrong(&v21, 0);
      }

      else
      {
        v44 = 0x7FFFFFFFLL;
        v43 = 0;
        v45 = 0x7FFFFFFFLL;
        v46 = 0;
        v29 = 0x7FFFFFFFLL;
        v30 = 0;
        v22 = 1;
      }

      objc_storeStrong(&v23, 0);
      objc_storeStrong(&v24, 0);
    }
  }

  else
  {
    v25.receiver = v28;
    v25.super_class = UITextInputUIResponderAccessibility;
    v29 = [(UITextInputUIResponderAccessibility *)&v25 _accessibilityLineRangeForPosition:v26, v3];
    v30 = v4;
  }

  v7 = v29;
  v8 = v30;
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)_accessibilityVisibleTextRange
{
  v18 = self;
  v17 = a2;
  v4 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  objc_opt_class();
  v15 = 0;
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v16 = [(UITextInputUIResponderAccessibility *)v18 _accessibilityTextResponder];
    v15 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v15)
  {
    MEMORY[0x29EDC9740](v16);
  }

  MEMORY[0x29EDC9740](v4);
  if (isKindOfClass)
  {
    v14 = 0uLL;
    v7 = 0;
    v8 = &v7;
    v9 = 0x10000000;
    v10 = 48;
    v11 = &unk_29C6A1FE6;
    v12 = 0;
    v13 = 0;
    v6[1] = &v7;
    v6[0] = MEMORY[0x29EDC9748](v18);
    AXPerformSafeBlock();
    v14 = *(v8 + 2);
    objc_storeStrong(v6, 0);
    _Block_object_dispose(&v7, 8);
    if (v14 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v25 = 0x7FFFFFFFLL;
      v24 = 0;
      v26 = 0x7FFFFFFFLL;
      v27 = 0;
      v19 = 0x7FFFFFFFuLL;
    }

    else
    {
      v19 = v14;
    }
  }

  else
  {
    v21 = 0x7FFFFFFFLL;
    v20 = 0;
    v22 = 0x7FFFFFFFLL;
    v23 = 0;
    v19 = 0x7FFFFFFFuLL;
  }

  v3 = *(&v19 + 1);
  v2 = v19;
  result.length = v3;
  result.location = v2;
  return result;
}

double __69__UITextInputUIResponderAccessibility__accessibilityVisibleTextRange__block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) _accessibilityTextResponder];
  *&v5 = [v4 _visibleRangeWithLayout:0];
  *(&v5 + 1) = v1;
  *(*(*(a1 + 40) + 8) + 32) = v5;
  *&result = MEMORY[0x29EDC9740](v4).n128_u64[0];
  return result;
}

- (unint64_t)_accessibilityPositionInDirection:(int64_t)a3 offset:(unint64_t)a4 forPosition:(unint64_t)a5
{
  v24 = self;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v12 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v13 = [v12 __accessibilityRespondsToTextInput];
  *&v5 = MEMORY[0x29EDC9740](v12).n128_u64[0];
  if (v13)
  {
    if (v20 == 0x7FFFFFFF || v20 == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      v18 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
      v11 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
      v17 = [v11 _accessibilityBeginningOfDocument];
      *&v6 = MEMORY[0x29EDC9740](v11).n128_u64[0];
      if (v17)
      {
        v10 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
        v15 = [v10 _accessibilityPositionFromPosition:v17 offset:v20];
        *&v7 = MEMORY[0x29EDC9740](v10).n128_u64[0];
        if (v15)
        {
          location = [v18 positionFromPosition:v15 inDirection:v22 offset:{v21, v7}];
          if (location)
          {
            v9 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
            v25 = [v9 _accessibilityOffsetFromPosition:v17 toPosition:location];
            MEMORY[0x29EDC9740](v9);
          }

          else
          {
            v25 = 0x7FFFFFFFLL;
          }

          v16 = 1;
          objc_storeStrong(&location, 0);
        }

        else
        {
          v25 = 0x7FFFFFFFLL;
          v16 = 1;
        }

        objc_storeStrong(&v15, 0);
      }

      else
      {
        v25 = 0x7FFFFFFFLL;
        v16 = 1;
      }

      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }
  }

  else
  {
    v19.receiver = v24;
    v19.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v19 _accessibilityPositionInDirection:v22 offset:v21 forPosition:v20, v5];
  }

  return v25;
}

- (id)accessibilityValue
{
  v17 = self;
  v16 = a2;
  v9 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v10 = [v9 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (v10)
  {
    v14 = [(UITextInputUIResponderAccessibility *)v17 _accessibilityTextResponder];
    v7 = [(UITextInputUIResponderAccessibility *)v17 _accessibilityTextResponder];
    v13 = [v7 _accessibilityBeginningOfDocument];
    *&v3 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v8 = [(UITextInputUIResponderAccessibility *)v17 _accessibilityTextResponder];
    v12 = [v8 _accessibilityEndOfDocument];
    *&v4 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    v11 = [v14 textRangeFromPosition:v13 toPosition:{v12, v4}];
    v18 = [v14 textInRange:v11];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v14, 0);
  }

  else
  {
    v15.receiver = v17;
    v15.super_class = UITextInputUIResponderAccessibility;
    v18 = [(UITextInputUIResponderAccessibility *)&v15 accessibilityValue];
  }

  v5 = v18;

  return v5;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)a3
{
  v75 = a3;
  v74 = self;
  v73[1] = a2;
  v73[0] = 0;
  v72 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v46 = [(UITextInputUIResponderAccessibility *)v74 _accessibilityTextResponder];
  v47 = [v46 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v46).n128_u64[0];
  if (v47)
  {
    v45 = [(UITextInputUIResponderAccessibility *)v74 _accessibilityTextResponder];
    v69 = [v45 _axTextInputView];
    v4 = MEMORY[0x29EDC9740](v45).n128_u64[0];
    if (!v69)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v72 inputView];
        v6 = v69;
        v69 = v5;
        v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      }
    }

    v44 = [v69 window];
    [v44 convertPoint:v69 toView:v75];
    v68.x = v7;
    v68.y = v8;
    v75 = v68;
    MEMORY[0x29EDC9740](v44);
    v67 = [v72 characterRangeAtPoint:{v68.x, v68.y}];
    v66 = [v72 textInRange:v67];
    if ([v66 isEqualToString:@"\n"])
    {
      v40 = v72;
      v41 = [v67 start];
      v65 = [v40 positionFromPosition:? inDirection:? offset:?];
      *&v9 = MEMORY[0x29EDC9740](v41).n128_u64[0];
      v42 = v72;
      v43 = [v67 end];
      v64 = [v42 positionFromPosition:? inDirection:? offset:?];
      *&v10 = MEMORY[0x29EDC9740](v43).n128_u64[0];
      v11 = [v72 textRangeFromPosition:v65 toPosition:{v64, v10}];
      v12 = v67;
      v67 = v11;
      MEMORY[0x29EDC9740](v12);
      objc_storeStrong(&v64, 0);
      objc_storeStrong(&v65, 0);
    }

    v63 = [v72 tokenizer];
    v37 = [v67 start];
    v62 = [v63 positionFromPosition:? toBoundary:? inDirection:?];
    *&v13 = MEMORY[0x29EDC9740](v37).n128_u64[0];
    v38 = [v67 end];
    v61 = [v63 positionFromPosition:? toBoundary:? inDirection:?];
    v14 = MEMORY[0x29EDC9740](v38).n128_u64[0];
    v59 = 0;
    v39 = 1;
    if (v61)
    {
      v36 = v72;
      v60 = [v67 end];
      v59 = 1;
      v39 = [v36 comparePosition:? toPosition:?] == 1;
    }

    if (v59)
    {
      v14 = MEMORY[0x29EDC9740](v60).n128_u64[0];
    }

    if (v39)
    {
      v15 = [v67 end];
      v16 = v61;
      v61 = v15;
      v14 = MEMORY[0x29EDC9740](v16).n128_u64[0];
    }

    v57 = 0;
    v35 = 1;
    if (v62)
    {
      v34 = v72;
      v58 = [v67 start];
      v57 = 1;
      v35 = [v34 comparePosition:? toPosition:?] == -1;
    }

    if (v57)
    {
      v14 = MEMORY[0x29EDC9740](v58).n128_u64[0];
    }

    if (v35)
    {
      v17 = [v67 start];
      v18 = v62;
      v62 = v17;
      v14 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    }

    v56 = [v72 textRangeFromPosition:v62 toPosition:{v61, *&v14}];
    if (!v56)
    {
      v33 = [v67 start];
      v56 = [v63 rangeEnclosingPosition:? withGranularity:? inDirection:?];
      MEMORY[0x29EDC9740](0);
      MEMORY[0x29EDC9740](v33);
    }

    v31 = [(UITextInputUIResponderAccessibility *)v74 _accessibilityTextResponder];
    v55 = [v31 _accessibilityBeginningOfDocument];
    v32 = [v56 start];
    v52 = 0;
    v50 = 0;
    v48 = 0;
    if (v32)
    {
      v53 = [v56 start];
      v52 = 1;
      v30 = v53;
    }

    else
    {
      v51 = [(UITextInputUIResponderAccessibility *)v74 _accessibilityTextResponder];
      v50 = 1;
      v49 = [v51 _accessibilityEndOfDocument];
      v48 = 1;
      v30 = v49;
    }

    v54 = MEMORY[0x29EDC9748](v30);
    if (v48)
    {
      MEMORY[0x29EDC9740](v49);
    }

    if (v50)
    {
      MEMORY[0x29EDC9740](v51);
    }

    if (v52)
    {
      MEMORY[0x29EDC9740](v53);
    }

    *&v19 = MEMORY[0x29EDC9740](v32).n128_u64[0];
    v25 = [(UITextInputUIResponderAccessibility *)v74 _accessibilityTextResponder];
    v26 = [v25 _accessibilityOffsetFromPosition:v55 toPosition:v54];
    *&v20 = MEMORY[0x29EDC9740](v25).n128_u64[0];
    v27 = MEMORY[0x29EDB8DC0];
    v29 = [MEMORY[0x29EDBA070] numberWithInteger:{v26, v20}];
    v28 = [MEMORY[0x29EDBA070] numberWithInteger:0];
    v21 = [v27 dictionaryWithObjectsAndKeys:{v29, @"lineNumber", v28, @"lineColumn", 0}];
    v22 = v73[0];
    v73[0] = v21;
    MEMORY[0x29EDC9740](v22);
    MEMORY[0x29EDC9740](v28);
    MEMORY[0x29EDC9740](v29);
    v76 = MEMORY[0x29EDC9748](v73[0]);
    v70 = 1;
    objc_storeStrong(&v54, 0);
    objc_storeStrong(&v55, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&v69, 0);
  }

  else
  {
    v71.receiver = v74;
    v71.super_class = UITextInputUIResponderAccessibility;
    v76 = [(UITextInputUIResponderAccessibility *)&v71 _accessibilityLineNumberAndColumnForPoint:v75.x, v75.y];
    v70 = 1;
  }

  objc_storeStrong(&v72, 0);
  objc_storeStrong(v73, 0);
  v23 = v76;

  return v23;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)a3
{
  v40 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0x7FFFFFFFLL;
  v43 = 0;
  v45 = 0x7FFFFFFFLL;
  v46 = 0;
  v41 = 0x7FFFFFFFLL;
  v42 = 0;
  v27 = [location[0] objectForKey:@"lineColumn"];
  v28 = [v27 integerValue];
  *&v3 = MEMORY[0x29EDC9740](v27).n128_u64[0];
  if (v28)
  {
    goto LABEL_26;
  }

  v25 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
  v26 = [v25 conformsToProtocol:&unk_2A23BD4B8];
  *&v4 = MEMORY[0x29EDC9740](v25).n128_u64[0];
  if ((v26 & 1) == 0)
  {
    v38 = 1;
    goto LABEL_27;
  }

  v37 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
  v22 = [location[0] objectForKey:@"lineNumber"];
  v23 = [v22 integerValue];
  *&v5 = MEMORY[0x29EDC9740](v22).n128_u64[0];
  v36[1] = v23;
  v24 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
  v36[0] = [v24 _accessibilityBeginningOfDocument];
  v35 = [v37 positionFromPosition:v36[0] inDirection:2 offset:{v23, MEMORY[0x29EDC9740](v24).n128_f64[0]}];
  if (!v35)
  {
    objc_storeStrong(&v35, v36[0]);
  }

  if (v35)
  {
    v34 = [v37 tokenizer];
    v33 = [v34 positionFromPosition:v35 toBoundary:4 inDirection:0];
    if (!v33)
    {
      objc_storeStrong(&v33, v36[0]);
    }

    if (([v34 isPosition:v33 withinTextUnit:0 inDirection:1] & 1) == 0)
    {
      v32 = [v34 positionFromPosition:v33 toBoundary:0 inDirection:?];
      if (v32)
      {
        objc_storeStrong(&v33, v32);
      }

      objc_storeStrong(&v32, 0);
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _AXAssert();
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      _AXAssert();
    }

    v31 = 0;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = [v37 textRangeFromPosition:v35 toPosition:v33];
        v7 = v31;
        v31 = v6;
        MEMORY[0x29EDC9740](v7);
      }
    }

    if (v31)
    {
      v18 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
      v16 = v36[0];
      v17 = [v31 start];
      v30 = [v18 _accessibilityOffsetFromPosition:v16 toPosition:?];
      MEMORY[0x29EDC9740](v17);
      *&v8 = MEMORY[0x29EDC9740](v18).n128_u64[0];
      v21 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
      v19 = v36[0];
      v20 = [v31 end];
      v29 = [v21 _accessibilityOffsetFromPosition:v19 toPosition:?];
      MEMORY[0x29EDC9740](v20);
      MEMORY[0x29EDC9740](v21);
    }

    else
    {
      v12 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
      v30 = [v12 _accessibilityOffsetFromPosition:v36[0] toPosition:v36[0]];
      *&v9 = MEMORY[0x29EDC9740](v12).n128_u64[0];
      v15 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityTextResponder];
      v13 = v36[0];
      v14 = [(UITextInputUIResponderAccessibility *)v40 _accessibilityEndOfDocument];
      v29 = [v15 _accessibilityOffsetFromPosition:v13 toPosition:?];
      MEMORY[0x29EDC9740](v14);
      MEMORY[0x29EDC9740](v15);
    }

    v41 = v30;
    v42 = v29 - v30;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&v34, 0);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);
  objc_storeStrong(&v37, 0);
  if (!v38)
  {
LABEL_26:
    v38 = 1;
  }

LABEL_27:
  objc_storeStrong(location, 0);
  v10 = v41;
  v11 = v42;
  result.length = v11;
  result.location = v10;
  return result;
}

- (CGRect)_accessibilityBoundsForRange:(_NSRange)a3
{
  v58 = *MEMORY[0x29EDCA608];
  v54 = a3;
  v53 = self;
  v52 = a2;
  v36 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v37 = [v36 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v36).n128_u64[0];
  if (v37)
  {
    if (v54.location == 0x7FFFFFFF || v54.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v55 = *MEMORY[0x29EDB90E0];
      v56 = *(MEMORY[0x29EDB90E0] + 16);
    }

    else
    {
      v50 = [(UITextInputUIResponderAccessibility *)v53 _accessibilityTextResponder];
      v33 = [(UITextInputUIResponderAccessibility *)v53 _accessibilityTextResponder];
      v49 = [v33 _accessibilityBeginningOfDocument];
      v34 = [(UITextInputUIResponderAccessibility *)v53 _accessibilityTextResponder];
      v48 = [v34 _accessibilityPositionFromPosition:v49 offset:v54.location];
      v35 = [(UITextInputUIResponderAccessibility *)v53 _accessibilityTextResponder];
      v47 = [v35 _accessibilityPositionFromPosition:v48 offset:v54.length];
      v46 = [v50 textRangeFromPosition:v48 toPosition:{v47, MEMORY[0x29EDC9740](v35).n128_f64[0]}];
      memset(&rect2, 0, sizeof(rect2));
      rect2 = **&MEMORY[0x29EDB90E0];
      if (objc_opt_respondsToSelector())
      {
        location = [v50 selectionRectsForRange:v46];
        memset(__b, 0, sizeof(__b));
        obj = MEMORY[0x29EDC9748](location);
        v32 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
        if (v32)
        {
          v28 = *__b[2];
          v29 = 0;
          v30 = v32;
          while (1)
          {
            v27 = v29;
            if (*__b[2] != v28)
            {
              objc_enumerationMutation(obj);
            }

            v43 = *(__b[1] + 8 * v29);
            if (CGRectEqualToRect(*MEMORY[0x29EDB90E0], rect2))
            {
              [v43 rect];
              v41.origin.x = v8;
              v41.origin.y = v9;
              v41.size.width = v10;
              v41.size.height = v11;
              rect2 = v41;
            }

            else
            {
              [v43 rect];
              r2.origin.x = v12;
              r2.origin.y = v13;
              r2.size.width = v14;
              r2.size.height = v15;
              v40 = CGRectUnion(rect2, r2);
              rect2 = v40;
            }

            ++v29;
            if (v27 + 1 >= v30)
            {
              v29 = 0;
              v30 = [obj countByEnumeratingWithState:__b objects:v57 count:16];
              if (!v30)
              {
                break;
              }
            }
          }
        }

        MEMORY[0x29EDC9740](obj);
        objc_storeStrong(&location, 0);
      }

      v26 = [(UITextInputUIResponderAccessibility *)v53 _accessibilityTextResponder];
      v38 = [v26 _axTextInputView];
      MEMORY[0x29EDC9740](v26);
      if (!v38)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v16 = [v50 inputView];
          v17 = v38;
          v38 = v16;
          MEMORY[0x29EDC9740](v17);
        }
      }

      UIAccessibilityFrameForBounds();
      *&v55 = v18;
      *(&v55 + 1) = v19;
      *&v56 = v20;
      *(&v56 + 1) = v21;
      objc_storeStrong(&v38, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&v49, 0);
      objc_storeStrong(&v50, 0);
    }
  }

  else
  {
    v51.receiver = v53;
    v51.super_class = UITextInputUIResponderAccessibility;
    [(UITextInputUIResponderAccessibility *)&v51 _accessibilityBoundsForRange:v54.location, v54.length, v3];
    *&v55 = v4;
    *(&v55 + 1) = v5;
    *&v56 = v6;
    *(&v56 + 1) = v7;
  }

  v22 = *(&v56 + 1);
  v23 = *&v56;
  v24 = *(&v55 + 1);
  v25 = *&v55;
  result.size.height = v22;
  result.size.width = v23;
  result.origin.y = v24;
  result.origin.x = v25;
  return result;
}

- (void)_accessibilitySetSelectedTextRange:(_NSRange)a3
{
  v20 = a3;
  v19 = self;
  v18 = a2;
  v9 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v10 = [v9 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v9).n128_u64[0];
  if (v10)
  {
    if (v20.location != 0x7FFFFFFF)
    {
      v16 = 0;
      if (AXIsDictationListening())
      {
        AXHandleUserInteractionForDictation(1);
        v16 = 1;
      }

      v15 = [(UITextInputUIResponderAccessibility *)v19 _accessibilityTextResponder];
      v4 = [(UITextInputUIResponderAccessibility *)v19 _accessibilityTextResponder];
      v14 = [v4 _accessibilityBeginningOfDocument];
      v5 = [(UITextInputUIResponderAccessibility *)v19 _accessibilityTextResponder];
      v13 = [v5 _accessibilityPositionFromPosition:v14 offset:v20.location];
      v6 = [(UITextInputUIResponderAccessibility *)v19 _accessibilityTextResponder];
      v12 = [v6 _accessibilityPositionFromPosition:v13 offset:v20.length];
      location = [v15 textRangeFromPosition:v13 toPosition:{v12, MEMORY[0x29EDC9740](v6).n128_f64[0]}];
      v8 = MEMORY[0x29EDC74D0];
      MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC74D0]);
      [v15 setSelectedTextRange:location];
      MEMORY[0x29ED3DFA0](0);
      v7 = [*MEMORY[0x29EDC8008] _accessibilityResponderElementForFocus];
      _UIAccessibilitySetAssociatedElementContextForNextNotification();
      MEMORY[0x29EDC9740](v7);
      UIAccessibilityPostNotification(*v8, 0);
      if (v16)
      {
        AXHandleUserInteractionForDictation(0);
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
    }
  }

  else
  {
    v17.receiver = v19;
    v17.super_class = UITextInputUIResponderAccessibility;
    [(UITextInputUIResponderAccessibility *)&v17 _accessibilitySetSelectedTextRange:v20.location, v20.length, v3];
  }
}

- (id)_accessibilityTextViewTextOperationResponder
{
  v9 = self;
  v8 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v6 = [v5 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v5).n128_u64[0];
  if (v6)
  {
    v10 = [(UITextInputUIResponderAccessibility *)v9 _accessibilityTextResponder];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = MEMORY[0x29EDC9748](v9);
    }

    else
    {
      v7.receiver = v9;
      v7.super_class = UITextInputUIResponderAccessibility;
      v10 = [(UITextInputUIResponderAccessibility *)&v7 _accessibilityTextViewTextOperationResponder];
    }
  }

  v3 = v10;

  return v3;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  v14 = self;
  v13 = a2;
  v8 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v9 = [v8 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
  if (v9)
  {
    v11 = [(UITextInputUIResponderAccessibility *)v14 _accessibilityTextResponder];
    location = [v11 safeValueForKey:@"selectedTextRange"];
    if (location)
    {
      v7 = [(UITextInputUIResponderAccessibility *)v14 _accessibilityTextResponder];
      v15 = [v7 _accessibilityRawRangeForUITextRange:location];
      v16 = v4;
      MEMORY[0x29EDC9740](v7);
    }

    else
    {
      v18 = 0x7FFFFFFFLL;
      v17 = 0;
      v19 = 0x7FFFFFFFLL;
      v20 = 0;
      v15 = 0x7FFFFFFFLL;
      v16 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v12.receiver = v14;
    v12.super_class = UITextInputUIResponderAccessibility;
    v15 = [(UITextInputUIResponderAccessibility *)&v12 _accessibilitySelectedTextRange];
    v16 = v3;
  }

  v5 = v15;
  v6 = v16;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)_accessibilityTextRangeFromNSRange:(_NSRange)a3
{
  v15 = a3;
  v14 = self;
  v13 = a2;
  v6 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v7 = [v6 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0];
  if (v7)
  {
    v11 = [(UITextInputUIResponderAccessibility *)v14 _accessibilityTextResponder];
    v10 = [v11 beginningOfDocument];
    v9 = [v11 positionFromPosition:v10 offset:v15.location];
    v8 = [v11 positionFromPosition:v9 offset:v15.length];
    v16 = [v11 textRangeFromPosition:v9 toPosition:v8];
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&v10, 0);
    objc_storeStrong(&v11, 0);
  }

  else
  {
    v12.receiver = v14;
    v12.super_class = UITextInputUIResponderAccessibility;
    v16 = [(UITextInputUIResponderAccessibility *)&v12 _accessibilityTextRangeFromNSRange:v15.location, v15.length, v3];
  }

  v4 = v16;

  return v4;
}

- (_NSRange)_accessibilityRawRangeForUITextRange:(id)a3
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
  v19 = [v18 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v18).n128_u64[0];
  if (v19)
  {
    v9 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
    v20 = [v9 _accessibilityBeginningOfDocument];
    *&v5 = MEMORY[0x29EDC9740](v9).n128_u64[0];
    v12 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
    v10 = v20;
    v11 = [location[0] start];
    v13 = [v12 _accessibilityOffsetFromPosition:v10 toPosition:?];
    MEMORY[0x29EDC9740](v11);
    *&v6 = MEMORY[0x29EDC9740](v12).n128_u64[0];
    v16 = [(UITextInputUIResponderAccessibility *)v24 _accessibilityTextResponder];
    v14 = v20;
    v15 = [location[0] end];
    v17 = [v16 _accessibilityOffsetFromPosition:v14 toPosition:?];
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](v16);
    v28 = v13;
    v27 = v17 - v13;
    v29 = v13;
    v30 = v17 - v13;
    v25 = v13;
    v26 = v17 - v13;
    v21 = 1;
    objc_storeStrong(&v20, 0);
  }

  else
  {
    v22.receiver = v24;
    v22.super_class = UITextInputUIResponderAccessibility;
    v25 = [(UITextInputUIResponderAccessibility *)&v22 _accessibilityRawRangeForUITextRange:location[0], v3];
    v26 = v4;
    v21 = 1;
  }

  objc_storeStrong(location, 0);
  v7 = v25;
  v8 = v26;
  result.length = v8;
  result.location = v7;
  return result;
}

- (unint64_t)accessibilityTraits
{
  v12 = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UITextInputUIResponderAccessibility;
  v10 = [(UITextInputUIResponderAccessibility *)&v9 accessibilityTraits];
  v7 = [(UITextInputUIResponderAccessibility *)v12 _accessibilityTextResponder];
  v8 = [v7 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v7).n128_u64[0];
  if ((v8 & 1) == 0)
  {
    return v10;
  }

  v10 |= *MEMORY[0x29EDC7598] | *MEMORY[0x29EDC75A0] | *MEMORY[0x29EDBDC00];
  v5 = [(UITextInputUIResponderAccessibility *)v12 _accessibilityTextResponder];
  v4 = [v5 safeValueForKey:@"isFirstResponder"];
  v6 = [v4 BOOLValue];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](v5);
  if (v6)
  {
    v10 |= *MEMORY[0x29EDC7528];
  }

  return v10;
}

- (id)_accessibilitySpeakThisString
{
  v14 = self;
  v13[1] = a2;
  v13[0] = 0;
  v10 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v11 = [v10 __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(UITextInputUIResponderAccessibility *)v14 _accessibilityTextResponder];
    v3 = [v9 _accessibilityAXAttributedValue];
    v4 = v13[0];
    v13[0] = v3;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](v9);
  }

  else
  {
    v12.receiver = v14;
    v12.super_class = UITextInputUIResponderAccessibility;
    v5 = [(UITextInputUIResponderAccessibility *)&v12 _accessibilitySpeakThisString];
    v6 = v13[0];
    v13[0] = v5;
    MEMORY[0x29EDC9740](v6);
  }

  v8 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(v13, 0);

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3 string:(id)a4 wantsSentences:(BOOL)a5
{
  v11 = a3;
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a4);
  v7 = [(UITextInputUIResponderAccessibility *)v10 _accessibilityTextResponder];
  v8 = [v7 _accessibilityTextRectsForSpeakThisStringRange:v11.location wantsSentences:{v11.length, a5}];
  MEMORY[0x29EDC9740](v7);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3
{
  v4 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v5 = [v4 _accessibilityTextRectsForSpeakThisStringRange:a3.location wantsSentences:{a3.length, 0}];
  MEMORY[0x29EDC9740](v4);

  return v5;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)a3 wantsSentences:(BOOL)a4
{
  v87 = *MEMORY[0x29EDCA608];
  v83 = a3;
  v82 = self;
  v81 = a2;
  v80 = a4;
  v79 = 0;
  v57 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v58 = [v57 __accessibilityRespondsToTextInput];
  *&v4 = MEMORY[0x29EDC9740](v57).n128_u64[0];
  if (v58)
  {
    location = 0;
    v77 = 0;
    v55 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *&v5 = MEMORY[0x29EDC9740](v55).n128_u64[0];
    if (isKindOfClass)
    {
      objc_storeStrong(&location, v82);
      if (![location isSelectable])
      {
        [location setSelectable:1];
        v77 = 1;
      }
    }

    v76 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v50 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v49 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v48 = [v49 _accessibilityBeginningOfDocument];
    v75 = [v50 _accessibilityPositionFromPosition:? offset:?];
    MEMORY[0x29EDC9740](v48);
    MEMORY[0x29EDC9740](v49);
    *&v6 = MEMORY[0x29EDC9740](v50).n128_u64[0];
    v53 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v52 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v51 = [v52 _accessibilityBeginningOfDocument];
    v84 = v83;
    v74 = [v53 _accessibilityPositionFromPosition:? offset:?];
    MEMORY[0x29EDC9740](v51);
    MEMORY[0x29EDC9740](v52);
    v73 = [v76 textRangeFromPosition:v75 toPosition:{v74, MEMORY[0x29EDC9740](v53).n128_f64[0]}];
    v54 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v72 = [v54 _axTextInputView];
    v7 = MEMORY[0x29EDC9740](v54).n128_u64[0];
    if (!v72)
    {
      v46 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();
      v7 = MEMORY[0x29EDC9740](v46).n128_u64[0];
      if (v47)
      {
        v45 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
        v8 = [v45 inputView];
        v9 = v72;
        v72 = v8;
        MEMORY[0x29EDC9740](v9);
        v7 = MEMORY[0x29EDC9740](v45).n128_u64[0];
      }
    }

    v71 = 0;
    if (v80)
    {
      v44 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
      v10 = [v44 _accessibilitySentenceRectsForRange:v73];
      v11 = v71;
      v71 = v10;
      MEMORY[0x29EDC9740](v11);
      MEMORY[0x29EDC9740](v44);
    }

    else
    {
      v43 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
      v12 = [v43 _accessibilityTextRectsForRange:v73 singleTextRect:0];
      v13 = v71;
      v71 = v12;
      MEMORY[0x29EDC9740](v13);
      MEMORY[0x29EDC9740](v43);
    }

    oslog = AXLogSpeakScreen();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_66(v86, v73, v72, v71);
      _os_log_impl(&dword_29C4D6000, oslog, type, "Was text input, got range %{public}@ and view %{public}@, rects in view space %{public}@", v86, 0x20u);
    }

    objc_storeStrong(&oslog, 0);
    v68 = [MEMORY[0x29EDB8DE8] arrayWithCapacity:{objc_msgSend(v71, "count")}];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x29EDC9748](v71);
    v42 = [obj countByEnumeratingWithState:__b objects:v85 count:16];
    if (v42)
    {
      v38 = *__b[2];
      v39 = 0;
      v40 = v42;
      while (1)
      {
        v37 = v39;
        if (*__b[2] != v38)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(__b[1] + 8 * v39);
        [v67 CGRectValue];
        *&v64 = v14;
        *(&v64 + 1) = v15;
        *&v65 = v16;
        *(&v65 + 1) = v17;
        v62 = v64;
        v63 = v65;
        if (v72)
        {
          [v72 convertRect:0 toView:{v64, v65}];
          *&v60 = v18;
          *(&v60 + 1) = v19;
          *&v61 = v20;
          *(&v61 + 1) = v21;
          v62 = v60;
          v63 = v61;
        }

        v35 = v68;
        v36 = [MEMORY[0x29EDBA168] valueWithCGRect:{v62, v63}];
        [v35 addObject:?];
        *&v22 = MEMORY[0x29EDC9740](v36).n128_u64[0];
        ++v39;
        if (v37 + 1 >= v40)
        {
          v39 = 0;
          v40 = [obj countByEnumeratingWithState:__b objects:v85 count:{16, v22}];
          if (!v40)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x29EDC9740](obj);
    objc_storeStrong(&v79, v68);
    if (location && (v77 & 1) == 1)
    {
      [location setSelectable:0];
    }

    objc_storeStrong(&v68, 0);
    objc_storeStrong(&v71, 0);
    objc_storeStrong(&v72, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&v76, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    v33 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
    v34 = [v33 _accessibilityBoolValueForKey:@"AXInSpeakThisTextRectsOverride"];
    *&v23 = MEMORY[0x29EDC9740](v33).n128_u64[0];
    if (v34)
    {
      v59.receiver = v82;
      v59.super_class = UITextInputUIResponderAccessibility;
      v24 = [(UITextInputUIResponderAccessibility *)&v59 _accessibilityTextRectsForSpeakThisStringRange:v83.location, v83.length, v23];
      v25 = v79;
      v79 = v24;
      MEMORY[0x29EDC9740](v25);
    }

    else
    {
      v30 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
      [v30 _accessibilitySetBoolValue:1 forKey:?];
      v31 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
      v26 = [v31 _accessibilityTextRectsForSpeakThisStringRange:{v83.location, v83.length}];
      v27 = v79;
      v79 = v26;
      MEMORY[0x29EDC9740](v27);
      v32 = [(UITextInputUIResponderAccessibility *)v82 _accessibilityTextResponder];
      [v32 _accessibilitySetBoolValue:0 forKey:@"AXInSpeakThisTextRectsOverride"];
      MEMORY[0x29EDC9740](v32);
    }
  }

  v29 = MEMORY[0x29EDC9748](v79);
  objc_storeStrong(&v79, 0);

  return v29;
}

- (BOOL)_accessibilityInsertTextWithAlternatives:(id)a3
{
  v67 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v65 = 0;
  v26 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
  v27 = [v26 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v26).n128_u64[0];
  if (v27)
  {
    v24 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
    v25 = objc_opt_respondsToSelector();
    *&v4 = MEMORY[0x29EDC9740](v24).n128_u64[0];
    if (v25)
    {
      v64 = [MEMORY[0x29EDB8DE8] array];
      v59 = 0;
      v60 = &v59;
      v61 = 0x20000000;
      v62 = 32;
      v63 = 0;
      v23 = location[0];
      v52 = MEMORY[0x29EDCA5F8];
      v53 = -1073741824;
      v54 = 0;
      v55 = __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke;
      v56 = &unk_29F30DEB8;
      v58[1] = &v59;
      v57 = MEMORY[0x29EDC9748](v64);
      v58[0] = MEMORY[0x29EDC9748](location[0]);
      [v23 enumerateAttributesUsingBlock:&v52];
      v22 = v60[3];
      if (v22 < [location[0] length])
      {
        v21 = v64;
        v45 = 0;
        v46 = &v45;
        v47 = 838860800;
        v48 = 48;
        v49 = __Block_byref_object_copy__25;
        v50 = __Block_byref_object_dispose__25;
        v51 = 0;
        v39 = MEMORY[0x29EDCA5F8];
        v40 = -1073741824;
        v41 = 0;
        v42 = __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_3;
        v43 = &unk_29F30D720;
        v44[1] = &v45;
        v44[0] = MEMORY[0x29EDC9748](location[0]);
        v44[2] = &v59;
        AXPerformSafeBlock();
        v38 = MEMORY[0x29EDC9748](v46[5]);
        objc_storeStrong(v44, 0);
        _Block_object_dispose(&v45, 8);
        objc_storeStrong(&v51, 0);
        [v21 axSafelyAddObject:?];
        *&v5 = MEMORY[0x29EDC9740](v38).n128_u64[0];
      }

      v20 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
      [v20 insertDictationResult:v64];
      MEMORY[0x29EDC9740](v20);
      v65 = 1;
      objc_storeStrong(v58, 0);
      objc_storeStrong(&v57, 0);
      _Block_object_dispose(&v59, 8);
      objc_storeStrong(&v64, 0);
    }

    else
    {
      v18 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
      v19 = objc_opt_respondsToSelector();
      *&v6 = MEMORY[0x29EDC9740](v18).n128_u64[0];
      if (v19)
      {
        v37 = [location[0] string];
        v36 = 1;
        v16 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
        v17 = objc_opt_respondsToSelector();
        *&v7 = MEMORY[0x29EDC9740](v16).n128_u64[0];
        if (v17)
        {
          v14 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
          v13 = [MEMORY[0x29EDC7B08] sharedInstance];
          v12 = [v13 delegate];
          v15 = [v14 keyboardInput:? shouldInsertText:? isMarkedText:?];
          MEMORY[0x29EDC9740](v12);
          MEMORY[0x29EDC9740](v13);
          MEMORY[0x29EDC9740](v14);
          v36 = (v15 & 1) != 0;
        }

        if (v36)
        {
          v35 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:v37];
          v10 = location[0];
          v28 = MEMORY[0x29EDCA5F8];
          v29 = -1073741824;
          v30 = 0;
          v31 = __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_4;
          v32 = &unk_29F30DEE0;
          v33 = MEMORY[0x29EDC9748](location[0]);
          v34 = MEMORY[0x29EDC9748](v35);
          [v10 enumerateAttributesUsingBlock:&v28];
          v11 = [(UITextInputUIResponderAccessibility *)v67 _accessibilityTextResponder];
          [v11 _insertAttributedTextWithoutClosingTyping:v35];
          MEMORY[0x29EDC9740](v11);
          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v33, 0);
          objc_storeStrong(&v35, 0);
        }

        v65 = 1;
        objc_storeStrong(&v37, 0);
      }
    }
  }

  v9 = v65;
  objc_storeStrong(location, 0);
  return v9 & 1;
}

void __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  *&v38 = a3;
  *(&v38 + 1) = a4;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v36[2] = a5;
  v36[1] = a1;
  if (*(*(*(a1 + 48) + 8) + 24) < v38)
  {
    v7 = *(a1 + 32);
    v30 = 0;
    v31 = &v30;
    v32 = 838860800;
    v33 = 48;
    v34 = __Block_byref_object_copy__25;
    v35 = __Block_byref_object_dispose__25;
    v36[0] = 0;
    v23 = MEMORY[0x29EDCA5F8];
    v24 = -1073741824;
    v25 = 0;
    v26 = __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_683;
    v27 = &unk_29F30DE90;
    v28[1] = &v30;
    v28[0] = MEMORY[0x29EDC9748](*(a1 + 40));
    v28[2] = *(a1 + 48);
    v29 = v38;
    AXPerformSafeBlock();
    v22 = MEMORY[0x29EDC9748](v31[5]);
    objc_storeStrong(v28, 0);
    _Block_object_dispose(&v30, 8);
    objc_storeStrong(v36, 0);
    [v7 axSafelyAddObject:?];
    *&v5 = MEMORY[0x29EDC9740](v22).n128_u64[0];
  }

  v21 = [location[0] objectForKeyedSubscript:{@"AXTextAlternatives", v5}];
  if (![v21 count])
  {
    objc_storeStrong(&v21, MEMORY[0x29EDB8E90]);
  }

  v6 = *(a1 + 32);
  v14 = 0;
  v15 = &v14;
  v16 = 838860800;
  v17 = 48;
  v18 = __Block_byref_object_copy__25;
  v19 = __Block_byref_object_dispose__25;
  v20 = 0;
  v12[1] = &v14;
  v11 = MEMORY[0x29EDC9748](*(a1 + 40));
  v13 = v38;
  v12[0] = MEMORY[0x29EDC9748](v21);
  AXPerformSafeBlock();
  v10 = MEMORY[0x29EDC9748](v15[5]);
  objc_storeStrong(v12, 0);
  objc_storeStrong(&v11, 0);
  _Block_object_dispose(&v14, 8);
  objc_storeStrong(&v20, 0);
  [v6 axSafelyAddObject:?];
  MEMORY[0x29EDC9740](v10);
  v39 = v38;
  *(*(*(a1 + 48) + 8) + 24) = v38 + *(&v38 + 1);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

double __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_683(uint64_t a1)
{
  v5 = MEMORY[0x29EDC7A60];
  v8 = *(*(*(a1 + 48) + 8) + 24);
  v7 = [*(a1 + 32) substringWithRange:{v8, *(a1 + 56) - v8}];
  v1 = [v5 phraseWithText:? alternativeInterpretations:?];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

double __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_2(uint64_t a1)
{
  v5 = MEMORY[0x29EDC7A60];
  v7 = [*(a1 + 32) substringWithRange:{*(a1 + 56), *(a1 + 64)}];
  v1 = [v5 phraseWithText:? alternativeInterpretations:?];
  v2 = *(*(a1 + 48) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

double __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_3(uint64_t a1)
{
  v5 = MEMORY[0x29EDC7A60];
  v7 = [*(a1 + 32) substringWithRange:{*(*(*(a1 + 48) + 8) + 24), objc_msgSend(*(a1 + 32), "length") - *(*(*(a1 + 48) + 8) + 24)}];
  v1 = [v5 phraseWithText:? alternativeInterpretations:?];
  v2 = *(*(a1 + 40) + 8);
  v3 = *(v2 + 40);
  *(v2 + 40) = v1;
  MEMORY[0x29EDC9740](v3);
  *&result = MEMORY[0x29EDC9740](v7).n128_u64[0];
  return result;
}

void __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v18[1] = *MEMORY[0x29EDCA608];
  v15 = a3;
  v16 = a4;
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v13[2] = a5;
  v13[1] = a1;
  v13[0] = [location[0] objectForKeyedSubscript:@"AXTextAlternatives"];
  if ([v13[0] count])
  {
    v6 = objc_alloc(MEMORY[0x29EDC7690]);
    v7 = [*(a1 + 32) substringWithRange:{v15, v16}];
    v12 = [v6 initWithPrimaryString:? alternativeStrings:?];
    *&v5 = MEMORY[0x29EDC9740](v7).n128_u64[0];
    v8 = *(a1 + 40);
    v17 = *MEMORY[0x29EDC7668];
    v18[0] = v12;
    v9 = [MEMORY[0x29EDB8DC0] dictionaryWithObjects:v18 forKeys:&v17 count:{1, v5}];
    [v8 setAttributes:? range:?];
    MEMORY[0x29EDC9740](v9);
    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(v13, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityAlternativesForTextAtPosition:(unint64_t)a3
{
  v28 = self;
  v27 = a2;
  v26 = a3;
  v25 = 0;
  v18 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v19 = [v18 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](v18).n128_u64[0];
  if (v19)
  {
    v24 = 0;
    v17 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
    v23 = [v17 _accessibilityBeginningOfDocument];
    *&v4 = MEMORY[0x29EDC9740](v17).n128_u64[0];
    if (v23)
    {
      v16 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
      v22 = [v16 _accessibilityPositionFromPosition:v23 offset:v26];
      *&v5 = MEMORY[0x29EDC9740](v16).n128_u64[0];
      if (v22)
      {
        v14 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
        v15 = objc_opt_respondsToSelector();
        *&v6 = MEMORY[0x29EDC9740](v14).n128_u64[0];
        if (v15)
        {
          v13 = [(UITextInputUIResponderAccessibility *)v28 _accessibilityTextResponder];
          v20 = v24;
          v12 = [v13 rangeWithTextAlternatives:&v20 atPosition:v22];
          objc_storeStrong(&v24, v20);
          v21 = v12;
          *&v7 = MEMORY[0x29EDC9740](v13).n128_u64[0];
          if (v21)
          {
            v8 = [v24 alternativeStrings];
            v9 = v25;
            v25 = v8;
            MEMORY[0x29EDC9740](v9);
          }

          objc_storeStrong(&v21, 0);
        }
      }

      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  v11 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v25, 0);

  return v11;
}

- (BOOL)_accessibilityHandlesTabKey
{
  v38 = self;
  v37 = a2;
  v35.receiver = self;
  v35.super_class = UITextInputUIResponderAccessibility;
  v36 = [(UITextInputUIResponderAccessibility *)&v35 _accessibilityHandlesTabKey];
  if (v36)
  {
    v34 = [MEMORY[0x29EDC7B08] sharedInstance];
    v10 = [v34 textInputTraits];
    v11 = [v10 isSingleLineDocument];
    *&v2 = MEMORY[0x29EDC9740](v10).n128_u64[0];
    if (v11)
    {
      v9 = [v34 safeValueForKey:{@"keyboardStateManager", v2}];
      v33 = [v9 safeValueForKey:@"m_candidateList"];
      v32 = [v33 safeValueForKey:{@"firstNonEmptyActiveCandidateView", MEMORY[0x29EDC9740](v9).n128_f64[0]}];
      v27 = 0;
      v28 = &v27;
      v29 = 0x20000000;
      v30 = 32;
      v31 = 0;
      v21 = MEMORY[0x29EDCA5F8];
      v22 = -1073741824;
      v23 = 0;
      v24 = __66__UITextInputUIResponderAccessibility__accessibilityHandlesTabKey__block_invoke;
      v25 = &unk_29F30CC70;
      v26[1] = &v27;
      v26[0] = MEMORY[0x29EDC9748](v32);
      AXPerformSafeBlock();
      v20 = v28[3] & 1;
      objc_storeStrong(v26, 0);
      _Block_object_dispose(&v27, 8);
      if ((v20 & 1) == 0)
      {
        v18 = 0;
        objc_opt_class();
        v8 = [v34 safeValueForKey:@"inputManagerState"];
        v17 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v8);
        v16 = MEMORY[0x29EDC9748](v17);
        objc_storeStrong(&v17, 0);
        v5 = v16;
        v6 = [v16 keyboardBehaviors];
        v15 = 0;
        objc_opt_class();
        v7 = [v34 safeValueForKey:@"_keyboardBehaviorState"];
        v14 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v7);
        v13 = MEMORY[0x29EDC9748](v14);
        objc_storeStrong(&v14, 0);
        v19 = [v6 keyBehaviorsForState:?];
        MEMORY[0x29EDC9740](v13);
        MEMORY[0x29EDC9740](v6);
        *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
        v12 = [v19 tabKeyBehavior];
        if (v12 != 4 && v12 != 3)
        {
          v36 = 0;
        }

        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&v34, 0);
  }

  return v36 & 1;
}

uint64_t __66__UITextInputUIResponderAccessibility__accessibilityHandlesTabKey__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasCandidateInForwardDirection:1 granularity:3];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_accessibilityOffsetFromPosition:(id)a3 toPosition:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v6 = [(UITextInputUIResponderAccessibility *)v10 _accessibilityTextResponder];
  v7 = [v6 offsetFromPosition:location[0] toPosition:v8];
  MEMORY[0x29EDC9740](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_accessibilityPositionFromPosition:(id)a3 offset:(int64_t)a4
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (a4 < 0)
  {
    _AXAssert();
  }

  v5 = [(UITextInputUIResponderAccessibility *)v9 _accessibilityTextResponder];
  v6 = [v5 positionFromPosition:location[0] offset:a4];
  MEMORY[0x29EDC9740](v5);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accessibilityBeginningOfDocument
{
  v3 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v4 = [v3 beginningOfDocument];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (id)_accessibilityEndOfDocument
{
  v3 = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v4 = [v3 endOfDocument];
  MEMORY[0x29EDC9740](v3);

  return v4;
}

- (BOOL)becomeFirstResponder
{
  v7 = self;
  v6 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityBoolValueForKey:@"_AX_becomeFirstResponder"];
  if (v5)
  {
    return 0;
  }

  [(UITextInputUIResponderAccessibility *)v7 _accessibilitySetBoolValue:1 forKey:?];
  v3.receiver = v7;
  v3.super_class = UITextInputUIResponderAccessibility;
  v4 = [(UITextInputUIResponderAccessibility *)&v3 becomeFirstResponder];
  [(UITextInputUIResponderAccessibility *)v7 _accessibilitySetBoolValue:0 forKey:@"_AX_becomeFirstResponder"];
  if ((v4 & 1) != 0 && [v7 __accessibilityRespondsToTextInput])
  {
    [(UITextInputUIResponderAccessibility *)v7 _axResetFKAFocusToFirstResponder];
  }

  return v4 & 1;
}

- (void)_axResetFKAFocusToFirstResponder
{
  if (a1)
  {
    [(UITextInputUIResponderAccessibility *)a1 _axDrawFocusRingAroundFirstResponderAndMoveFocus:?];
  }
}

- (BOOL)resignFirstResponder
{
  v7 = self;
  v6 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityBoolValueForKey:@"_AX_resignFirstResponder"];
  if (v5)
  {
    return 0;
  }

  [(UITextInputUIResponderAccessibility *)v7 _accessibilitySetBoolValue:1 forKey:?];
  v3.receiver = v7;
  v3.super_class = UITextInputUIResponderAccessibility;
  v4 = [(UITextInputUIResponderAccessibility *)&v3 resignFirstResponder];
  [(UITextInputUIResponderAccessibility *)v7 _accessibilitySetBoolValue:0 forKey:@"_AX_resignFirstResponder"];
  if ((v4 & 1) != 0 && [v7 __accessibilityRespondsToTextInput]&& [(UITextInputUIResponderAccessibility *)v7 _accessibilityIsFKARunningForFocusItem])
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  return v4 & 1;
}

- (void)_axDrawFocusRingAroundFirstResponderAndMoveFocus:(void *)a1
{
  v11 = a1;
  v10 = a2;
  if (a1)
  {
    v8 = 0;
    LOBYTE(v3) = 1;
    if ((AXProcessIsFullKeyboardAccess() & 1) == 0)
    {
      v9 = [v11 _accessibilityTextResponder];
      v8 = 1;
      v3 = [v9 __accessibilityRespondsToTextInput] ^ 1;
    }

    if (v8)
    {
      MEMORY[0x29EDC9740](v9);
    }

    if ((v3 & 1) == 0)
    {
      v2 = [v11 _accessibilityTextResponder];
      v7 = [v2 _accessibilityFocusItemForResponder];
      if ([v11 _accessibilityIsFKARunningForFocusItem] & 1) != 0 && (objc_msgSend(v7, "conformsToProtocol:", &unk_2A2390730))
      {
        v6 = v10 & 1;
        v4 = MEMORY[0x29EDC9748](v7);
        v5 = MEMORY[0x29EDC9748](v11);
        AXPerformBlockAsynchronouslyOnMainThread();
        objc_storeStrong(&v5, 0);
        objc_storeStrong(&v4, 0);
      }

      objc_storeStrong(&v7, 0);
    }
  }
}

uint64_t __88__UITextInputUIResponderAccessibility__axDrawFocusRingAroundFirstResponderAndMoveFocus___block_invoke(uint64_t a1)
{
  v6 = 0;
  v4 = 0;
  v3 = 0;
  if (*(a1 + 48))
  {
    v7 = [MEMORY[0x29EDC7AA0] focusSystemForEnvironment:*(a1 + 32)];
    v6 = 1;
    v5 = [v7 focusedItem];
    v4 = 1;
    v3 = v5 != *(a1 + 32);
  }

  if (v4)
  {
    MEMORY[0x29EDC9740](v5);
  }

  if (v6)
  {
    MEMORY[0x29EDC9740](v7);
  }

  if (v3)
  {
    _UIAXAssignFocusToItem();
  }

  result = [*(a1 + 40) _axShouldDrawFocusAroundFirstResponder];
  if (result)
  {
    return [MEMORY[0x29EDC7A98] moveRingToFocusItem:*(a1 + 32) forClient:@"AXFKATextFieldClient"];
  }

  return result;
}

- (id)_axTextInputView
{
  v7[2] = self;
  v7[1] = a2;
  v7[0] = __UIAccessibilityCastAsProtocol();
  v6 = 0;
  if (objc_opt_respondsToSelector())
  {
    v2 = [v7[0] textInputView];
    v3 = v6;
    v6 = v2;
    MEMORY[0x29EDC9740](v3);
  }

  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  v14 = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = UITextInputUIResponderAccessibility;
  if ([(UITextInputUIResponderAccessibility *)&v12 _accessibilityIsFKARunningForFocusItem])
  {
    v15 = 1;
  }

  else
  {
    v8 = [(UITextInputUIResponderAccessibility *)v14 _accessibilityTextResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *&v2 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    if ((isKindOfClass & 1) == 0 || ((v6 = -[UITextInputUIResponderAccessibility _accessibilityTextResponder](v14, "_accessibilityTextResponder", v2), location = [v6 nextResponder], *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0], v7 = -[UITextInputUIResponderAccessibility _accessibilityTextResponder](v14, "_accessibilityTextResponder", v3), *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0], location == v7) ? (v10 = 0) : (v15 = objc_msgSend(location, "_accessibilityIsFKARunningForFocusItem", v4) & 1, v10 = 1), objc_storeStrong(&location, 0), !v10))
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

@end