@interface CRLTextEditorAccessibility
- (BOOL)_crlaxIsDictating;
- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges;
- (CRLTextInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLTextRepAccessibility)crlaxEditingRepWithCaret;
- (CRLWPSelectionAccessibility)crlaxSelection;
- (CRLWPStorageAccessibility)crlaxStorage;
- (Class)_crlaxWPSelectionClass;
- (_NSRange)crlaxSelectedTextRange;
- (_NSRange)crlaxStorageRangeOfLineFragmentAtCharIndex:(unint64_t)index;
- (id)_crlaxSelectionWithRange:(_NSRange)range;
- (id)accessibilityValue;
- (id)crlaxEditingRepWithSelection;
- (unint64_t)crlaxInsertionPoint;
- (void)copy:(id)copy;
- (void)crlaxEditingRepContentsChanged;
- (void)crlaxHandleEditingRepContentsChanged;
- (void)crlaxHandleSelectionChangedWithFlags:(unint64_t)flags;
- (void)crlaxInsertText:(id)text;
- (void)crlaxPerformBlockAffectingTextSelection:(id)selection;
- (void)crlaxSetSelectedTextRange:(_NSRange)range;
- (void)crlaxSetSelectedTextRange:(_NSRange)range skipSelectionChangedNotification:(BOOL)notification;
- (void)cut:(id)cut;
- (void)deleteBackward:(id)backward;
- (void)deleteForward:(id)forward;
- (void)didBecomeTextInputRespondersEditor;
- (void)insertText:(id)text;
- (void)p_deleteBackwardsOnEmptyListWithRange:(_NSRange)range ignoreLevel:(BOOL)level;
- (void)paste:(id)paste;
- (void)replace:(id)replace with:(id)with;
- (void)replaceAction:(id)action;
- (void)selectAll:(id)all;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
@end

@implementation CRLTextEditorAccessibility

- (void)crlaxSetSelectedTextRange:(_NSRange)range skipSelectionChangedNotification:(BOOL)notification
{
  notificationCopy = notification;
  length = range.length;
  location = range.location;
  crlaxSelectedTextRange = [(CRLTextEditorAccessibility *)self crlaxSelectedTextRange];
  if (crlaxSelectedTextRange != 0x7FFFFFFFFFFFFFFFLL && location != 0x7FFFFFFFFFFFFFFFLL && crlaxSelectedTextRange <= location && crlaxSelectedTextRange + v9 >= location + length)
  {
    crlaxStorage = [(CRLTextEditorAccessibility *)self crlaxStorage];
    v11 = [crlaxStorage crlaxBoolValueForKey:@"hasSmartFields"];

    if (v11)
    {
      v21 = 0;
      v22 = &v21;
      v23 = 0x3010000000;
      v25 = 0;
      v26 = 0;
      v24 = &unk_1016A8115;
      v15 = 0;
      v16 = &v15;
      v17 = 0x3032000000;
      v18 = sub_10010FDF8;
      v19 = sub_10010FE08;
      v20 = 0;
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10010FE10;
      v14[3] = &unk_10183D3A8;
      v14[4] = self;
      v14[5] = &v15;
      v14[7] = location;
      v14[8] = length;
      v14[6] = &v21;
      if (__CRLAccessibilityPerformSafeBlock(v14))
      {
        abort();
      }

      v12 = v16[5];
      _Block_object_dispose(&v15, 8);

      if (v12)
      {
        location = v22[4];
      }

      _Block_object_dispose(&v21, 8);
    }
  }

  if (notificationCopy)
  {
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10010FE88;
    v13[3] = &unk_10183C8A8;
    v13[4] = self;
    v13[5] = location;
    v13[6] = length;
    [(CRLTextEditorAccessibility *)self crlaxPerformBlockAffectingTextSelection:v13];
  }

  else
  {
    [(CRLTextEditorAccessibility *)self crlaxSetSelectedTextRange:location, length];
  }
}

