@interface PKTextInputUITextInputInterface
+ (BOOL)_callShouldChangeTextInRange:(id)a3 replacementText:(id)a4 inTextInput:(id)a5;
+ (BOOL)_callShouldInsertText:(id)a3 inTextInput:(id)a4 isMarkedText:(BOOL)a5;
+ (BOOL)_selectTextRange:(id)a3 inTextInput:(id)a4;
+ (BOOL)configureSelectionStyleForDeletionPreviewInTextInput:(id)a3;
+ (BOOL)configureSelectionStyleForHighlightInTextInput:(id)a3;
+ (BOOL)configureSelectionStyleForNormalSelectionInTextInput:(id)a3;
+ (BOOL)deleteTextInRange:(_NSRange)a3 inTextInput:(id)a4;
+ (BOOL)insertCommittedText:(id)a3 withAlternatives:(id)a4 activePreviewText:(id)a5 replacingRange:(_NSRange)a6 inTextInput:(id)a7;
+ (BOOL)isProtectedTextAttachment:(id)a3;
+ (BOOL)isValidRange:(_NSRange)a3 inTextInput:(id)a4;
+ (BOOL)makeTextInputFirstResponder:(id)a3 forPencilInput:(BOOL)a4;
+ (BOOL)selectTextInRange:(_NSRange)a3 inTextInput:(id)a4;
+ (BOOL)selectWordBoundaryAtPoint:(CGPoint)a3 inTextInput:(id)a4;
+ (BOOL)setSelectionWithReferencePoint:(CGPoint)a3 inTextInput:(id)a4;
+ (BOOL)showSelectionCommandsForTextInput:(id)a3;
+ (CGRect)caretRectForCharacterIndex:(int64_t)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5;
+ (CGRect)caretRectInCoordinateSpace:(id)a3 inTextInput:(id)a4;
+ (CGRect)firstRectForRange:(_NSRange)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5;
+ (_NSRange)_rangeFromUITextPosition:(id)a3 toUITextPosition:(id)a4 inTextInput:(id)a5;
+ (_NSRange)activePreviewRangeInTextInput:(id)a3;
+ (_NSRange)rangeOfCharacterAtIndex:(unint64_t)a3 inTextInput:(id)a4;
+ (_NSRange)selectedRangeInTextInput:(id)a3;
+ (id)_uiTextRangeForRange:(_NSRange)a3 inTextInput:(id)a4;
+ (id)attributesAtCharacterIndex:(int64_t)a3 inTextInput:(id)a4;
+ (id)editableTextAttachmentFileTypes;
+ (id)insertTextPlaceholderWithSize:(CGSize)a3 inTextInput:(id)a4;
+ (id)protectedCharacterIndexesInRange:(_NSRange)a3 inTextInput:(id)a4;
+ (id)rectValuesForSelectionRects:(id)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5 intersectingRect:(CGRect)a6;
+ (id)selectionRectsForRange:(_NSRange)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5 intersectingRect:(CGRect)a6;
+ (id)stringInRange:(_NSRange)a3 inTextInput:(id)a4;
+ (int64_t)characterIndexClosestToPoint:(CGPoint)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5 forInsertingText:(BOOL)a6 adjustForLastCharacter:(BOOL)a7;
+ (int64_t)contentLengthForTextInput:(id)a3;
+ (void)notifyTextDidChangeInTextInput:(id)a3;
+ (void)notifyTextWillChangeInTextInput:(id)a3;
+ (void)removeTextPlaceholder:(id)a3 inTextInput:(id)a4;
@end

@implementation PKTextInputUITextInputInterface

+ (BOOL)makeTextInputFirstResponder:(id)a3 forPencilInput:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (v4 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [v5 set_textInputSource:3];
  }

  if (([v5 isFirstResponder] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      v7 = [v5 textInputTraits];
      v8 = v7;
      if (v7 && ([v7 deferBecomingResponder] & 1) != 0)
      {
        [v8 setDeferBecomingResponder:0];
        v6 = [v5 becomeFirstResponder];
        [v8 setDeferBecomingResponder:1];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
    }

    v6 = [v5 becomeFirstResponder];
    goto LABEL_12;
  }

  v6 = 1;
LABEL_13:
  v9 = [v5 isFirstResponder];

  return v9 & v6;
}

