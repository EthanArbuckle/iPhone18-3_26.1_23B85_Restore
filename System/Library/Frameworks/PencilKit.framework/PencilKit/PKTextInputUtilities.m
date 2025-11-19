@interface PKTextInputUtilities
+ (BOOL)isMagicCanvasGenerationView:(id)a3;
+ (BOOL)isResponderSupportedTextInput:(id)a3 checkForNotes:(BOOL)a4 outTextInputTraits:(id *)a5;
+ (BOOL)isTextInputResponder:(id)a3;
+ (BOOL)isUnderMagicView:(id)a3;
+ (BOOL)isValidReachableInteraction:(id)a3;
+ (BOOL)shouldAvoidNonEditableView:(id)a3;
+ (BOOL)textInputTraitsAreSecure:(id)a3;
+ (CGRect)selectionClipRectForTextInput:(id)a3;
+ (Class)notesTextViewClass;
+ (id)_notesTextViewFromResponder:(id)a3;
+ (id)nonEditableTextInputForView:(id)a3;
+ (id)textInputTraitsFromTextInput:(id)a3;
+ (int64_t)responderTextInputSource:(id)a3;
+ (void)adjustSelectionWithDelta:(_NSRange)a3 forWebDocumentSourceView:(id)a4 completionHandler:(id)a5;
+ (void)markAnalyticsForDeletionCount:(unint64_t)a3 rangeToReplace:(_NSRange)a4;
+ (void)markAnalyticsForInsertionWithTexts:(id)a3 rangeToReplace:(_NSRange)a4;
+ (void)markAnalyticsForInsertionWithTexts:(id)a3 rangeToReplace:(_NSRange)a4 withAlternatives:(int64_t)a5;
+ (void)markAnalyticsForRedo;
+ (void)markAnalyticsForSelectionChange:(_NSRange)a3 relativeRangeBefore:(_NSRange)a4;
+ (void)markAnalyticsForUndo;
+ (void)removeTextAlternativesForTextInput:(id)a3;
+ (void)requestDocumentContext:(id)a3 forWebDocumentSourceView:(id)a4 completionHandler:(id)a5;
@end

@implementation PKTextInputUtilities

+ (BOOL)isTextInputResponder:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 conformsToProtocol:&unk_1F4840D28];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)textInputTraitsFromTextInput:(id)a3
{
  v3 = a3;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([v3 conformsToProtocol:&unk_1F485D388] & 1) == 0)
  {
    v5 = MEMORY[0x1E69DD108];
    v6 = [v3 textInputTraits];
    v4 = [v5 traitsByAdoptingTraits:v6 lightweight:1];
  }

  else
  {
    v4 = [MEMORY[0x1E69DD108] traitsByAdoptingTraits:v3 lightweight:1];
  }

  return v4;
}

+ (BOOL)textInputTraitsAreSecure:(id)a3
{
  v3 = a3;
  if ([v3 isSecureTextEntry])
  {
    v4 = 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69DE528];
    v6 = [v3 textContentType];
    if ([v5 isEqualToString:v6])
    {
      v4 = 1;
    }

    else
    {
      v7 = *MEMORY[0x1E69DE500];
      v8 = [v3 textContentType];
      v4 = [v7 isEqualToString:v8];
    }
  }

  return v4;
}

+ (Class)notesTextViewClass
{
  if (qword_1ED6A4F08 != -1)
  {
    dispatch_once(&qword_1ED6A4F08, &__block_literal_global);
  }

  v3 = _MergedGlobals_116;

  return v3;
}

Class __42__PKTextInputUtilities_notesTextViewClass__block_invoke()
{
  result = NSClassFromString(&cfstr_Ictextview.isa);
  _MergedGlobals_116 = result;
  return result;
}

