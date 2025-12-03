@interface UITextInputUIResponderAccessibility
+ (void)_accessibilityPerformValidations:(id)validations;
- (BOOL)_accessibilityHandlesTabKey;
- (BOOL)_accessibilityInsertTextWithAlternatives:(id)alternatives;
- (BOOL)_accessibilityIsFKARunningForFocusItem;
- (BOOL)becomeFirstResponder;
- (BOOL)isAccessibilityElement;
- (BOOL)resignFirstResponder;
- (CGRect)_accessibilityBoundsForRange:(_NSRange)range;
- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position;
- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column;
- (_NSRange)_accessibilityRawRangeForUITextRange:(id)range;
- (_NSRange)_accessibilitySelectedTextRange;
- (_NSRange)_accessibilityVisibleTextRange;
- (id)_accessibilityAlternativesForTextAtPosition:(unint64_t)position;
- (id)_accessibilityBeginningOfDocument;
- (id)_accessibilityEndOfDocument;
- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point;
- (id)_accessibilityPositionFromPosition:(id)position offset:(int64_t)offset;
- (id)_accessibilitySpeakThisString;
- (id)_accessibilityTextRangeFromNSRange:(_NSRange)range;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences;
- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range wantsSentences:(BOOL)sentences;
- (id)_accessibilityTextResponder;
- (id)_accessibilityTextViewTextOperationResponder;
- (id)_axTextInputView;
- (id)_moveLeft:(BOOL)left withHistory:(id)history;
- (id)_moveRight:(BOOL)right withHistory:(id)history;
- (id)accessibilityValue;
- (int64_t)_accessibilityLineEndPosition;
- (int64_t)_accessibilityLineStartPosition;
- (int64_t)_accessibilityOffsetFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)_accessibilityTextInputLinePosition:(BOOL)position;
- (unint64_t)_accessibilityPositionInDirection:(int64_t)direction offset:(unint64_t)offset forPosition:(unint64_t)position;
- (unint64_t)accessibilityTraits;
- (void)_accessibilityCheckBorderHit:(char)hit left:;
- (void)_accessibilitySetSelectedTextRange:(_NSRange)range;
- (void)_axDrawFocusRingAroundFirstResponderAndMoveFocus:(void *)focus;
- (void)_axResetFKAFocusToFirstResponder;
- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream;
@end

@implementation UITextInputUIResponderAccessibility

+ (void)_accessibilityPerformValidations:(id)validations
{
  location[2] = self;
  location[1] = a2;
  v9 = location;
  v8 = 0;
  location[0] = 0;
  objc_storeStrong(location, validations);
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

- (void)_updateSelectionWithTextRange:(id)range withAffinityDownstream:(BOOL)downstream
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, range);
  downstreamCopy = downstream;
  v6 = MEMORY[0x29EDC74D0];
  _UIAccessibilityBlockPostingOfNotification();
  v7.receiver = selfCopy;
  v7.super_class = UITextInputUIResponderAccessibility;
  [(UITextInputUIResponderAccessibility *)&v7 _updateSelectionWithTextRange:location[0] withAffinityDownstream:downstream];
  _UIAccessibilityUnblockPostingOfNotification();
  _accessibilityResponderElementForFocus = [*MEMORY[0x29EDC8008] _accessibilityResponderElementForFocus];
  _UIAccessibilitySetAssociatedElementContextForNextNotification();
  MEMORY[0x29EDC9740](_accessibilityResponderElementForFocus);
  UIAccessibilityPostNotification(*v6, 0);
  objc_storeStrong(location, 0);
}

- (id)_accessibilityTextResponder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = [(UITextInputUIResponderAccessibility *)self accessibilityTextInputResponder];
  if (location[0])
  {
    v2 = MEMORY[0x29EDC9748](location[0]);
  }

  else
  {
    v2 = MEMORY[0x29EDC9748](selfCopy);
  }

  v4 = v2;
  objc_storeStrong(location, 0);

  return v4;
}

- (void)_accessibilityCheckBorderHit:(char)hit left:
{
  selfCopy = self;
  v13 = a2;
  hitCopy = hit;
  if (self)
  {
    v11 = [selfCopy safeValueForKey:@"_selectableText"];
    selectedTextRange = [v11 selectedTextRange];
    *&v3 = MEMORY[0x29EDC9740](selectedTextRange).n128_u64[0];
    if (selectedTextRange)
    {
      selectedTextRange2 = [v11 selectedTextRange];
      location = [selectedTextRange2 start];
      if ([selectedTextRange2 isEmpty] & 1) != 0 || (v13)
      {
        if (hitCopy)
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
      objc_storeStrong(&selectedTextRange2, 0);
      v10 = 0;
    }

    else
    {
      v10 = 1;
    }

    objc_storeStrong(&v11, 0);
  }
}

- (id)_moveLeft:(BOOL)left withHistory:(id)history
{
  selfCopy = self;
  v9 = a2;
  leftCopy = left;
  location = 0;
  objc_storeStrong(&location, history);
  [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityCheckBorderHit:leftCopy left:1];
  v6.receiver = selfCopy;
  v6.super_class = UITextInputUIResponderAccessibility;
  v5 = [(UITextInputUIResponderAccessibility *)&v6 _moveLeft:leftCopy withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (id)_moveRight:(BOOL)right withHistory:(id)history
{
  selfCopy = self;
  v9 = a2;
  rightCopy = right;
  location = 0;
  objc_storeStrong(&location, history);
  [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityCheckBorderHit:rightCopy left:0];
  v6.receiver = selfCopy;
  v6.super_class = UITextInputUIResponderAccessibility;
  v5 = [(UITextInputUIResponderAccessibility *)&v6 _moveRight:rightCopy withHistory:location];
  objc_storeStrong(&location, 0);

  return v5;
}

- (BOOL)isAccessibilityElement
{
  selfCopy = self;
  v11 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    __accessibilityRespondsToTextInput2 = [_accessibilityTextResponder2 __accessibilityRespondsToTextInput];
    *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
    if (__accessibilityRespondsToTextInput2)
    {
      return 1;
    }

    else
    {
      v9.receiver = selfCopy;
      v9.super_class = UITextInputUIResponderAccessibility;
      return [(UITextInputUIResponderAccessibility *)&v9 isAccessibilityElement];
    }
  }

  else
  {
    v10.receiver = selfCopy;
    v10.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v10 isAccessibilityElement];
  }
}

- (int64_t)_accessibilityTextInputLinePosition:(BOOL)position
{
  selfCopy = self;
  v24 = a2;
  positionCopy = position;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v21 = [_accessibilityTextResponder safeValueForKey:@"selectedTextRange"];
  tokenizer = [_accessibilityTextResponder tokenizer];
  v19 = 0;
  start = [v21 start];
  v17 = [v21 end];
  _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  location = [_accessibilityTextResponder2 _accessibilityBeginningOfDocument];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
  if (positionCopy && ([start isEqual:{location, v3}] & 1) != 0)
  {
    v26 = 0;
  }

  else
  {
    if (positionCopy)
    {
      v4 = [tokenizer positionFromPosition:v17 toBoundary:4 inDirection:{1, v3}];
      v5 = v17;
      v17 = v4;
      *&v6 = MEMORY[0x29EDC9740](v5).n128_u64[0];
      if (!v17)
      {
        v26 = 0x7FFFFFFFLL;
        goto LABEL_16;
      }

      v7 = [_accessibilityTextResponder textRangeFromPosition:start toPosition:{v17, v6}];
      v8 = v19;
      v19 = v7;
      v9 = MEMORY[0x29EDC9740](v8).n128_u64[0];
    }

    else
    {
      if ([tokenizer isPosition:v17 atBoundary:4 inDirection:{0, v3}])
      {
        _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        v26 = [_accessibilityTextResponder3 _accessibilityOffsetFromPosition:location toPosition:v17];
        MEMORY[0x29EDC9740](_accessibilityTextResponder3);
        goto LABEL_16;
      }

      if (!v17)
      {
        v26 = 0x7FFFFFFFLL;
        goto LABEL_16;
      }

      v10 = [tokenizer rangeEnclosingPosition:v17 withGranularity:4 inDirection:0];
      v11 = v19;
      v19 = v10;
      v9 = MEMORY[0x29EDC9740](v11).n128_u64[0];
    }

    if (v19)
    {
      _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v26 = [_accessibilityTextResponder4 _accessibilityOffsetFromPosition:location toPosition:v17];
      MEMORY[0x29EDC9740](_accessibilityTextResponder4);
    }

    else
    {
      v26 = 0x7FFFFFFFLL;
    }
  }

LABEL_16:
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&start, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&tokenizer, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&_accessibilityTextResponder, 0);
  return v26;
}

