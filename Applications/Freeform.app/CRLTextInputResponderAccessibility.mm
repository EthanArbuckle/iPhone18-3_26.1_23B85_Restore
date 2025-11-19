@interface CRLTextInputResponderAccessibility
- (BOOL)crlaxIsFirstResponder;
- (UITextRange)crlaxTextRange;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilityResponderElement;
- (id)_crlaxInteractiveCanvasController;
- (id)crlaxFocusedElement;
- (id)crlaxTextEditor;
- (id)crlaxVoiceControlPositionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(unint64_t)a5;
- (void)crlaxReloadInputViews;
- (void)forwardInvocation:(id)a3;
@end

@implementation CRLTextInputResponderAccessibility

- (void)crlaxReloadInputViews
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1002B52B4;
  v2[3] = &unk_10183AB38;
  v2[4] = self;
  if (__CRLAccessibilityPerformSafeBlock(v2))
  {
    abort();
  }
}

- (id)crlaxVoiceControlPositionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(unint64_t)a5
{
  v8 = (a4 & 0xFFFFFFFFFFFFFFFELL) == 4;
  v9 = a3;
  v10 = v9;
  if (a5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
    v12 = [v11 tokenizer];

    v10 = v9;
    if (a5)
    {
      v13 = 4 * v8;
      v14 = v9;
      do
      {
        v10 = [v12 positionFromPosition:v14 toBoundary:v13 inDirection:a4];

        v14 = v10;
        --a5;
      }

      while (a5);
    }
  }

  return v10;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v5 = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  v6 = [v5 editor];

  if (!v6)
  {
    goto LABEL_11;
  }

  v7 = [v4 selector];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (v7 == "copy:")
  {
    v8 = &CRLAccessibilityTextOperationActionCopy;
  }

  else if (v7 == "cut:")
  {
    v8 = &CRLAccessibilityTextOperationActionCut;
  }

  else
  {
    if (v7 != "paste:")
    {
LABEL_11:
      v11.receiver = self;
      v11.super_class = CRLTextInputResponderAccessibility;
      [(CRLTextInputResponderAccessibility *)&v11 forwardInvocation:v4];
      goto LABEL_12;
    }

    v8 = &CRLAccessibilityTextOperationActionPaste;
  }

  v9 = *v8;
  if (!v9)
  {
    goto LABEL_11;
  }

  v10 = v9;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1002B5544;
  v12[3] = &unk_10183AE28;
  v13 = v4;
  v14 = self;
  [(CRLTextInputResponderAccessibility *)self crlaxHandleTextOperationAction:v10 usingBlock:v12];

LABEL_12:
}

- (id)_accessibilityResponderElement
{
  v3 = +[CRLAccessibility sharedInstance];
  if ([v3 shouldPreventFocusingCanvasResponderElementOnScreenChange])
  {
    v4 = 0;
  }

  else
  {
    v4 = [(CRLTextInputResponderAccessibility *)self crlaxFocusedElement];
  }

  return v4;
}

- (id)crlaxFocusedElement
{
  v3 = [(CRLTextInputResponderAccessibility *)self crlaxTextEditor];
  v4 = [v3 editingReps];
  v5 = [v4 allObjects];
  v6 = [v5 firstObject];

  if (!v6)
  {
    v7 = [(CRLTextInputResponderAccessibility *)self _crlaxInteractiveCanvasController];
    v8 = [v7 crlaxFocusedRep];

    v6 = [v8 crlaxFocusedElement];
  }

  return v6;
}

- (BOOL)crlaxIsFirstResponder
{
  v2 = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  v3 = [v2 isFirstResponder];

  return v3;
}

- (UITextRange)crlaxTextRange
{
  v10 = 0;
  v2 = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClassAndProtocol(v3, &OBJC_PROTOCOL___UITextInput, v2, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v5 = v4;

  v6 = [v5 beginningOfDocument];
  v7 = [v5 endOfDocument];
  v8 = [v5 textRangeFromPosition:v6 toPosition:v7];

  return v8;
}

- (id)_crlaxInteractiveCanvasController
{
  v8 = 0;
  v2 = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  v3 = [v2 icc];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (id)_accessibilityQuickSpeakContent
{
  v3 = objc_opt_class();
  v4 = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  v5 = [v4 selectedTextRange];
  v6 = __CRLAccessibilityCastAsClass(v3, v5, 0, 0);

  if (![(CRLTextInputResponderAccessibility *)self crlaxBoolValueForKey:@"_accessibilityIsTextInput"]|| (v7 = 0, v6))
  {
    v9.receiver = self;
    v9.super_class = CRLTextInputResponderAccessibility;
    v7 = [(CRLTextInputResponderAccessibility *)&v9 _accessibilityQuickSpeakContent];
  }

  return v7;
}

- (id)crlaxTextEditor
{
  v8 = 0;
  v2 = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  v3 = [v2 editor];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end