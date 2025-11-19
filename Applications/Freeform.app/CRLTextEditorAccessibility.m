@interface CRLTextEditorAccessibility
- (BOOL)_crlaxIsDictating;
- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges;
- (CRLTextInteractiveCanvasControllerAccessibility)crlaxInteractiveCanvasController;
- (CRLTextRepAccessibility)crlaxEditingRepWithCaret;
- (CRLWPSelectionAccessibility)crlaxSelection;
- (CRLWPStorageAccessibility)crlaxStorage;
- (Class)_crlaxWPSelectionClass;
- (_NSRange)crlaxSelectedTextRange;
- (_NSRange)crlaxStorageRangeOfLineFragmentAtCharIndex:(unint64_t)a3;
- (id)_crlaxSelectionWithRange:(_NSRange)a3;
- (id)accessibilityValue;
- (id)crlaxEditingRepWithSelection;
- (unint64_t)crlaxInsertionPoint;
- (void)copy:(id)a3;
- (void)crlaxEditingRepContentsChanged;
- (void)crlaxHandleEditingRepContentsChanged;
- (void)crlaxHandleSelectionChangedWithFlags:(unint64_t)a3;
- (void)crlaxInsertText:(id)a3;
- (void)crlaxPerformBlockAffectingTextSelection:(id)a3;
- (void)crlaxSetSelectedTextRange:(_NSRange)a3;
- (void)crlaxSetSelectedTextRange:(_NSRange)a3 skipSelectionChangedNotification:(BOOL)a4;
- (void)cut:(id)a3;
- (void)deleteBackward:(id)a3;
- (void)deleteForward:(id)a3;
- (void)didBecomeTextInputRespondersEditor;
- (void)insertText:(id)a3;
- (void)p_deleteBackwardsOnEmptyListWithRange:(_NSRange)a3 ignoreLevel:(BOOL)a4;
- (void)paste:(id)a3;
- (void)replace:(id)a3 with:(id)a4;
- (void)replaceAction:(id)a3;
- (void)selectAll:(id)a3;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
@end

@implementation CRLTextEditorAccessibility

- (void)crlaxSetSelectedTextRange:(_NSRange)a3 skipSelectionChangedNotification:(BOOL)a4
{
  v4 = a4;
  length = a3.length;
  location = a3.location;
  v8 = [(CRLTextEditorAccessibility *)self crlaxSelectedTextRange];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL && location != 0x7FFFFFFFFFFFFFFFLL && v8 <= location && v8 + v9 >= location + length)
  {
    v10 = [(CRLTextEditorAccessibility *)self crlaxStorage];
    v11 = [v10 crlaxBoolValueForKey:@"hasSmartFields"];

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

  if (v4)
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

- (void)crlaxInsertText:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10010FF34;
  v4[3] = &unk_10183AE28;
  v4[4] = self;
  v3 = a3;
  v5 = v3;
  if (__CRLAccessibilityPerformSafeBlock(v4))
  {
    abort();
  }
}

- (void)cut:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10010FFEC;
  v5[3] = &unk_10183AE28;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(CRLTextEditorAccessibility *)self crlaxHandleTextOperationAction:@"AXTextOperationActionCut" usingBlock:v5];
}

- (void)copy:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001100D4;
  v5[3] = &unk_10183AE28;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(CRLTextEditorAccessibility *)self crlaxHandleTextOperationAction:@"AXTextOperationActionCopy" usingBlock:v5];
}

- (void)paste:(id)a3
{
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001101BC;
  v5[3] = &unk_10183AE28;
  v6 = a3;
  v7 = self;
  v4 = v6;
  [(CRLTextEditorAccessibility *)self crlaxHandleTextOperationAction:@"AXTextOperationActionPaste" usingBlock:v5];
}

- (void)selectAll:(id)a3
{
  v5.receiver = self;
  v5.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v5 selectAll:a3];
  v3 = UIAccessibilityAnnouncementNotification;
  v4 = CRLAccessibilityGetUIKitLocalizedString(@"AXTextOperationActionSelectAll");
  UIAccessibilityPostNotification(v3, v4);
}

