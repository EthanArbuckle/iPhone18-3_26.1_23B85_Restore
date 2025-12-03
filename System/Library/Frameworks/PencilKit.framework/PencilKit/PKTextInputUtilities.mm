@interface PKTextInputUtilities
+ (BOOL)isMagicCanvasGenerationView:(id)view;
+ (BOOL)isResponderSupportedTextInput:(id)input checkForNotes:(BOOL)notes outTextInputTraits:(id *)traits;
+ (BOOL)isTextInputResponder:(id)responder;
+ (BOOL)isUnderMagicView:(id)view;
+ (BOOL)isValidReachableInteraction:(id)interaction;
+ (BOOL)shouldAvoidNonEditableView:(id)view;
+ (BOOL)textInputTraitsAreSecure:(id)secure;
+ (CGRect)selectionClipRectForTextInput:(id)input;
+ (Class)notesTextViewClass;
+ (id)_notesTextViewFromResponder:(id)responder;
+ (id)nonEditableTextInputForView:(id)view;
+ (id)textInputTraitsFromTextInput:(id)input;
+ (int64_t)responderTextInputSource:(id)source;
+ (void)adjustSelectionWithDelta:(_NSRange)delta forWebDocumentSourceView:(id)view completionHandler:(id)handler;
+ (void)markAnalyticsForDeletionCount:(unint64_t)count rangeToReplace:(_NSRange)replace;
+ (void)markAnalyticsForInsertionWithTexts:(id)texts rangeToReplace:(_NSRange)replace;
+ (void)markAnalyticsForInsertionWithTexts:(id)texts rangeToReplace:(_NSRange)replace withAlternatives:(int64_t)alternatives;
+ (void)markAnalyticsForRedo;
+ (void)markAnalyticsForSelectionChange:(_NSRange)change relativeRangeBefore:(_NSRange)before;
+ (void)markAnalyticsForUndo;
+ (void)removeTextAlternativesForTextInput:(id)input;
+ (void)requestDocumentContext:(id)context forWebDocumentSourceView:(id)view completionHandler:(id)handler;
@end

@implementation PKTextInputUtilities

+ (BOOL)isTextInputResponder:(id)responder
{
  responderCopy = responder;
  if (objc_opt_respondsToSelector())
  {
    v4 = [responderCopy conformsToProtocol:&unk_1F4840D28];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)textInputTraitsFromTextInput:(id)input
{
  inputCopy = input;
  if ((objc_opt_respondsToSelector() & 1) != 0 && ([inputCopy conformsToProtocol:&unk_1F485D388] & 1) == 0)
  {
    v5 = MEMORY[0x1E69DD108];
    textInputTraits = [inputCopy textInputTraits];
    v4 = [v5 traitsByAdoptingTraits:textInputTraits lightweight:1];
  }

  else
  {
    v4 = [MEMORY[0x1E69DD108] traitsByAdoptingTraits:inputCopy lightweight:1];
  }

  return v4;
}

+ (BOOL)textInputTraitsAreSecure:(id)secure
{
  secureCopy = secure;
  if ([secureCopy isSecureTextEntry])
  {
    v4 = 1;
  }

  else
  {
    v5 = *MEMORY[0x1E69DE528];
    textContentType = [secureCopy textContentType];
    if ([v5 isEqualToString:textContentType])
    {
      v4 = 1;
    }

    else
    {
      v7 = *MEMORY[0x1E69DE500];
      textContentType2 = [secureCopy textContentType];
      v4 = [v7 isEqualToString:textContentType2];
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

+ (id)_notesTextViewFromResponder:(id)responder
{
  responderCopy = responder;
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];
  v7 = [bundleIdentifier isEqual:@"com.apple.mobilenotes"];

  if (v7)
  {
    [self notesTextViewClass];
    v8 = responderCopy;
    if (v8)
    {
      do
      {
        if (objc_opt_isKindOfClass())
        {
          break;
        }

        nextResponder = [v8 nextResponder];

        v8 = nextResponder;
      }

      while (nextResponder);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)isValidReachableInteraction:(id)interaction
{
  v3 = [self _notesTextViewFromResponder:interaction];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 ink];
    _isHandwritingInk = [v5 _isHandwritingInk];
  }

  else
  {
    _isHandwritingInk = 1;
  }

  return _isHandwritingInk;
}

+ (BOOL)isUnderMagicView:(id)view
{
  superview = [view superview];
  if (!superview)
  {
    return 0;
  }

  v4 = superview;
  do
  {
    v5 = [PKTextInputUtilities isMagicCanvasGenerationView:v4];
    if (v5)
    {
      break;
    }

    superview2 = [v4 superview];

    v4 = superview2;
  }

  while (superview2);

  return v5;
}

+ (BOOL)isMagicCanvasGenerationView:(id)view
{
  viewCopy = view;
  if (objc_opt_respondsToSelector())
  {
    magicGenerativeViewForHitTesting = [viewCopy magicGenerativeViewForHitTesting];
    v5 = magicGenerativeViewForHitTesting != 0;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BOOL)isResponderSupportedTextInput:(id)input checkForNotes:(BOOL)notes outTextInputTraits:(id *)traits
{
  inputCopy = input;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_9;
  }

  v8 = [self textInputTraitsFromTextInput:inputCopy];
  v9 = v8;
  if (traits)
  {
    v10 = v8;
    *traits = v9;
  }

  v11 = [self textInputTraitsAreSecure:v9];

  if ((v11 & 1) == 0 && [PKTextInputUtilities isTextInputResponder:inputCopy])
  {
    v12 = [self _notesTextViewFromResponder:inputCopy];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 ink];
      _isHandwritingInk = [v14 _isHandwritingInk];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        _isHandwritingInk |= [PKTextInputUtilities isUnderMagicView:inputCopy];
      }
    }

    else
    {
      LOBYTE(_isHandwritingInk) = 1;
    }
  }

  else
  {
LABEL_9:
    v13 = 0;
    LOBYTE(_isHandwritingInk) = 0;
  }

  return _isHandwritingInk;
}