- (int64_t)_accessibilityLineEndPosition
{
  selfCopy = self;
  v8 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v10 = [_accessibilityTextResponder2 _accessibilityTextInputLinePosition:0];
    MEMORY[0x29EDC9740](_accessibilityTextResponder2);
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v7 _accessibilityLineEndPosition];
  }

  return v10;
}

- (int64_t)_accessibilityLineStartPosition
{
  selfCopy = self;
  v8 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v10 = [_accessibilityTextResponder2 _accessibilityTextInputLinePosition:1];
    MEMORY[0x29EDC9740](_accessibilityTextResponder2);
  }

  else
  {
    v7.receiver = selfCopy;
    v7.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v7 _accessibilityLineStartPosition];
  }

  return v10;
}

- (_NSRange)_accessibilityCharacterRangeForPosition:(unint64_t)position
{
  selfCopy = self;
  v25 = a2;
  positionCopy = position;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    if (positionCopy == 0x7FFFFFFF || positionCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      v27 = 0x7FFFFFFFLL;
      v28 = 0;
    }

    else
    {
      _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityBeginningOfDocument = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
      *&v5 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
      if (_accessibilityBeginningOfDocument)
      {
        _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        v19 = [_accessibilityTextResponder4 _accessibilityPositionFromPosition:_accessibilityBeginningOfDocument offset:positionCopy];
        *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
        if (v19)
        {
          tokenizer = [_accessibilityTextResponder2 tokenizer];
          location = [tokenizer positionFromPosition:v19 toBoundary:0 inDirection:?];
          if (location)
          {
            _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
            v10 = [_accessibilityTextResponder5 _accessibilityOffsetFromPosition:_accessibilityBeginningOfDocument toPosition:v19];
            _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
            v12 = [_accessibilityTextResponder6 _accessibilityOffsetFromPosition:_accessibilityBeginningOfDocument toPosition:location];
            MEMORY[0x29EDC9740](_accessibilityTextResponder6);
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
          objc_storeStrong(&tokenizer, 0);
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

      objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
      objc_storeStrong(&_accessibilityTextResponder2, 0);
    }
  }

  else
  {
    v23.receiver = selfCopy;
    v23.super_class = UITextInputUIResponderAccessibility;
    v27 = [(UITextInputUIResponderAccessibility *)&v23 _accessibilityLineRangeForPosition:positionCopy, v3];
    v28 = v4;
  }

  v7 = v27;
  v8 = v28;
  result.length = v8;
  result.location = v7;
  return result;
}

- (_NSRange)_accessibilityLineRangeForPosition:(unint64_t)position
{
  selfCopy = self;
  v27 = a2;
  positionCopy = position;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    if (positionCopy == 0x7FFFFFFF || positionCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0x7FFFFFFFLL;
      v30 = 0;
    }

    else
    {
      _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityBeginningOfDocument = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
      *&v5 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
      if (_accessibilityBeginningOfDocument)
      {
        _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        v21 = [_accessibilityTextResponder4 _accessibilityPositionFromPosition:_accessibilityBeginningOfDocument offset:positionCopy];
        *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
        if (v21)
        {
          tokenizer = [_accessibilityTextResponder2 tokenizer];
          location = [tokenizer rangeEnclosingPosition:v21 withGranularity:4 inDirection:0];
          if (location || (location = [tokenizer rangeEnclosingPosition:v21 withGranularity:4 inDirection:1], MEMORY[0x29EDC9740](0), location))
          {
            _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
            start = [location start];
            v11 = [_accessibilityTextResponder5 _accessibilityOffsetFromPosition:_accessibilityBeginningOfDocument toPosition:?];
            MEMORY[0x29EDC9740](start);
            _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
            v12 = [location end];
            v14 = [_accessibilityTextResponder6 _accessibilityOffsetFromPosition:_accessibilityBeginningOfDocument toPosition:?];
            MEMORY[0x29EDC9740](v12);
            MEMORY[0x29EDC9740](_accessibilityTextResponder6);
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
          objc_storeStrong(&tokenizer, 0);
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

      objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
      objc_storeStrong(&_accessibilityTextResponder2, 0);
    }
  }

  else
  {
    v25.receiver = selfCopy;
    v25.super_class = UITextInputUIResponderAccessibility;
    v29 = [(UITextInputUIResponderAccessibility *)&v25 _accessibilityLineRangeForPosition:positionCopy, v3];
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
  selfCopy = self;
  v17 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  objc_opt_class();
  v15 = 0;
  isKindOfClass = 1;
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v15 = 1;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  if (v15)
  {
    MEMORY[0x29EDC9740](_accessibilityTextResponder2);
  }

  MEMORY[0x29EDC9740](_accessibilityTextResponder);
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
    v6[0] = MEMORY[0x29EDC9748](selfCopy);
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

- (unint64_t)_accessibilityPositionInDirection:(int64_t)direction offset:(unint64_t)offset forPosition:(unint64_t)position
{
  selfCopy = self;
  v23 = a2;
  directionCopy = direction;
  offsetCopy = offset;
  positionCopy = position;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v5 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    if (positionCopy == 0x7FFFFFFF || positionCopy == 0x7FFFFFFFFFFFFFFFLL)
    {
      return 0x7FFFFFFFLL;
    }

    else
    {
      _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityBeginningOfDocument = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
      *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
      if (_accessibilityBeginningOfDocument)
      {
        _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        v15 = [_accessibilityTextResponder4 _accessibilityPositionFromPosition:_accessibilityBeginningOfDocument offset:positionCopy];
        *&v7 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
        if (v15)
        {
          location = [_accessibilityTextResponder2 positionFromPosition:v15 inDirection:directionCopy offset:{offsetCopy, v7}];
          if (location)
          {
            _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
            v25 = [_accessibilityTextResponder5 _accessibilityOffsetFromPosition:_accessibilityBeginningOfDocument toPosition:location];
            MEMORY[0x29EDC9740](_accessibilityTextResponder5);
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

      objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
      objc_storeStrong(&_accessibilityTextResponder2, 0);
    }
  }

  else
  {
    v19.receiver = selfCopy;
    v19.super_class = UITextInputUIResponderAccessibility;
    return [(UITextInputUIResponderAccessibility *)&v19 _accessibilityPositionInDirection:directionCopy offset:offsetCopy forPosition:positionCopy, v5];
  }

  return v25;
}

- (id)accessibilityValue
{
  selfCopy = self;
  v16 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityBeginningOfDocument = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
    *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
    _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityEndOfDocument = [_accessibilityTextResponder4 _accessibilityEndOfDocument];
    *&v4 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
    v11 = [_accessibilityTextResponder2 textRangeFromPosition:_accessibilityBeginningOfDocument toPosition:{_accessibilityEndOfDocument, v4}];
    accessibilityValue = [_accessibilityTextResponder2 textInRange:v11];
    objc_storeStrong(&v11, 0);
    objc_storeStrong(&_accessibilityEndOfDocument, 0);
    objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
    objc_storeStrong(&_accessibilityTextResponder2, 0);
  }

  else
  {
    v15.receiver = selfCopy;
    v15.super_class = UITextInputUIResponderAccessibility;
    accessibilityValue = [(UITextInputUIResponderAccessibility *)&v15 accessibilityValue];
  }

  v5 = accessibilityValue;

  return v5;
}

- (id)_accessibilityLineNumberAndColumnForPoint:(CGPoint)point
{
  pointCopy = point;
  selfCopy = self;
  v73[1] = a2;
  v73[0] = 0;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder2 __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _axTextInputView = [_accessibilityTextResponder3 _axTextInputView];
    v4 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
    if (!_axTextInputView)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        inputView = [_accessibilityTextResponder inputView];
        v6 = _axTextInputView;
        _axTextInputView = inputView;
        v4 = MEMORY[0x29EDC9740](v6).n128_u64[0];
      }
    }

    window = [_axTextInputView window];
    [window convertPoint:_axTextInputView toView:pointCopy];
    v68.x = v7;
    v68.y = v8;
    pointCopy = v68;
    MEMORY[0x29EDC9740](window);
    v67 = [_accessibilityTextResponder characterRangeAtPoint:{v68.x, v68.y}];
    v66 = [_accessibilityTextResponder textInRange:v67];
    if ([v66 isEqualToString:@"\n"])
    {
      v40 = _accessibilityTextResponder;
      start = [v67 start];
      v65 = [v40 positionFromPosition:? inDirection:? offset:?];
      *&v9 = MEMORY[0x29EDC9740](start).n128_u64[0];
      v42 = _accessibilityTextResponder;
      v43 = [v67 end];
      v64 = [v42 positionFromPosition:? inDirection:? offset:?];
      *&v10 = MEMORY[0x29EDC9740](v43).n128_u64[0];
      v11 = [_accessibilityTextResponder textRangeFromPosition:v65 toPosition:{v64, v10}];
      v12 = v67;
      v67 = v11;
      MEMORY[0x29EDC9740](v12);
      objc_storeStrong(&v64, 0);
      objc_storeStrong(&v65, 0);
    }

    tokenizer = [_accessibilityTextResponder tokenizer];
    start2 = [v67 start];
    v62 = [tokenizer positionFromPosition:? toBoundary:? inDirection:?];
    *&v13 = MEMORY[0x29EDC9740](start2).n128_u64[0];
    v38 = [v67 end];
    v61 = [tokenizer positionFromPosition:? toBoundary:? inDirection:?];
    v14 = MEMORY[0x29EDC9740](v38).n128_u64[0];
    v59 = 0;
    v39 = 1;
    if (v61)
    {
      v36 = _accessibilityTextResponder;
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
      v34 = _accessibilityTextResponder;
      start3 = [v67 start];
      v57 = 1;
      v35 = [v34 comparePosition:? toPosition:?] == -1;
    }

    if (v57)
    {
      v14 = MEMORY[0x29EDC9740](start3).n128_u64[0];
    }

    if (v35)
    {
      start4 = [v67 start];
      v18 = v62;
      v62 = start4;
      v14 = MEMORY[0x29EDC9740](v18).n128_u64[0];
    }

    v56 = [_accessibilityTextResponder textRangeFromPosition:v62 toPosition:{v61, *&v14}];
    if (!v56)
    {
      start5 = [v67 start];
      v56 = [tokenizer rangeEnclosingPosition:? withGranularity:? inDirection:?];
      MEMORY[0x29EDC9740](0);
      MEMORY[0x29EDC9740](start5);
    }

    _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityBeginningOfDocument = [_accessibilityTextResponder4 _accessibilityBeginningOfDocument];
    start6 = [v56 start];
    v52 = 0;
    v50 = 0;
    v48 = 0;
    if (start6)
    {
      start7 = [v56 start];
      v52 = 1;
      v30 = start7;
    }

    else
    {
      _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v50 = 1;
      _accessibilityEndOfDocument = [_accessibilityTextResponder5 _accessibilityEndOfDocument];
      v48 = 1;
      v30 = _accessibilityEndOfDocument;
    }

    v54 = MEMORY[0x29EDC9748](v30);
    if (v48)
    {
      MEMORY[0x29EDC9740](_accessibilityEndOfDocument);
    }

    if (v50)
    {
      MEMORY[0x29EDC9740](_accessibilityTextResponder5);
    }

    if (v52)
    {
      MEMORY[0x29EDC9740](start7);
    }

    *&v19 = MEMORY[0x29EDC9740](start6).n128_u64[0];
    _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v26 = [_accessibilityTextResponder6 _accessibilityOffsetFromPosition:_accessibilityBeginningOfDocument toPosition:v54];
    *&v20 = MEMORY[0x29EDC9740](_accessibilityTextResponder6).n128_u64[0];
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
    objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
    objc_storeStrong(&v56, 0);
    objc_storeStrong(&v61, 0);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&tokenizer, 0);
    objc_storeStrong(&v66, 0);
    objc_storeStrong(&v67, 0);
    objc_storeStrong(&_axTextInputView, 0);
  }

  else
  {
    v71.receiver = selfCopy;
    v71.super_class = UITextInputUIResponderAccessibility;
    v76 = [(UITextInputUIResponderAccessibility *)&v71 _accessibilityLineNumberAndColumnForPoint:pointCopy.x, pointCopy.y];
    v70 = 1;
  }

  objc_storeStrong(&_accessibilityTextResponder, 0);
  objc_storeStrong(v73, 0);
  v23 = v76;

  return v23;
}

- (_NSRange)_accessibilityRangeForLineNumberAndColumn:(id)column
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, column);
  v44 = 0x7FFFFFFFLL;
  v43 = 0;
  v45 = 0x7FFFFFFFLL;
  v46 = 0;
  v41 = 0x7FFFFFFFLL;
  v42 = 0;
  v27 = [location[0] objectForKey:@"lineColumn"];
  integerValue = [v27 integerValue];
  *&v3 = MEMORY[0x29EDC9740](v27).n128_u64[0];
  if (integerValue)
  {
    goto LABEL_26;
  }

  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v26 = [_accessibilityTextResponder conformsToProtocol:&unk_2A23BD4B8];
  *&v4 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if ((v26 & 1) == 0)
  {
    v38 = 1;
    goto LABEL_27;
  }

  _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v22 = [location[0] objectForKey:@"lineNumber"];
  integerValue2 = [v22 integerValue];
  *&v5 = MEMORY[0x29EDC9740](v22).n128_u64[0];
  v36[1] = integerValue2;
  _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v36[0] = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
  v35 = [_accessibilityTextResponder2 positionFromPosition:v36[0] inDirection:2 offset:{integerValue2, MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_f64[0]}];
  if (!v35)
  {
    objc_storeStrong(&v35, v36[0]);
  }

  if (v35)
  {
    tokenizer = [_accessibilityTextResponder2 tokenizer];
    v33 = [tokenizer positionFromPosition:v35 toBoundary:4 inDirection:0];
    if (!v33)
    {
      objc_storeStrong(&v33, v36[0]);
    }

    if (([tokenizer isPosition:v33 withinTextUnit:0 inDirection:1] & 1) == 0)
    {
      v32 = [tokenizer positionFromPosition:v33 toBoundary:0 inDirection:?];
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
        v6 = [_accessibilityTextResponder2 textRangeFromPosition:v35 toPosition:v33];
        v7 = v31;
        v31 = v6;
        MEMORY[0x29EDC9740](v7);
      }
    }

    if (v31)
    {
      _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v16 = v36[0];
      start = [v31 start];
      v30 = [_accessibilityTextResponder4 _accessibilityOffsetFromPosition:v16 toPosition:?];
      MEMORY[0x29EDC9740](start);
      *&v8 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
      _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v19 = v36[0];
      v20 = [v31 end];
      v29 = [_accessibilityTextResponder5 _accessibilityOffsetFromPosition:v19 toPosition:?];
      MEMORY[0x29EDC9740](v20);
      MEMORY[0x29EDC9740](_accessibilityTextResponder5);
    }

    else
    {
      _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v30 = [_accessibilityTextResponder6 _accessibilityOffsetFromPosition:v36[0] toPosition:v36[0]];
      *&v9 = MEMORY[0x29EDC9740](_accessibilityTextResponder6).n128_u64[0];
      _accessibilityTextResponder7 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v13 = v36[0];
      _accessibilityEndOfDocument = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityEndOfDocument];
      v29 = [_accessibilityTextResponder7 _accessibilityOffsetFromPosition:v13 toPosition:?];
      MEMORY[0x29EDC9740](_accessibilityEndOfDocument);
      MEMORY[0x29EDC9740](_accessibilityTextResponder7);
    }

    v41 = v30;
    v42 = v29 - v30;
    objc_storeStrong(&v31, 0);
    objc_storeStrong(&v33, 0);
    objc_storeStrong(&tokenizer, 0);
    v38 = 0;
  }

  else
  {
    v38 = 1;
  }

  objc_storeStrong(&v35, 0);
  objc_storeStrong(v36, 0);
  objc_storeStrong(&_accessibilityTextResponder2, 0);
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