+ (id)_notesTextViewFromResponder:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] mainBundle];
  v6 = [v5 bundleIdentifier];
  v7 = [v6 isEqual:@"com.apple.mobilenotes"];

  if (v7)
  {
    [a1 notesTextViewClass];
    v8 = v4;
    if (v8)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        v9 = [v8 nextResponder];

        v8 = v9;
      }

      while (v9);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isValidReachableInteraction:(id)a3
{
  v3 = [a1 _notesTextViewFromResponder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ink];
    v6 = [v5 _isHandwritingInk];
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

+ (BOOL)isUnderMagicView:(id)a3
{
  v3 = [a3 superview];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  do
  {
    v5 = [PKTextInputUtilities isMagicCanvasGenerationView:v4];
    if (v5)
    {
      break;
    }

    v6 = [v4 superview];

    v4 = v6;
  }

  while (v6);

  return v5;
}

+ (BOOL)isMagicCanvasGenerationView:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 magicGenerativeViewForHitTesting];
    v5 = v4 != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isResponderSupportedTextInput:(id)a3 checkForNotes:(BOOL)a4 outTextInputTraits:(id *)a5
{
  v7 = a3;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [a1 textInputTraitsFromTextInput:v7];
  v9 = v8;
  if (a5)
  {
    v10 = v8;
    *a5 = v9;
  }

  v11 = [a1 textInputTraitsAreSecure:v9];

  if ((v11 & 1) == 0 && [PKTextInputUtilities isTextInputResponder:v7])
  {
    v12 = [a1 _notesTextViewFromResponder:v7];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 ink];
      v15 = [v14 _isHandwritingInk];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 |= [PKTextInputUtilities isUnderMagicView:v7];
      }
    }

    else
    {
      LOBYTE(v15) = 1;
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
    LOBYTE(v15) = 0;
  }

  return v15;
}

+ (int64_t)responderTextInputSource:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    v4 = [v3 _textInputSource];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldAvoidNonEditableView:(id)a3
{
  v3 = a3;
  if (qword_1ED6A4F28 != -1)
  {
    dispatch_once(&qword_1ED6A4F28, &__block_literal_global_457);
  }

  if (qword_1ED6A4F20 && (objc_opt_isKindOfClass() & 1) != 0)
  {
LABEL_5:
    LOBYTE(v4) = 1;
    goto LABEL_16;
  }

  if (qword_1ED6A4F10)
  {
    v5 = qword_1ED6A4F18 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    LOBYTE(v4) = 0;
    goto LABEL_16;
  }

  v4 = [v3 superview];
  if (v4)
  {
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v6 = [v4 superview];

      v4 = v6;
      if (!v6)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_5;
  }

LABEL_16:

  return v4;
}

Class __51__PKTextInputUtilities_shouldAvoidNonEditableView___block_invoke()
{
  qword_1ED6A4F10 = NSClassFromString(&cfstr_Mupdfview.isa);
  qword_1ED6A4F18 = NSClassFromString(&cfstr_Pdfdocumentvie.isa);
  result = NSClassFromString(&cfstr_Pdftextinputvi.isa);
  qword_1ED6A4F20 = result;
  return result;
}

+ (id)nonEditableTextInputForView:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4 && ([a1 shouldAvoidNonEditableView:v4] & 1) != 0)
  {
    goto LABEL_7;
  }

  if ([a1 isResponderSupportedTextInput:v4 checkForNotes:0 outTextInputTraits:0])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([v4 isEditable] & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![v4 isSelectable])
      {
        goto LABEL_7;
      }
    }

    else if ([v4 canBecomeFirstResponder])
    {
LABEL_7:
      v5 = 0;
      goto LABEL_28;
    }

    v5 = v4;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [v4 interactions];
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = objc_opt_class();
          if (v11 == objc_opt_class())
          {
            v7 = v10;
            goto LABEL_18;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    v12 = [v7 textInput];
    if ([v12 conformsToProtocol:&unk_1F4840D28] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v13 = [v12 interactionAssistant];

      if (v13)
      {
        v14 = v12;
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }

    v5 = v14;
  }

LABEL_28:

  return v5;
}