+ (int64_t)responderTextInputSource:(id)source
{
  sourceCopy = source;
  if (objc_opt_respondsToSelector())
  {
    _textInputSource = [sourceCopy _textInputSource];
  }

  else
  {
    _textInputSource = 0;
  }

  return _textInputSource;
}

+ (BOOL)shouldAvoidNonEditableView:(id)view
{
  viewCopy = view;
  if (qword_1ED6A4F28 != -1)
  {
    dispatch_once(&qword_1ED6A4F28, &__block_literal_global_457);
  }

  if (qword_1ED6A4F20 && (objc_opt_isKindOfClass() & 1) != 0)
  {
LABEL_5:
    LOBYTE(superview) = 1;
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
    LOBYTE(superview) = 0;
    goto LABEL_16;
  }

  superview = [viewCopy superview];
  if (superview)
  {
    while ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v4Superview = [superview superview];

      superview = v4Superview;
      if (!v4Superview)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_5;
  }

LABEL_16:

  return superview;
}

Class __51__PKTextInputUtilities_shouldAvoidNonEditableView___block_invoke()
{
  qword_1ED6A4F10 = NSClassFromString(&cfstr_Mupdfview.isa);
  qword_1ED6A4F18 = NSClassFromString(&cfstr_Pdfdocumentvie.isa);
  result = NSClassFromString(&cfstr_Pdftextinputvi.isa);
  qword_1ED6A4F20 = result;
  return result;
}