+ (BOOL)isValidRange:(_NSRange)a3 inTextInput:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = [v6 beginningOfDocument];
  v8 = [v6 positionFromPosition:v7 offset:location];

  v9 = [v6 positionFromPosition:v8 offset:length];

  if (v8)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = !v10;

  return v11;
}

+ (BOOL)_callShouldChangeTextInRange:(id)a3 replacementText:(id)a4 inTextInput:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v10 conformsToProtocol:&unk_1F483EDC0])
  {
    v11 = [v8 start];
    v12 = [v8 end];
    v13 = [a1 _rangeFromUITextPosition:v11 toUITextPosition:v12 inTextInput:v10];
    v15 = v14;

    v16 = [v10 keyboardInput:v10 shouldReplaceTextInRange:v13 replacementText:{v15, v9}];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v17 = 1;
      goto LABEL_10;
    }

    if (!v8)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v16 = [v10 shouldChangeTextInRange:v8 replacementText:v9];
  }

  v17 = v16;
LABEL_10:

  return v17;
}

+ (BOOL)_callShouldInsertText:(id)a3 inTextInput:(id)a4 isMarkedText:(BOOL)a5
{
  v5 = a5;
  v7 = a3;
  v8 = a4;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [v8 conformsToProtocol:&unk_1F483EDC0])
  {
    v9 = [v8 keyboardInput:v8 shouldInsertText:v7 isMarkedText:v5];
  }

  else if (objc_opt_respondsToSelector())
  {
    v10 = [v8 selectedTextRange];
    if (v10)
    {
      v9 = [v8 shouldChangeTextInRange:v10 replacementText:v7];
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

+ (BOOL)insertCommittedText:(id)a3 withAlternatives:(id)a4 activePreviewText:(id)a5 replacingRange:(_NSRange)a6 inTextInput:(id)a7
{
  length = a6.length;
  location = a6.location;
  v67[1] = *MEMORY[0x1E69E9840];
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [a1 _uiTextRangeForRange:location inTextInput:{length, v16}];
    if (!v17)
    {
      goto LABEL_39;
    }

    [v16 setSelectedTextRange:v17];
  }

  if ([v13 length] | length)
  {
    LODWORD(v17) = [a1 _callShouldInsertText:v13 inTextInput:v16 isMarkedText:0];
    v18 = v16;
    if (v17)
    {
      v55 = v14;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (objc_opt_respondsToSelector() & 1) == 0 || (isKindOfClass)
      {
        v24 = objc_opt_respondsToSelector();
        v25 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          v14 = v55;
          if (v26)
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = 134218498;
            v59 = v18;
            v60 = 2112;
            v61 = v28;
            v62 = 2048;
            v63 = [v13 length];
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Text input <%p %@> does not support insertAttributedText:. Inserting text of length %ld.", buf, 0x20u);
          }

          [v18 insertText:v13 alternatives:v55 style:1];
        }

        else
        {
          v14 = v55;
          if (v26)
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 134218754;
            v59 = v18;
            v60 = 2112;
            v61 = v30;
            v62 = 2048;
            v63 = [v13 length];
            v64 = 2048;
            v65 = [v55 count];
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Text input <%p %@> does not support insertText:alternatives:style:. Inserting text of length %ld and ignoring %ld alternatives.", buf, 0x2Au);
          }

          [v18 insertText:v13];
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && [v18 textAlignment] != 4)
        {
          v53 = 0;
          v54 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:v13];
        }

        else
        {
          v20 = objc_opt_new();
          if ([v13 _isNaturallyRTL])
          {
            v21 = 2;
          }

          else
          {
            v21 = 0;
          }

          [v20 setAlignment:v21];
          v22 = objc_alloc(MEMORY[0x1E696AD40]);
          v66 = *MEMORY[0x1E69DB688];
          v67[0] = v20;
          v53 = v20;
          v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v67 forKeys:&v66 count:1];
          v54 = [v22 initWithString:v13 attributes:v23];
        }

        v31 = objc_opt_respondsToSelector();
        v14 = v55;
        if (v55 && (v31 & 1) != 0 && [v55 count])
        {
          v32 = [objc_alloc(MEMORY[0x1E69DB7E8]) initWithPrimaryString:v13 alternativeStrings:v55];
          v14 = v55;
          [v54 addAttribute:*MEMORY[0x1E69DB6D0] value:v32 range:{0, objc_msgSend(v54, "length")}];
        }

        v33 = [a1 _uiTextRangeForRange:location inTextInput:{length, v18}];
        if (v33 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          v34 = [v33 start];
          v35 = [v18 textStylingAtPosition:v34 inDirection:0];
          v36 = [v35 mutableCopy];

          if (v36)
          {
            if (v53)
            {
              v52 = *MEMORY[0x1E69DB688];
              v37 = [v36 objectForKeyedSubscript:?];
              v51 = [v37 mutableCopy];

              v38 = v53;
              if (v51)
              {
                [v51 setAlignment:{objc_msgSend(v53, "alignment", v53)}];
                v38 = v51;
              }

              [v36 setObject:v38 forKeyedSubscript:v52];
            }

            [v54 addAttributes:v36 range:{0, objc_msgSend(v54, "length")}];
          }

          v14 = v55;
        }

        [v18 insertAttributedText:v54];
      }
    }
  }

  else
  {
    LODWORD(v17) = 1;
  }