- (CGRect)_accessibilityBoundsForRange:(_NSRange)range
{
  v58 = *MEMORY[0x29EDCA608];
  rangeCopy = range;
  selfCopy = self;
  v52 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    if (rangeCopy.location == 0x7FFFFFFF || rangeCopy.location == 0x7FFFFFFFFFFFFFFFLL)
    {
      v55 = *MEMORY[0x29EDB90E0];
      v56 = *(MEMORY[0x29EDB90E0] + 16);
    }

    else
    {
      _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityBeginningOfDocument = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
      _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v48 = [_accessibilityTextResponder4 _accessibilityPositionFromPosition:_accessibilityBeginningOfDocument offset:rangeCopy.location];
      _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v47 = [_accessibilityTextResponder5 _accessibilityPositionFromPosition:v48 offset:rangeCopy.length];
      v46 = [_accessibilityTextResponder2 textRangeFromPosition:v48 toPosition:{v47, MEMORY[0x29EDC9740](_accessibilityTextResponder5).n128_f64[0]}];
      memset(&rect2, 0, sizeof(rect2));
      rect2 = **&MEMORY[0x29EDB90E0];
      if (objc_opt_respondsToSelector())
      {
        location = [_accessibilityTextResponder2 selectionRectsForRange:v46];
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

      _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _axTextInputView = [_accessibilityTextResponder6 _axTextInputView];
      MEMORY[0x29EDC9740](_accessibilityTextResponder6);
      if (!_axTextInputView)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          inputView = [_accessibilityTextResponder2 inputView];
          v17 = _axTextInputView;
          _axTextInputView = inputView;
          MEMORY[0x29EDC9740](v17);
        }
      }

      UIAccessibilityFrameForBounds();
      *&v55 = v18;
      *(&v55 + 1) = v19;
      *&v56 = v20;
      *(&v56 + 1) = v21;
      objc_storeStrong(&_axTextInputView, 0);
      objc_storeStrong(&v46, 0);
      objc_storeStrong(&v47, 0);
      objc_storeStrong(&v48, 0);
      objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
      objc_storeStrong(&_accessibilityTextResponder2, 0);
    }
  }

  else
  {
    v51.receiver = selfCopy;
    v51.super_class = UITextInputUIResponderAccessibility;
    [(UITextInputUIResponderAccessibility *)&v51 _accessibilityBoundsForRange:rangeCopy.location, rangeCopy.length, v3];
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

- (void)_accessibilitySetSelectedTextRange:(_NSRange)range
{
  rangeCopy = range;
  selfCopy = self;
  v18 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    if (rangeCopy.location != 0x7FFFFFFF)
    {
      v16 = 0;
      if (AXIsDictationListening())
      {
        AXHandleUserInteractionForDictation(1);
        v16 = 1;
      }

      _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilityBeginningOfDocument = [_accessibilityTextResponder3 _accessibilityBeginningOfDocument];
      _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v13 = [_accessibilityTextResponder4 _accessibilityPositionFromPosition:_accessibilityBeginningOfDocument offset:rangeCopy.location];
      _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v12 = [_accessibilityTextResponder5 _accessibilityPositionFromPosition:v13 offset:rangeCopy.length];
      location = [_accessibilityTextResponder2 textRangeFromPosition:v13 toPosition:{v12, MEMORY[0x29EDC9740](_accessibilityTextResponder5).n128_f64[0]}];
      v8 = MEMORY[0x29EDC74D0];
      MEMORY[0x29ED3DFA0](*MEMORY[0x29EDC74D0]);
      [_accessibilityTextResponder2 setSelectedTextRange:location];
      MEMORY[0x29ED3DFA0](0);
      _accessibilityResponderElementForFocus = [*MEMORY[0x29EDC8008] _accessibilityResponderElementForFocus];
      _UIAccessibilitySetAssociatedElementContextForNextNotification();
      MEMORY[0x29EDC9740](_accessibilityResponderElementForFocus);
      UIAccessibilityPostNotification(*v8, 0);
      if (v16)
      {
        AXHandleUserInteractionForDictation(0);
      }

      objc_storeStrong(&location, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
      objc_storeStrong(&_accessibilityTextResponder2, 0);
    }
  }

  else
  {
    v17.receiver = selfCopy;
    v17.super_class = UITextInputUIResponderAccessibility;
    [(UITextInputUIResponderAccessibility *)&v17 _accessibilitySetSelectedTextRange:rangeCopy.location, rangeCopy.length, v3];
  }
}

- (id)_accessibilityTextViewTextOperationResponder
{
  selfCopy = self;
  v8 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      _accessibilityTextResponder2 = MEMORY[0x29EDC9748](selfCopy);
    }

    else
    {
      v7.receiver = selfCopy;
      v7.super_class = UITextInputUIResponderAccessibility;
      _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)&v7 _accessibilityTextViewTextOperationResponder];
    }
  }

  v3 = _accessibilityTextResponder2;

  return v3;
}