+ (id)nonEditableTextInputForView:(id)view
{
  v21 = *MEMORY[0x1E69E9840];
  viewCopy = view;
  if (viewCopy && ([self shouldAvoidNonEditableView:viewCopy] & 1) != 0)
  {
    goto LABEL_7;
  }

  if ([self isResponderSupportedTextInput:viewCopy checkForNotes:0 outTextInputTraits:0])
  {
    if ((objc_opt_respondsToSelector() & 1) != 0 && ([viewCopy isEditable] & 1) == 0)
    {
      if ((objc_opt_respondsToSelector() & 1) != 0 && ![viewCopy isSelectable])
      {
        goto LABEL_7;
      }
    }

    else if ([viewCopy canBecomeFirstResponder])
    {
LABEL_7:
      v5 = 0;
      goto LABEL_28;
    }

    v5 = viewCopy;
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    interactions = [viewCopy interactions];
    v7 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = *v17;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(interactions);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          v11 = objc_opt_class();
          if (v11 == objc_opt_class())
          {
            v7 = v10;
            goto LABEL_18;
          }
        }

        v7 = [interactions countByEnumeratingWithState:&v16 objects:v20 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:

    textInput = [v7 textInput];
    if ([textInput conformsToProtocol:&unk_1F4840D28] && (objc_opt_respondsToSelector() & 1) != 0)
    {
      interactionAssistant = [textInput interactionAssistant];

      if (interactionAssistant)
      {
        v14 = textInput;
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

+ (void)requestDocumentContext:(id)context forWebDocumentSourceView:(id)view completionHandler:(id)handler
{
  contextCopy = context;
  viewCopy = view;
  handlerCopy = handler;
  if ([viewCopy conformsToProtocol:&unk_1F485D388])
  {
    v10 = viewCopy;
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
    v13 = [[v11 alloc] _initWithUIKitDocumentRequest:contextCopy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __90__PKTextInputUtilities_requestDocumentContext_forWebDocumentSourceView_completionHandler___block_invoke;
    v17[3] = &unk_1E82D6448;
    v18 = handlerCopy;
    v14 = handlerCopy;
    [v10 requestDocumentContext:v13 completionHandler:v17];
  }

  else
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __90__PKTextInputUtilities_requestDocumentContext_forWebDocumentSourceView_completionHandler___block_invoke_2;
    v15[3] = &unk_1E82D6470;
    v16 = handlerCopy;
    v10 = handlerCopy;
    [viewCopy requestDocumentContext:contextCopy completionHandler:v15];
    v13 = v16;
  }
}

void __90__PKTextInputUtilities_requestDocumentContext_forWebDocumentSourceView_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 _uikitDocumentContext];
  (*(*(a1 + 32) + 16))();
}

+ (void)adjustSelectionWithDelta:(_NSRange)delta forWebDocumentSourceView:(id)view completionHandler:(id)handler
{
  length = delta.length;
  location = delta.location;
  viewCopy = view;
  handlerCopy = handler;
  if ([viewCopy conformsToProtocol:&unk_1F485D388])
  {
    [viewCopy adjustSelectionByRange:location completionHandler:{length, handlerCopy}];
  }

  else
  {
    [viewCopy adjustSelectionWithDelta:location completionHandler:{length, handlerCopy}];
  }
}

+ (CGRect)selectionClipRectForTextInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    [inputCopy selectionClipRect];
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

    [inputCopy _selectionClipRect];
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

+ (void)removeTextAlternativesForTextInput:(id)input
{
  inputCopy = input;
  if (objc_opt_respondsToSelector())
  {
    [inputCopy removeTextAlternatives];
  }

  if (objc_opt_respondsToSelector())
  {
    [inputCopy removeEmojiAlternatives];
  }
}

+ (void)markAnalyticsForInsertionWithTexts:(id)texts rangeToReplace:(_NSRange)replace
{
  length = replace.length;
  location = replace.location;
  v8 = [texts componentsJoinedByString:&stru_1F476BD20];
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [activeKeyboardSceneDelegate _textInputSessionAnalytics];
  [_textInputSessionAnalytics didInsertText:v8 relativeRangeBefore:{location, length}];
}

+ (void)markAnalyticsForInsertionWithTexts:(id)texts rangeToReplace:(_NSRange)replace withAlternatives:(int64_t)alternatives
{
  length = replace.length;
  location = replace.location;
  v10 = [texts componentsJoinedByString:&stru_1F476BD20];
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [activeKeyboardSceneDelegate _textInputSessionAnalytics];
  [_textInputSessionAnalytics didInsertText:v10 relativeRangeBefore:location withNumAlternatives:{length, alternatives}];
}

+ (void)markAnalyticsForDeletionCount:(unint64_t)count rangeToReplace:(_NSRange)replace
{
  length = replace.length;
  location = replace.location;
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [activeKeyboardSceneDelegate _textInputSessionAnalytics];

  if (objc_opt_respondsToSelector())
  {
    [_textInputSessionAnalytics didDeleteBackwardCount:count];
  }

  else if (objc_opt_respondsToSelector())
  {
    [_textInputSessionAnalytics didDeleteBackward:count relativeRangeBefore:{location, length}];
  }
}

+ (void)markAnalyticsForSelectionChange:(_NSRange)change relativeRangeBefore:(_NSRange)before
{
  length = before.length;
  location = before.location;
  v6 = change.length;
  v7 = change.location;
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [activeKeyboardSceneDelegate _textInputSessionAnalytics];
  [_textInputSessionAnalytics didChangeToSelection:v7 relativeRangeBefore:{v6, location, length}];
}

+ (void)markAnalyticsForUndo
{
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [activeKeyboardSceneDelegate _textInputSessionAnalytics];
  [_textInputSessionAnalytics didUndo];
}

+ (void)markAnalyticsForRedo
{
  activeKeyboardSceneDelegate = [MEMORY[0x1E69DCC08] activeKeyboardSceneDelegate];
  _textInputSessionAnalytics = [activeKeyboardSceneDelegate _textInputSessionAnalytics];
  [_textInputSessionAnalytics didRedo];
}

@end