- (void)insertText:(id)a3
{
  v4 = a3;
  v5 = [(CRLTextEditorAccessibility *)self crlaxInteractiveCanvasController];
  [v5 crlaxCancelCollaborationOccurredTimer];

  v6.receiver = self;
  v6.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v6 insertText:v4];

  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)deleteBackward:(id)a3
{
  v4 = a3;
  v5 = [(CRLTextEditorAccessibility *)self crlaxInteractiveCanvasController];
  [v5 crlaxCancelCollaborationOccurredTimer];

  v6.receiver = self;
  v6.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v6 deleteBackward:v4];

  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)deleteForward:(id)a3
{
  v4 = a3;
  v5 = [(CRLTextEditorAccessibility *)self crlaxInteractiveCanvasController];
  [v5 crlaxCancelCollaborationOccurredTimer];

  v6.receiver = self;
  v6.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v6 deleteForward:v4];

  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)replaceAction:(id)a3
{
  v3.receiver = self;
  v3.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v3 replaceAction:a3];
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
  v2 = [(CRLTextEditorAccessibility *)self crlaxTarget];
  v3 = [v2 textSource];
  v4 = [v3 string];

  return v4;
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

- (void)crlaxHandleSelectionChangedWithFlags:(unint64_t)a3
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
  v3 = [v2 textInputMode];
  v4 = [v3 primaryLanguage];

  LOBYTE(v2) = [v4 isEqualToString:@"dictation"];
  return v2;
}

- (CRLWPSelectionAccessibility)crlaxSelection
{
  v8 = 0;
  v2 = [(CRLTextEditorAccessibility *)self crlaxTarget];
  v3 = [v2 selection];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
  if (v8 == 1)
  {
    abort();
  }

  v6 = v5;

  return v6;
}

- (_NSRange)crlaxSelectedTextRange
{
  v2 = [(CRLTextEditorAccessibility *)self crlaxSelection];
  v3 = [v2 crlaxRange];
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.length = v7;
  result.location = v6;
  return result;
}

- (void)crlaxSetSelectedTextRange:(_NSRange)a3
{
  v4 = [(CRLTextEditorAccessibility *)self _crlaxSelectionWithRange:a3.location, a3.length];
  [(CRLTextEditorAccessibility *)self setValue:v4 forKey:@"selection"];
}

- (CRLTextRepAccessibility)crlaxEditingRepWithCaret
{
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v3 = [(CRLTextEditorAccessibility *)self crlaxTarget];
  v4 = [v3 editingReps];

  v5 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v18 + 1) + 8 * v8);
      if ([v9 isShowingCaret])
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v10 = v9;

    if (v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
LABEL_9:
  }

  v11 = [(CRLTextEditorAccessibility *)self crlaxEditingRepWithSelection];
  v10 = [v11 crlaxTarget];