- (_NSRange)_accessibilitySelectedTextRange
{
  selfCopy = self;
  v13 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    location = [_accessibilityTextResponder2 safeValueForKey:@"selectedTextRange"];
    if (location)
    {
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      _accessibilitySelectedTextRange = [_accessibilityTextResponder3 _accessibilityRawRangeForUITextRange:location];
      v16 = v4;
      MEMORY[0x29EDC9740](_accessibilityTextResponder3);
    }

    else
    {
      v18 = 0x7FFFFFFFLL;
      v17 = 0;
      v19 = 0x7FFFFFFFLL;
      v20 = 0;
      _accessibilitySelectedTextRange = 0x7FFFFFFFLL;
      v16 = 0;
    }

    objc_storeStrong(&location, 0);
    objc_storeStrong(&_accessibilityTextResponder2, 0);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = UITextInputUIResponderAccessibility;
    _accessibilitySelectedTextRange = [(UITextInputUIResponderAccessibility *)&v12 _accessibilitySelectedTextRange];
    v16 = v3;
  }

  v5 = _accessibilitySelectedTextRange;
  v6 = v16;
  result.length = v6;
  result.location = v5;
  return result;
}

- (id)_accessibilityTextRangeFromNSRange:(_NSRange)range
{
  rangeCopy = range;
  selfCopy = self;
  v13 = a2;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    beginningOfDocument = [_accessibilityTextResponder2 beginningOfDocument];
    v9 = [_accessibilityTextResponder2 positionFromPosition:beginningOfDocument offset:rangeCopy.location];
    v8 = [_accessibilityTextResponder2 positionFromPosition:v9 offset:rangeCopy.length];
    v16 = [_accessibilityTextResponder2 textRangeFromPosition:v9 toPosition:v8];
    objc_storeStrong(&v8, 0);
    objc_storeStrong(&v9, 0);
    objc_storeStrong(&beginningOfDocument, 0);
    objc_storeStrong(&_accessibilityTextResponder2, 0);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = UITextInputUIResponderAccessibility;
    v16 = [(UITextInputUIResponderAccessibility *)&v12 _accessibilityTextRangeFromNSRange:rangeCopy.location, rangeCopy.length, v3];
  }

  v4 = v16;

  return v4;
}