LABEL_39:
  v39 = [v16 markedTextRange];
  if (v39)
  {
    v40 = [v16 markedTextRange];
    v41 = [v40 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v41) = 0;
  }

  if (v17)
  {
    if (!(([(__CFString *)v15 length]!= 0) | v41 & 1))
    {
LABEL_53:
      v49 = 1;
      goto LABEL_54;
    }

    if (!v15)
    {
      v15 = &stru_1F476BD20;
    }

    if ([a1 _callShouldInsertText:v15 inTextInput:v16 isMarkedText:1])
    {
      v42 = [(__CFString *)v15 length];
      v43 = +[PKTextInputSettings sharedSettings];
      if ([v43 styledActivePreview])
      {
        v44 = objc_opt_respondsToSelector();

        if (v44)
        {
          v56[0] = *MEMORY[0x1E69DB650];
          v45 = [MEMORY[0x1E69DC888] colorWithWhite:0.5 alpha:0.3];
          v57[0] = v45;
          v56[1] = *MEMORY[0x1E69DB600];
          v46 = [MEMORY[0x1E69DC888] clearColor];
          v57[1] = v46;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

          v48 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v15 attributes:v47];
          [v16 setAttributedMarkedText:v48 selectedRange:{v42, 0}];

          goto LABEL_53;
        }
      }

      else
      {
      }

      [v16 setMarkedText:v15 selectedRange:{v42, 0}];
      goto LABEL_53;
    }
  }

  v49 = 0;
LABEL_54:

  return v49;
}

