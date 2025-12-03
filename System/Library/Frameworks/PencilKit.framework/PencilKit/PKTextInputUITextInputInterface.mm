@interface PKTextInputUITextInputInterface
+ (BOOL)_callShouldChangeTextInRange:(id)range replacementText:(id)text inTextInput:(id)input;
+ (BOOL)_callShouldInsertText:(id)text inTextInput:(id)input isMarkedText:(BOOL)markedText;
+ (BOOL)_selectTextRange:(id)range inTextInput:(id)input;
+ (BOOL)configureSelectionStyleForDeletionPreviewInTextInput:(id)input;
+ (BOOL)configureSelectionStyleForHighlightInTextInput:(id)input;
+ (BOOL)configureSelectionStyleForNormalSelectionInTextInput:(id)input;
+ (BOOL)deleteTextInRange:(_NSRange)range inTextInput:(id)input;
+ (BOOL)insertCommittedText:(id)text withAlternatives:(id)alternatives activePreviewText:(id)previewText replacingRange:(_NSRange)range inTextInput:(id)input;
+ (BOOL)isProtectedTextAttachment:(id)attachment;
+ (BOOL)isValidRange:(_NSRange)range inTextInput:(id)input;
+ (BOOL)makeTextInputFirstResponder:(id)responder forPencilInput:(BOOL)input;
+ (BOOL)selectTextInRange:(_NSRange)range inTextInput:(id)input;
+ (BOOL)selectWordBoundaryAtPoint:(CGPoint)point inTextInput:(id)input;
+ (BOOL)setSelectionWithReferencePoint:(CGPoint)point inTextInput:(id)input;
+ (BOOL)showSelectionCommandsForTextInput:(id)input;
+ (CGRect)caretRectForCharacterIndex:(int64_t)index inCoordinateSpace:(id)space inTextInput:(id)input;
+ (CGRect)caretRectInCoordinateSpace:(id)space inTextInput:(id)input;
+ (CGRect)firstRectForRange:(_NSRange)range inCoordinateSpace:(id)space inTextInput:(id)input;
+ (_NSRange)_rangeFromUITextPosition:(id)position toUITextPosition:(id)textPosition inTextInput:(id)input;
+ (_NSRange)activePreviewRangeInTextInput:(id)input;
+ (_NSRange)rangeOfCharacterAtIndex:(unint64_t)index inTextInput:(id)input;
+ (_NSRange)selectedRangeInTextInput:(id)input;
+ (id)_uiTextRangeForRange:(_NSRange)range inTextInput:(id)input;
+ (id)attributesAtCharacterIndex:(int64_t)index inTextInput:(id)input;
+ (id)editableTextAttachmentFileTypes;
+ (id)insertTextPlaceholderWithSize:(CGSize)size inTextInput:(id)input;
+ (id)protectedCharacterIndexesInRange:(_NSRange)range inTextInput:(id)input;
+ (id)rectValuesForSelectionRects:(id)rects inCoordinateSpace:(id)space inTextInput:(id)input intersectingRect:(CGRect)rect;
+ (id)selectionRectsForRange:(_NSRange)range inCoordinateSpace:(id)space inTextInput:(id)input intersectingRect:(CGRect)rect;
+ (id)stringInRange:(_NSRange)range inTextInput:(id)input;
+ (int64_t)characterIndexClosestToPoint:(CGPoint)point inCoordinateSpace:(id)space inTextInput:(id)input forInsertingText:(BOOL)text adjustForLastCharacter:(BOOL)character;
+ (int64_t)contentLengthForTextInput:(id)input;
+ (void)notifyTextDidChangeInTextInput:(id)input;
+ (void)notifyTextWillChangeInTextInput:(id)input;
+ (void)removeTextPlaceholder:(id)placeholder inTextInput:(id)input;
@end

@implementation PKTextInputUITextInputInterface