- (_NSRange)_accessibilityRawRangeForUITextRange:(id)range
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, range);
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityBeginningOfDocument = [_accessibilityTextResponder2 _accessibilityBeginningOfDocument];
    *&v5 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
    _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v10 = _accessibilityBeginningOfDocument;
    start = [location[0] start];
    v13 = [_accessibilityTextResponder3 _accessibilityOffsetFromPosition:v10 toPosition:?];
    MEMORY[0x29EDC9740](start);
    *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
    _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v14 = _accessibilityBeginningOfDocument;
    v15 = [location[0] end];
    v17 = [_accessibilityTextResponder4 _accessibilityOffsetFromPosition:v14 toPosition:?];
    MEMORY[0x29EDC9740](v15);
    MEMORY[0x29EDC9740](_accessibilityTextResponder4);
    v28 = v13;
    v27 = v17 - v13;
    v29 = v13;
    v30 = v17 - v13;
    v25 = v13;
    v26 = v17 - v13;
    v21 = 1;
    objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
  }

  else
  {
    v22.receiver = selfCopy;
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
  selfCopy = self;
  v11 = a2;
  v9.receiver = self;
  v9.super_class = UITextInputUIResponderAccessibility;
  accessibilityTraits = [(UITextInputUIResponderAccessibility *)&v9 accessibilityTraits];
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if ((__accessibilityRespondsToTextInput & 1) == 0)
  {
    return accessibilityTraits;
  }

  accessibilityTraits |= *MEMORY[0x29EDC7598] | *MEMORY[0x29EDC75A0] | *MEMORY[0x29EDBDC00];
  _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v4 = [_accessibilityTextResponder2 safeValueForKey:@"isFirstResponder"];
  bOOLValue = [v4 BOOLValue];
  MEMORY[0x29EDC9740](v4);
  MEMORY[0x29EDC9740](_accessibilityTextResponder2);
  if (bOOLValue)
  {
    accessibilityTraits |= *MEMORY[0x29EDC7528];
  }

  return accessibilityTraits;
}