+ (id)insertTextPlaceholderWithSize:(CGSize)a3 inTextInput:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = a4;
  v8 = [v7 selectedTextRange];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (width <= 0.0)
    {
      if (height <= 0.0)
      {
        v9 = 0;
        goto LABEL_22;
      }

      v16 = [v8 start];
      [v7 caretRectForPosition:v16];
      v18 = v17;

      v19 = vcvtpd_s64_f64(height / v18);
      v9 = [MEMORY[0x1E696AD60] string];
      if (v19 >= 1)
      {
        do
        {
          [v9 appendString:@"\n"];
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      v14 = vcvtpd_s64_f64(width / 5.0);
      if (v14 <= 16)
      {
        v15 = 16;
      }

      else
      {
        v15 = v14;
      }

      v9 = [MEMORY[0x1E696AD60] string];
      do
      {
        [v9 appendString:@" "];
        --v15;
      }

      while (v15);
    }

    if (v9 && [a1 _callShouldInsertText:v9 inTextInput:v7 isMarkedText:0])
    {
      [a1 notifyTextWillChangeInTextInput:v7];
      [v7 insertText:v9];
      v20 = [v7 selectedTextRange];
      v21 = [v8 start];
      if (v21 && (v22 = v21, [v20 end], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
      {
        v24 = [v8 start];
        v25 = [v20 end];
        v26 = [v7 textRangeFromPosition:v24 toPosition:v25];

        v27 = [v7 selectionRectsForRange:v26];
        v10 = [PKTextInputTextPlaceholder placeholderWithText:v9 rects:v27];
      }

      else
      {
        v26 = [v20 end];
        [v7 caretRectForPosition:v26];
        v10 = [PKTextInputTextPlaceholder placeholderWithToken:v9 frame:?];
      }

      goto LABEL_3;
    }

LABEL_22:

    v10 = 0;
    goto LABEL_23;
  }

  [a1 notifyTextWillChangeInTextInput:v7];
  v9 = [v7 insertTextPlaceholderWithSize:{width, height}];
  v10 = [PKTextInputTextPlaceholder placeholderWithTextPlaceholder:v9];
LABEL_3:

  if (v10)
  {
    v11 = [v8 start];
    v12 = [v8 start];
    v13 = [v7 textRangeFromPosition:v11 toPosition:v12];

    [v7 setSelectedTextRange:v13];
  }

  [a1 notifyTextDidChangeInTextInput:v7];
LABEL_23:

  return v10;
}

+ (void)removeTextPlaceholder:(id)a3 inTextInput:(id)a4
{
  v19 = a3;
  v6 = a4;
  v7 = [v19 placeholder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      [a1 notifyTextWillChangeInTextInput:v6];
      v9 = [v19 placeholder];
      [v6 removeTextPlaceholder:v9];

      [a1 notifyTextDidChangeInTextInput:v6];
      goto LABEL_10;
    }
  }

  else
  {
  }

  v10 = [v19 placeholder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v12 = [v19 placeholder];
    v13 = [v6 selectedTextRange];
    v14 = [v13 start];
    v15 = [v6 positionFromPosition:v14 offset:{objc_msgSend(v12, "length")}];

    v16 = [v13 start];
    v17 = [v6 textRangeFromPosition:v16 toPosition:v15];

    v18 = [v6 textInRange:v17];
    if ([v18 isEqualToString:v12] && objc_msgSend(a1, "_callShouldChangeTextInRange:replacementText:inTextInput:", v17, &stru_1F476BD20, v6))
    {
      [a1 notifyTextWillChangeInTextInput:v6];
      [v6 replaceRange:v17 withText:&stru_1F476BD20];
      [a1 notifyTextDidChangeInTextInput:v6];
    }
  }

LABEL_10:
}

+ (BOOL)deleteTextInRange:(_NSRange)a3 inTextInput:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [a1 _uiTextRangeForRange:location inTextInput:{length, v7}];
  if (v8 && [a1 _callShouldChangeTextInRange:v8 replacementText:&stru_1F476BD20 inTextInput:v7])
  {
    [v7 setSelectedTextRange:v8];
    [v7 deleteBackward];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (_NSRange)selectedRangeInTextInput:(id)a3
{
  v4 = a3;
  v5 = [v4 selectedTextRange];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 start];
    v8 = [v6 end];
    v9 = [a1 _rangeFromUITextPosition:v7 toUITextPosition:v8 inTextInput:v4];
    v11 = v10;
  }

  else
  {
    v11 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v12 = v9;
  v13 = v11;
  result.length = v13;
  result.location = v12;
  return result;
}

+ (BOOL)selectTextInRange:(_NSRange)a3 inTextInput:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [a1 _uiTextRangeForRange:location inTextInput:{length, v7}];
  LOBYTE(location) = [a1 _selectTextRange:v8 inTextInput:v7];

  return location;
}

+ (BOOL)_selectTextRange:(id)a3 inTextInput:(id)a4
{
  if (a3)
  {
    v5 = a4;
    v6 = a3;
    v7 = [v5 inputDelegate];
    [v7 selectionWillChange:v5];
    [v5 setSelectedTextRange:v6];

    [v7 selectionDidChange:v5];
  }

  return a3 != 0;
}

