@interface NSObject_QSSupport
- (BOOL)_accessibilityIsTextInput;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilityQuickSpeakEnclosingSentence:(id *)sentence;
- (id)_accessibilitySentenceRectsForRange:(id)range;
- (id)_accessibilityTextRectsForRange:(id)range singleTextRect:(CGRect *)rect;
- (id)_accessibilityUITextInput;
- (void)_accessibilityQuickSpeakContent;
@end

@implementation NSObject_QSSupport

- (BOOL)_accessibilityIsTextInput
{
  if (objc_opt_respondsToSelector())
  {
    v2 = objc_opt_respondsToSelector();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)_accessibilityUITextInput
{
  if ([(NSObject_QSSupport *)self _accessibilityIsTextInput])
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  if ([(NSObject_QSSupport *)self _accessibilityIsTextInteraction])
  {
    v4 = [(NSObject_QSSupport *)self safeValueForKey:@"_textInput"];

    selfCopy = v4;
  }

  return selfCopy;
}

- (id)_accessibilityQuickSpeakEnclosingSentence:(id *)sentence
{
  _accessibilityUITextInput = [(NSObject_QSSupport *)self _accessibilityUITextInput];
  v6 = _accessibilityUITextInput;
  if (_accessibilityUITextInput)
  {
    selectedTextRange = [_accessibilityUITextInput selectedTextRange];
    v8 = [(NSObject_QSSupport *)self safeValueForKey:@"_accessibilityQuickSpeakTokenizer"];
    v9 = AXUISentenceTextRangeForInput(v6, selectedTextRange, v8);
    v10 = v9;
    if (v9)
    {
      if (sentence)
      {
        v11 = v9;
        *sentence = v10;
      }

      v12 = [v6 textInRange:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_8;
      }
    }

    v12 = 0;
LABEL_8:

    goto LABEL_10;
  }

  v12 = 0;
LABEL_10:

  return v12;
}

- (id)_accessibilityQuickSpeakContent
{
  v27 = *MEMORY[0x1E69E9840];
  _accessibilityUITextInput = [(NSObject_QSSupport *)self _accessibilityUITextInput];
  v4 = _accessibilityUITextInput;
  if (_accessibilityUITextInput)
  {
    selectedTextRange = [_accessibilityUITextInput selectedTextRange];
    if (selectedTextRange)
    {
      v6 = [v4 textInRange:selectedTextRange];
      if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {

        goto LABEL_14;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (buf[0] = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 canPerformAction:sel_copy_ withSender:0], v7, v8))
  {
    _accessibilityUseQuickSpeakPasteBoard = [MEMORY[0x1E69DCD50] _accessibilityUseQuickSpeakPasteBoard];
    [MEMORY[0x1E69DCD50] _accessibilitySetUseQuickSpeakPasteBoard:1];
    generalPasteboard = [MEMORY[0x1E69DCD50] generalPasteboard];
    [generalPasteboard setStrings:0];
    v11 = AXLogSpeakSelection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [(NSObject_QSSupport *)v13 _accessibilityQuickSpeakContent:buf];
    }

    [(NSObject_QSSupport *)self performSelector:sel_copy_ withObject:0];
    string = [MEMORY[0x1E696AD60] string];
    strings = [generalPasteboard strings];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __53__NSObject_QSSupport__accessibilityQuickSpeakContent__block_invoke;
    v23 = &unk_1E812E770;
    v24 = string;
    v25 = strings;
    v16 = strings;
    v17 = string;
    [v16 enumerateObjectsUsingBlock:&v20];
    [MEMORY[0x1E69DCD50] _accessibilitySetUseQuickSpeakPasteBoard:{_accessibilityUseQuickSpeakPasteBoard, v20, v21, v22, v23}];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v17 stringByTrimmingCharactersInSet:whitespaceAndNewlineCharacterSet];
  }

  else
  {
    v6 = 0;
  }

LABEL_14:

  return v6;
}