- (id)_accessibilitySpeakThisString
{
  selfCopy = self;
  v13[1] = a2;
  v13[0] = 0;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityAXAttributedValue = [_accessibilityTextResponder2 _accessibilityAXAttributedValue];
    v4 = v13[0];
    v13[0] = _accessibilityAXAttributedValue;
    MEMORY[0x29EDC9740](v4);
    MEMORY[0x29EDC9740](_accessibilityTextResponder2);
  }

  else
  {
    v12.receiver = selfCopy;
    v12.super_class = UITextInputUIResponderAccessibility;
    _accessibilitySpeakThisString = [(UITextInputUIResponderAccessibility *)&v12 _accessibilitySpeakThisString];
    v6 = v13[0];
    v13[0] = _accessibilitySpeakThisString;
    MEMORY[0x29EDC9740](v6);
  }

  v8 = MEMORY[0x29EDC9748](v13[0]);
  objc_storeStrong(v13, 0);

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range string:(id)string wantsSentences:(BOOL)sentences
{
  rangeCopy = range;
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, string);
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v8 = [_accessibilityTextResponder _accessibilityTextRectsForSpeakThisStringRange:rangeCopy.location wantsSentences:{rangeCopy.length, sentences}];
  MEMORY[0x29EDC9740](_accessibilityTextResponder);
  objc_storeStrong(location, 0);

  return v8;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range
{
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  v5 = [_accessibilityTextResponder _accessibilityTextRectsForSpeakThisStringRange:range.location wantsSentences:{range.length, 0}];
  MEMORY[0x29EDC9740](_accessibilityTextResponder);

  return v5;
}

- (id)_accessibilityTextRectsForSpeakThisStringRange:(_NSRange)range wantsSentences:(BOOL)sentences
{
  v87 = *MEMORY[0x29EDCA608];
  rangeCopy = range;
  selfCopy = self;
  v81 = a2;
  sentencesCopy = sentences;
  v79 = 0;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v4 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    location = 0;
    v77 = 0;
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *&v5 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
    if (isKindOfClass)
    {
      objc_storeStrong(&location, selfCopy);
      if (![location isSelectable])
      {
        [location setSelectable:1];
        v77 = 1;
      }
    }

    _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityBeginningOfDocument = [_accessibilityTextResponder5 _accessibilityBeginningOfDocument];
    v75 = [_accessibilityTextResponder4 _accessibilityPositionFromPosition:? offset:?];
    MEMORY[0x29EDC9740](_accessibilityBeginningOfDocument);
    MEMORY[0x29EDC9740](_accessibilityTextResponder5);
    *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
    _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityTextResponder7 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityBeginningOfDocument2 = [_accessibilityTextResponder7 _accessibilityBeginningOfDocument];
    v84 = rangeCopy;
    v74 = [_accessibilityTextResponder6 _accessibilityPositionFromPosition:? offset:?];
    MEMORY[0x29EDC9740](_accessibilityBeginningOfDocument2);
    MEMORY[0x29EDC9740](_accessibilityTextResponder7);
    v73 = [_accessibilityTextResponder3 textRangeFromPosition:v75 toPosition:{v74, MEMORY[0x29EDC9740](_accessibilityTextResponder6).n128_f64[0]}];
    _accessibilityTextResponder8 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _axTextInputView = [_accessibilityTextResponder8 _axTextInputView];
    v7 = MEMORY[0x29EDC9740](_accessibilityTextResponder8).n128_u64[0];
    if (!_axTextInputView)
    {
      _accessibilityTextResponder9 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      objc_opt_class();
      v47 = objc_opt_isKindOfClass();
      v7 = MEMORY[0x29EDC9740](_accessibilityTextResponder9).n128_u64[0];
      if (v47)
      {
        _accessibilityTextResponder10 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        inputView = [_accessibilityTextResponder10 inputView];
        v9 = _axTextInputView;
        _axTextInputView = inputView;
        MEMORY[0x29EDC9740](v9);
        v7 = MEMORY[0x29EDC9740](_accessibilityTextResponder10).n128_u64[0];
      }
    }

    v71 = 0;
    if (sentencesCopy)
    {
      _accessibilityTextResponder11 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v10 = [_accessibilityTextResponder11 _accessibilitySentenceRectsForRange:v73];
      v11 = v71;
      v71 = v10;
      MEMORY[0x29EDC9740](v11);
      MEMORY[0x29EDC9740](_accessibilityTextResponder11);
    }

    else
    {
      _accessibilityTextResponder12 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v12 = [_accessibilityTextResponder12 _accessibilityTextRectsForRange:v73 singleTextRect:0];
      v13 = v71;
      v71 = v12;
      MEMORY[0x29EDC9740](v13);
      MEMORY[0x29EDC9740](_accessibilityTextResponder12);
    }

    oslog = AXLogSpeakScreen();
    type = OS_LOG_TYPE_INFO;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_66(v86, v73, _axTextInputView, v71);
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
        if (_axTextInputView)
        {
          [_axTextInputView convertRect:0 toView:{v64, v65}];
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
    objc_storeStrong(&_axTextInputView, 0);
    objc_storeStrong(&v73, 0);
    objc_storeStrong(&v74, 0);
    objc_storeStrong(&v75, 0);
    objc_storeStrong(&_accessibilityTextResponder3, 0);
    objc_storeStrong(&location, 0);
  }

  else
  {
    _accessibilityTextResponder13 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v34 = [_accessibilityTextResponder13 _accessibilityBoolValueForKey:@"AXInSpeakThisTextRectsOverride"];
    *&v23 = MEMORY[0x29EDC9740](_accessibilityTextResponder13).n128_u64[0];
    if (v34)
    {
      v59.receiver = selfCopy;
      v59.super_class = UITextInputUIResponderAccessibility;
      v24 = [(UITextInputUIResponderAccessibility *)&v59 _accessibilityTextRectsForSpeakThisStringRange:rangeCopy.location, rangeCopy.length, v23];
      v25 = v79;
      v79 = v24;
      MEMORY[0x29EDC9740](v25);
    }

    else
    {
      _accessibilityTextResponder14 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      [_accessibilityTextResponder14 _accessibilitySetBoolValue:1 forKey:?];
      _accessibilityTextResponder15 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v26 = [_accessibilityTextResponder15 _accessibilityTextRectsForSpeakThisStringRange:{rangeCopy.location, rangeCopy.length}];
      v27 = v79;
      v79 = v26;
      MEMORY[0x29EDC9740](v27);
      _accessibilityTextResponder16 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      [_accessibilityTextResponder16 _accessibilitySetBoolValue:0 forKey:@"AXInSpeakThisTextRectsOverride"];
      MEMORY[0x29EDC9740](_accessibilityTextResponder16);
    }
  }

  v29 = MEMORY[0x29EDC9748](v79);
  objc_storeStrong(&v79, 0);

  return v29;
}