+ (BOOL)setSelectionWithReferencePoint:(CGPoint)a3 inTextInput:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 closestPositionToPoint:{x, y}];
  if (v8)
  {
    v9 = [v7 textRangeFromPosition:v8 toPosition:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [a1 _selectTextRange:v9 inTextInput:v7];

  return v10;
}

+ (BOOL)selectWordBoundaryAtPoint:(CGPoint)a3 inTextInput:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = [v7 closestPositionToPoint:{x, y}];
  v9 = [v7 beginningOfDocument];
  v10 = [v7 endOfDocument];
  v11 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKTextInputUITextInputInterface_selectWordBoundaryAtPoint_inTextInput___block_invoke;
  aBlock[3] = &unk_1E82DC288;
  v12 = v7;
  v52 = v12;
  v13 = v9;
  v53 = v13;
  v14 = v10;
  v54 = v14;
  v15 = _Block_copy(aBlock);
  if (v11)
  {
    v16 = v11;
    do
    {
      v17 = v15[2](v15, v16);
      if (v17)
      {
        break;
      }

      v18 = [v12 tokenizer];
      v19 = [v18 positionFromPosition:v16 toBoundary:1 inDirection:1];

      v16 = v19;
    }

    while (v19);
    v50 = v11;
    do
    {
      if (v15[2](v15, v11))
      {
        if (v17)
        {
          [v12 caretRectForPosition:v16];
          v26 = v25;
          v28 = v27;
          v30 = v29;
          v32 = v31;
          [v12 caretRectForPosition:v11];
          v48 = v34;
          v49 = v33;
          v36 = v35;
          v47 = v37;
          v55.origin.x = v26;
          v55.origin.y = v28;
          v55.size.width = v30;
          v55.size.height = v32;
          MidX = CGRectGetMidX(v55);
          v39 = (MidX - x) * (MidX - x);
          v56.origin.x = v26;
          v56.origin.y = v28;
          v56.size.width = v30;
          v56.size.height = v32;
          MidY = CGRectGetMidY(v56);
          v41 = v39 + (MidY - y) * (MidY - y);
          v57.origin.x = v49;
          v57.origin.y = v36;
          v57.size.width = v48;
          v57.size.height = v47;
          v42 = CGRectGetMidX(v57);
          v43 = (v42 - x) * (v42 - x);
          v58.origin.x = v49;
          v58.origin.y = v36;
          v58.size.width = v48;
          v58.size.height = v47;
          v44 = CGRectGetMidY(v58);
          if (v41 >= v43 + (v44 - y) * (v44 - y))
          {
            v22 = v11;
          }

          else
          {
            v22 = v16;
          }
        }

        else
        {
          v22 = v11;
        }

        goto LABEL_16;
      }

      v20 = [v12 tokenizer];
      v21 = [v20 positionFromPosition:v11 toBoundary:1 inDirection:0];

      v11 = v21;
    }

    while (v21);
    if (v17)
    {
      v11 = 0;
      v22 = v16;
LABEL_16:
      v23 = v22;

      v45 = [v12 textRangeFromPosition:v23 toPosition:v23];
      v24 = [a1 _selectTextRange:v45 inTextInput:v12];

      goto LABEL_18;
    }

    v24 = 0;
    v23 = v50;
  }

  else
  {
    v16 = 0;
    v23 = 0;
    v24 = 0;
  }

LABEL_18:

  return v24;
}

uint64_t __73__PKTextInputUITextInputInterface_selectWordBoundaryAtPoint_inTextInput___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) tokenizer];
  v5 = 1;
  if (([v4 isPosition:v3 atBoundary:1 inDirection:0] & 1) == 0)
  {
    if ([v3 isEqual:*(a1 + 40)])
    {
      v5 = 1;
    }

    else
    {
      v5 = [v3 isEqual:*(a1 + 48)];
    }
  }

  return v5;
}

+ (BOOL)showSelectionCommandsForTextInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 inputDelegate];
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      [v4 showSelectionCommands];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (BOOL)configureSelectionStyleForHighlightInTextInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 interactionAssistant];
    v5 = v4;
    v6 = v4 != 0;
    if (v4)
    {
      [v4 configureForPencilHighlightMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)configureSelectionStyleForDeletionPreviewInTextInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 interactionAssistant];
    v5 = v4;
    v6 = v4 != 0;
    if (v4)
    {
      [v4 configureForPencilDeletionPreviewMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)configureSelectionStyleForNormalSelectionInTextInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 interactionAssistant];
    v5 = v4;
    v6 = v4 != 0;
    if (v4)
    {
      [v4 configureForSelectionMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CGRect)caretRectInCoordinateSpace:(id)a3 inTextInput:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 selectedTextRange];
  v8 = [v7 start];
  [v5 caretRectForPosition:v8];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = [v5 textInputView];

  v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v17, v6, v10, v12, v14, v16);
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = v18;
  v26 = v20;
  v27 = v22;
  v28 = v24;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

