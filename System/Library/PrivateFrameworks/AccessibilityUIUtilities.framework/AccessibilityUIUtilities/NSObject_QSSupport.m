@interface NSObject_QSSupport
- (BOOL)_accessibilityIsTextInput;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilityQuickSpeakEnclosingSentence:(id *)a3;
- (id)_accessibilitySentenceRectsForRange:(id)a3;
- (id)_accessibilityTextRectsForRange:(id)a3 singleTextRect:(CGRect *)a4;
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
    v3 = self;
  }

  else
  {
    v3 = 0;
  }

  if ([(NSObject_QSSupport *)self _accessibilityIsTextInteraction])
  {
    v4 = [(NSObject_QSSupport *)self safeValueForKey:@"_textInput"];

    v3 = v4;
  }

  return v3;
}

- (id)_accessibilityQuickSpeakEnclosingSentence:(id *)a3
{
  v5 = [(NSObject_QSSupport *)self _accessibilityUITextInput];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 selectedTextRange];
    v8 = [(NSObject_QSSupport *)self safeValueForKey:@"_accessibilityQuickSpeakTokenizer"];
    v9 = AXUISentenceTextRangeForInput(v6, v7, v8);
    v10 = v9;
    if (v9)
    {
      if (a3)
      {
        v11 = v9;
        *a3 = v10;
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
  v3 = [(NSObject_QSSupport *)self _accessibilityUITextInput];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 selectedTextRange];
    if (v5)
    {
      v6 = [v4 textInRange:v5];
      if (!v6 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
      {

        goto LABEL_14;
      }
    }
  }

  if ((objc_opt_respondsToSelector() & 1) != 0 && (buf[0] = 0, objc_opt_class(), __UIAccessibilityCastAsClass(), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 canPerformAction:sel_copy_ withSender:0], v7, v8))
  {
    v9 = [MEMORY[0x1E69DCD50] _accessibilityUseQuickSpeakPasteBoard];
    [MEMORY[0x1E69DCD50] _accessibilitySetUseQuickSpeakPasteBoard:1];
    v10 = [MEMORY[0x1E69DCD50] generalPasteboard];
    [v10 setStrings:0];
    v11 = AXLogSpeakSelection();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      [(NSObject_QSSupport *)v13 _accessibilityQuickSpeakContent:buf];
    }

    [(NSObject_QSSupport *)self performSelector:sel_copy_ withObject:0];
    v14 = [MEMORY[0x1E696AD60] string];
    v15 = [v10 strings];
    v20 = MEMORY[0x1E69E9820];
    v21 = 3221225472;
    v22 = __53__NSObject_QSSupport__accessibilityQuickSpeakContent__block_invoke;
    v23 = &unk_1E812E770;
    v24 = v14;
    v25 = v15;
    v16 = v15;
    v17 = v14;
    [v16 enumerateObjectsUsingBlock:&v20];
    [MEMORY[0x1E69DCD50] _accessibilitySetUseQuickSpeakPasteBoard:{v9, v20, v21, v22, v23}];
    v18 = [MEMORY[0x1E696AB08] whitespaceAndNewlineCharacterSet];
    v6 = [v17 stringByTrimmingCharactersInSet:v18];
  }

  else
  {
    v6 = 0;
  }

LABEL_14:

  return v6;
}

- (id)_accessibilitySentenceRectsForRange:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [(NSObject_QSSupport *)self safeValueForKey:@"_accessibilityQuickSpeakTokenizer"];
  v7 = self;
  v8 = AXUISentenceTextRangeForInput(v7, v4, v6);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__NSObject_QSSupport__accessibilitySentenceRectsForRange___block_invoke;
  aBlock[3] = &unk_1E812E798;
  v9 = v7;
  v22 = v9;
  v10 = v8;
  v23 = v10;
  v11 = _Block_copy(aBlock);
  v12 = [v10 start];
  v13 = [(NSObject_QSSupport *)v9 positionFromPosition:v12 offset:1];
  if (v13)
  {
    v14 = v13;
    while (v11[2](v11, v14))
    {
      v15 = [(NSObject_QSSupport *)v9 textRangeFromPosition:v12 toPosition:v14];
      v19 = 0u;
      v20 = 0u;
      v16 = [(NSObject_QSSupport *)v9 _accessibilityTextRectsForRange:v15 singleTextRect:&v19];
      if (*&v20 > 0.0)
      {
        QSUnionRectsWithRect(v5, *&v19, *(&v19 + 1), *&v20, *(&v20 + 1));
      }

      v17 = v14;

      v14 = [(NSObject_QSSupport *)v9 positionFromPosition:v17 offset:1];

      v12 = v17;
      if (!v14)
      {
        v12 = v17;
        break;
      }
    }
  }

  return v5;
}

- (id)_accessibilityTextRectsForRange:(id)a3 singleTextRect:(CGRect *)a4
{
  v59 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (![(NSObject_QSSupport *)self _accessibilityIsTextInput])
  {
    goto LABEL_6;
  }

  v7 = self;
  v8 = [v6 start];
  v9 = [v6 end];
  v10 = [(NSObject_QSSupport *)v7 offsetFromPosition:v8 toPosition:v9];

  if (!v10)
  {

LABEL_6:
    v12 = 0;
    goto LABEL_33;
  }

  if (objc_opt_respondsToSelector())
  {
    v11 = [(NSObject_QSSupport *)v7 selectionRectsForRange:v6];
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

    v26 = [v12 firstObject];
    [v26 CGRectValue];
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;

    v13 = 0x1E695D000;
  }

  else
  {
LABEL_26:
    [(NSObject_QSSupport *)v7 firstRectForRange:v6];
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
    [(NSObject_QSSupport *)v7 _accessibilitySpeakRectForRange:v6];
    v28 = v40;
    v30 = v41;
    v32 = v42;
    v34 = v43;
    v44 = [MEMORY[0x1E696B098] valueWithRect:?];
    v55 = v44;
    v45 = [*(v13 + 3784) arrayWithObjects:&v55 count:1];

    v12 = v45;
  }

  if (a4)
  {
    a4->origin.x = v28;
    a4->origin.y = v30;
    a4->size.width = v32;
    a4->size.height = v34;
  }

LABEL_33:

  return v12;
}

- (void)_accessibilityQuickSpeakContent
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a2;
  _os_log_debug_impl(&dword_1C0DFB000, log, OS_LOG_TYPE_DEBUG, "Wil call copy: on %@<%p> for speak selection content", buf, 0x16u);
}

@end