- (BOOL)_accessibilityInsertTextWithAlternatives:(id)alternatives
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, alternatives);
  v65 = 0;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    v25 = objc_opt_respondsToSelector();
    *&v4 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
    if (v25)
    {
      array = [MEMORY[0x29EDB8DE8] array];
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
      v57 = MEMORY[0x29EDC9748](array);
      v58[0] = MEMORY[0x29EDC9748](location[0]);
      [v23 enumerateAttributesUsingBlock:&v52];
      v22 = v60[3];
      if (v22 < [location[0] length])
      {
        v21 = array;
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

      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      [_accessibilityTextResponder3 insertDictationResult:array];
      MEMORY[0x29EDC9740](_accessibilityTextResponder3);
      v65 = 1;
      objc_storeStrong(v58, 0);
      objc_storeStrong(&v57, 0);
      _Block_object_dispose(&v59, 8);
      objc_storeStrong(&array, 0);
    }

    else
    {
      _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v19 = objc_opt_respondsToSelector();
      *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
      if (v19)
      {
        string = [location[0] string];
        v36 = 1;
        _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        v17 = objc_opt_respondsToSelector();
        *&v7 = MEMORY[0x29EDC9740](_accessibilityTextResponder5).n128_u64[0];
        if (v17)
        {
          _accessibilityTextResponder6 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
          mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
          delegate = [mEMORY[0x29EDC7B08] delegate];
          v15 = [_accessibilityTextResponder6 keyboardInput:? shouldInsertText:? isMarkedText:?];
          MEMORY[0x29EDC9740](delegate);
          MEMORY[0x29EDC9740](mEMORY[0x29EDC7B08]);
          MEMORY[0x29EDC9740](_accessibilityTextResponder6);
          v36 = (v15 & 1) != 0;
        }

        if (v36)
        {
          v35 = [objc_alloc(MEMORY[0x29EDBA038]) initWithString:string];
          v10 = location[0];
          v28 = MEMORY[0x29EDCA5F8];
          v29 = -1073741824;
          v30 = 0;
          v31 = __80__UITextInputUIResponderAccessibility__accessibilityInsertTextWithAlternatives___block_invoke_4;
          v32 = &unk_29F30DEE0;
          v33 = MEMORY[0x29EDC9748](location[0]);
          v34 = MEMORY[0x29EDC9748](v35);
          [v10 enumerateAttributesUsingBlock:&v28];
          _accessibilityTextResponder7 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
          [_accessibilityTextResponder7 _insertAttributedTextWithoutClosingTyping:v35];
          MEMORY[0x29EDC9740](_accessibilityTextResponder7);
          objc_storeStrong(&v34, 0);
          objc_storeStrong(&v33, 0);
          objc_storeStrong(&v35, 0);
        }

        v65 = 1;
        objc_storeStrong(&string, 0);
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

- (id)_accessibilityAlternativesForTextAtPosition:(unint64_t)position
{
  selfCopy = self;
  v27 = a2;
  positionCopy = position;
  v25 = 0;
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  __accessibilityRespondsToTextInput = [_accessibilityTextResponder __accessibilityRespondsToTextInput];
  *&v3 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
  if (__accessibilityRespondsToTextInput)
  {
    v24 = 0;
    _accessibilityTextResponder2 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    _accessibilityBeginningOfDocument = [_accessibilityTextResponder2 _accessibilityBeginningOfDocument];
    *&v4 = MEMORY[0x29EDC9740](_accessibilityTextResponder2).n128_u64[0];
    if (_accessibilityBeginningOfDocument)
    {
      _accessibilityTextResponder3 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
      v22 = [_accessibilityTextResponder3 _accessibilityPositionFromPosition:_accessibilityBeginningOfDocument offset:positionCopy];
      *&v5 = MEMORY[0x29EDC9740](_accessibilityTextResponder3).n128_u64[0];
      if (v22)
      {
        _accessibilityTextResponder4 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
        v15 = objc_opt_respondsToSelector();
        *&v6 = MEMORY[0x29EDC9740](_accessibilityTextResponder4).n128_u64[0];
        if (v15)
        {
          _accessibilityTextResponder5 = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
          v20 = v24;
          v12 = [_accessibilityTextResponder5 rangeWithTextAlternatives:&v20 atPosition:v22];
          objc_storeStrong(&v24, v20);
          v21 = v12;
          *&v7 = MEMORY[0x29EDC9740](_accessibilityTextResponder5).n128_u64[0];
          if (v21)
          {
            alternativeStrings = [v24 alternativeStrings];
            v9 = v25;
            v25 = alternativeStrings;
            MEMORY[0x29EDC9740](v9);
          }

          objc_storeStrong(&v21, 0);
        }
      }

      objc_storeStrong(&v22, 0);
    }

    objc_storeStrong(&_accessibilityBeginningOfDocument, 0);
    objc_storeStrong(&v24, 0);
  }

  v11 = MEMORY[0x29EDC9748](v25);
  objc_storeStrong(&v25, 0);

  return v11;
}

- (BOOL)_accessibilityHandlesTabKey
{
  selfCopy = self;
  v37 = a2;
  v35.receiver = self;
  v35.super_class = UITextInputUIResponderAccessibility;
  _accessibilityHandlesTabKey = [(UITextInputUIResponderAccessibility *)&v35 _accessibilityHandlesTabKey];
  if (_accessibilityHandlesTabKey)
  {
    mEMORY[0x29EDC7B08] = [MEMORY[0x29EDC7B08] sharedInstance];
    textInputTraits = [mEMORY[0x29EDC7B08] textInputTraits];
    isSingleLineDocument = [textInputTraits isSingleLineDocument];
    *&v2 = MEMORY[0x29EDC9740](textInputTraits).n128_u64[0];
    if (isSingleLineDocument)
    {
      v9 = [mEMORY[0x29EDC7B08] safeValueForKey:{@"keyboardStateManager", v2}];
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
        v8 = [mEMORY[0x29EDC7B08] safeValueForKey:@"inputManagerState"];
        v17 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v8);
        v16 = MEMORY[0x29EDC9748](v17);
        objc_storeStrong(&v17, 0);
        v5 = v16;
        keyboardBehaviors = [v16 keyboardBehaviors];
        v15 = 0;
        objc_opt_class();
        v7 = [mEMORY[0x29EDC7B08] safeValueForKey:@"_keyboardBehaviorState"];
        v14 = __UIAccessibilityCastAsClass();
        MEMORY[0x29EDC9740](v7);
        v13 = MEMORY[0x29EDC9748](v14);
        objc_storeStrong(&v14, 0);
        v19 = [keyboardBehaviors keyBehaviorsForState:?];
        MEMORY[0x29EDC9740](v13);
        MEMORY[0x29EDC9740](keyboardBehaviors);
        *&v3 = MEMORY[0x29EDC9740](v5).n128_u64[0];
        tabKeyBehavior = [v19 tabKeyBehavior];
        if (tabKeyBehavior != 4 && tabKeyBehavior != 3)
        {
          _accessibilityHandlesTabKey = 0;
        }

        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v33, 0);
    }

    objc_storeStrong(&mEMORY[0x29EDC7B08], 0);
  }

  return _accessibilityHandlesTabKey & 1;
}

uint64_t __66__UITextInputUIResponderAccessibility__accessibilityHandlesTabKey__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) hasCandidateInForwardDirection:1 granularity:3];
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