+ (void)requestDocumentContext:(id)a3 forWebDocumentSourceView:(id)a4 completionHandler:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v8 conformsToProtocol:&unk_1F485D388])
  {
    v10 = v8;
    v20 = 0;
    v21 = &v20;
    v22 = 0x2050000000;
    v11 = qword_1ED6A4F30;
    v23 = qword_1ED6A4F30;
    if (!qword_1ED6A4F30)
    {
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __getBETextDocumentRequestClass_block_invoke;
      v19[3] = &unk_1E82D6498;
      v19[4] = &v20;
      __getBETextDocumentRequestClass_block_invoke(v19);
      v11 = v21[3];
    }

    v12 = v11;
    _Block_object_dispose(&v20, 8);
    v13 = [[v11 alloc] _initWithUIKitDocumentRequest:v7];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__PKTextInputUtilities_requestDocumentContext_forWebDocumentSourceView_completionHandler___block_invoke;
    v17[3] = &unk_1E82D6448;
    v18 = v9;
    v14 = v9;
    [v10 requestDocumentContext:v13 completionHandler:v17];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PKTextInputUtilities_requestDocumentContext_forWebDocumentSourceView_completionHandler___block_invoke_2;
    v15[3] = &unk_1E82D6470;
    v16 = v9;
    v10 = v9;
    [v8 requestDocumentContext:v7 completionHandler:v15];
    v13 = v16;
  }
}

void __90__PKTextInputUtilities_requestDocumentContext_forWebDocumentSourceView_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _uikitDocumentContext];
  (*(*(a1 + 32) + 16))();
}

+ (void)adjustSelectionWithDelta:(_NSRange)a3 forWebDocumentSourceView:(id)a4 completionHandler:(id)a5
{
  length = a3.length;
  location = a3.location;
  v9 = a4;
  v8 = a5;
  if ([v9 conformsToProtocol:&unk_1F485D388])
  {
    [v9 adjustSelectionByRange:location completionHandler:{length, v8}];
  }

  else
  {
    [v9 adjustSelectionWithDelta:location completionHandler:{length, v8}];
  }
}

+ (CGRect)selectionClipRectForTextInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 selectionClipRect];
  }

  else
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      v8 = *MEMORY[0x1E695F050];
      v9 = *(MEMORY[0x1E695F050] + 8);
      v10 = *(MEMORY[0x1E695F050] + 16);
      v11 = *(MEMORY[0x1E695F050] + 24);
      goto LABEL_7;
    }

    [v3 _selectionClipRect];
  }

  v8 = v4;
  v9 = v5;
  v10 = v6;
  v11 = v7;
LABEL_7:

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

+ (void)removeTextAlternativesForTextInput:(id)a3
{
  v3 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v3 removeTextAlternatives];
  }

  if (objc_opt_respondsToSelector())
  {
    [v3 removeEmojiAlternatives];
  }
}

+ (void)markAnalyticsForInsertionWithTexts:(id)a3 rangeToReplace:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = [a3 componentsJoinedByString:&stru_1F476BD20];
  v6 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v7 = [v6 _textInputSessionAnalytics];
  [v7 didInsertText:v8 relativeRangeBefore:{location, length}];
}

+ (void)markAnalyticsForInsertionWithTexts:(id)a3 rangeToReplace:(_NSRange)a4 withAlternatives:(int64_t)a5
{
  length = a4.length;
  location = a4.location;
  v10 = [a3 componentsJoinedByString:&stru_1F476BD20];
  v8 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v9 = [v8 _textInputSessionAnalytics];
  [v9 didInsertText:v10 relativeRangeBefore:location withNumAlternatives:{length, a5}];
}

+ (void)markAnalyticsForDeletionCount:(unint64_t)a3 rangeToReplace:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v8 = [v7 _textInputSessionAnalytics];

  if (objc_opt_respondsToSelector())
  {
    [v8 didDeleteBackwardCount:a3];
  }

  else if (objc_opt_respondsToSelector())
  {
    [v8 didDeleteBackward:a3 relativeRangeBefore:{location, length}];
  }
}

+ (void)markAnalyticsForSelectionChange:(_NSRange)a3 relativeRangeBefore:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v6 = a3.length;
  v7 = a3.location;
  v9 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v8 = [v9 _textInputSessionAnalytics];
  [v8 didChangeToSelection:v7 relativeRangeBefore:{v6, location, length}];
}

+ (void)markAnalyticsForUndo
{
  v3 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v2 = [v3 _textInputSessionAnalytics];
  [v2 didUndo];
}

+ (void)markAnalyticsForRedo
{
  v3 = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  v2 = [v3 _textInputSessionAnalytics];
  [v2 didRedo];
}

@end