+ (BOOL)makeTextInputFirstResponder:(id)responder forPencilInput:(BOOL)input
{
  inputCopy = input;
  responderCopy = responder;
  if (inputCopy && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [responderCopy set_textInputSource:3];
  }

  if (([responderCopy isFirstResponder] & 1) == 0)
  {
    if (objc_opt_respondsToSelector())
    {
      textInputTraits = [responderCopy textInputTraits];
      v8 = textInputTraits;
      if (textInputTraits && ([textInputTraits deferBecomingResponder] & 1) != 0)
      {
        [v8 setDeferBecomingResponder:0];
        becomeFirstResponder = [responderCopy becomeFirstResponder];
        [v8 setDeferBecomingResponder:1];
LABEL_12:

        goto LABEL_13;
      }
    }

    else
    {
      v8 = 0;
    }

    becomeFirstResponder = [responderCopy becomeFirstResponder];
    goto LABEL_12;
  }

  becomeFirstResponder = 1;
LABEL_13:
  isFirstResponder = [responderCopy isFirstResponder];

  return isFirstResponder & becomeFirstResponder;
}

+ (BOOL)isValidRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  beginningOfDocument = [inputCopy beginningOfDocument];
  v8 = [inputCopy positionFromPosition:beginningOfDocument offset:location];

  v9 = [inputCopy positionFromPosition:v8 offset:length];

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

+ (BOOL)_callShouldChangeTextInRange:(id)range replacementText:(id)text inTextInput:(id)input
{
  rangeCopy = range;
  textCopy = text;
  inputCopy = input;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [inputCopy conformsToProtocol:&unk_1F483EDC0])
  {
    start = [rangeCopy start];
    v12 = [rangeCopy end];
    v13 = [self _rangeFromUITextPosition:start toUITextPosition:v12 inTextInput:inputCopy];
    v15 = v14;

    v16 = [inputCopy keyboardInput:inputCopy shouldReplaceTextInRange:v13 replacementText:{v15, textCopy}];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v17 = 1;
      goto LABEL_10;
    }

    if (!rangeCopy)
    {
      v17 = 0;
      goto LABEL_10;
    }

    v16 = [inputCopy shouldChangeTextInRange:rangeCopy replacementText:textCopy];
  }

  v17 = v16;
LABEL_10:

  return v17;
}