- (int64_t)_accessibilityOffsetFromPosition:(id)position toPosition:(id)toPosition
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, position);
  v8 = 0;
  objc_storeStrong(&v8, toPosition);
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v7 = [_accessibilityTextResponder offsetFromPosition:location[0] toPosition:v8];
  MEMORY[0x29EDC9740](_accessibilityTextResponder);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (id)_accessibilityPositionFromPosition:(id)position offset:(int64_t)offset
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, position);
  if (offset < 0)
  {
    _AXAssert();
  }

  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
  v6 = [_accessibilityTextResponder positionFromPosition:location[0] offset:offset];
  MEMORY[0x29EDC9740](_accessibilityTextResponder);
  objc_storeStrong(location, 0);

  return v6;
}

- (id)_accessibilityBeginningOfDocument
{
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  beginningOfDocument = [_accessibilityTextResponder beginningOfDocument];
  MEMORY[0x29EDC9740](_accessibilityTextResponder);

  return beginningOfDocument;
}

- (id)_accessibilityEndOfDocument
{
  _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)self _accessibilityTextResponder];
  endOfDocument = [_accessibilityTextResponder endOfDocument];
  MEMORY[0x29EDC9740](_accessibilityTextResponder);

  return endOfDocument;
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v6 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityBoolValueForKey:@"_AX_becomeFirstResponder"];
  if (v5)
  {
    return 0;
  }

  [(UITextInputUIResponderAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
  v3.receiver = selfCopy;
  v3.super_class = UITextInputUIResponderAccessibility;
  becomeFirstResponder = [(UITextInputUIResponderAccessibility *)&v3 becomeFirstResponder];
  [(UITextInputUIResponderAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"_AX_becomeFirstResponder"];
  if ((becomeFirstResponder & 1) != 0 && [selfCopy __accessibilityRespondsToTextInput])
  {
    [(UITextInputUIResponderAccessibility *)selfCopy _axResetFKAFocusToFirstResponder];
  }

  return becomeFirstResponder & 1;
}

- (void)_axResetFKAFocusToFirstResponder
{
  if (self)
  {
    [(UITextInputUIResponderAccessibility *)self _axDrawFocusRingAroundFirstResponderAndMoveFocus:?];
  }
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v6 = a2;
  v5 = [(UITextInputUIResponderAccessibility *)self _accessibilityBoolValueForKey:@"_AX_resignFirstResponder"];
  if (v5)
  {
    return 0;
  }

  [(UITextInputUIResponderAccessibility *)selfCopy _accessibilitySetBoolValue:1 forKey:?];
  v3.receiver = selfCopy;
  v3.super_class = UITextInputUIResponderAccessibility;
  resignFirstResponder = [(UITextInputUIResponderAccessibility *)&v3 resignFirstResponder];
  [(UITextInputUIResponderAccessibility *)selfCopy _accessibilitySetBoolValue:0 forKey:@"_AX_resignFirstResponder"];
  if ((resignFirstResponder & 1) != 0 && [selfCopy __accessibilityRespondsToTextInput]&& [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityIsFKARunningForFocusItem])
  {
    AXPerformBlockAsynchronouslyOnMainThread();
  }

  return resignFirstResponder & 1;
}

- (void)_axDrawFocusRingAroundFirstResponderAndMoveFocus:(void *)focus
{
  focusCopy = focus;
  v10 = a2;
  if (focus)
  {
    v8 = 0;
    LOBYTE(v3) = 1;
    if ((AXProcessIsFullKeyboardAccess() & 1) == 0)
    {
      _accessibilityTextResponder = [focusCopy _accessibilityTextResponder];
      v8 = 1;
      v3 = [_accessibilityTextResponder __accessibilityRespondsToTextInput] ^ 1;
    }

    if (v8)
    {
      MEMORY[0x29EDC9740](_accessibilityTextResponder);
    }

    if ((v3 & 1) == 0)
    {
      _accessibilityTextResponder2 = [focusCopy _accessibilityTextResponder];
      _accessibilityFocusItemForResponder = [_accessibilityTextResponder2 _accessibilityFocusItemForResponder];
      if ([focusCopy _accessibilityIsFKARunningForFocusItem] & 1) != 0 && (objc_msgSend(_accessibilityFocusItemForResponder, "conformsToProtocol:", &unk_2A2390730))
      {
        v6 = v10 & 1;
        v4 = MEMORY[0x29EDC9748](_accessibilityFocusItemForResponder);
        v5 = MEMORY[0x29EDC9748](focusCopy);
        AXPerformBlockAsynchronouslyOnMainThread();
        objc_storeStrong(&v5, 0);
        objc_storeStrong(&v4, 0);
      }

      objc_storeStrong(&_accessibilityFocusItemForResponder, 0);
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
    textInputView = [v7[0] textInputView];
    v3 = v6;
    v6 = textInputView;
    MEMORY[0x29EDC9740](v3);
  }

  v5 = MEMORY[0x29EDC9748](v6);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);

  return v5;
}

- (BOOL)_accessibilityIsFKARunningForFocusItem
{
  selfCopy = self;
  v13 = a2;
  v12.receiver = self;
  v12.super_class = UITextInputUIResponderAccessibility;
  if ([(UITextInputUIResponderAccessibility *)&v12 _accessibilityIsFKARunningForFocusItem])
  {
    v15 = 1;
  }

  else
  {
    _accessibilityTextResponder = [(UITextInputUIResponderAccessibility *)selfCopy _accessibilityTextResponder];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    *&v2 = MEMORY[0x29EDC9740](_accessibilityTextResponder).n128_u64[0];
    if ((isKindOfClass & 1) == 0 || ((v6 = -[UITextInputUIResponderAccessibility _accessibilityTextResponder](selfCopy, "_accessibilityTextResponder", v2), location = [v6 nextResponder], *&v3 = MEMORY[0x29EDC9740](v6).n128_u64[0], v7 = -[UITextInputUIResponderAccessibility _accessibilityTextResponder](selfCopy, "_accessibilityTextResponder", v3), *&v4 = MEMORY[0x29EDC9740](v7).n128_u64[0], location == v7) ? (v10 = 0) : (v15 = objc_msgSend(location, "_accessibilityIsFKARunningForFocusItem", v4) & 1, v10 = 1), objc_storeStrong(&location, 0), !v10))
    {
      v15 = 0;
    }
  }

  return v15 & 1;
}

@end