- (void)crlaxInsertText:(id)text
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010FF34;
  v4[3] = &unk_10183AE28;
  v4[4] = self;
  textCopy = text;
  v5 = textCopy;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

- (void)cut:(id)cut
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010FFEC;
  v5[3] = &unk_10183AE28;
  cutCopy = cut;
  selfCopy = self;
  v4 = cutCopy;
  [(CRLTextEditorAccessibility *)self crlaxHandleTextOperationAction:@"AXTextOperationActionCut" usingBlock:v5];
}

- (void)copy:(id)copy
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001100D4;
  v5[3] = &unk_10183AE28;
  copyCopy = copy;
  selfCopy = self;
  v4 = copyCopy;
  [(CRLTextEditorAccessibility *)self crlaxHandleTextOperationAction:@"AXTextOperationActionCopy" usingBlock:v5];
}

- (void)paste:(id)paste
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001101BC;
  v5[3] = &unk_10183AE28;
  pasteCopy = paste;
  selfCopy = self;
  v4 = pasteCopy;
  [(CRLTextEditorAccessibility *)self crlaxHandleTextOperationAction:@"AXTextOperationActionPaste" usingBlock:v5];
}

- (void)selectAll:(id)all
{
  v5.receiver = self;
  v5.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v5 selectAll:all];
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = CRLAccessibilityGetUIKitLocalizedString(@"AXTextOperationActionSelectAll");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)insertText:(id)text
{
  textCopy = text;
  crlaxInteractiveCanvasController = [(CRLTextEditorAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxCancelCollaborationOccurredTimer];

  v6.receiver = self;
  v6.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v6 insertText:textCopy];

  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)deleteBackward:(id)backward
{
  backwardCopy = backward;
  crlaxInteractiveCanvasController = [(CRLTextEditorAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxCancelCollaborationOccurredTimer];

  v6.receiver = self;
  v6.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v6 deleteBackward:backwardCopy];

  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)deleteForward:(id)forward
{
  forwardCopy = forward;
  crlaxInteractiveCanvasController = [(CRLTextEditorAccessibility *)self crlaxInteractiveCanvasController];
  [crlaxInteractiveCanvasController crlaxCancelCollaborationOccurredTimer];

  v6.receiver = self;
  v6.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v6 deleteForward:forwardCopy];

  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)replaceAction:(id)action
{
  v3.receiver = self;
  v3.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v3 replaceAction:action];
}

- (void)didBecomeTextInputRespondersEditor
{
  v2.receiver = self;
  v2.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v2 didBecomeTextInputRespondersEditor];
  UIAccessibilityPostNotification(CRLAccessibilityFirstResponderChangedNotification, 0);
}

- (id)accessibilityValue
{
  crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
  textSource = [crlaxTarget textSource];
  string = [textSource string];

  return string;
}

- (void)crlaxHandleEditingRepContentsChanged
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10011053C;
  block[3] = &unk_10183AB38;
  block[4] = self;
  CRLAccessibilityPerformBlockAsynchronouslyOnMainThread(block);
}

- (void)crlaxHandleSelectionChangedWithFlags:(unint64_t)flags
{
  if ([(CRLTextEditorAccessibility *)self crlaxShouldSuppressSpeechForNextSelectionChangedNotification])
  {
    v5 = @"AXSelectionChangedRemoteUserOperation";
    v6 = &__kCFBooleanTrue;
    v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];
    [(CRLTextEditorAccessibility *)self crlaxSetShouldSuppressSpeechForNextSelectionChangedNotification:0];
  }

  else
  {
    v4 = 0;
  }

  UIAccessibilityPostNotification(CRLAccessibilitySelectionChangedNotification, v4);
}

- (BOOL)_crlaxIsDictating
{
  v2 = +[UIApplication sharedApplication];
  textInputMode = [v2 textInputMode];
  primaryLanguage = [textInputMode primaryLanguage];

  LOBYTE(v2) = [primaryLanguage isEqualToString:@"dictation"];
  return v2;
}