+ (BOOL)_callShouldInsertText:(id)text inTextInput:(id)input isMarkedText:(BOOL)markedText
{
  markedTextCopy = markedText;
  textCopy = text;
  inputCopy = input;
  if ((objc_opt_respondsToSelector() & 1) != 0 && [inputCopy conformsToProtocol:&unk_1F483EDC0])
  {
    v9 = [inputCopy keyboardInput:inputCopy shouldInsertText:textCopy isMarkedText:markedTextCopy];
  }

  else if (objc_opt_respondsToSelector())
  {
    selectedTextRange = [inputCopy selectedTextRange];
    if (selectedTextRange)
    {
      v9 = [inputCopy shouldChangeTextInRange:selectedTextRange replacementText:textCopy];
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

+ (BOOL)insertCommittedText:(id)text withAlternatives:(id)alternatives activePreviewText:(id)previewText replacingRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  v67[1] = *MEMORY[0x1E69E9840];
  textCopy = text;
  alternativesCopy = alternatives;
  previewTextCopy = previewText;
  inputCopy = input;
  if (location != 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
    if (!v17)
    {
      goto LABEL_39;
    }

    [inputCopy setSelectedTextRange:v17];
  }

  if ([textCopy length] | length)
  {
    LODWORD(v17) = [self _callShouldInsertText:textCopy inTextInput:inputCopy isMarkedText:0];
    v18 = inputCopy;
    if (v17)
    {
      v55 = alternativesCopy;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (objc_opt_respondsToSelector() & 1) == 0 || (isKindOfClass)
      {
        v24 = objc_opt_respondsToSelector();
        v25 = os_log_create("com.apple.pencilkit", "PencilTextInput");
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
        if (v24)
        {
          alternativesCopy = v55;
          if (v26)
          {
            v27 = objc_opt_class();
            v28 = NSStringFromClass(v27);
            *buf = 134218498;
            v59 = v18;
            v60 = 2112;
            v61 = v28;
            v62 = 2048;
            v63 = [textCopy length];
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Text input <%p %@> does not support insertAttributedText:. Inserting text of length %ld.", buf, 0x20u);
          }

          [v18 insertText:textCopy alternatives:v55 style:1];
        }

        else
        {
          alternativesCopy = v55;
          if (v26)
          {
            v29 = objc_opt_class();
            v30 = NSStringFromClass(v29);
            *buf = 134218754;
            v59 = v18;
            v60 = 2112;
            v61 = v30;
            v62 = 2048;
            v63 = [textCopy length];
            v64 = 2048;
            v65 = [v55 count];
            _os_log_impl(&dword_1C7CCA000, v25, OS_LOG_TYPE_DEFAULT, "Text input <%p %@> does not support insertText:alternatives:style:. Inserting text of length %ld and ignoring %ld alternatives.", buf, 0x2Au);
          }

          [v18 insertText:textCopy];
        }
      }

      else
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass())) && [v18 textAlignment] != 4)
        {
          v53 = 0;
          v54 = [objc_alloc(MEMORY[0x1E696AD40]) initWithString:textCopy];
        }

        else
        {
          v20 = objc_opt_new();
          if ([textCopy _isNaturallyRTL])
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
          v54 = [v22 initWithString:textCopy attributes:v23];
        }

        v31 = objc_opt_respondsToSelector();
        alternativesCopy = v55;
        if (v55 && (v31 & 1) != 0 && [v55 count])
        {
          v32 = [objc_alloc(MEMORY[0x1E69DB7E8]) initWithPrimaryString:textCopy alternativeStrings:v55];
          alternativesCopy = v55;
          [v54 addAttribute:*MEMORY[0x1E69DB6D0] value:v32 range:{0, objc_msgSend(v54, "length")}];
        }

        v33 = [self _uiTextRangeForRange:location inTextInput:{length, v18}];
        if (v33 && (objc_opt_respondsToSelector() & 1) != 0)
        {
          start = [v33 start];
          v35 = [v18 textStylingAtPosition:start inDirection:0];
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

          alternativesCopy = v55;
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
  markedTextRange = [inputCopy markedTextRange];
  if (markedTextRange)
  {
    markedTextRange2 = [inputCopy markedTextRange];
    v41 = [markedTextRange2 isEmpty] ^ 1;
  }

  else
  {
    LOBYTE(v41) = 0;
  }

  if (v17)
  {
    if (!(([(__CFString *)previewTextCopy length]!= 0) | v41 & 1))
    {
LABEL_53:
      v49 = 1;
      goto LABEL_54;
    }

    if (!previewTextCopy)
    {
      previewTextCopy = &stru_1F476BD20;
    }

    if ([self _callShouldInsertText:previewTextCopy inTextInput:inputCopy isMarkedText:1])
    {
      v42 = [(__CFString *)previewTextCopy length];
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
          clearColor = [MEMORY[0x1E69DC888] clearColor];
          v57[1] = clearColor;
          v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v57 forKeys:v56 count:2];

          v48 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:previewTextCopy attributes:v47];
          [inputCopy setAttributedMarkedText:v48 selectedRange:{v42, 0}];

          goto LABEL_53;
        }
      }

      else
      {
      }

      [inputCopy setMarkedText:previewTextCopy selectedRange:{v42, 0}];
      goto LABEL_53;
    }
  }

  v49 = 0;
LABEL_54:

  return v49;
}