LABEL_12:
  v17 = 0;
  v12 = v10;
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
  v16 = [(CRLTextEditorAccessibility *)self crlaxInsertionPoint];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v3 = 0;
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v4 = [(CRLTextEditorAccessibility *)self crlaxTarget];
    v5 = [v4 editingReps];

    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(v5);
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
          if ([v3 crlaxRespondsToSelector:"crlaxRepRangeContainsLocation:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextRepAccessibilityExtras] && (objc_msgSend(v3, "crlaxRepRangeContainsLocation:", v16) & 1) != 0)
          {
            break;
          }
        }

        if (v7 == ++v9)
        {
          v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
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
  v2 = [(CRLTextEditorAccessibility *)self crlaxTarget];
  v3 = [v2 storage];

  v4 = objc_opt_class();
  v5 = __CRLAccessibilityCastAsSafeCategory(v4, v3, 1, &v8);
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
  v2 = [(CRLTextEditorAccessibility *)self crlaxTarget];
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

- (unint64_t)crlaxInsertionPoint
{
  v2 = [(CRLTextEditorAccessibility *)self crlaxTarget];
  v3 = [v2 selection];

  if ([v3 isValid])
  {
    v4 = [v3 start];
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v4;
}

- (void)crlaxEditingRepContentsChanged
{
  if ([(CRLTextEditorAccessibility *)self crlaxRespondsToSelector:"crlaxHandleEditingRepContentsChanged" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextEditorAccessibilityExtras])
  {

    [(CRLTextEditorAccessibility *)self crlaxHandleEditingRepContentsChanged];
  }
}

- (void)crlaxPerformBlockAffectingTextSelection:(id)a3
{
  v4 = a3;
  if ([(CRLTextEditorAccessibility *)self _crlaxShouldSkipSelectionChangedNotification])
  {
    v4[2]();
  }

  else
  {
    [(CRLTextEditorAccessibility *)self _crlaxSetShouldSkipSelectionChangedNotification:1];
    v4[2]();
    [(CRLTextEditorAccessibility *)self _crlaxSetShouldSkipSelectionChangedNotification:0];
  }
}

- (BOOL)crlaxCurrentSelectionContainsVisibleTrackedChanges
{
  v3 = [(CRLTextEditorAccessibility *)self crlaxStorage];
  v4 = [(CRLTextEditorAccessibility *)self crlaxSelection];
  v5 = [v3 crlaxSelectionContainsVisibleTrackedChanges:v4];

  return v5;
}

- (_NSRange)crlaxStorageRangeOfLineFragmentAtCharIndex:(unint64_t)a3
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
  v7[6] = a3;
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

- (void)replace:(id)a3 with:(id)a4
{
  v5.receiver = self;
  v5.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v5 replace:a3 with:a4];
  [(CRLTextEditorAccessibility *)self crlaxEditingRepContentsChanged];
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v16.receiver = self;
  v16.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v16 selectionDidChangeFromSelection:a3 toSelection:a4 withFlags:?];
  if (![(CRLTextEditorAccessibility *)self _crlaxShouldSkipSelectionChangedNotification])
  {
    v7 = [(CRLTextEditorAccessibility *)self crlaxEditingRepWithCaret];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 crlaxStorage];
      v10 = [(CRLTextEditorAccessibility *)self crlaxStorage];

      if (v9 == v10)
      {
        v11 = [CRLRepAccessibilitySelectionRangeCache alloc];
        v12 = [(CRLTextEditorAccessibility *)self crlaxSelectedTextRange];
        v14 = [(CRLRepAccessibilitySelectionRangeCache *)v11 initWithRep:v8 selectedRangeInStorage:v12, v13];
        v15 = [(CRLTextEditorAccessibility *)self crlaxEditingRepWithCaret];
        [v15 crlaxSetLastSelection:v14];
      }
    }

    if ([(CRLTextEditorAccessibility *)self crlaxRespondsToSelector:"crlaxHandleSelectionChangedWithFlags:" fromExtrasProtocol:&OBJC_PROTOCOL___CRLTextEditorAccessibilityExtras])
    {
      [(CRLTextEditorAccessibility *)self crlaxHandleSelectionChangedWithFlags:a5];
    }
  }
}

- (void)p_deleteBackwardsOnEmptyListWithRange:(_NSRange)a3 ignoreLevel:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = CRLTextEditorAccessibility;
  [(CRLTextEditorAccessibility *)&v4 p_deleteBackwardsOnEmptyListWithRange:a3.location ignoreLevel:a3.length, a4];
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

- (id)_crlaxSelectionWithRange:(_NSRange)a3
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
  v10 = a3;
  if (__CRLAccessibilityPerformSafeBlock(v9) || (v3 = v12[5], _Block_object_dispose(&v11, 8), v16, LOBYTE(v11) = 0, v4 = v3, v5 = objc_opt_class(), __CRLAccessibilityCastAsSafeCategory(v5, v4, 1, &v11), v6 = objc_claimAutoreleasedReturnValue(), v11 == 1))
  {
    abort();
  }

  v7 = v6;

  return v7;
}

@end