- (id)_accessibilitySentenceRectsForRange:(id)range
{
  rangeCopy = range;
  array = [MEMORY[0x1E695DF70] array];
  v6 = [(NSObject_QSSupport *)self safeValueForKey:@"_accessibilityQuickSpeakTokenizer"];
  selfCopy = self;
  v8 = AXUISentenceTextRangeForInput(selfCopy, rangeCopy, v6);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__NSObject_QSSupport__accessibilitySentenceRectsForRange___block_invoke;
  aBlock[3] = &unk_1E812E798;
  v9 = selfCopy;
  v22 = v9;
  v10 = v8;
  v23 = v10;
  v11 = _Block_copy(aBlock);
  start = [v10 start];
  v13 = [(NSObject_QSSupport *)v9 positionFromPosition:start offset:1];
  if (v13)
  {
    v14 = v13;
    while (v11[2](v11, v14))
    {
      v15 = [(NSObject_QSSupport *)v9 textRangeFromPosition:start toPosition:v14];
      v19 = 0u;
      v20 = 0u;
      v16 = [(NSObject_QSSupport *)v9 _accessibilityTextRectsForRange:v15 singleTextRect:&v19];
      if (*&v20 > 0.0)
      {
        QSUnionRectsWithRect(array, *&v19, *(&v19 + 1), *&v20, *(&v20 + 1));
      }

      v17 = v14;

      v14 = [(NSObject_QSSupport *)v9 positionFromPosition:v17 offset:1];

      start = v17;
      if (!v14)
      {
        start = v17;
        break;
      }
    }
  }

  return array;
}

- (id)_accessibilityTextRectsForRange:(id)range singleTextRect:(CGRect *)rect
{
  v59 = *MEMORY[0x1E69E9840];
  rangeCopy = range;
  if (![(NSObject_QSSupport *)self _accessibilityIsTextInput])
  {
    goto LABEL_6;
  }

  selfCopy = self;
  start = [rangeCopy start];
  v9 = [rangeCopy end];
  v10 = [(NSObject_QSSupport *)selfCopy offsetFromPosition:start toPosition:v9];

  if (!v10)
  {

LABEL_6:
    v12 = 0;
    goto LABEL_33;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(NSObject_QSSupport *)selfCopy selectionRectsForRange:rangeCopy];
  }

  else
  {
    v11 = 0;
  }

  v13 = 0x1E695D000;
  if ([v11 count])
  {
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v51 objects:v58 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v52;
      while (2)
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v52 != v17)
          {
            objc_enumerationMutation(v14);
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {

            v13 = 0x1E695D000uLL;
            goto LABEL_26;
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v51 objects:v58 count:16];
        if (v16)
        {
          continue;
        }

        break;
      }
    }

    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v14, "count")}];
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    v19 = v14;
    v20 = [v19 countByEnumeratingWithState:&v47 objects:v57 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v48;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = MEMORY[0x1E696B098];
          [*(*(&v47 + 1) + 8 * j) rect];
          v25 = [v24 valueWithCGRect:?];
          [v12 addObject:v25];
        }

        v21 = [v19 countByEnumeratingWithState:&v47 objects:v57 count:16];
      }

      while (v21);
    }

    firstObject = [v12 firstObject];
    [firstObject CGRectValue];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v13 = 0x1E695D000;
  }

  else
  {
LABEL_26:
    [(NSObject_QSSupport *)selfCopy firstRectForRange:rangeCopy];
    v28 = v35;
    v30 = v36;
    v32 = v37;
    v34 = v38;
    v39 = [MEMORY[0x1E696B098] valueWithRect:?];
    v56 = v39;
    v12 = [*(v13 + 3784) arrayWithObjects:&v56 count:1];
  }

  v61.origin.x = v28;
  v61.origin.y = v30;
  v61.size.width = v32;
  v61.size.height = v34;
  if (CGRectEqualToRect(*MEMORY[0x1E695F058], v61) && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [(NSObject_QSSupport *)selfCopy _accessibilitySpeakRectForRange:rangeCopy];
    v28 = v40;
    v30 = v41;
    v32 = v42;
    v34 = v43;
    v44 = [MEMORY[0x1E696B098] valueWithRect:?];
    v55 = v44;
    v45 = [*(v13 + 3784) arrayWithObjects:&v55 count:1];

    v12 = v45;
  }

  if (rect)
  {
    rect->origin.x = v28;
    rect->origin.y = v30;
    rect->size.width = v32;
    rect->size.height = v34;
  }

LABEL_33:

  return v12;
}

- (void)_accessibilityQuickSpeakContent
{
  *buf = 138412546;
  *(buf + 4) = self;
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C0DFB000, log, OS_LOG_TYPE_DEBUG, "Wil call copy: on %@<%p> for speak selection content", buf, 0x16u);
}

@end