+ (id)insertTextPlaceholderWithSize:(CGSize)size inTextInput:(id)input
{
  height = size.height;
  width = size.width;
  inputCopy = input;
  selectedTextRange = [inputCopy selectedTextRange];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    if (width <= 0.0)
    {
      if (height <= 0.0)
      {
        string = 0;
        goto LABEL_22;
      }

      start = [selectedTextRange start];
      [inputCopy caretRectForPosition:start];
      v18 = v17;

      v19 = vcvtpd_s64_f64(height / v18);
      string = [MEMORY[0x1E696AD60] string];
      if (v19 >= 1)
      {
        do
        {
          [string appendString:@"\n"];
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

      string = [MEMORY[0x1E696AD60] string];
      do
      {
        [string appendString:@" "];
        --v15;
      }

      while (v15);
    }

    if (string && [self _callShouldInsertText:string inTextInput:inputCopy isMarkedText:0])
    {
      [self notifyTextWillChangeInTextInput:inputCopy];
      [inputCopy insertText:string];
      selectedTextRange2 = [inputCopy selectedTextRange];
      start2 = [selectedTextRange start];
      if (start2 && (v22 = start2, [selectedTextRange2 end], v23 = objc_claimAutoreleasedReturnValue(), v23, v22, v23))
      {
        start3 = [selectedTextRange start];
        v25 = [selectedTextRange2 end];
        v26 = [inputCopy textRangeFromPosition:start3 toPosition:v25];

        v27 = [inputCopy selectionRectsForRange:v26];
        v10 = [PKTextInputTextPlaceholder placeholderWithText:string rects:v27];
      }

      else
      {
        v26 = [selectedTextRange2 end];
        [inputCopy caretRectForPosition:v26];
        v10 = [PKTextInputTextPlaceholder placeholderWithToken:string frame:?];
      }

      goto LABEL_3;
    }

LABEL_22:

    v10 = 0;
    goto LABEL_23;
  }

  [self notifyTextWillChangeInTextInput:inputCopy];
  string = [inputCopy insertTextPlaceholderWithSize:{width, height}];
  v10 = [PKTextInputTextPlaceholder placeholderWithTextPlaceholder:string];
LABEL_3:

  if (v10)
  {
    start4 = [selectedTextRange start];
    start5 = [selectedTextRange start];
    v13 = [inputCopy textRangeFromPosition:start4 toPosition:start5];

    [inputCopy setSelectedTextRange:v13];
  }

  [self notifyTextDidChangeInTextInput:inputCopy];
LABEL_23:

  return v10;
}

+ (void)removeTextPlaceholder:(id)placeholder inTextInput:(id)input
{
  placeholderCopy = placeholder;
  inputCopy = input;
  placeholder = [placeholderCopy placeholder];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_opt_respondsToSelector();

    if (v8)
    {
      [self notifyTextWillChangeInTextInput:inputCopy];
      placeholder2 = [placeholderCopy placeholder];
      [inputCopy removeTextPlaceholder:placeholder2];

      [self notifyTextDidChangeInTextInput:inputCopy];
      goto LABEL_10;
    }
  }

  else
  {
  }

  placeholder3 = [placeholderCopy placeholder];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    placeholder4 = [placeholderCopy placeholder];
    selectedTextRange = [inputCopy selectedTextRange];
    start = [selectedTextRange start];
    v15 = [inputCopy positionFromPosition:start offset:{objc_msgSend(placeholder4, "length")}];

    start2 = [selectedTextRange start];
    v17 = [inputCopy textRangeFromPosition:start2 toPosition:v15];

    v18 = [inputCopy textInRange:v17];
    if ([v18 isEqualToString:placeholder4] && objc_msgSend(self, "_callShouldChangeTextInRange:replacementText:inTextInput:", v17, &stru_1F476BD20, inputCopy))
    {
      [self notifyTextWillChangeInTextInput:inputCopy];
      [inputCopy replaceRange:v17 withText:&stru_1F476BD20];
      [self notifyTextDidChangeInTextInput:inputCopy];
    }
  }

