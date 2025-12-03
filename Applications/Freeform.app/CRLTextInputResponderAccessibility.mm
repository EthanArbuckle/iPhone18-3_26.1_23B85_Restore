@interface CRLTextInputResponderAccessibility
- (BOOL)crlaxIsFirstResponder;
- (UITextRange)crlaxTextRange;
- (id)_accessibilityQuickSpeakContent;
- (id)_accessibilityResponderElement;
- (id)_crlaxInteractiveCanvasController;
- (id)crlaxFocusedElement;
- (id)crlaxTextEditor;
- (id)crlaxVoiceControlPositionFromPosition:(id)position inDirection:(int64_t)direction offset:(unint64_t)offset;
- (void)crlaxReloadInputViews;
- (void)forwardInvocation:(id)invocation;
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

- (id)crlaxVoiceControlPositionFromPosition:(id)position inDirection:(int64_t)direction offset:(unint64_t)offset
{
  v8 = (direction & 0xFFFFFFFFFFFFFFFELL) == 4;
  positionCopy = position;
  v10 = positionCopy;
  if (offset != 0x7FFFFFFFFFFFFFFFLL)
  {
    crlaxTarget = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
    tokenizer = [crlaxTarget tokenizer];

    v10 = positionCopy;
    if (offset)
    {
      v13 = 4 * v8;
      v14 = positionCopy;
      do
      {
        v10 = [tokenizer positionFromPosition:v14 toBoundary:v13 inDirection:direction];

        v14 = v10;
        --offset;
      }

      while (offset);
    }
  }

  return v10;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  crlaxTarget = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  editor = [crlaxTarget editor];

  if (!editor)
  {
    goto LABEL_11;
  }

  selector = [invocationCopy selector];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_11;
  }

  if (selector == "copy:")
  {
    v8 = &CRLAccessibilityTextOperationActionCopy;
  }

  else if (selector == "cut:")
  {
    v8 = &CRLAccessibilityTextOperationActionCut;
  }

  else
  {
    if (selector != "paste:")
    {
LABEL_11:
      v11.receiver = self;
      v11.super_class = CRLTextInputResponderAccessibility;
      [(CRLTextInputResponderAccessibility *)&v11 forwardInvocation:invocationCopy];
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
  v13 = invocationCopy;
  selfCopy = self;
  [(CRLTextInputResponderAccessibility *)self crlaxHandleTextOperationAction:v10 usingBlock:v12];

LABEL_12:
}

- (id)_accessibilityResponderElement
{
  v3 = +[CRLAccessibility sharedInstance];
  if ([v3 shouldPreventFocusingCanvasResponderElementOnScreenChange])
  {
    crlaxFocusedElement = 0;
  }

  else
  {
    crlaxFocusedElement = [(CRLTextInputResponderAccessibility *)self crlaxFocusedElement];
  }

  return crlaxFocusedElement;
}

- (id)crlaxFocusedElement
{
  crlaxTextEditor = [(CRLTextInputResponderAccessibility *)self crlaxTextEditor];
  editingReps = [crlaxTextEditor editingReps];
  allObjects = [editingReps allObjects];
  firstObject = [allObjects firstObject];

  if (!firstObject)
  {
    _crlaxInteractiveCanvasController = [(CRLTextInputResponderAccessibility *)self _crlaxInteractiveCanvasController];
    crlaxFocusedRep = [_crlaxInteractiveCanvasController crlaxFocusedRep];

    firstObject = [crlaxFocusedRep crlaxFocusedElement];
  }

  return firstObject;
}

- (BOOL)crlaxIsFirstResponder
{
  crlaxTarget = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  isFirstResponder = [crlaxTarget isFirstResponder];

  return isFirstResponder;
}

- (UITextRange)crlaxTextRange
{
  v10 = 0;
  selfCopy = self;
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClassAndProtocol(v3, &OBJC_PROTOCOL___UITextInput, selfCopy, 1, &v10);
  if (v10 == 1)
  {
    abort();
  }

  v5 = v4;

  beginningOfDocument = [v5 beginningOfDocument];
  endOfDocument = [v5 endOfDocument];
  v8 = [v5 textRangeFromPosition:beginningOfDocument toPosition:endOfDocument];

  return v8;
}

- (id)_crlaxInteractiveCanvasController
{
  v8 = 0;
  crlaxTarget = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  v3 = [crlaxTarget icc];

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
  crlaxTarget = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  selectedTextRange = [crlaxTarget selectedTextRange];
  v6 = __CRLAccessibilityCastAsClass(v3, selectedTextRange, 0, 0);

  if (![(CRLTextInputResponderAccessibility *)self crlaxBoolValueForKey:@"_accessibilityIsTextInput"]|| (_accessibilityQuickSpeakContent = 0, v6))
  {
    v9.receiver = self;
    v9.super_class = CRLTextInputResponderAccessibility;
    _accessibilityQuickSpeakContent = [(CRLTextInputResponderAccessibility *)&v9 _accessibilityQuickSpeakContent];
  }

  return _accessibilityQuickSpeakContent;
}

- (id)crlaxTextEditor
{
  v8 = 0;
  crlaxTarget = [(CRLTextInputResponderAccessibility *)self crlaxTarget];
  editor = [crlaxTarget editor];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsClass(v4, editor, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

@end