- (CRLWPSelectionAccessibility)crlaxSelection
{
  v8 = 0;
  crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
  selection = [crlaxTarget selection];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, selection, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (_NSRange)crlaxSelectedTextRange
{
  crlaxSelection = [(CRLTextEditorAccessibility *)self crlaxSelection];
  crlaxRange = [crlaxSelection crlaxRange];
  v5 = v4;

  v6 = crlaxRange;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)crlaxSetSelectedTextRange:(_NSRange)range
{
  v4 = [(CRLTextEditorAccessibility *)self _crlaxSelectionWithRange:range.location, range.length];
  [(CRLTextEditorAccessibility *)self setValue:v4 forKey:@"selection"];
}

- (CRLTextRepAccessibility)crlaxEditingRepWithCaret
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
  editingReps = [crlaxTarget editingReps];

  v5 = [editingReps countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v19 != v7)
      {
        objc_enumerationMutation(editingReps);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if ([v9 isShowingCaret])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [editingReps countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    crlaxTarget2 = v9;

    if (crlaxTarget2)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  crlaxEditingRepWithSelection = [(CRLTextEditorAccessibility *)self crlaxEditingRepWithSelection];
  crlaxTarget2 = [crlaxEditingRepWithSelection crlaxTarget];

LABEL_12:
  v17 = 0;
  v12 = crlaxTarget2;
  v13 = objc_opt_class();
  v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 1, &v17);
  if (v17 == 1)
  {
    abort();
  }

  v15 = v14;

  return v15;
}

- (id)crlaxEditingRepWithSelection
{
  crlaxInsertionPoint = [(CRLTextEditorAccessibility *)self crlaxInsertionPoint];
  if (crlaxInsertionPoint == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
    editingReps = [crlaxTarget editingReps];

    v6 = [editingReps countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v3 = 0;
      v8 = *v19;
LABEL_5:
      v9 = 0;
      while (1)
      {
        v10 = v3;
        if (*v19 != v8)
        {
          objc_enumerationMutation(editingReps);
        }

        v11 = *(*(&v18 + 1) + 8 * v9);
        v17 = 0;
        v12 = v11;
        v13 = objc_opt_class();
        v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 1, &v17);
        if (v17 == 1)
        {
          abort();
        }

        v3 = v14;

        if (v3)
        {
          if ([v3 crlaxRespondsToSelector:"crlaxRepRangeContainsLocation:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextRepAccessibilityExtras] && (objc_msgSend(v3, "crlaxRepRangeContainsLocation:", crlaxInsertionPoint) & 1) != 0)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [editingReps countByEnumeratingWithState:&v18 objects:v22 count:16];
          if (v7)
          {
            goto LABEL_5;
          }

          break;
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (CRLWPStorageAccessibility)crlaxStorage
{
  v8 = 0;
  crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
  storage = [crlaxTarget storage];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, storage, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (CRLTextInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController
{
  v8 = 0;
  crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
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

- (unint64_t)crlaxInsertionPoint
{
  crlaxTarget = [(CRLTextEditorAccessibility *)self crlaxTarget];
  selection = [crlaxTarget selection];

  if ([selection isValid])
  {
    start = [selection start];
  }

  else
  {
    start = 0x7FFFFFFFFFFFFFFFLL;
  }

  return start;
}

- (void)crlaxEditingRepContentsChanged
{
  if ([(CRLTextEditorAccessibility *)self crlaxRespondsToSelector:"crlaxHandleEditingRepContentsChanged" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextEditorAccessibilityExtras])
  {

    [(CRLTextEditorAccessibility *)self crlaxHandleEditingRepContentsChanged];
  }
}

- (void)crlaxPerformBlockAffectingTextSelection:(id)selection
{
  selectionCopy = selection;
  if ([(CRLTextEditorAccessibility *)self _crlaxShouldSkipSelectionChangedNotification])
  {
    selectionCopy[2]();
  }

  else
  {
    [(CRLTextEditorAccessibility *)self _crlaxSetShouldSkipSelectionChangedNotification:1];
    selectionCopy[2]();
    [(CRLTextEditorAccessibility *)self _crlaxSetShouldSkipSelectionChangedNotification:0];
  }
}

- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges
{
  crlaxStorage = [(CRLTextEditorAccessibility *)self crlaxStorage];
  crlaxSelection = [(CRLTextEditorAccessibility *)self crlaxSelection];
  v5 = [crlaxStorage crlaxSelectionContainsVisibleTrackedChanges:crlaxSelection];

  return v5;
}

- (_NSRange)crlaxStorageRangeOfLineFragmentAtCharIndex:(unint64_t)index
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3010000000;
  v11 = &unk_1016A8115;
  v12 = 0;
  v13 = 0;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10030A0A8;
  v7[3] = &unk_10183B670;
  v7[4] = self;
  v7[5] = &v8;
  v7[6] = index;
  if (__CRLAccessibilityPerformSafeBlock(v7))
  {
    abort();
  }

  v3 = v9[4];
  v4 = v9[5];
  _Block_object_dispose(&v8, 8);
  v5 = v3;
  v6 = v4;
  result.length = v6;
  result.location = v5;
  return result;
}

- (void)replace:(id)replace with:(id)with
{
  v5.receiver = self;
  v5.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v5 replace:replace with:with];
  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  v16.receiver = self;
  v16.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v16 selectionDidChangeFromSelection:selection toSelection:toSelection withFlags:?];
  if (![(CRLTextEditorAccessibility *)self _crlaxShouldSkipSelectionChangedNotification])
  {
    crlaxEditingRepWithCaret = [(CRLTextEditorAccessibility *)self crlaxEditingRepWithCaret];
    v8 = crlaxEditingRepWithCaret;
    if (crlaxEditingRepWithCaret)
    {
      crlaxStorage = [crlaxEditingRepWithCaret crlaxStorage];
      crlaxStorage2 = [(CRLTextEditorAccessibility *)self crlaxStorage];

      if (crlaxStorage == crlaxStorage2)
      {
        v11 = [CRLRepAccessibilitySelectionRangeCache alloc];
        crlaxSelectedTextRange = [(CRLTextEditorAccessibility *)self crlaxSelectedTextRange];
        v14 = [(CRLRepAccessibilitySelectionRangeCache *)v11 initWithRep:v8 selectedRangeInStorage:crlaxSelectedTextRange, v13];
        crlaxEditingRepWithCaret2 = [(CRLTextEditorAccessibility *)self crlaxEditingRepWithCaret];
        [crlaxEditingRepWithCaret2 crlaxSetLastSelection:v14];
      }
    }

    if ([(CRLTextEditorAccessibility *)self crlaxRespondsToSelector:"crlaxHandleSelectionChangedWithFlags:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextEditorAccessibilityExtras])
    {
      [(CRLTextEditorAccessibility *)self crlaxHandleSelectionChangedWithFlags:flags];
    }
  }
}

- (void)p_deleteBackwardsOnEmptyListWithRange:(_NSRange)range ignoreLevel:(BOOL)level
{
  v4.receiver = self;
  v4.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v4 p_deleteBackwardsOnEmptyListWithRange:range.location ignoreLevel:range.length, level];
}

- (Class)_crlaxWPSelectionClass
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2050000000;
  v8 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10030A364;
  v4[3] = &unk_101839FF8;
  v4[4] = self;
  v4[5] = &v5;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (id)_crlaxSelectionWithRange:(_NSRange)range
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10030A4E8;
  v15 = sub_10030A4F8;
  v16 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10030A500;
  v9[3] = &unk_1018427D8;
  v9[4] = self;
  v9[5] = &v11;
  rangeCopy = range;
  if (__CRLAccessibilityPerformSafeBlock(v9) || (v3 = v12[5], _Block_object_dispose(&v11, 8), v16, LOBYTE(v11) = 0, v4 = v3, v5 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v11), v6 = objc_claimAutoreleasedReturnValue(), v11 == 1))
  {
    abort();
  }

  v7 = v6;

  return v7;
}

@end