+ (_NSRange)activePreviewRangeInTextInput:(id)a3
{
  v3 = a3;
  v4 = [v3 beginningOfDocument];
  v5 = [v3 markedTextRange];
  v6 = v5;
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (v4 && v5)
  {
    v9 = [v5 start];
    v8 = [v3 offsetFromPosition:v4 toPosition:v9];

    v10 = [v6 start];
    v11 = [v6 end];
    v7 = [v3 offsetFromPosition:v10 toPosition:v11];
  }

  v12 = v8;
  v13 = v7;
  result.length = v13;
  result.location = v12;
  return result;
}

+ (int64_t)contentLengthForTextInput:(id)a3
{
  v4 = a3;
  v5 = [v4 beginningOfDocument];
  v6 = [v4 endOfDocument];
  v7 = v6;
  v8 = 0;
  if (v5 && v6)
  {
    v9 = [v4 beginningOfDocument];
    v10 = [v4 endOfDocument];
    [a1 _rangeFromUITextPosition:v9 toUITextPosition:v10 inTextInput:v4];
    v8 = v11;
  }

  return v8;
}

+ (id)stringInRange:(_NSRange)a3 inTextInput:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [a1 _uiTextRangeForRange:location inTextInput:{length, v7}];
  if (v8)
  {
    v9 = [v7 textInRange:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)editableTextAttachmentFileTypes
{
  if (qword_1ED6A5490 != -1)
  {
    dispatch_once(&qword_1ED6A5490, &__block_literal_global_84);
  }

  v3 = _MergedGlobals_165;

  return v3;
}

void __66__PKTextInputUITextInputInterface_editableTextAttachmentFileTypes__block_invoke()
{
  v0 = [MEMORY[0x1E695DFD8] setWithObjects:{@"com.apple.notes.inlinetextattachment", @"com.apple.notes.inlinetextattachment.hashtag", @"com.apple.notes.inlinetextattachment.mention", 0}];
  v1 = _MergedGlobals_165;
  _MergedGlobals_165 = v0;
}

+ (BOOL)isProtectedTextAttachment:(id)a3
{
  v4 = a3;
  v5 = [v4 fileType];

  if (v5)
  {
    v6 = [a1 editableTextAttachmentFileTypes];
    v7 = [v4 fileType];
    v8 = [v6 containsObject:v7] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (id)protectedCharacterIndexesInRange:(_NSRange)a3 inTextInput:(id)a4
{
  length = a3.length;
  location = a3.location;
  v7 = a4;
  v8 = [a1 _uiTextRangeForRange:location inTextInput:{length, v7}];
  v9 = v8;
  if (v8 && ([v8 isEmpty] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v22 = [a1 selectedRangeInTextInput:v7];
    v20 = v11;
    if (length)
    {
      v12 = 0;
      v21 = *MEMORY[0x1E69DB5F8];
      do
      {
        v13 = [v9 start];
        v14 = [v7 positionFromPosition:v13 offset:v12];

        if (v14)
        {
          v15 = 0;
          if (v22 != location || v20 || ([v7 positionFromPosition:v14 offset:1], v16 = objc_claimAutoreleasedReturnValue(), v14, v14 = v16, v15 = 1, v16))
          {
            v17 = [v7 textStylingAtPosition:v14 inDirection:v15];
            v18 = [v17 objectForKeyedSubscript:v21];
            if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [a1 isProtectedTextAttachment:v18])
            {
              [v10 addIndex:location];
            }
          }
        }

        ++v12;
        ++location;
        --length;
      }

      while (length);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)attributesAtCharacterIndex:(int64_t)a3 inTextInput:(id)a4
{
  v5 = a4;
  v6 = [v5 beginningOfDocument];
  if (v6 && (objc_opt_respondsToSelector() & 1) != 0 && ([v5 positionFromPosition:v6 offset:a3], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [v5 textStylingAtPosition:v7 inDirection:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (_NSRange)rangeOfCharacterAtIndex:(unint64_t)a3 inTextInput:(id)a4
{
  v4 = a3;
  if (a3 >= 0xA)
  {
    v6 = a3 - 10;
  }

  else
  {
    v6 = 0;
  }

  v7 = a3 + 20;
  v8 = a4;
  v9 = [a1 contentLengthForTextInput:v8] - 1;
  if (v7 < v9)
  {
    v9 = v7;
  }

  v10 = [a1 stringInRange:v6 inTextInput:{v9 - v6, v8}];

  if ([v10 length] <= v4 - v6)
  {
    v14 = 1;
  }

  else
  {
    v11 = [v10 rangeOfComposedCharacterSequenceAtIndex:v4 - v6];
    v13 = v11 + v6;
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    if (v11 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = v13;
    }
  }

  v15 = v4;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

+ (CGRect)firstRectForRange:(_NSRange)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v10 = a5;
  v11 = [a1 _uiTextRangeForRange:location inTextInput:{length, v10}];
  if (v11)
  {
    [v10 firstRectForRange:v11];
    v15 = v12;
    v17 = v16;
    v18 = v13;
    v19 = v14;
    if (v14 > 0.0)
    {
      v12 = v13 / v14;
      if (v13 / v14 > 1.0 && length == 1)
      {
        v21 = [v10 textInRange:{v11, v12}];
        if ([v21 length] == 1)
        {
          v22 = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v23 = [v22 characterIsMember:{objc_msgSend(v21, "characterAtIndex:", 0)}];

          if (v23)
          {
            v18 = v19 * 0.5;
          }
        }
      }
    }

    v24 = [v10 textInputView];
    v25 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v24, v9, v15, v17, v18, v19);
    v27 = v26;
    v29 = v28;
    v31 = v30;
  }

  else
  {
    v25 = *MEMORY[0x1E695F050];
    v27 = *(MEMORY[0x1E695F050] + 8);
    v29 = *(MEMORY[0x1E695F050] + 16);
    v31 = *(MEMORY[0x1E695F050] + 24);
  }

  v32 = v25;
  v33 = v27;
  v34 = v29;
  v35 = v31;
  result.size.height = v35;
  result.size.width = v34;
  result.origin.y = v33;
  result.origin.x = v32;
  return result;
}

+ (int64_t)characterIndexClosestToPoint:(CGPoint)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5 forInsertingText:(BOOL)a6 adjustForLastCharacter:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  y = a3.y;
  x = a3.x;
  v13 = a5;
  v14 = a4;
  v15 = [v13 textInputView];
  v16 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v14, v15, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  v18 = v17;

  v19 = [v13 closestPositionToPoint:{v16, v18}];
  v20 = [v13 beginningOfDocument];
  v21 = [v13 endOfDocument];
  v22 = v21;
  if (v19)
  {
    v23 = v20 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 || v21 == 0)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = [v13 offsetFromPosition:v20 toPosition:v19];
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = v27 - 1;
    if (v8)
    {
      v25 = v26;
    }

    else
    {
      v25 = v28;
    }

    if ([v13 offsetFromPosition:v20 toPosition:v22] >= 1 && objc_msgSend(v19, "isEqual:", v22) && v7)
    {
      v30 = [v13 positionFromPosition:v22 offset:-1];
      if (v30)
      {
        v31 = [a1 _rangeFromUITextPosition:v30 toUITextPosition:v22 inTextInput:v13];
        v33 = v32;
        v34 = [v13 textInputView];
        [a1 firstRectForRange:v31 inCoordinateSpace:v33 inTextInput:{v34, v13}];
        v36 = v35;
        v38 = v37;
        v40 = v39;
        v42 = v41;

        v49.origin.x = v36;
        v49.origin.y = v38;
        v49.size.width = v40;
        v49.size.height = v42;
        if (!CGRectIsNull(v49))
        {
          v50.origin.x = v36;
          v50.origin.y = v38;
          v50.size.width = v40;
          v50.size.height = v42;
          v43 = v18 - CGRectGetMaxY(v50);
          if (v43 >= 0.0 && v43 < v42)
          {
            v51.origin.x = v36;
            v51.origin.y = v38;
            v51.size.width = v40;
            v51.size.height = v42;
            v45 = [v13 closestPositionToPoint:{v16, CGRectGetMidY(v51)}];

            if (v45)
            {
              v46 = [v13 offsetFromPosition:v20 toPosition:v45];
              if (v46 <= 1)
              {
                v47 = 1;
              }

              else
              {
                v47 = v46;
              }

              v25 = v47 - 1;
              v19 = v45;
            }

            else
            {
              v19 = 0;
            }
          }
        }
      }
    }
  }

  return v25;
}

+ (CGRect)caretRectForCharacterIndex:(int64_t)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [v8 beginningOfDocument];
  v10 = [v8 positionFromPosition:v9 offset:a3];

  if (v10)
  {
    [v8 caretRectForPosition:v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    v19 = [v8 textInputView];
    v20 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(v19, v7, v12, v14, v16, v18);
    v22 = v21;
    v24 = v23;
    v26 = v25;
  }

  else
  {
    v20 = *MEMORY[0x1E695F050];
    v22 = *(MEMORY[0x1E695F050] + 8);
    v24 = *(MEMORY[0x1E695F050] + 16);
    v26 = *(MEMORY[0x1E695F050] + 24);
  }

  v27 = v20;
  v28 = v22;
  v29 = v24;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

+ (id)selectionRectsForRange:(_NSRange)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5 intersectingRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  length = a3.length;
  location = a3.location;
  v14 = a4;
  v15 = a5;
  v16 = [a1 _uiTextRangeForRange:location inTextInput:{length, v15}];
  if (v16)
  {
    v17 = [v15 selectionRectsForRange:v16];
    v18 = [a1 rectValuesForSelectionRects:v17 inCoordinateSpace:v14 inTextInput:v15 intersectingRect:{x, y, width, height}];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

+ (id)rectValuesForSelectionRects:(id)a3 inCoordinateSpace:(id)a4 inTextInput:(id)a5 intersectingRect:(CGRect)a6
{
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v38 = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = v12;
  v17 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v34;
    do
    {
      for (i = 0; i != v18; ++i)
      {
        if (*v34 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = *(*(&v33 + 1) + 8 * i);
        v22 = [v14 textInputView];
        [v21 rect];
        [v22 PK_convertRect:v13 toCoordinateSpace:?];
        v24 = v23;
        v26 = v25;
        v28 = v27;
        v30 = v29;

        v40.origin.x = x;
        v40.origin.y = y;
        v40.size.width = width;
        v40.size.height = height;
        if (!CGRectIsNull(v40))
        {
          v41.origin.x = v24;
          v41.origin.y = v26;
          v41.size.width = v28;
          v41.size.height = v30;
          v44.origin.x = x;
          v44.origin.y = y;
          v44.size.width = width;
          v44.size.height = height;
          v42 = CGRectIntersection(v41, v44);
          v24 = v42.origin.x;
          v26 = v42.origin.y;
          v28 = v42.size.width;
          v30 = v42.size.height;
        }

        v43.origin.x = v24;
        v43.origin.y = v26;
        v43.size.width = v28;
        v43.size.height = v30;
        if (!CGRectIsNull(v43))
        {
          v31 = [MEMORY[0x1E696B098] valueWithCGRect:{v24, v26, v28, v30}];
          [v15 addObject:v31];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  return v15;
}

+ (void)notifyTextWillChangeInTextInput:(id)a3
{
  v4 = a3;
  v3 = [v4 inputDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 willBeginPencilTextInputEditing];
  }

  [v3 textWillChange:v4];
}

+ (void)notifyTextDidChangeInTextInput:(id)a3
{
  v4 = a3;
  v3 = [v4 inputDelegate];
  [v3 textDidChange:v4];
  if (objc_opt_respondsToSelector())
  {
    [v4 didFinishPencilTextInputEditing];
  }
}

+ (id)_uiTextRangeForRange:(_NSRange)a3 inTextInput:(id)a4
{
  length = a3.length;
  location = a3.location;
  v6 = a4;
  v7 = v6;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = [v6 beginningOfDocument];
    v10 = [v7 positionFromPosition:v9 offset:location];

    v11 = [v7 positionFromPosition:v10 offset:length];
    v12 = v11;
    v8 = 0;
    if (v10 && v11)
    {
      v8 = [v7 textRangeFromPosition:v10 toPosition:v11];
    }
  }

  return v8;
}

+ (_NSRange)_rangeFromUITextPosition:(id)a3 toUITextPosition:(id)a4 inTextInput:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [v9 beginningOfDocument];
  if (!v7 || !v10)
  {

    goto LABEL_6;
  }

  if (!v8)
  {
LABEL_6:
    v13 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  v11 = [v9 beginningOfDocument];
  v12 = [v9 offsetFromPosition:v11 toPosition:v7];

  v13 = [v9 offsetFromPosition:v7 toPosition:v8];
LABEL_7:

  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

@end