LABEL_10:
}

+ (BOOL)deleteTextInRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  v8 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
  if (v8 && [self _callShouldChangeTextInRange:v8 replacementText:&stru_1F476BD20 inTextInput:inputCopy])
  {
    [inputCopy setSelectedTextRange:v8];
    [inputCopy deleteBackward];
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (_NSRange)selectedRangeInTextInput:(id)input
{
  inputCopy = input;
  selectedTextRange = [inputCopy selectedTextRange];
  v6 = selectedTextRange;
  if (selectedTextRange)
  {
    start = [selectedTextRange start];
    v8 = [v6 end];
    v9 = [self _rangeFromUITextPosition:start toUITextPosition:v8 inTextInput:inputCopy];
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

+ (BOOL)selectTextInRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  v8 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
  LOBYTE(location) = [self _selectTextRange:v8 inTextInput:inputCopy];

  return location;
}

+ (BOOL)_selectTextRange:(id)range inTextInput:(id)input
{
  if (range)
  {
    inputCopy = input;
    rangeCopy = range;
    inputDelegate = [inputCopy inputDelegate];
    [inputDelegate selectionWillChange:inputCopy];
    [inputCopy setSelectedTextRange:rangeCopy];

    [inputDelegate selectionDidChange:inputCopy];
  }

  return range != 0;
}

+ (BOOL)setSelectionWithReferencePoint:(CGPoint)point inTextInput:(id)input
{
  y = point.y;
  x = point.x;
  inputCopy = input;
  v8 = [inputCopy closestPositionToPoint:{x, y}];
  if (v8)
  {
    v9 = [inputCopy textRangeFromPosition:v8 toPosition:v8];
  }

  else
  {
    v9 = 0;
  }

  v10 = [self _selectTextRange:v9 inTextInput:inputCopy];

  return v10;
}

+ (BOOL)selectWordBoundaryAtPoint:(CGPoint)point inTextInput:(id)input
{
  y = point.y;
  x = point.x;
  inputCopy = input;
  v8 = [inputCopy closestPositionToPoint:{x, y}];
  beginningOfDocument = [inputCopy beginningOfDocument];
  endOfDocument = [inputCopy endOfDocument];
  v11 = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __73__PKTextInputUITextInputInterface_selectWordBoundaryAtPoint_inTextInput___block_invoke;
  aBlock[3] = &unk_1E82DC288;
  v12 = inputCopy;
  v52 = v12;
  v13 = beginningOfDocument;
  v53 = v13;
  v14 = endOfDocument;
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

      tokenizer = [v12 tokenizer];
      v19 = [tokenizer positionFromPosition:v16 toBoundary:1 inDirection:1];

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

      tokenizer2 = [v12 tokenizer];
      v21 = [tokenizer2 positionFromPosition:v11 toBoundary:1 inDirection:0];

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
      v24 = [self _selectTextRange:v45 inTextInput:v12];

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

+ (BOOL)showSelectionCommandsForTextInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    inputDelegate = [inputCopy inputDelegate];
    v5 = objc_opt_respondsToSelector();
    if (v5)
    {
      [inputDelegate showSelectionCommands];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

+ (BOOL)configureSelectionStyleForHighlightInTextInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    interactionAssistant = [inputCopy interactionAssistant];
    v5 = interactionAssistant;
    v6 = interactionAssistant != 0;
    if (interactionAssistant)
    {
      [interactionAssistant configureForPencilHighlightMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)configureSelectionStyleForDeletionPreviewInTextInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    interactionAssistant = [inputCopy interactionAssistant];
    v5 = interactionAssistant;
    v6 = interactionAssistant != 0;
    if (interactionAssistant)
    {
      [interactionAssistant configureForPencilDeletionPreviewMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)configureSelectionStyleForNormalSelectionInTextInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    interactionAssistant = [inputCopy interactionAssistant];
    v5 = interactionAssistant;
    v6 = interactionAssistant != 0;
    if (interactionAssistant)
    {
      [interactionAssistant configureForSelectionMode];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CGRect)caretRectInCoordinateSpace:(id)space inTextInput:(id)input
{
  inputCopy = input;
  spaceCopy = space;
  selectedTextRange = [inputCopy selectedTextRange];
  start = [selectedTextRange start];
  [inputCopy caretRectForPosition:start];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  textInputView = [inputCopy textInputView];

  v18 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(textInputView, spaceCopy, v10, v12, v14, v16);
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

+ (_NSRange)activePreviewRangeInTextInput:(id)input
{
  inputCopy = input;
  beginningOfDocument = [inputCopy beginningOfDocument];
  markedTextRange = [inputCopy markedTextRange];
  v6 = markedTextRange;
  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  if (beginningOfDocument && markedTextRange)
  {
    start = [markedTextRange start];
    v8 = [inputCopy offsetFromPosition:beginningOfDocument toPosition:start];

    start2 = [v6 start];
    v11 = [v6 end];
    v7 = [inputCopy offsetFromPosition:start2 toPosition:v11];
  }

  v12 = v8;
  v13 = v7;
  result.length = v13;
  result.location = v12;
  return result;
}

+ (int64_t)contentLengthForTextInput:(id)input
{
  inputCopy = input;
  beginningOfDocument = [inputCopy beginningOfDocument];
  endOfDocument = [inputCopy endOfDocument];
  v7 = endOfDocument;
  v8 = 0;
  if (beginningOfDocument && endOfDocument)
  {
    beginningOfDocument2 = [inputCopy beginningOfDocument];
    endOfDocument2 = [inputCopy endOfDocument];
    [self _rangeFromUITextPosition:beginningOfDocument2 toUITextPosition:endOfDocument2 inTextInput:inputCopy];
    v8 = v11;
  }

  return v8;
}

+ (id)stringInRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  v8 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
  if (v8)
  {
    v9 = [inputCopy textInRange:v8];
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

+ (BOOL)isProtectedTextAttachment:(id)attachment
{
  attachmentCopy = attachment;
  fileType = [attachmentCopy fileType];

  if (fileType)
  {
    editableTextAttachmentFileTypes = [self editableTextAttachmentFileTypes];
    fileType2 = [attachmentCopy fileType];
    v8 = [editableTextAttachmentFileTypes containsObject:fileType2] ^ 1;
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

+ (id)protectedCharacterIndexesInRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  v8 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
  v9 = v8;
  if (v8 && ([v8 isEmpty] & 1) == 0 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
    v22 = [self selectedRangeInTextInput:inputCopy];
    v20 = v11;
    if (length)
    {
      v12 = 0;
      v21 = *MEMORY[0x1E69DB5F8];
      do
      {
        start = [v9 start];
        v14 = [inputCopy positionFromPosition:start offset:v12];

        if (v14)
        {
          v15 = 0;
          if (v22 != location || v20 || ([inputCopy positionFromPosition:v14 offset:1], v16 = objc_claimAutoreleasedReturnValue(), v14, v14 = v16, v15 = 1, v16))
          {
            v17 = [inputCopy textStylingAtPosition:v14 inDirection:v15];
            v18 = [v17 objectForKeyedSubscript:v21];
            if (v18 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [self isProtectedTextAttachment:v18])
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

+ (id)attributesAtCharacterIndex:(int64_t)index inTextInput:(id)input
{
  inputCopy = input;
  beginningOfDocument = [inputCopy beginningOfDocument];
  if (beginningOfDocument && (objc_opt_respondsToSelector() & 1) != 0 && ([inputCopy positionFromPosition:beginningOfDocument offset:index], (v7 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v8 = v7;
    v9 = [inputCopy textStylingAtPosition:v7 inDirection:0];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (_NSRange)rangeOfCharacterAtIndex:(unint64_t)index inTextInput:(id)input
{
  indexCopy = index;
  if (index >= 0xA)
  {
    v6 = index - 10;
  }

  else
  {
    v6 = 0;
  }

  v7 = index + 20;
  inputCopy = input;
  v9 = [self contentLengthForTextInput:inputCopy] - 1;
  if (v7 < v9)
  {
    v9 = v7;
  }

  v10 = [self stringInRange:v6 inTextInput:{v9 - v6, inputCopy}];

  if ([v10 length] <= indexCopy - v6)
  {
    v14 = 1;
  }

  else
  {
    v11 = [v10 rangeOfComposedCharacterSequenceAtIndex:indexCopy - v6];
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
      indexCopy = v13;
    }
  }

  v15 = indexCopy;
  v16 = v14;
  result.length = v16;
  result.location = v15;
  return result;
}

+ (CGRect)firstRectForRange:(_NSRange)range inCoordinateSpace:(id)space inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  spaceCopy = space;
  inputCopy = input;
  v11 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
  if (v11)
  {
    [inputCopy firstRectForRange:v11];
    v15 = v12;
    v17 = v16;
    v18 = v13;
    v19 = v14;
    if (v14 > 0.0)
    {
      v12 = v13 / v14;
      if (v13 / v14 > 1.0 && length == 1)
      {
        v21 = [inputCopy textInRange:{v11, v12}];
        if ([v21 length] == 1)
        {
          newlineCharacterSet = [MEMORY[0x1E696AB08] newlineCharacterSet];
          v23 = [newlineCharacterSet characterIsMember:{objc_msgSend(v21, "characterAtIndex:", 0)}];

          if (v23)
          {
            v18 = v19 * 0.5;
          }
        }
      }
    }

    textInputView = [inputCopy textInputView];
    v25 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(textInputView, spaceCopy, v15, v17, v18, v19);
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

+ (int64_t)characterIndexClosestToPoint:(CGPoint)point inCoordinateSpace:(id)space inTextInput:(id)input forInsertingText:(BOOL)text adjustForLastCharacter:(BOOL)character
{
  characterCopy = character;
  textCopy = text;
  y = point.y;
  x = point.x;
  inputCopy = input;
  spaceCopy = space;
  textInputView = [inputCopy textInputView];
  v16 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(spaceCopy, textInputView, x, y, *MEMORY[0x1E695F060], *(MEMORY[0x1E695F060] + 8));
  v18 = v17;

  v19 = [inputCopy closestPositionToPoint:{v16, v18}];
  beginningOfDocument = [inputCopy beginningOfDocument];
  endOfDocument = [inputCopy endOfDocument];
  v22 = endOfDocument;
  if (v19)
  {
    v23 = beginningOfDocument == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 || endOfDocument == 0)
  {
    v25 = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v26 = [inputCopy offsetFromPosition:beginningOfDocument toPosition:v19];
    if (v26 <= 1)
    {
      v27 = 1;
    }

    else
    {
      v27 = v26;
    }

    v28 = v27 - 1;
    if (textCopy)
    {
      v25 = v26;
    }

    else
    {
      v25 = v28;
    }

    if ([inputCopy offsetFromPosition:beginningOfDocument toPosition:v22] >= 1 && objc_msgSend(v19, "isEqual:", v22) && characterCopy)
    {
      v30 = [inputCopy positionFromPosition:v22 offset:-1];
      if (v30)
      {
        v31 = [self _rangeFromUITextPosition:v30 toUITextPosition:v22 inTextInput:inputCopy];
        v33 = v32;
        textInputView2 = [inputCopy textInputView];
        [self firstRectForRange:v31 inCoordinateSpace:v33 inTextInput:{textInputView2, inputCopy}];
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
            v45 = [inputCopy closestPositionToPoint:{v16, CGRectGetMidY(v51)}];

            if (v45)
            {
              v46 = [inputCopy offsetFromPosition:beginningOfDocument toPosition:v45];
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

+ (CGRect)caretRectForCharacterIndex:(int64_t)index inCoordinateSpace:(id)space inTextInput:(id)input
{
  spaceCopy = space;
  inputCopy = input;
  beginningOfDocument = [inputCopy beginningOfDocument];
  v10 = [inputCopy positionFromPosition:beginningOfDocument offset:index];

  if (v10)
  {
    [inputCopy caretRectForPosition:v10];
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v18 = v17;
    textInputView = [inputCopy textInputView];
    v20 = PK_convertRectFromCoordinateSpaceToCoordinateSpace(textInputView, spaceCopy, v12, v14, v16, v18);
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

+ (id)selectionRectsForRange:(_NSRange)range inCoordinateSpace:(id)space inTextInput:(id)input intersectingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  length = range.length;
  location = range.location;
  spaceCopy = space;
  inputCopy = input;
  v16 = [self _uiTextRangeForRange:location inTextInput:{length, inputCopy}];
  if (v16)
  {
    v17 = [inputCopy selectionRectsForRange:v16];
    v18 = [self rectValuesForSelectionRects:v17 inCoordinateSpace:spaceCopy inTextInput:inputCopy intersectingRect:{x, y, width, height}];
  }

  else
  {
    v18 = MEMORY[0x1E695E0F0];
  }

  return v18;
}

+ (id)rectValuesForSelectionRects:(id)rects inCoordinateSpace:(id)space inTextInput:(id)input intersectingRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  v38 = *MEMORY[0x1E69E9840];
  rectsCopy = rects;
  spaceCopy = space;
  inputCopy = input;
  array = [MEMORY[0x1E695DF70] array];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v16 = rectsCopy;
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
        textInputView = [inputCopy textInputView];
        [v21 rect];
        [textInputView PK_convertRect:spaceCopy toCoordinateSpace:?];
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
          [array addObject:v31];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v18);
  }

  return array;
}

+ (void)notifyTextWillChangeInTextInput:(id)input
{
  inputCopy = input;
  inputDelegate = [inputCopy inputDelegate];
  if (objc_opt_respondsToSelector())
  {
    [inputCopy willBeginPencilTextInputEditing];
  }

  [inputDelegate textWillChange:inputCopy];
}

+ (void)notifyTextDidChangeInTextInput:(id)input
{
  inputCopy = input;
  inputDelegate = [inputCopy inputDelegate];
  [inputDelegate textDidChange:inputCopy];
  if (objc_opt_respondsToSelector())
  {
    [inputCopy didFinishPencilTextInputEditing];
  }
}

+ (id)_uiTextRangeForRange:(_NSRange)range inTextInput:(id)input
{
  length = range.length;
  location = range.location;
  inputCopy = input;
  v7 = inputCopy;
  if (location == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    beginningOfDocument = [inputCopy beginningOfDocument];
    v10 = [v7 positionFromPosition:beginningOfDocument offset:location];

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

+ (_NSRange)_rangeFromUITextPosition:(id)position toUITextPosition:(id)textPosition inTextInput:(id)input
{
  positionCopy = position;
  textPositionCopy = textPosition;
  inputCopy = input;
  beginningOfDocument = [inputCopy beginningOfDocument];
  if (!positionCopy || !beginningOfDocument)
  {

    goto LABEL_6;
  }

  if (!textPositionCopy)
  {
LABEL_6:
    v13 = 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_7;
  }

  beginningOfDocument2 = [inputCopy beginningOfDocument];
  v12 = [inputCopy offsetFromPosition:beginningOfDocument2 toPosition:positionCopy];

  v13 = [inputCopy offsetFromPosition:positionCopy toPosition:textPositionCopy];
LABEL_7:

  v14 = v12;
  v15 = v13;
  result.length = v15;
  result.location = v14;
  return result;
}

@end