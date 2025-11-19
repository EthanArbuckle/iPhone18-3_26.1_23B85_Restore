@interface CRLWPEditor
+ (BOOL)canEditTextIn:(id)a3 using:(id)a4;
- (BOOL)blockGesture:(id)a3;
- (BOOL)canHandleGesture:(id)a3;
- (BOOL)canMutateTextStorage;
- (BOOL)canPasteWithItemSource:(id)a3 selection:(id)a4 sender:(id)a5;
- (BOOL)canSetWritingDirection:(int64_t)a3;
- (BOOL)editMenuIsVisible;
- (BOOL)hasText;
- (BOOL)isACurrentEditor;
- (BOOL)isUnscaledPointInTextSelection:(CGPoint)a3;
- (BOOL)needsTextEditingAccessoryBar;
- (BOOL)p_shouldBeginCaretGrabAtUnscaledCanvasPoint:(CGPoint)a3;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5;
- (BOOL)wantsParagraphModeWithSelection:(id)a3;
- (CGPoint)adjustedDragPoint;
- (CGPoint)adjustedDragToNaturalPointOffset;
- (CGPoint)clampUnscaledPointToTextFieldBounds:(CGPoint)a3;
- (CGPoint)currentKnobPoint;
- (CGPoint)firstTapUnscaledPoint;
- (CGPoint)getCenterOfWord:(id)a3;
- (CGPoint)knobToTouchOffset;
- (CGPoint)knobTrackingDragPoint;
- (CGPoint)selectionTargetToAdjustedDragOffset;
- (CGRect)currentStationaryPinRect;
- (CGRect)currentTargetPinRect;
- (CGRect)targetRectForEditMenu;
- (CGRect)textFieldBounds;
- (CRLSearchReference)editingSearchReference;
- (CRLWPRep)editingRep;
- (CRLWPSelection)selection;
- (CRLWPTextMagnifier)magnifier;
- (NSArray)validAttributesForMarkedText;
- (NSAttributedString)markedText;
- (NSDate)lastSingleImmediateTapTime;
- (NSDictionary)markedTextStyle;
- (NSSet)editingReps;
- (UIInputViewController)inputAccessoryViewController;
- (_NSRange)availableSelectionRangeForCharIndex:(int64_t)a3;
- (_NSRange)expectedWordSelectionAtPoint;
- (_NSRange)markedRange;
- (_NSRange)nextWordFromIndex:(unint64_t)a3 forward:(BOOL)a4;
- (_NSRange)originalSelectionRange;
- (_NSRange)selectedRangeAtPinchAndHalfStart;
- (_TtC8Freeform11CRLWPEditor)init;
- (_TtC8Freeform11CRLWPLayout)layout;
- (_TtC8Freeform12CRLTextRange)markedTextRange;
- (_TtC8Freeform12CRLWPStorage)storageWithMarkedText;
- (_TtC8Freeform25CRLWPTextSelectionManager)textSelectionManager;
- (_TtP8Freeform16CRLTextSelecting_)textSelectionDelegate;
- (id)attributedSubstringForProposedRange:(_NSRange)a3 actualRange:(_NSRange *)a4;
- (id)autocorrectionRangesToDisplayInRange:(_NSRange)a3;
- (id)closestRepToPoint:(CGPoint)a3 forStorage:(id)a4;
- (id)commandForReplacingTextInRange:(id)a3 withAttributedText:(id)a4;
- (id)commandForReplacingTextInRange:(id)a3 withText:(id)a4;
- (id)cursorAtPoint:(CGPoint)a3 withCursorPlatformObject:(id)a4;
- (id)dictationAndAutocorrectionsFor:(int64_t)a3 effectiveRange:(_NSRange *)a4;
- (id)icc;
- (id)p_editingRepAtPoint:(CGPoint)a3;
- (id)p_editingRepForCharIndex:(unint64_t)a3;
- (id)p_endingRepForUnscaledCanvasPoint:(CGPoint)a3;
- (id)p_inlineEquationRepInTableCellTextRep:(id)a3 atUnscaledCanvasPoint:(CGPoint)a4 gesture:(id)a5;
- (id)p_repsForStorage:(id)a3;
- (id)p_selectionForRep:(id)a3 naturalPoint:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7 includeListLabels:(BOOL)a8 allowPastBreak:(BOOL)a9 alternateClick:(BOOL)a10;
- (id)p_textRepAtGestureLocationForGesture:(id)a3;
- (id)selectionFromUnscaledCanvasPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 isTapHold:(BOOL)a5 allowPastBreak:(BOOL)a6 isDragging:(BOOL)a7;
- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7;
- (id)wpRepFromHitRep:(id)a3;
- (int64_t)baseWritingDirectionFor:(id)a3;
- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4;
- (int64_t)writingToolsBehavior;
- (unint64_t)charIndexInRep:(id)a3 fromPoint:(CGPoint)a4 allowPastBreak:(BOOL)a5 allowNotFound:(BOOL)a6 isAtEndOfLine:(BOOL *)a7;
- (unint64_t)charIndexInRep:(id)a3 fromPoint:(CGPoint)a4 allowPastBreak:(BOOL)a5 allowNotFound:(BOOL)a6 pastCenterGoesToNextChar:(BOOL)a7 isAtEndOfLine:(BOOL *)a8;
- (unint64_t)charIndexInRep:(id)a3 fromPoint:(CGPoint)a4 allowPastBreak:(BOOL)a5 isAtEndOfLine:(BOOL *)a6 leadingEdge:(BOOL *)a7;
- (void)abortMarkedText;
- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4;
- (void)arrowKeyReceivedInDirection:(unint64_t)a3 withModifierKeys:(id)a4;
- (void)clearMarkedRange;
- (void)commitMarkedText;
- (void)commitMarkedTextWithoutModifyingStorage;
- (void)cutTo:(id)a3 nativeOnly:(BOOL)a4 sender:(id)a5;
- (void)deleteBackward:(id)a3;
- (void)deleteCurrentSelection;
- (void)deleteWordForward:(id)a3;
- (void)didBecomeCurrentEditorForEditorController:(id)a3;
- (void)didBecomeTextInputEditor;
- (void)didResignTextInputEditor;
- (void)didUndo;
- (void)documentEditabilityDidChange;
- (void)endEditing;
- (void)gestureSequenceDidEnd;
- (void)handleGesture:(id)a3;
- (void)hideEditMenu;
- (void)insertText:(id)a3;
- (void)insertWithText:(id)a3;
- (void)lookUp:(id)a3;
- (void)lookUpTextAtRange:(_NSRange)a3;
- (void)moveRight:(id)a3;
- (void)p_adjustSelection:(id)a3 withOtherSelection:(id)a4 textSelectionGranularity:(unint64_t)a5;
- (void)p_adjustSelection:(id)a3 withUnscaledCanvasPoint:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 allowPastBreak:(BOOL)a7 isDragging:(BOOL)a8;
- (void)p_beginKnobTrackingSelection:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5;
- (void)p_beginMagnification:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5 shouldSetSelection:(BOOL)a6;
- (void)p_beginOperationAndTakeControl;
- (void)p_beginTapAndLongPress;
- (void)p_cancelTapAndLongPressPreviousSelector;
- (void)p_createKnobTracker:(id)a3 forRep:(id)a4 tapCount:(unint64_t)a5;
- (void)p_endAutoscroll;
- (void)p_handleCaretDragWithImmediatePressGesture:(id)a3;
- (void)p_handleEditableTextSelectionForceGesture:(id)a3;
- (void)p_handleImmediateAndLongPressGesture:(id)a3;
- (void)p_handleIndirectImmediatePressGesture:(id)a3;
- (void)p_handleKnobDragGestureRecognizer:(id)a3;
- (void)p_handleLongPressTextInteractionWithGestureRecognizer:(id)a3;
- (void)p_handleTapAndTouchGesture:(id)a3;
- (void)p_handleTapGestures:(id)a3;
- (void)p_handleTapWhileMarkedTextGestureRecognizer:(id)a3;
- (void)p_handleTwoFingerPanGesture:(id)a3;
- (void)p_protectedStopKnobTrackingGesture:(id)a3;
- (void)p_recursivelyAddRep:(id)a3 forStorage:(id)a4 toSet:(id)a5;
- (void)p_sendHandleTapNotification;
- (void)p_setSelectionFromPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 includeListLabels:(BOOL)a5;
- (void)p_setTappedSelectionPath:(id)a3;
- (void)pasteFromItemSource:(id)a3 forceMatchStyle:(BOOL)a4;
- (void)pasteWithItemSource:(id)a3 selection:(id)a4 sender:(id)a5 selectRange:(int64_t)a6 dragBlock:(id)a7;
- (void)protectedStopMagnification;
- (void)replace:(id)a3 with:(id)a4;
- (void)selectAll;
- (void)selectAllMenuAction:(id)a3;
- (void)selectMenuAction:(id)a3;
- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setAutoscroll:(id)a3;
- (void)setBaseWritingDirection:(int64_t)a3 forParagraphsWithRange:(id)a4;
- (void)setDictationInterpretations:(id)a3;
- (void)setDragRep:(id)a3;
- (void)setEditorController:(id)a3;
- (void)setEditorHelper:(id)a3;
- (void)setEnclosingShape:(id)a3;
- (void)setFidgetResolver:(id)a3;
- (void)setInsertionStyle:(id)a3;
- (void)setKnobTracker:(id)a3;
- (void)setLastSingleImmediateTapTime:(id)a3;
- (void)setListDragAnimator:(id)a3;
- (void)setMagnifier:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4 replacementRange:(_NSRange)a5;
- (void)setMarkedTextStyle:(id)a3;
- (void)setMostRecentGestureKind:(id)a3;
- (void)setSelection:(id)a3;
- (void)setSelectionControlsForInputType:(int64_t)a3;
- (void)setTapInfo:(id)a3;
- (void)setWantsVisibleKeyboard:(BOOL)a3;
- (void)showEditMenu;
- (void)tapAndLongPressDidEndOrCancel;
- (void)tappedInRep:(id)a3 point:(CGPoint)a4 tapCount:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7 alternateClick:(BOOL)a8;
- (void)textSelectionDidChange;
- (void)textSelectionWillChange;
- (void)textWillChange;
- (void)toggleListEntry:(id)a3;
- (void)unmarkText;
- (void)updateStateForCommand:(id)a3;
- (void)updateTapAndLongPress;
- (void)willResignCurrentEditor;
- (void)willResignTextInputEditor;
- (void)willUndo;
@end

@implementation CRLWPEditor

- (id)icc
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)didUndo
{
  v1 = a1;
  sub_100937818();
}

- (BOOL)blockGesture:(id)a3
{
  v3 = [(CRLWPEditor *)self interactiveCanvasController];
  if ([v3 floatingCursorInMotion])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    v5 = [v3 textInputResponder];
    v4 = [v5 isFirstResponder] ^ 1;
  }

  return v4;
}

- (_NSRange)nextWordFromIndex:(unint64_t)a3 forward:(BOOL)a4
{
  v4 = a4;
  length = 0;
  v8 = [(CRLWPEditor *)self storageWithMarkedText];
  v9 = [v8 wordAtCharIndex:a3 includePreviousWord:v4];
  v31 = v10;

  v11 = [(CRLWPEditor *)self editorHelper];
  v12 = [v11 availableSelectionRangeForCharIndex:a3];
  v14 = v13;

  v15 = [(CRLWPEditor *)self storageWithMarkedText];
  v16 = [v15 textRangeForParagraphAtCharIndex:a3];
  v18 = v17;

  v19 = [(CRLWPEditor *)self storageWithMarkedText];
  v20 = [v19 string];
  if (v4)
  {
    v12 += v14;
    v33.length = v12 - v16;
    v33.location = v16;
    v21 = CFStringTokenizerCreate(0, v20, v33, 0, 0);

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v23 = 0;
      v24 = a3;
      do
      {
        v25 = v24 - 1;
        ++v23;
        if (CFStringTokenizerGoToTokenAtIndex(v21, v24))
        {
          break;
        }

        if (v24 <= v16)
        {
          break;
        }

        --v24;
      }

      while (v12 == a3);
      do
      {
        ++v25;
        --v23;
      }

      while (!CFStringTokenizerGoToTokenAtIndex(v21, v25) && v25 < v12);
      location = CFStringTokenizerGetCurrentTokenRange(v21).location;
      if (&v9[v31] == location || v23 && location == v25 || CFStringTokenizerAdvanceToNextToken(v21))
      {
        CurrentTokenRange = CFStringTokenizerGetCurrentTokenRange(v21);
        if (CurrentTokenRange.location < 0)
        {
          length = 0;
        }

        else
        {
          v12 = CurrentTokenRange.location;
          length = CurrentTokenRange.length;
        }
      }

      else
      {
LABEL_28:
        length = 0;
      }

LABEL_30:
      CFRelease(v21);
      v22 = v12;
    }
  }

  else
  {
    v34.length = &v16[v18 - v12];
    v34.location = v12;
    v21 = CFStringTokenizerCreate(0, v20, v34, 0, 0);

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v28 = a3;
      while (1)
      {
        while (!CFStringTokenizerGoToTokenAtIndex(v21, v28))
        {
          if (v28 <= v12)
          {
            goto LABEL_28;
          }

          --v28;
        }

        v29 = CFStringTokenizerGetCurrentTokenRange(v21);
        length = v29.length;
        if (v29.location + v29.length < a3 || (v29.location + v29.length) == v9)
        {
          break;
        }

        if (v29.location <= v12)
        {
          goto LABEL_28;
        }

        if (v28 - 1 >= v29.location - 1)
        {
          v28 = v29.location - 1;
        }

        else
        {
          --v28;
        }
      }

      v12 = v29.location;
      goto LABEL_30;
    }
  }

  v30 = length;
  result.length = v30;
  result.location = v22;
  return result;
}

- (void)p_adjustSelection:(id)a3 withOtherSelection:(id)a4 textSelectionGranularity:(unint64_t)a5
{
  v7 = a3;
  v8 = a4;
  if ([v7 isValid] && objc_msgSend(v8, "isValid"))
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100568BC4;
    v50[3] = &unk_10186F7E8;
    v7 = v7;
    v51 = v7;
    v9 = v8;
    v52 = v9;
    v10 = objc_retainBlock(v50);
    if ([v9 type] == 7 && !objc_msgSend(v7, "type"))
    {
      v11 = [(CRLWPEditor *)self editorHelper];
      v12 = [v11 logicalToVisualSelection:v7];

      v13 = [(CRLWPEditor *)self editorHelper];
      v7 = [v13 calculateVisualRunsFromSelection:v12 updateControllerSelection:0];
    }

    if ([v9 type] != 7 || objc_msgSend(v7, "type") != 7)
    {
      v25 = (v10[2])(v10);
      v27 = v26;
      v28 = [(CRLWPEditor *)self selection];
      if ([v28 isValid])
      {
        [(CRLWPEditor *)self selection];
        v29 = v9;
        v31 = v30 = v10;
        v32 = [v31 range];
        v47 = v33;

        v10 = v30;
        v9 = v29;

        if (v32 == v25 && v47 == v27)
        {
          v24 = 0;
          goto LABEL_26;
        }
      }

      else
      {
      }

      v24 = [objc_alloc(-[CRLWPEditor wpSelectionClass](self "wpSelectionClass"))];
      if (v24)
      {
        goto LABEL_24;
      }

LABEL_26:

      goto LABEL_27;
    }

    v49 = 1;
    v48 = 0;
    v14 = [(CRLWPEditor *)self editorHelper];
    v15 = [v14 adjustVisualSelection:v7 withOtherSelection:v9 outLeadingEdge:&v49 outCaretAffinity:&v48];
    v17 = v16;

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = (v10[2])(v10);
      v17 = v18;
    }

    v19 = [(CRLWPEditor *)self selection];
    v46 = v10;
    if ([v19 isValid])
    {
      v20 = [(CRLWPEditor *)self selection];
      v21 = [v20 range];
      v23 = v22;

      if (v21 == v15 && v23 == v17)
      {
        v24 = 0;
        goto LABEL_23;
      }
    }

    else
    {
    }

    v34 = [CRLWPSelection alloc];
    v35 = v48;
    v36 = v49;
    v37 = [(CRLWPEditor *)self storageWithMarkedText];
    LOBYTE(v45) = v36;
    v24 = [(CRLWPSelection *)v34 initWithType:7 range:v15 styleInsertionBehavior:v17 caretAffinity:0 smartFieldRange:v35 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v45, v37];

LABEL_23:
    v10 = v46;
    if (v24)
    {
LABEL_24:
      v38 = [(CRLWPEditor *)self editorHelper];
      v39 = [v38 selectionLastModifiedWithKeyboard];

      v40 = [(CRLWPEditor *)self editorController];
      [v40 setSelection:v24 forEditor:self withFlags:8];

      if (v39)
      {
        v41 = [(CRLWPEditor *)self editorController];
        v42 = [v41 selectionPath];
        v43 = [v42 selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v9];

        v44 = [(CRLWPEditor *)self interactiveCanvasController];
        [v44 scrollToSelectionPath:v43 scrollOptions:1];
      }

      goto LABEL_26;
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)p_adjustSelection:(id)a3 withUnscaledCanvasPoint:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 allowPastBreak:(BOOL)a7 isDragging:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v10 = a6;
  y = a4.y;
  x = a4.x;
  v16 = a3;
  v15 = [(CRLWPEditor *)self selectionFromUnscaledCanvasPoint:a5 textSelectionGranularity:v10 isTapHold:v9 allowPastBreak:v8 isDragging:x, y];
  if (v15)
  {
    [(CRLWPEditor *)self p_adjustSelection:v16 withOtherSelection:v15 textSelectionGranularity:a5];
  }
}

- (id)p_editingRepAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(CRLWPEditor *)self storageWithMarkedText];
  v8 = [(CRLWPEditor *)self closestRepToPoint:v7 forStorage:x, y];
  v9 = sub_100014370(v6, v8);

  if (v9 && [v9 isBeingEdited])
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)p_setSelectionFromPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 includeListLabels:(BOOL)a5
{
  v5 = a5;
  y = a3.y;
  x = a3.x;
  v10 = [(CRLWPEditor *)self p_editingRepAtPoint:?];
  if (v10)
  {
    v21 = v10;
    [v10 convertNaturalPointFromUnscaledCanvas:{x, y}];
    [v21 pinToClosestColumn:?];
    v12 = v11;
    v14 = v13;
    v15 = [(CRLWPEditor *)self p_selectionForRep:v21 point:a4 textSelectionGranularity:0 isTapHold:1 precise:v5 includeListLabels:0 allowPastBreak:?];
    v16 = [(CRLWPEditor *)self selection];
    v17 = [v15 isEqual:v16];

    if ((v17 & 1) == 0)
    {
      if ([(CRLWPEditor *)self isSelectionPlaceHolderTextWithSelection:v15])
      {
        v18 = 6;
      }

      else
      {
        v18 = 14;
      }

      v19 = [(CRLWPEditor *)self editorController];
      [v19 setSelection:v15 forEditor:self withFlags:v18];

      v20 = [(CRLWPEditor *)self textSelectionDelegate];
      [v20 moveLoupeTo:{v12, v14}];
    }

    v10 = v21;
  }
}

- (id)selectionFromUnscaledCanvasPoint:(CGPoint)a3 textSelectionGranularity:(unint64_t)a4 isTapHold:(BOOL)a5 allowPastBreak:(BOOL)a6 isDragging:(BOOL)a7
{
  v7 = a6;
  v8 = a5;
  y = a3.y;
  x = a3.x;
  v13 = objc_opt_class();
  v14 = [(CRLWPEditor *)self storageWithMarkedText];
  v15 = [(CRLWPEditor *)self closestRepToPoint:v14 forStorage:x, y];
  v16 = sub_100014370(v13, v15);

  if ([v16 isBeingEdited])
  {
    [v16 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v17 = [(CRLWPEditor *)self p_selectionForRep:v16 point:a4 textSelectionGranularity:v8 isTapHold:1 precise:0 includeListLabels:v7 allowPastBreak:?];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)wpRepFromHitRep:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, v3);

  return v5;
}

- (id)p_textRepAtGestureLocationForGesture:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v5];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();
  v11 = [v4 targetRep];

  v12 = sub_100014370(v10, v11);

  if (!v12)
  {
    v13 = objc_opt_class();
    v14 = [v5 hitRep:{v7, v9}];
    v15 = [(CRLWPEditor *)self wpRepFromHitRep:v14];
    v12 = sub_100014370(v13, v15);
  }

  return v12;
}

- (void)p_recursivelyAddRep:(id)a3 forStorage:(id)a4 toSet:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, v8);
  v13 = v12;
  if (v12 && ([v12 storage], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == v9))
  {
    [v10 addObject:v13];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = [v8 childReps];
    v16 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [(CRLWPEditor *)self p_recursivelyAddRep:*(*(&v20 + 1) + 8 * v19) forStorage:v9 toSet:v10];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (id)p_repsForStorage:(id)a3
{
  v4 = a3;
  v5 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(CRLWPEditor *)self interactiveCanvasController];
  v7 = [v6 canvas];
  v8 = [v7 topLevelReps];

  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(CRLWPEditor *)self p_recursivelyAddRep:*(*(&v14 + 1) + 8 * i) forStorage:v4 toSet:v5];
      }

      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)closestRepToPoint:(CGPoint)a3 forStorage:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  [(CRLWPEditor *)self p_repsForStorage:v7];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v8 = v30 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = 0;
    v12 = *v28;
    v13 = INFINITY;
    while (2)
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v28 != v12)
        {
          objc_enumerationMutation(v8);
        }

        v15 = *(*(&v27 + 1) + 8 * i);
        [v15 frameInUnscaledCanvas];
        v16 = v34.origin.x;
        v17 = v34.origin.y;
        width = v34.size.width;
        height = v34.size.height;
        v33.x = x;
        v33.y = y;
        if (CGRectContainsPoint(v34, v33))
        {
          v25 = v15;

          v11 = v25;
          goto LABEL_14;
        }

        v35.origin.x = v16;
        v35.origin.y = v17;
        v35.size.width = width;
        v35.size.height = height;
        MidX = CGRectGetMidX(v35);
        v36.origin.x = v16;
        v36.origin.y = v17;
        v36.size.width = width;
        v36.size.height = height;
        MidY = CGRectGetMidY(v36);
        v22 = sub_100120090(x, y, MidX, MidY);
        if (v22 < v13)
        {
          v23 = v22;
          v24 = v15;

          v13 = v23;
          v11 = v24;
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v11 = 0;
  }

LABEL_14:

  return v11;
}

- (id)p_endingRepForUnscaledCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = objc_opt_class();
  v7 = [(CRLWPEditor *)self storageWithMarkedText];
  v8 = [(CRLWPEditor *)self closestRepToPoint:v7 forStorage:x, y];
  v9 = sub_100014370(v6, v8);

  return v9;
}

- (void)p_handleTwoFingerPanGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 targetRep];

  v6 = objc_opt_class();
  if (v5)
  {
    v7 = [v4 targetRep];
    v8 = sub_100014370(v6, v7);
  }

  else
  {
    v7 = [(CRLWPEditor *)self editingReps];
    v9 = [v7 anyObject];
    v8 = sub_100014370(v6, v9);
  }

  if (!v8)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139437C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101394390();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139442C();
    }

    v10 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v10);
    }

    v11 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_handleTwoFingerPanGesture:]"];
    v12 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v11 file:v12 lineNumber:438 isFatal:0 description:"invalid nil value for '%{public}s'", "targetRep"];
  }

  v13 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v13];
  v15 = v14;
  v17 = v16;

  v18 = [v4 gestureState];
  if (v18 == 2)
  {
    [v8 updateFloatingCursorAtPoint:{v15, v17}];
  }

  else if (v18 == 1)
  {
    [(CRLWPEditor *)self twoFingerPanGestureWillBegin];
    [v8 beginFloatingCursorAtPoint:1 animate:{v15, v17}];
  }

  else
  {
    [v8 endFloatingCursorWithRepForAnimation:v8];
    [(CRLWPEditor *)self twoFingerPanGestureDidEnd];
    v19 = +[NSNotificationCenter defaultCenter];
    v20 = [(CRLWPEditor *)self storageWithMarkedText];
    [v19 postNotificationName:@"CRLTPEditorSelectionChanged" object:v20];

    v21 = +[NSNotificationCenter defaultCenter];
    v22 = [(CRLWPEditor *)self storageWithMarkedText];
    [v21 postNotificationName:@"CRLWPEditorSelectionContentsChanged" object:v22];
  }
}

- (void)p_handleImmediateAndLongPressGesture:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v5];
  v22 = 0;
  v6 = 1;
  v7 = [v5 hitKnobAtPoint:1 inputType:&v22 returningRep:?];
  v8 = v22;
  if ([v7 tag] != 11)
  {
    v6 = [v7 tag] == 10;
  }

  v9 = objc_opt_class();
  v10 = sub_100014370(v9, v8);

  v11 = 1;
  if (v7 && v10)
  {
    v12 = [v10 storage];
    v13 = [(CRLWPEditor *)self storageWithMarkedText];
    v14 = v12 != v13;

    v11 = v14 || !v6;
  }

  v15 = [(CRLWPEditor *)self knobTracker];
  v16 = [v4 gestureState] == 1 && (v11 & 1) == 0 || (objc_msgSend(v4, "gestureState") == 2 || objc_msgSend(v4, "gestureState") == 3 || objc_msgSend(v4, "gestureState") == 4) && v15 != 0;
  v17 = [v4 gestureKind];
  v18 = [v4 inputType];
  if ([v4 gestureState] == 1)
  {
    v19 = [(CRLWPEditor *)self selection];
    v20 = [v19 isInsertionPoint];
    if (v18 == 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = v20;
    }
  }

  else
  {
    v21 = v18 != 2;
  }

  if (v17 != @"CRLWPImmediatePress" || !v21 || v16)
  {
    [(CRLWPEditor *)self p_handleLongPressTextInteractionWithGestureRecognizer:v4];
  }

  else
  {
    [(CRLWPEditor *)self p_handleCaretDragWithImmediatePressGesture:v4];
  }
}

- (void)p_handleCaretDragWithImmediatePressGesture:(id)a3
{
  v27 = a3;
  v4 = [(CRLWPEditor *)self interactiveCanvasController];
  [v27 unscaledLocationForICC:v4];
  v6 = v5;
  v8 = v7;
  [v4 convertUnscaledToBoundsPoint:?];
  v10 = v9;
  v12 = v11;
  v13 = [v27 gestureState];
  if (v13 - 3 < 2)
  {
    [(CRLWPEditor *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
    [(CRLWPEditor *)self protectedStopMagnification];
  }

  else if (v13 == 2)
  {
    v18 = [(CRLWPEditor *)self p_editingRepAtPoint:v6, v8];
    v19 = [(CRLWPEditor *)self magnifier];

    if (v19)
    {
      v20 = [(CRLWPEditor *)self magnifier];
      [v20 setTarget:v18];

      v21 = [(CRLWPEditor *)self magnifier];
      [v4 convertUnscaledToBoundsPoint:{v6, v8}];
      [v21 continueMagnifyingWithMagnificationPoint:?];

      v22 = objc_opt_class();
      v23 = sub_100013F00(v22, v27);
      [v23 velocity];
      v25 = v24;
      v26 = [(CRLWPEditor *)self magnifier];
      [v26 setPointVelocity:v25];
    }

    else
    {
      v23 = [(CRLWPEditor *)self selection];
      [(CRLWPEditor *)self p_beginMagnification:v23 forRep:v18 atPoint:1 shouldSetSelection:v10, v12];
    }
  }

  else if (v13 == 1)
  {
    [(CRLWPEditor *)self p_clearEditMenuFlags];
    if (![(CRLWPEditor *)self editMenuIsVisible])
    {
      v14 = [(CRLWPEditor *)self selection];
      if ([v14 isValid])
      {
        v15 = [v14 range];
        v17 = v16;
      }

      else
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
        v17 = 0;
      }

      [(CRLWPEditor *)self setOriginalSelectionRange:v15, v17];
    }

    [v4 layoutIfNeeded];
  }
}

- (BOOL)isUnscaledPointInTextSelection:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6 = [(CRLWPEditor *)self selection];
  v7 = objc_opt_class();
  v8 = [(CRLWPEditor *)self interactiveCanvasController];
  v9 = [v8 hitRep:{x, y}];
  v10 = [(CRLWPEditor *)self wpRepFromHitRep:v9];
  v11 = sub_100014370(v7, v10);

  v12 = [v11 canEditWithEditor:self];
  v13 = 0;
  if ([v6 isValid] && v12)
  {
    [v11 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v13 = [v11 isPointInSelectedArea:?];
  }

  return v13;
}

- (unint64_t)charIndexInRep:(id)a3 fromPoint:(CGPoint)a4 allowPastBreak:(BOOL)a5 isAtEndOfLine:(BOOL *)a6 leadingEdge:(BOOL *)a7
{
  if (!a3)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = a5;
  y = a4.y;
  x = a4.x;
  v12 = [a3 layout];
  v13 = [CRLWPColumn charIndexFromPoint:v9 allowPastBreak:0 allowNotFound:a6 isAtEndOfLine:a7 leadingEdge:v12 inLayoutTarget:x, y];

  return v13;
}

- (unint64_t)charIndexInRep:(id)a3 fromPoint:(CGPoint)a4 allowPastBreak:(BOOL)a5 allowNotFound:(BOOL)a6 isAtEndOfLine:(BOOL *)a7
{
  v8 = a6;
  v9 = a5;
  y = a4.y;
  x = a4.x;
  v12 = a3;
  v13 = v12;
  if (v12)
  {
    v14 = [v12 layout];
    v15 = [CRLWPColumn charIndexFromPoint:v9 allowPastBreak:v8 allowNotFound:a7 isAtEndOfLine:0 leadingEdge:v14 inLayoutTarget:x, y];
  }

  else
  {
    if (!v8)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101394454();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101394468();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013944F8();
      }

      v17 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v17);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Unable to calculate charIndex with nil rep", v18, v19, v20, v21, v22, v23, v24, "[CRLWPEditor(GestureInterfaces) charIndexInRep:fromPoint:allowPastBreak:allowNotFound:isAtEndOfLine:]");
      v25 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) charIndexInRep:fromPoint:allowPastBreak:allowNotFound:isAtEndOfLine:]"];
      v26 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
      [CRLAssertionHandler handleFailureInFunction:v25 file:v26 lineNumber:712 isFatal:1 description:"Unable to calculate charIndex with nil rep"];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v27, v28);
      abort();
    }

    v15 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v15;
}

- (unint64_t)charIndexInRep:(id)a3 fromPoint:(CGPoint)a4 allowPastBreak:(BOOL)a5 allowNotFound:(BOOL)a6 pastCenterGoesToNextChar:(BOOL)a7 isAtEndOfLine:(BOOL *)a8
{
  v9 = a7;
  v10 = a6;
  v11 = a5;
  y = a4.y;
  x = a4.x;
  v14 = a3;
  v15 = v14;
  if (v14)
  {
    v16 = [v14 layout];
    v17 = [CRLWPColumn charIndexFromPoint:v11 allowPastBreak:v10 allowNotFound:v9 pastCenterGoesToNextChar:a8 isAtEndOfLine:0 leadingEdge:v16 inLayoutTarget:x, y];
  }

  else
  {
    if (!v10)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101394520();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101394534();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_1013945C4();
      }

      v19 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v19);
      }

      sub_10028E070("Fatal Assertion failure: %{public}s %{public}s:%d Unable to calculate charIndex with nil rep", v20, v21, v22, v23, v24, v25, v26, "[CRLWPEditor(GestureInterfaces) charIndexInRep:fromPoint:allowPastBreak:allowNotFound:pastCenterGoesToNextChar:isAtEndOfLine:]");
      v27 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) charIndexInRep:fromPoint:allowPastBreak:allowNotFound:pastCenterGoesToNextChar:isAtEndOfLine:]"];
      v28 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
      [CRLAssertionHandler handleFailureInFunction:v27 file:v28 lineNumber:723 isFatal:1 description:"Unable to calculate charIndex with nil rep"];

      SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v29, v30);
      abort();
    }

    v17 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v17;
}

- (id)p_selectionForRep:(id)a3 naturalPoint:(CGPoint)a4 textSelectionGranularity:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7 includeListLabels:(BOOL)a8 allowPastBreak:(BOOL)a9 alternateClick:(BOOL)a10
{
  v10 = a9;
  v11 = a7;
  y = a4.y;
  x = a4.x;
  v16 = a3;
  if (!v16)
  {
    goto LABEL_6;
  }

  v127[0] = 1;
  v126 = 0;
  v17 = [(CRLWPEditor *)self storage];
  v18 = [v16 storage];

  if (v17 == v18)
  {
    v20 = [(CRLWPEditor *)self charIndexInRep:v16 fromPoint:v10 allowPastBreak:&v126 isAtEndOfLine:v127 leadingEdge:x, y];
  }

  else
  {
    v19 = [(CRLWPEditor *)self storage];
    v20 = [v19 length];
  }

  if (v20 == 0x7FFFFFFFFFFFFFFFLL || (v22 = v20, (v127[0] & 1) == 0) && (-[CRLWPEditor storageWithMarkedText](self, "storageWithMarkedText"), v23 = objc_claimAutoreleasedReturnValue(), v22 = [v23 nextCharacterIndex:v20], v23, v22 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_6:
    v21 = 0;
    goto LABEL_74;
  }

  v24 = objc_opt_class();
  v25 = [(CRLWPEditor *)self storageWithMarkedText];
  v26 = sub_100014370(v24, v25);

  rect_8 = v26;
  if (a5 == 2)
  {
    if ([(CRLWPEditor *)self charIndexInRep:v16 fromPoint:v10 allowPastBreak:0 allowNotFound:&v126 isAtEndOfLine:x, y]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = [v26 textRangeForParagraphAtCharIndex:v22];
      v29 = v47;
      v46 = 0;
      goto LABEL_62;
    }

    goto LABEL_33;
  }

  if (a5 == 1)
  {
    v36 = [(CRLWPEditor *)self charIndexInRep:v16 fromPoint:v10 allowPastBreak:1 allowNotFound:1 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
    v37 = [(CRLWPEditor *)self charIndexInRep:v16 fromPoint:v10 allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = v37;
LABEL_52:
      v54 = [(CRLWPEditor *)self editorHelper];
      v55 = [v54 rangeForSelectionAtCharIndex:objc_msgSend(v26 caretIndex:{"charIndexMappedFromStorage:", v45), objc_msgSend(v26, "charIndexMappedFromStorage:", v36)}];
      v57 = v56;

      if (v57 == 1 && [v26 characterAtIndex:v55] == 65532)
      {
        v58 = 0;
        v59 = 1;
      }

      else
      {
        v55 = [v26 charRangeMappedToStorage:{v55, v57}];
        v58 = 0;
      }

      goto LABEL_56;
    }

    v38 = [(CRLWPEditor *)self storageWithMarkedText];
    v39 = [v38 length];

    v40 = [(CRLWPEditor *)self storageWithMarkedText];
    v41 = [v40 textRangeForParagraphAtCharIndex:v22];
    v43 = v42;
    if (v22 >= v39)
    {

      if (v43)
      {
        v45 = (v22 - 1);
        goto LABEL_51;
      }
    }

    else
    {
      v44 = v41;

      if (v22 < &v44[v43 - 1])
      {
        v45 = &v22[-((v22 != 0) & v126)];
LABEL_51:
        v36 = v45;
        goto LABEL_52;
      }

      if (v43 >= 2)
      {
        v45 = &v44[v43 - 2];
        goto LABEL_51;
      }
    }

    v58 = 8;
    v59 = 0;
    v55 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_56:
    if (v55 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = 0;
    }

    else
    {
      v29 = v59;
    }

    if (v55 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v46 = 7;
    }

    else
    {
      v20 = v55;
      v46 = v58;
    }

    goto LABEL_62;
  }

  if (a5)
  {
    v46 = 8;
    v29 = 0;
    v20 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  v28 = [v16 rangeOfMisspelledWordAtCharIndex:v22];
  v29 = v27;
  v30 = v28 < v22 && &v28[v27] > v22;
  v31 = v30;
  v32 = v30 && a10;
  if (!v11 || v32)
  {
    if (v22 && (v126 & 1) != 0 && (-[CRLWPEditor storageWithMarkedText](self, "storageWithMarkedText"), v11 = objc_claimAutoreleasedReturnValue(), v33 = [v11 length], v11, v22 < v33))
    {
      v11 = rect_8;
      v34 = [rect_8 rangeOfNearestWhitespaceBeforeCharIndex:objc_msgSend(rect_8 includingBreaks:{"previousCharacterIndex:", objc_msgSend(rect_8, "charIndexMappedFromStorage:", v22)), 0}];
      v35 = v22;
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v127[0] = 1;
        v20 = v34;
        v35 = v34;
      }
    }

    else
    {
      v35 = v22;
    }

    if (v31)
    {
      v48 = [(CRLWPEditor *)self selection];
      if ([v48 isValid])
      {
        rect = v48;
        v49 = [(CRLWPEditor *)self selection];
        v121 = [v49 type];
        if (v121 == 3 || (-[CRLWPEditor selection](self, "selection"), v11 = objc_claimAutoreleasedReturnValue(), [v11 type] == 5))
        {
          v119 = v49;
          [(CRLWPEditor *)self selection];
          v51 = v50 = v35;
          v52 = [v51 range];
          v118 = v50;
          if (v50 >= v52 && v50 - v52 < v53)
          {

            if (v121 != 3)
            {
            }

LABEL_98:
            v105 = [(CRLWPEditor *)self selection];
            v20 = [v105 range];
            v29 = v106;
            v46 = 0;
LABEL_119:

            goto LABEL_62;
          }

          v102 = [(CRLWPEditor *)self selection];
          v103 = [v102 range];
          v117 = &v103[v104];

          if (v121 != 3)
          {
          }

          if (v117 == v118)
          {
            goto LABEL_98;
          }
        }

        else
        {
        }
      }

      else
      {
      }

      if (v28 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v46 = 3;
        v20 = v28;
        goto LABEL_62;
      }
    }

    v75 = [rect_8 wordAtCharIndex:v22 includePreviousWord:1];
    if (v75 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v77 = [(CRLWPEditor *)self editorHelper];
      v78 = [v77 whiteSpaceRangeAtCharIndex:v22 includingBreaks:0];
      v80 = v79;
    }

    else
    {
      v78 = v75;
      v80 = v76;
    }

    v29 = 0;
    v46 = 7;
    if (v78 == 0x7FFFFFFFFFFFFFFFLL || !v80)
    {
      goto LABEL_62;
    }

    v81 = [rect_8 charRangeMappedToStorage:{v78, v80}];
    v20 = v81 + v82 - 1;
    [v16 caretRectForCharIndex:v81 leadingEdge:1 caretAffinity:0];
    v122 = v84;
    recta = v83;
    v86 = v85;
    v120 = v85;
    v88 = v87;
    [v16 caretRectForCharIndex:v20 leadingEdge:0 caretAffinity:0];
    v90 = v89;
    v92 = v91;
    v94 = v93;
    v96 = v95;
    v131.origin.y = v86;
    v131.size.width = v88;
    v131.origin.x = recta;
    v131.size.height = v122;
    MidX = CGRectGetMidX(v131);
    v116 = v94;
    v132.origin.x = v90;
    v114 = v96;
    v115 = v92;
    v132.origin.y = v92;
    v132.size.width = v94;
    v98 = MidX;
    v132.size.height = v96;
    v99 = CGRectGetMidX(v132);
    v100 = v99;
    if (v98 <= v99)
    {
      v101 = v98;
    }

    else
    {
      v101 = v99;
    }

    if (v98 > v99)
    {
      v99 = v98;
    }

    v113 = v99;
    v133.origin.x = recta;
    v133.origin.y = v120;
    v133.size.width = v88;
    v133.size.height = v122;
    if (CGRectIsNull(v133))
    {
      goto LABEL_91;
    }

    v134.size.width = v116;
    v134.origin.x = v90;
    v134.origin.y = v115;
    v134.size.height = v114;
    if (!CGRectIsNull(v134))
    {
      if (v120 != v115 && vabdd_f64(v120, v115) >= v122 / 3.0)
      {
        v135.origin.x = recta;
        v135.origin.y = v120;
        v135.size.width = v88;
        v135.size.height = v122;
        v107 = vabdd_f64(CGRectGetMinX(v135), y);
        v136.origin.x = recta;
        v136.origin.y = v120;
        v136.size.width = v88;
        v136.size.height = v122;
        v108 = fmin(v107, vabdd_f64(CGRectGetMaxX(v136), y));
        v137.origin.y = v115;
        v137.origin.x = v90;
        v137.size.width = v116;
        v137.size.height = v114;
        if (v108 <= vabdd_f64(CGRectGetMinY(v137), y) && (v138.origin.x = v90, v138.origin.y = v115, v138.size.width = v116, v138.size.height = v114, v108 <= vabdd_f64(CGRectGetMaxY(v138), y)))
        {
          v109 = 1;
          v20 = v81;
        }

        else
        {
          v109 = 0;
        }

        v127[0] = v109;
LABEL_109:
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          +[CRLAssertionHandler _atomicIncrementAssertCount];
          if (qword_101AD5A10 != -1)
          {
            sub_1013945EC();
          }

          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_101394614();
          }

          if (qword_101AD5A10 != -1)
          {
            sub_1013946A4();
          }

          v110 = off_1019EDA68;
          if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
          {
            sub_10130DA10(v110);
          }

          v105 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_selectionForRep:naturalPoint:textSelectionGranularity:isTapHold:precise:includeListLabels:allowPastBreak:alternateClick:]"];
          v111 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
          [CRLAssertionHandler handleFailureInFunction:v105 file:v111 lineNumber:868 isFatal:0 description:"invalid charIndex for visual selection"];

          v29 = 0;
          v20 = 0x7FFFFFFFFFFFFFFFLL;
          v46 = 7;
          goto LABEL_119;
        }

        goto LABEL_33;
      }

      if (v98 > v100 == v113 - x >= x - v101)
      {
LABEL_91:
        v127[0] = 0;
        goto LABEL_109;
      }
    }

    v127[0] = 1;
    v20 = v81;
    goto LABEL_109;
  }

LABEL_33:
  v29 = 0;
  v46 = 7;
LABEL_62:
  v60 = [(CRLWPEditor *)self storageWithMarkedText];
  v130.location = [v60 range];
  v130.length = v61;
  v129.location = v20;
  v129.length = v29;
  v62 = sub_1002BC8E0(v129, v130);
  v64 = v63;

  v65 = [(CRLWPEditor *)self storageWithMarkedText];
  v67 = v62 == [v65 length] && v64 == 0;
  if (v127[0])
  {
    v67 = 1;
  }

  v127[0] = v67;

  v68 = objc_alloc([(CRLWPEditor *)self wpSelectionClass]);
  v69 = v126;
  v70 = v127[0];
  v71 = [(CRLWPEditor *)self storageWithMarkedText];
  LOBYTE(v112) = v70;
  v21 = [v68 initWithType:v46 range:v62 styleInsertionBehavior:v64 caretAffinity:0 smartFieldRange:v69 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v112, v71}];

  if (a5 == 1 && !v46)
  {
    v72 = [(CRLWPEditor *)self editorHelper];
    v73 = [v72 logicalToVisualSelection:v21];

    v21 = v73;
  }

LABEL_74:

  return v21;
}

- (void)p_setTappedSelectionPath:(id)a3
{
  v17 = a3;
  v4 = [v17 mostSpecificSelectionOfClass:objc_opt_class()];
  v5 = [_TtC8Freeform12CRLTextRange alloc];
  v6 = [v4 range];
  v8 = [(CRLTextRange *)v5 initWithRange:v6, v7];
  v9 = [(CRLWPEditor *)self storage];
  if ([v9 hasMarkedText])
  {
    v10 = [(CRLWPEditor *)self storage];
    v11 = [v10 markedTextRange];
    v12 = [v11 containsTextRange:v8];

    if (v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  v13 = [(CRLWPEditor *)self storage];
  v14 = [v13 hasMarkedText];

  if (v14)
  {
    [(CRLWPEditor *)self abortMarkedText];
  }

  if ([(CRLWPEditor *)self isSelectionPlaceHolderTextWithSelection:v4])
  {
    v15 = 6;
  }

  else
  {
    v15 = 14;
  }

  [(CRLWPEditor *)self setSelectionBeingSetFromGestures:1];
  v16 = [(CRLWPEditor *)self interactiveCanvasController];
  [v16 setSelectionPath:v17 withSelectionFlags:v15];

  [(CRLWPEditor *)self setSelectionBeingSetFromGestures:0];
LABEL_11:
}

- (void)tappedInRep:(id)a3 point:(CGPoint)a4 tapCount:(unint64_t)a5 isTapHold:(BOOL)a6 precise:(BOOL)a7 alternateClick:(BOOL)a8
{
  v9 = a7;
  v10 = a6;
  y = a4.y;
  x = a4.x;
  v27 = a3;
  [(CRLWPEditor *)self p_sendHandleTapNotification];
  if (a5 == 3)
  {
    v15 = 2;
  }

  else if (a5 == 2)
  {
    v15 = 1;
  }

  else
  {
    if (a5 == 1)
    {
      [v27 convertNaturalPointToUnscaledCanvas:{x, y}];
      if ([(CRLWPEditor *)self isUnscaledPointInTextSelection:?])
      {
        [(CRLWPEditor *)self hideEditMenu];
      }
    }

    v15 = 0;
  }

  v16 = [(CRLWPEditor *)self storage];
  if (([v16 hasMarkedText] & 1) == 0)
  {

    goto LABEL_13;
  }

  v17 = [(CRLWPEditor *)self layout];
  v18 = [v17 markedTextContainsPoint:{x, y}];

  v19 = v27;
  if ((v18 & 1) == 0)
  {
LABEL_13:
    LOBYTE(v26) = a8;
    v20 = [(CRLWPEditor *)self p_selectionForRep:v27 naturalPoint:v15 textSelectionGranularity:v10 isTapHold:v9 precise:a5 != 0 includeListLabels:0 allowPastBreak:x alternateClick:y, v26];
    v21 = [(CRLWPEditor *)self editorController];
    v22 = [v21 selectionPath];
    v23 = [(CRLWPEditor *)self selection];
    v24 = [v22 selectionPathPoppingOffSelection:v23];

    v25 = [v24 selectionPathWithAppendedSelection:v20];

    [(CRLWPEditor *)self p_setTappedSelectionPath:v25];
    v19 = v27;
  }
}

- (BOOL)isACurrentEditor
{
  v2 = self;
  v3 = [(CRLWPEditor *)self interactiveCanvasController];
  v4 = [v3 editorController];
  v5 = [v4 currentEditors];
  LOBYTE(v2) = [v5 containsObject:v2];

  return v2;
}

- (void)p_sendHandleTapNotification
{
  v4 = @"CRLEditorControllerEditorKey";
  v5 = self;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CRLEditorControllerTextEditorWillHandleTap" object:0 userInfo:v2];
}

- (void)p_handleLongPressTextInteractionWithGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v5];
  v7 = v6;
  v9 = v8;
  [v5 convertUnscaledToBoundsPoint:?];
  v11 = v10;
  v13 = v12;
  v42 = 0;
  v14 = [v5 hitKnobAtPoint:1 inputType:&v42 returningRep:{v7, v9}];
  v15 = v42;
  v16 = [v4 gestureKind];
  v17 = [(CRLWPEditor *)self shouldUseModernTextGestures];
  v18 = [v4 gestureState];
  if (v18 - 3 < 2)
  {
    v20 = [(CRLWPEditor *)self knobTracker];

    if (v20)
    {
      v21 = [(CRLWPEditor *)self knobTracker];
      if ([v21 didDragKnob])
      {
      }

      else
      {
        v23 = [(CRLWPEditor *)self wantsParagraphMode];

        if ((v23 & 1) == 0)
        {
          [(CRLWPEditor *)self p_tappedOnKnob:v14];
        }
      }

      [(CRLWPEditor *)self p_protectedStopKnobTrackingGesture:v4];
    }

    else
    {
      [(CRLWPEditor *)self p_endAutoscroll];
      [(CRLWPEditor *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
      [(CRLWPEditor *)self protectedStopMagnification];
      if ([v4 gestureState] == 3)
      {
        [(CRLWPEditor *)self setShouldShowEditMenuForInsertionPoint:1];
      }
    }
  }

  else
  {
    if (v18 != 2)
    {
      if (v18 != 1)
      {
        goto LABEL_36;
      }

      [(CRLWPEditor *)self p_clearEditMenuFlags];
      [v5 layoutIfNeeded];
      if ([v14 tag] == 11)
      {
        v19 = 0;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v19 = [v14 tag] != 10;
        if (!v14)
        {
          goto LABEL_20;
        }
      }

      if (!v19)
      {
        v24 = objc_opt_class();
        v25 = sub_100014370(v24, v15);
        [v14 position];
        [v15 convertNaturalPointToUnscaledCanvas:?];
        [(CRLWPEditor *)self setKnobToTouchOffset:sub_10011F31C(v26, v27, v7)];
        [(CRLWPEditor *)self p_createKnobTracker:v14 forRep:v25 tapCount:1];
        [(CRLWPEditor *)self p_beginOperationAndTakeControl];
        [(CRLWPEditor *)self p_handleKnobDragGestureRecognizer:v4];

        goto LABEL_36;
      }

LABEL_20:
      if (v16 != @"CRLWPLongPress")
      {
        goto LABEL_36;
      }

      v28 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:v4];
      [v28 convertNaturalPointFromUnscaledCanvas:{v7, v9}];
      v30 = v29;
      v32 = v31;
      v33 = [(CRLWPEditor *)self selection];
      if ([v33 isRange])
      {
        v34 = [(CRLWPEditor *)self isUnscaledPointInTextSelection:v7, v9];

        if (v34)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }

      [(CRLWPEditor *)self tappedInRep:v28 point:1 tapCount:1 isTapHold:0 precise:v30, v32];
LABEL_30:
      v39 = [(CRLWPEditor *)self selection];
      if ([v39 isInsertionPoint])
      {
        if (v17)
        {
          if (v28)
          {
            [(CRLWPEditor *)self tappedInRep:v28 point:2 tapCount:1 isTapHold:0 precise:v30, v32];
            v40 = [NSValue valueWithCGPoint:v11, v13];
            v43[0] = @"CRLWPEditorTextRepKey";
            v43[1] = @"CRLWPEditorRepPointKey";
            v44[0] = v28;
            v44[1] = v40;
            v41 = [NSDictionary dictionaryWithObjects:v44 forKeys:v43 count:2];
            [(CRLWPEditor *)self setTapInfo:v41];

            [(CRLWPEditor *)self p_beginTapAndLongPress];
          }
        }

        else
        {
          [(CRLWPEditor *)self p_beginMagnification:v39 forRep:v28 atPoint:1 shouldSetSelection:v11, v13];
        }
      }

      goto LABEL_36;
    }

    v22 = [(CRLWPEditor *)self knobTracker];

    if (v22)
    {
      [(CRLWPEditor *)self p_handleKnobDragGestureRecognizer:v4];
    }

    else if ((v17 & 1) == 0)
    {
      v35 = [v5 layerHost];
      v36 = [v35 canvasView];
      v37 = [v36 enclosingScrollView];
      v38 = [v37 isScrollEnabled];

      if (v38)
      {
        [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v7, v9];
      }

      [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v7, v9];
    }
  }

LABEL_36:
}

- (id)p_editingRepForCharIndex:(unint64_t)a3
{
  v5 = [(CRLWPEditor *)self interactiveCanvasController];
  [v5 visibleUnscaledRect];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  [(CRLWPEditor *)self editingReps];
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = v43 = 0u;
  v14 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (!v14)
  {
    v16 = 0;
    goto LABEL_23;
  }

  v15 = v14;
  v16 = 0;
  v17 = 0;
  v18 = *v41;
  v19 = INFINITY;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      v21 = v17;
      if (*v41 != v18)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v40 + 1) + 8 * i);

      v22 = [v17 range];
      if (a3 < v22 || a3 - v22 >= v23)
      {
        v25 = v22;
        v26 = v23;
        v27 = [(CRLWPEditor *)self storage];
        if ([v27 length] != a3)
        {
          goto LABEL_15;
        }

        if (&v25[v26] != a3)
        {
          continue;
        }
      }

      [v17 frameInUnscaledCanvas];
      v32 = sub_1001202D8(v28, v29, v30, v31, v7, v9, v11, v13);
      if (v32 >= v19)
      {
        continue;
      }

      v27 = v16;
      v19 = v32;
      v16 = v17;
LABEL_15:
    }

    v15 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
  }

  while (v15);
  if (v17)
  {
    if (v16)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

LABEL_23:
  if ([obj count])
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013946CC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013946F4();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101394784();
    }

    v36 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v36);
    }

    v37 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_editingRepForCharIndex:]"];
    v38 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v37 file:v38 lineNumber:1436 isFatal:0 description:"No valid rep for given char index; No editing reps."];
  }

  v17 = 0;
  if (v16)
  {
LABEL_20:
    v33 = v16;

    v17 = v33;
  }

LABEL_21:
  v34 = v17;

  return v17;
}

- (BOOL)p_shouldBeginCaretGrabAtUnscaledCanvasPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  if (![(CRLWPEditor *)self shouldUseModernTextGestures])
  {
    return 0;
  }

  v6 = [(CRLWPEditor *)self selection];
  v7 = [v6 isInsertionPoint];

  if (!v7)
  {
    return 0;
  }

  v8 = [(CRLWPEditor *)self interactiveCanvasController];
  [v8 layoutIfNeeded];

  v9 = [(CRLWPEditor *)self selection];
  v10 = -[CRLWPEditor p_editingRepForCharIndex:](self, "p_editingRepForCharIndex:", [v9 start]);

  v11 = [(CRLWPEditor *)self interactiveCanvasController];
  v12 = [v11 hitRep:{x, y}];
  v13 = v12;
  if (v10 && (!v12 || v12 == v10) && (-[CRLWPEditor selection](self, "selection"), v14 = objc_claimAutoreleasedReturnValue(), [v10 caretRectForSelection:v14], v16 = v15, v18 = v17, v20 = v19, v22 = v21, v14, v31.origin.x = v16, v31.origin.y = v18, v31.size.width = v20, v31.size.height = v22, !CGRectIsNull(v31)))
  {
    v32.origin.x = v16;
    v32.origin.y = v18;
    v32.size.width = v20;
    v32.size.height = v22;
    v33 = CGRectInset(v32, -25.0, -25.0);
    v25 = v33.origin.x;
    v26 = v33.origin.y;
    width = v33.size.width;
    height = v33.size.height;
    [v10 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v23 = sub_10011FF8C(v29, v30, v25, v26, width, height);
  }

  else
  {
    v23 = 0;
  }

  return v23;
}

- (id)p_inlineEquationRepInTableCellTextRep:(id)a3 atUnscaledCanvasPoint:(CGPoint)a4 gesture:(id)a5
{
  v5 = [(CRLWPEditor *)self storageWithMarkedText:a3];
  [v5 wpKind];

  return 0;
}

- (void)p_handleTapAndTouchGesture:(id)a3
{
  v4 = a3;
  v5 = [v4 inputType];
  [(CRLWPEditor *)self setIgnoreFutureImmediatePresses:1];
  v6 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v6];
  v8 = v7;
  v10 = v9;

  v11 = [(CRLWPEditor *)self interactiveCanvasController];
  [v11 layoutIfNeeded];

  v12 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:v4];
  [v12 convertNaturalPointFromUnscaledCanvas:{v8, v10}];
  v14 = v13;
  v16 = v15;
  v17 = [v4 numberOfTapsRequired];
  v18 = [(CRLWPEditor *)self knobTracker];
  if (v18 || ([(CRLWPEditor *)self magnifier], (v18 = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    v29 = [(CRLWPEditor *)self pinchAndHalfDidStart];
    if (!v12 && (v29 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v19 = [(CRLWPEditor *)self selection];
  if ([v19 type] == 3)
  {
  }

  else
  {
    v20 = [(CRLWPEditor *)self selection];
    v21 = [v20 type];

    if (v21 != 5)
    {
      v22 = [(CRLWPEditor *)self interactiveCanvasController];
      [v22 convertUnscaledToBoundsPoint:{v8, v10}];
      v24 = v23;
      v26 = v25;

      if ([v4 gestureState] == 1)
      {
        [(CRLWPEditor *)self p_clearEditMenuFlags];
        [(CRLWPEditor *)self tappedInRep:v12 point:v17 + 1 tapCount:1 isTapHold:0 precise:v14, v16];
        [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:1];
        if (v5)
        {
          [(CRLWPEditor *)self p_cancelTapAndLongPressPreviousSelector];
          v27 = [NSValue valueWithCGPoint:v24, v26];
          v47[0] = @"CRLWPEditorTextRepKey";
          v47[1] = @"CRLWPEditorRepPointKey";
          v48[0] = v12;
          v48[1] = v27;
          v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
          [(CRLWPEditor *)self setTapInfo:v28];

          [(CRLWPEditor *)self performSelector:"p_beginTapAndLongPress" withObject:0 afterDelay:0.2];
        }

        else
        {
          v27 = [(CRLWPEditor *)self selection];
          v45 = [(CRLWPEditor *)self editorHelper];
          [v45 setAnchorSelection:v27];
        }
      }

      else
      {
        if ([v4 gestureState] != 2)
        {
          [(CRLWPEditor *)self p_endAutoscroll];
          if (!v5)
          {
            v46 = [(CRLWPEditor *)self editorHelper];
            [v46 setAnchorSelection:0];

            [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:0];
            goto LABEL_34;
          }

          [(CRLWPEditor *)self p_cancelTapAndLongPressPreviousSelector];
          v44 = [(CRLWPEditor *)self knobTracker];

          if (v44)
          {
LABEL_16:
            [(CRLWPEditor *)self p_protectedStopKnobTrackingGesture:v4];
            goto LABEL_34;
          }

          [(CRLWPEditor *)self tapAndLongPressDidEndOrCancel];
LABEL_23:
          [(CRLWPEditor *)self protectedStopMagnification];
          goto LABEL_34;
        }

        if (v5)
        {
          goto LABEL_34;
        }

        v39 = [(CRLWPEditor *)self interactiveCanvasController];
        v40 = [v39 canvasView];
        v41 = [v40 enclosingScrollView];
        v42 = [v41 isScrollEnabled];

        if (v42)
        {
          [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v8, v10];
        }

        v27 = [(CRLWPEditor *)self editorHelper];
        v43 = [v27 anchorSelection];
        [(CRLWPEditor *)self p_adjustSelection:v43 withUnscaledCanvasPoint:[(CRLWPEditor *)self initialPressTextSelectionGranularity] textSelectionGranularity:0 isTapHold:[(CRLWPEditor *)self initialPressTextSelectionGranularity]^ 1 allowPastBreak:1 isDragging:v8, v10];
      }

      goto LABEL_34;
    }
  }

LABEL_12:
  [(CRLWPEditor *)self p_endAutoscroll];
  [(CRLWPEditor *)self p_cancelTapAndLongPressPreviousSelector];
  if ([v4 gestureState] == 3 || objc_msgSend(v4, "gestureState") == 4)
  {
    if (!v5)
    {
      v31 = [(CRLWPEditor *)self editorHelper];
      [v31 setAnchorSelection:0];

      goto LABEL_34;
    }

    v30 = [(CRLWPEditor *)self knobTracker];

    if (v30)
    {
      goto LABEL_16;
    }

    v38 = [(CRLWPEditor *)self magnifier];

    if (!v38)
    {
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  v32 = [(CRLWPEditor *)self magnifier];

  if (v32)
  {
    v33 = [(CRLWPEditor *)self interactiveCanvasController];
    v34 = [v33 layerHost];
    v35 = [v34 canvasView];
    v36 = [v35 enclosingScrollView];
    v37 = [v36 isScrollEnabled];

    if (v37)
    {
      [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v8, v10];
    }

    [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v8, v10];
  }

LABEL_34:
}

- (void)p_beginTapAndLongPress
{
  v3 = [(CRLWPEditor *)self tapInfo];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_1013947AC();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013947C0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101394850();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_beginTapAndLongPress]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1798 isFatal:0 description:"self.tapInfo should be set"];
  }

  v7 = [(CRLWPEditor *)self tapInfo];
  v8 = [v7 objectForKeyedSubscript:@"CRLWPEditorTextRepKey"];

  v9 = [(CRLWPEditor *)self tapInfo];
  v10 = [v9 objectForKeyedSubscript:@"CRLWPEditorRepPointKey"];
  [v10 CGPointValue];
  v12 = v11;
  v14 = v13;

  v15 = [(CRLWPEditor *)self selection];
  v16 = [(CRLWPEditor *)self knobTracker];
  if (v16 || ![v15 isValid])
  {
  }

  else if ([v15 isRange])
  {
    [(CRLWPEditor *)self p_beginKnobTrackingSelection:v15 forRep:v8 atPoint:v12, v14];
  }

  [(CRLWPEditor *)self setTapInfo:0];
}

- (void)updateTapAndLongPress
{
  v3 = [(CRLWPEditor *)self tapInfo];

  if (!v3)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101394878();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10139488C();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139491C();
    }

    v4 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v4);
    }

    v5 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) updateTapAndLongPress]"];
    v6 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v5 file:v6 lineNumber:1822 isFatal:0 description:"self.tapInfo should be set"];
  }

  v7 = [(CRLWPEditor *)self tapInfo];
  v8 = [v7 objectForKeyedSubscript:@"CRLWPEditorRepPointKey"];
  [v8 CGPointValue];
  v10 = v9;
  v12 = v11;

  [(CRLWPEditor *)self clampUnscaledPointToTextFieldBounds:v10, v12];
  v14 = v13;
  v16 = v15;
  v17 = [(CRLWPEditor *)self selectedRangeAtPinchAndHalfStart];
  v19 = v18;
  v20 = [(CRLWPEditor *)self editingRep];
  [v20 convertNaturalPointFromUnscaledCanvas:{v14, v16}];
  v22 = v21;
  v24 = v23;

  [(CRLWPEditor *)self adjustedDragToNaturalPointOffset];
  v26 = sub_10011F31C(v22, v24, v25);
  v28 = v27;
  v29 = [(CRLWPEditor *)self textSelectionDelegate];
  v30 = [v29 selectWordAt:{v26, v28}];

  v39.location = [v30 nsRange];
  v39.length = v31;
  v38.location = v17;
  v38.length = v19;
  v32 = NSUnionRange(v38, v39);
  [(CRLWPEditor *)self setAdjustedDragPoint:v26, v28];
  v33 = [(CRLWPEditor *)self storageWithMarkedText];
  v34 = [v33 length];

  if (v32.length >= v34)
  {
    [(CRLWPEditor *)self tapAndLongPressDidEndOrCancel];
  }

  else
  {
    v35 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v32.location, v32.length];
    v36 = [(CRLWPEditor *)self interactiveCanvasController];
    v37 = [v36 textInputResponder];
    [v37 setSelectedTextRange:v35];
  }
}

- (void)tapAndLongPressDidEndOrCancel
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CRLWPEditor *)self editingReps];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setSuppressSelectionControls:0];
        [v8 invalidateKnobs];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  [(CRLWPEditor *)self setSelectedRangeAtPinchAndHalfStart:0x7FFFFFFFFFFFFFFFLL, 0];
  [(CRLWPEditor *)self setExpectedWordSelectionAtPoint:0x7FFFFFFFFFFFFFFFLL, 0];
  [(CRLWPEditor *)self setGestureIsSuppressingKnobs:0];
  [(CRLWPEditor *)self setPinchAndHalfDidStart:0];
}

- (void)p_cancelTapAndLongPressPreviousSelector
{
  v3 = [(CRLWPEditor *)self tapInfo];

  if (v3)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_beginTapAndLongPress" object:0];
  }

  [(CRLWPEditor *)self setTapInfo:0];
}

- (void)p_beginKnobTrackingSelection:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5
{
  y = a5.y;
  x = a5.x;
  v9 = a3;
  v10 = a4;
  v11 = [(CRLWPEditor *)self charIndexInRep:v10 fromPoint:0 allowPastBreak:0 isAtEndOfLine:0 leadingEdge:x, y];
  v12 = [v9 range];
  [v9 range];
  if (v11 >= v12 + (v13 >> 1))
  {
    v14 = 10;
  }

  else
  {
    v14 = 11;
  }

  v15 = [v10 knobForTag:v14];
  if (v15)
  {
LABEL_15:
    [v15 position];
    if (sub_100120888(v22, v23))
    {
      [(CRLWPEditor *)self p_createKnobTracker:v15 forRep:v10 tapCount:2];
      [(CRLWPEditor *)self p_beginOperationAndTakeControl];
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v16 = [v10 siblings];
    v17 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v25;
      while (2)
      {
        for (i = 0; i != v18; i = i + 1)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [*(*(&v24 + 1) + 8 * i) knobForTag:v14];
          if (v21)
          {
            v15 = v21;

            goto LABEL_15;
          }
        }

        v18 = [v16 countByEnumeratingWithState:&v24 objects:v28 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }
    }

    v15 = 0;
  }
}

- (void)p_createKnobTracker:(id)a3 forRep:(id)a4 tapCount:(unint64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(CRLWPEditor *)self knobTracker];

  if (v10)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101394944();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101394958();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_1013949F4();
    }

    v11 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v11);
    }

    v12 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_createKnobTracker:forRep:tapCount:]"];
    v13 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v12 file:v13 lineNumber:1895 isFatal:0 description:"expected nil value for '%{public}s'", "self.knobTracker"];
  }

  v14 = [(CRLWPEditor *)self knobTracker];

  if (!v14)
  {
    [(CRLWPEditor *)self setKnobTrackingTapCount:a5];
    v15 = [v9 newTrackerForKnob:v8];
    v16 = objc_opt_class();
    v17 = sub_100014370(v16, v15);
    if (!v17)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101394A1C();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101394A44();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101394AE0();
      }

      v18 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v18);
      }

      v19 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_createKnobTracker:forRep:tapCount:]"];
      v20 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
      [CRLAssertionHandler handleFailureInFunction:v19 file:v20 lineNumber:1900 isFatal:0 description:"invalid nil value for '%{public}s'", "wpKnobTracker"];
    }

    [(CRLWPEditor *)self setKnobTracker:v17];
  }
}

- (void)p_handleEditableTextSelectionForceGesture:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v4 targetRep];
  v7 = sub_100013F00(v5, v6);

  v8 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v8];
  v10 = v9;
  v12 = v11;

  v13 = [(CRLWPEditor *)self interactiveCanvasController];
  [v13 convertUnscaledToBoundsPoint:{v10, v12}];
  v15 = v14;
  v17 = v16;

  v18 = [v4 gestureState];
  if (v18 - 3 < 2)
  {
    [(CRLWPEditor *)self setEditableTextSelectionForceGestureInProgress:0];
    [(CRLWPEditor *)self p_endAutoscroll];
    [(CRLWPEditor *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
    [(CRLWPEditor *)self protectedStopMagnification];
  }

  else if (v18 == 2)
  {
    v20 = [(CRLWPEditor *)self magnifier];

    if (!v20)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101394B08();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101394B1C();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101394BB8();
      }

      v21 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v21);
      }

      v22 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_handleEditableTextSelectionForceGesture:]"];
      v23 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
      [CRLAssertionHandler handleFailureInFunction:v22 file:v23 lineNumber:1925 isFatal:0 description:"invalid nil value for '%{public}s'", "self.magnifier"];
    }

    v24 = [(CRLWPEditor *)self magnifier];
    [v24 setTarget:v7];

    v25 = [(CRLWPEditor *)self magnifier];
    [v25 continueMagnifyingWithMagnificationPoint:{v15, v17}];

    v26 = [(CRLWPEditor *)self interactiveCanvasController];
    v27 = [v26 layerHost];
    v28 = [v27 canvasView];
    v29 = [v28 enclosingScrollView];
    v30 = [v29 isScrollEnabled];

    if (v30)
    {
      [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v10, v12];
    }

    [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v10, v12];
  }

  else if (v18 == 1)
  {
    [(CRLWPEditor *)self setEditableTextSelectionForceGestureInProgress:1];
    v19 = [(CRLWPEditor *)self selection];
    [(CRLWPEditor *)self p_beginMagnification:v19 forRep:v7 atPoint:1 shouldSetSelection:v15, v17];
  }
}

- (void)p_handleTapGestures:(id)a3
{
  v4 = a3;
  v5 = [v4 gestureKind];
  v6 = [(CRLWPEditor *)self interactiveCanvasController];
  [v4 unscaledLocationForICC:v6];
  v8 = v7;
  v10 = v9;
  [(CRLWPEditor *)self setFirstTapUnscaledPoint:?];
  [v6 layoutIfNeeded];
  v11 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:v4];
  [v11 convertNaturalPointFromUnscaledCanvas:{v8, v10}];
  v13 = v12;
  v15 = v14;
  if (v5 == @"CRLWPImmediateSingleTap")
  {
    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101394CAC();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101394CC0();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101394D50();
      }

      v23 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v23);
      }

      v24 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_handleTapGestures:]"];
      v25 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
      [CRLAssertionHandler handleFailureInFunction:v24 file:v25 lineNumber:1989 isFatal:0 description:"we should have gotten a valid textRep by now"];
    }

    v26 = [(CRLWPEditor *)self p_shiftKeyIsDownWIthGesture:v4];
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    [(CRLWPEditor *)self setOriginalSelectionRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(CRLWPEditor *)self p_clearEditMenuFlags];
    if (![(CRLWPEditor *)self editMenuIsVisible])
    {
      v29 = [(CRLWPEditor *)self selection];
      if ([v29 isValid])
      {
        v27 = [v29 range];
        v28 = v30;
      }

      [(CRLWPEditor *)self setOriginalSelectionRange:v27, v28];
    }

    if ((-[CRLWPEditor shouldUseModernTextGestures](self, "shouldUseModernTextGestures") & v26) == 1 && (-[CRLWPEditor selection](self, "selection"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 isValid], v31, v32))
    {
      v33 = [(CRLWPEditor *)self selection];
      [(CRLWPEditor *)self p_adjustSelection:v33 withUnscaledCanvasPoint:0 textSelectionGranularity:0 isTapHold:0 allowPastBreak:0 isDragging:v8, v10];
    }

    else
    {
      v34 = 1;
      [(CRLWPEditor *)self setSelectionSetFromSingleTap:1];
      if ([v4 inputType])
      {
        v34 = [v4 inputType] == 2;
      }

      -[CRLWPEditor tappedInRep:point:tapCount:isTapHold:precise:alternateClick:](self, "tappedInRep:point:tapCount:isTapHold:precise:alternateClick:", v11, 1, 0, v34, [v4 inputType] == 2, v13, v15);
      [(CRLWPEditor *)self setSelectionSetFromSingleTap:0];
      [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:0];
      [(CRLWPEditor *)self setIsBecomingActive:0];
    }
  }

  else if (v5 == @"CRLWPImmediateDoubleTap")
  {
    if (!v11)
    {
      +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_101394BE0();
      }

      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101394BF4();
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101394C84();
      }

      v16 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130DA10(v16);
      }

      v17 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_handleTapGestures:]"];
      v18 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
      [CRLAssertionHandler handleFailureInFunction:v17 file:v18 lineNumber:2033 isFatal:0 description:"we should have gotten a valid textRep by now"];
    }

    [(CRLWPEditor *)self firstTapUnscaledPoint];
    if (v19 != 9.22337204e18)
    {
      [(CRLWPEditor *)self firstTapUnscaledPoint];
      if (v20 != 9.22337204e18)
      {
        [(CRLWPEditor *)self firstTapUnscaledPoint];
        [v11 convertNaturalPointFromUnscaledCanvas:?];
        v13 = v21;
        v15 = v22;
      }
    }

    [(CRLWPEditor *)self tappedInRep:v11 point:2 tapCount:0 isTapHold:0 precise:v13, v15];
  }
}

- (void)setSelectionControlsForInputType:(int64_t)a3
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(CRLWPEditor *)self editingReps];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9) setSuppressSelectionControls:a3 == 0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(CRLWPEditor *)self setSuppressEditMenuForIndirectGesture:a3 == 0];
}

- (BOOL)canHandleGesture:(id)a3
{
  v4 = a3;
  if ([(CRLWPEditor *)self blockGesture:v4])
  {
    v5 = 0;
  }

  else
  {
    v6 = [(CRLWPEditor *)self interactiveCanvasController];
    [v4 unscaledLocationForICC:v6];
    v8 = v7;
    v10 = v9;
    v11 = objc_opt_class();
    v12 = [v6 hitRep:{v8, v10}];
    v13 = sub_100014370(v11, v12);

    v14 = [v13 canEditWithEditor:self];
    v31 = [(CRLWPEditor *)self canIgnoreEvent];
    v32 = 0;
    v15 = 1;
    v16 = [v6 hitKnobAtPoint:1 inputType:&v32 returningRep:{v8, v10}];
    v17 = v32;
    v18 = objc_opt_class();
    v19 = sub_100014370(v18, v17);

    if ([v16 tag] != 11)
    {
      v15 = [v16 tag] == 10;
    }

    v20 = 0;
    if (v16 && v19)
    {
      v21 = [v19 storage];
      v22 = [(CRLWPEditor *)self storage];
      v20 = v21 == v22 && v15;
    }

    if (v19)
    {
      v5 = v15 & v14;
    }

    else
    {
      v5 = v14;
    }

    v23 = [v4 gestureKind];
    if ([v4 inputType])
    {
      if (v23 == @"CRLWPTwoFingerPan")
      {
        v5 = 1;
      }

      else if (v23 != @"CRLWPLongPress" || v16)
      {
        if (v23 == @"CRLWPImmediatePress" && ![(CRLWPEditor *)self ignoreFutureImmediatePresses])
        {
          v5 = [(CRLWPEditor *)self p_shouldBeginCaretGrabAtUnscaledCanvasPoint:v8, v10]|| v20;
        }

        else if (v23 == @"CRLWPImmediateSingleTap" || v23 == @"CRLWPSecondarySingleTap" || v23 == @"CRLWPImmediateDoubleTap" || v23 == @"CRLWPTapAndTouch" || v23 == @"CRLWPDoubleTapAndTouch")
        {
          v28 = [(CRLWPEditor *)self interactiveCanvasController];
          v29 = [v28 editingDisabled];

          v5 |= v29;
        }

        else
        {
          v5 &= v23 == @"CRLWPEditableTextSelectionForceGesture";
        }
      }
    }

    else
    {
      v27 = v23 == @"CRLWPImmediatePress" || v23 == @"CRLWPImmediateSingleTap" || v23 == @"CRLWPTapAndTouch" || v23 == @"CRLWPDoubleTapAndTouch";
      v5 &= v27 & (v31 ^ 1);
    }
  }

  return v5 & 1;
}

- (void)handleGesture:(id)a3
{
  v4 = a3;
  v5 = [(CRLWPEditor *)self interactiveCanvasController];
  v6 = [v4 gestureKind];
  if ([v4 gestureState] != 2)
  {
    [v5 layoutIfNeeded];
  }

  v7 = [v4 inputType];
  [v4 unscaledLocationForICC:v5];
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_class();
  v13 = [v5 hitRep:{v9, v11}];
  v14 = [(CRLWPEditor *)self wpRepFromHitRep:v13];
  v15 = sub_100014370(v12, v14);

  v16 = [v15 suppressSelectionControls];
  v17 = objc_opt_class();
  v18 = [v5 layerHost];
  v19 = sub_100014370(v17, v18);

  [v5 convertUnscaledToBoundsPoint:{v9, v11}];
  v21 = v20;
  v23 = v22;
  if ([v4 inputType] == 2 && objc_msgSend(v19, "shouldBeginScribblingAtPoint:", v21, v23))
  {
    [(CRLWPEditor *)self setShouldQueueBeginScribbleMode:1];
  }

  -[CRLWPEditor setSelectionControlsForInputType:](self, "setSelectionControlsForInputType:", [v4 inputType]);
  [v15 convertNaturalPointFromUnscaledCanvas:{v9, v11}];
  v25 = v24;
  v27 = v26;
  v28 = [v15 layout];
  [v28 validate];

  v29 = [(CRLWPEditor *)self charIndexInRep:v15 fromPoint:0 allowPastBreak:0 isAtEndOfLine:0 leadingEdge:v25, v27];
  if (!v7)
  {
    if (v29 != 0x7FFFFFFFFFFFFFFFLL || (-[CRLWPEditor editorHelper](self, "editorHelper"), v42 = objc_claimAutoreleasedReturnValue(), [v42 anchorSelection], v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
    {
      if (v6 == @"CRLWPImmediatePress")
      {
        [(CRLWPEditor *)self p_handleIndirectImmediatePressGesture:v4];
        goto LABEL_42;
      }

      if (v6 == @"CRLWPTapAndTouch" || v6 == @"CRLWPDoubleTapAndTouch")
      {
        v50 = sub_1003035DC(v4, 1, v30, v31, v32, v33, v34, v35, &OBJC_PROTOCOL___CRLTapGesture);
        [(CRLWPEditor *)self p_handleTapAndTouchGesture:v50];

        goto LABEL_42;
      }

      if (v6 == @"CRLWPImmediateSingleTap" || v6 == @"CRLWPImmediateDoubleTap" && (-[CRLWPEditor interactiveCanvasController](self, "interactiveCanvasController"), v44 = objc_claimAutoreleasedReturnValue(), v45 = [v44 editingDisabled], v44, v45))
      {
        [(CRLWPEditor *)self p_handleTapGestures:v4];
LABEL_42:
        [(CRLWPEditor *)self setMostRecentGestureKind:v6];
        goto LABEL_43;
      }
    }

    [(CRLWPEditor *)self setMostRecentGestureKind:v6];
LABEL_29:
    v46 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101394D78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101394D8C(v6, v46);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101394E38();
    }

    v47 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v47);
    }

    v48 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) handleGesture:]"];
    v49 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:2355 isFatal:0 description:"CRLWPEditor can't handle a gesture of kind %{public}@", v6];

    goto LABEL_40;
  }

  [(CRLWPEditor *)self setMostRecentGestureKind:v6];
  if (v6 == @"CRLWPTwoFingerPan")
  {
    [(CRLWPEditor *)self p_handleTwoFingerPanGesture:v4];
    goto LABEL_43;
  }

  if (v6 == @"CRLWPLongPress" || v6 == @"CRLWPImmediatePress")
  {
    [(CRLWPEditor *)self p_handleImmediateAndLongPressGesture:v4];
    goto LABEL_43;
  }

  if (v6 == @"CRLWPTapAndTouch" || v6 == @"CRLWPDoubleTapAndTouch")
  {
    v48 = sub_1003035DC(v4, 1, v36, v37, v38, v39, v40, v41, &OBJC_PROTOCOL___CRLTapGesture);
    [(CRLWPEditor *)self p_handleTapAndTouchGesture:v48];
LABEL_40:

    goto LABEL_43;
  }

  if (v6 != @"CRLWPImmediateSingleTap" && v6 != @"CRLWPSecondarySingleTap" && v6 != @"CRLWPImmediateDoubleTap")
  {
    if (v6 == @"CRLWPEditableTextSelectionForceGesture")
    {
      [(CRLWPEditor *)self p_handleEditableTextSelectionForceGesture:v4];
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v51 = [v15 isPointInSelectedArea:{v25, v27}];
  v52 = [v4 inputType];
  if (((v6 == @"CRLWPImmediateSingleTap") & v51 & v16) != 1 || !v52)
  {
    [(CRLWPEditor *)self p_handleTapGestures:v4];
  }

LABEL_43:
}

- (void)p_handleIndirectImmediatePressGesture:(id)a3
{
  v47 = a3;
  v4 = [(CRLWPEditor *)self interactiveCanvasController];
  [v47 unscaledLocationForICC:v4];
  v6 = v5;
  v8 = v7;

  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, v47);
  v11 = [(CRLWPEditor *)self icc];
  [v10 initialPosition];
  [v11 convertBoundsToUnscaledPoint:?];
  v13 = v12;
  v15 = v14;

  v16 = [(CRLWPEditor *)self p_shiftKeyIsDownWIthGesture:v47];
  v17 = [v47 gestureState];
  if (v17 - 3 < 2)
  {
    [(CRLWPEditor *)self p_endAutoscroll];
    v19 = [(CRLWPEditor *)self editorHelper];
    [v19 setAnchorSelection:0];
    goto LABEL_19;
  }

  if (v17 != 2)
  {
    if (v17 != 1)
    {
      goto LABEL_20;
    }

    v18 = [(CRLWPEditor *)self interactiveCanvasController];
    [v18 layoutIfNeeded];

    v19 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:v47];
    [v19 convertNaturalPointFromUnscaledCanvas:{v13, v15}];
    v21 = v20;
    v23 = v22;
    v24 = [v19 didPointHitSelectionEnd:?];
    v25 = v24;
    if (v16)
    {
      v26 = [(CRLWPEditor *)self selection];
      v27 = [v26 isValid];

      if (((v27 | v25) & 1) == 0)
      {
LABEL_6:
        [(CRLWPEditor *)self setSelectionSetFromSingleTap:1];
        [(CRLWPEditor *)self tappedInRep:v19 point:1 tapCount:1 isTapHold:1 precise:v21, v23];
        [(CRLWPEditor *)self setSelectionSetFromSingleTap:0];
        v28 = [(CRLWPEditor *)self selection];
        v29 = [(CRLWPEditor *)self editorHelper];
        [v29 setAnchorSelection:v28];

        [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:0];
LABEL_19:

        goto LABEL_20;
      }
    }

    else if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }

    v39 = [(CRLWPEditor *)self selection];
    v40 = [v39 range];
    v42 = v41;

    v38 = [(CRLWPEditor *)self selectionFromUnscaledCanvasPoint:0 textSelectionGranularity:1 isTapHold:0 allowPastBreak:0 isDragging:v6, v8];
    v43 = [(CRLWPEditor *)self selection];
    [(CRLWPEditor *)self p_adjustSelection:v43 withOtherSelection:v38 textSelectionGranularity:0];

    v44 = [(CRLWPEditor *)self editorHelper];
    [v44 setAnchorSelection:0];

    if ([v38 range] > &v40[v42 >> 1])
    {
      v42 = 0;
    }

    v45 = [objc_alloc(-[CRLWPEditor wpSelectionClass](self "wpSelectionClass"))];
    v46 = [(CRLWPEditor *)self editorHelper];
    [v46 setAnchorSelection:v45];

LABEL_18:
    goto LABEL_19;
  }

  v30 = [(CRLWPEditor *)self interactiveCanvasController];
  v31 = [v30 canvasView];
  v32 = [v31 enclosingScrollView];
  v33 = [v32 isScrollEnabled];

  if (v33)
  {
    [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v6, v8];
  }

  v34 = [(CRLWPEditor *)self editorHelper];
  v35 = [v34 anchorSelection];

  if (!v35)
  {
    v36 = [(CRLWPEditor *)self selection];
    v37 = [(CRLWPEditor *)self editorHelper];
    [v37 setAnchorSelection:v36];
  }

  if (sub_100120090(v13, v15, v6, v8) >= 3.0)
  {
    v19 = [(CRLWPEditor *)self editorHelper];
    v38 = [v19 anchorSelection];
    [(CRLWPEditor *)self p_adjustSelection:v38 withUnscaledCanvasPoint:[(CRLWPEditor *)self initialPressTextSelectionGranularity] textSelectionGranularity:1 isTapHold:[(CRLWPEditor *)self initialPressTextSelectionGranularity]^ 1 allowPastBreak:1 isDragging:v6, v8];
    goto LABEL_18;
  }

LABEL_20:
}

- (void)gestureSequenceDidEnd
{
  [(CRLWPEditor *)self setIgnoreFutureImmediatePresses:0];
  v3 = objc_opt_class();
  v4 = [(CRLWPEditor *)self interactiveCanvasController];
  v5 = [v4 layerHost];
  v18 = sub_100014370(v3, v5);

  if ([(CRLWPEditor *)self shouldQueueBeginScribbleMode])
  {
    [v18 scribbleInteractionDidFinishWriting];
    [(CRLWPEditor *)self setShouldQueueBeginScribbleMode:0];
  }

  if ([(CRLWPEditor *)self isACurrentEditor])
  {
    v6 = [(CRLWPEditor *)self selection];
    if (!v6)
    {
      goto LABEL_18;
    }

    v7 = [(CRLWPEditor *)self mostRecentGestureKind];
    v8 = v7;
    if (v7 == @"CRLWPImmediateSingleTap")
    {
    }

    else
    {
      v9 = [(CRLWPEditor *)self mostRecentGestureKind];

      if (v9 != @"CRLWPImmediatePress")
      {
        v10 = [(CRLWPEditor *)self mostRecentGestureKind];
        v11 = v10;
        if (v10 == @"CRLWPTapAndTouch")
        {

          goto LABEL_16;
        }

        v12 = [(CRLWPEditor *)self mostRecentGestureKind];

        if (v12 == @"CRLWPImmediateDoubleTap")
        {
LABEL_16:
          [v6 range];
          if (!v17)
          {
            [(CRLWPEditor *)self gestureBeganWhenEditingBegan];
          }
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    v13 = [v6 range];
    v15 = v14;
    if (v13 == [(CRLWPEditor *)self originalSelectionRange]&& v15 == v16 && ![(CRLWPEditor *)self gestureBeganWhenEditingBegan])
    {
      [(CRLWPEditor *)self setShouldShowEditMenuForInsertionPoint:1];
    }

    goto LABEL_18;
  }

LABEL_19:
  [(CRLWPEditor *)self setGestureBeganWhenEditingBegan:0];
}

- (void)p_beginOperationAndTakeControl
{
  v3 = [(CRLWPEditor *)self interactiveCanvasController];
  v4 = [v3 dynamicOperationController];
  v5 = [v4 isInOperation];

  if (v5)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101394E60();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101394E74();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101394F04();
    }

    v6 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v6);
    }

    v7 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_beginOperationAndTakeControl]"];
    v8 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v7 file:v8 lineNumber:2826 isFatal:0 description:"beginning WP operation in DOC when already in an operation"];
  }

  v9 = [v3 tmCoordinator];
  [v9 registerTrackerManipulator:self];

  v10 = [v3 tmCoordinator];
  v11 = [v10 takeControlWithTrackerManipulator:self];

  if (v11)
  {
    v12 = [v3 dynamicOperationController];
    [v12 beginOperation];
  }

  else
  {
    v13 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101394F2C();
    }

    v14 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101394F54(v14, v3, v13);
    }

    if (qword_101AD5A10 != -1)
    {
      sub_101395064();
    }

    v15 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v15);
    }

    v12 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_beginOperationAndTakeControl]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    v17 = [v3 tmCoordinator];
    v18 = [v17 controllingTM];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [CRLAssertionHandler handleFailureInFunction:v12 file:v16 lineNumber:2832 isFatal:0 description:"could not take control with WP Editing Controller. Controlling TM is %{public}@", v20];
  }
}

- (void)p_endAutoscroll
{
  v3 = [(CRLWPEditor *)self autoscroll];
  [v3 invalidate];

  [(CRLWPEditor *)self setAutoscroll:0];
}

- (void)p_handleTapWhileMarkedTextGestureRecognizer:(id)a3
{
  v4 = [(CRLWPEditor *)self icc];
  v3 = [v4 textInputResponder];
  [v3 acceptAutocorrection];
}

- (void)p_handleKnobDragGestureRecognizer:(id)a3
{
  v4 = a3;
  v5 = v4;
  v6 = !v4 || [v4 gestureState] == 3 || objc_msgSend(v5, "gestureState") == 4;
  [(CRLWPEditor *)self setReadyToEnd:v6];
  v7 = [(CRLWPEditor *)self knobTracker];

  if (!v7)
  {
    +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_10139508C();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_1013950A0();
    }

    if (qword_101AD5A10 != -1)
    {
      sub_10139513C();
    }

    v8 = off_1019EDA68;
    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_10130DA10(v8);
    }

    v9 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_handleKnobDragGestureRecognizer:]"];
    v10 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    [CRLAssertionHandler handleFailureInFunction:v9 file:v10 lineNumber:2849 isFatal:0 description:"invalid nil value for '%{public}s'", "self.knobTracker"];
  }

  if ([v5 gestureState] == 3 || objc_msgSend(v5, "gestureState") == 1)
  {
    v11 = [(CRLWPEditor *)self knobTracker];
    [v11 setIgnoreNextCall:1];
  }

  v12 = [(CRLWPEditor *)self icc];
  [v5 unscaledLocationForICC:v12];
  v15 = sub_100122154(v13, v14);
  v17 = v16;

  [(CRLWPEditor *)self knobToTouchOffset];
  v19 = sub_10011F334(v15, v17, v18);
  v21 = v20;
  v22 = [(CRLWPEditor *)self knobTracker];
  [v22 setCurrentPosition:{v19, v21}];

  if ([(CRLWPEditor *)self readyToEnd])
  {
    [(CRLWPEditor *)self p_endAutoscroll];
  }

  else
  {
    [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v15, v17];
  }

  v23 = [(CRLWPEditor *)self interactiveCanvasController];
  v24 = [v23 dynamicOperationController];
  [v24 handleTrackerManipulator:self];
}

- (void)p_beginMagnification:(id)a3 forRep:(id)a4 atPoint:(CGPoint)a5 shouldSetSelection:(BOOL)a6
{
  v6 = a6;
  y = a5.y;
  x = a5.x;
  v10 = [(CRLWPEditor *)self interactiveCanvasController:a3];
  [v10 convertBoundsToUnscaledPoint:{x, y}];
  v12 = v11;
  v14 = v13;

  if (v6)
  {

    [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:1 includeListLabels:v12, v14];
  }
}

- (void)protectedStopMagnification
{
  v3 = [(CRLWPEditor *)self textSelectionDelegate];
  [v3 endLoupeSession];

  v4 = [(CRLWPEditor *)self magnifier];

  if (v4)
  {
    v5 = [(CRLWPEditor *)self interactiveCanvasController];
    [v5 layoutIfNeeded];

    v6 = [(CRLWPEditor *)self magnifier];
    [v6 stopMagnifying:1];

    [(CRLWPEditor *)self setMagnifier:0];

    [(CRLWPEditor *)self setFidgetResolver:0];
  }
}

- (void)p_protectedStopKnobTrackingGesture:(id)a3
{
  v6 = a3;
  v4 = [(CRLWPEditor *)self knobTracker];

  if (v4)
  {
    [(CRLWPEditor *)self p_handleKnobDragGestureRecognizer:v6];
    y = CGPointZero.y;
    [(CRLWPEditor *)self setAdjustedDragPoint:CGPointZero.x, y];
    [(CRLWPEditor *)self setAdjustedDragToNaturalPointOffset:CGPointZero.x, y];
    [(CRLWPEditor *)self setSelectionTargetToAdjustedDragOffset:CGPointZero.x, y];
    [(CRLWPEditor *)self setKnobTracker:0];
  }
}

- (void)setInsertionStyle:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle) = a3;
  v3 = a3;
}

- (void)setEnclosingShape:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) = a3;
  v3 = a3;
}

- (_TtC8Freeform12CRLWPStorage)storageWithMarkedText
{
  v2 = self;
  sub_100936C74();
  v4 = v3;

  return v4;
}

- (_TtC8Freeform11CRLWPLayout)layout
{
  v2 = self;
  v3 = sub_100936D54();

  return v3;
}

- (void)textSelectionWillChange
{
  v2 = self;
  sub_100937648();
}

- (void)textSelectionDidChange
{
  v2 = self;
  sub_10093769C();
}

- (void)textWillChange
{
  v2 = self;
  sub_1009377C4();
}

- (void)willUndo
{
  v2 = self;
  sub_100937824();
}

- (void)documentEditabilityDidChange
{
  v2 = self;
  sub_100937A54();
}

+ (BOOL)canEditTextIn:(id)a3 using:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100962604(v5, v6);

  return v7 & 1;
}

- (CRLWPSelection)selection
{
  v2 = [*(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) selectionForEditor:self];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v2 = swift_dynamicCastObjCClass();
    if (!v2)
    {

      v2 = 0;
    }
  }

  return v2;
}

- (void)setSelection:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100937C74(a3);
}

- (CRLSearchReference)editingSearchReference
{
  v2 = self;
  v3 = sub_100937E64();

  return v3;
}

- (void)endEditing
{
  memset(v3, 0, sizeof(v3));
  v2 = self;
  sub_1009380EC();

  sub_10000CAAC(v3, &unk_1019F4D00);
}

- (void)setWantsVisibleKeyboard:(BOOL)a3
{
  v4 = self;
  sub_1009383D8(a3);
}

- (_TtP8Freeform16CRLTextSelecting_)textSelectionDelegate
{
  v2 = self;
  sub_100960E34();
  v4 = v3;
  swift_unknownObjectRetain();

  return v4;
}

- (_TtC8Freeform25CRLWPTextSelectionManager)textSelectionManager
{
  v2 = self;
  sub_100960E34();
  v4 = v3;
  swift_unknownObjectRetain();

  if (v4)
  {
    type metadata accessor for CRLWPTextSelectionManager();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      goto LABEL_5;
    }

    swift_unknownObjectRelease();
  }

  v5 = 0;
LABEL_5:

  return v5;
}

- (void)setEditorController:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) = a3;
  v3 = a3;
}

- (BOOL)needsTextEditingAccessoryBar
{
  v2 = self;
  v3 = sub_1009385E0();

  return v3 & 1;
}

- (UIInputViewController)inputAccessoryViewController
{
  v2 = self;
  v3 = sub_1009386D4();

  return v3;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)a3 inSelectionPath:(id)a4 withNewEditors:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_100962708(v7, v8);

  return v10 & 1;
}

- (id)selectionWillChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5 inSelectionPath:(id)a6 withNewEditors:(id)a7
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v14 = self;
  v15 = sub_1009628E0(a3, v12);

  return v15;
}

- (void)selectionDidChangeFromSelection:(id)a3 toSelection:(id)a4 withFlags:(unint64_t)a5
{
  v9 = a3;
  v10 = a4;
  v11 = self;
  sub_100938C50(a3, v10, a5);
}

- (void)didBecomeCurrentEditorForEditorController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100962C70();
}

- (void)willResignCurrentEditor
{
  v2 = self;
  sub_100939624();
}

- (BOOL)canPasteWithItemSource:(id)a3 selection:(id)a4 sender:(id)a5
{
  if (a5)
  {
    swift_unknownObjectRetain();
    v8 = a4;
    v9 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    swift_unknownObjectRetain();
    v10 = a4;
    v11 = self;
  }

  v12 = sub_100962DFC(a3);
  swift_unknownObjectRelease();

  sub_10000CAAC(v14, &unk_1019F4D00);
  return v12 & 1;
}

- (void)pasteFromItemSource:(id)a3 forceMatchStyle:(BOOL)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_100939C9C(a3, a4);
  swift_unknownObjectRelease();
}

- (void)pasteWithItemSource:(id)a3 selection:(id)a4 sender:(id)a5 selectRange:(int64_t)a6 dragBlock:(id)a7
{
  v12 = _Block_copy(a7);
  if (a5)
  {
    swift_unknownObjectRetain();
    v13 = a4;
    v14 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    swift_unknownObjectRetain();
    v15 = a4;
    v16 = self;
  }

  _Block_copy(v12);
  sub_100962F14(a3, a4, v17, a6, self, v12);
  _Block_release(v12);
  _Block_release(v12);
  swift_unknownObjectRelease();

  sub_10000CAAC(v17, &unk_1019F4D00);
}

- (void)cutTo:(id)a3 nativeOnly:(BOOL)a4 sender:(id)a5
{
  if (a5)
  {
    v8 = a3;
    v9 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v10 = a3;
    v11 = self;
  }

  sub_10093C2F4(a3, a4);

  sub_10000CAAC(v12, &unk_1019F4D00);
}

- (int64_t)canPerformEditorAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    v6 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = self;
  }

  v8 = sub_10093CC50(a3);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (BOOL)canMutateTextStorage
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self;
    v6 = [v4 editingDisabled];

    if (!v6)
    {
      v8 = *(v5 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_disallowEditingOfTextString);

      v7 = v8 ^ 1;
      return v7 & 1;
    }
  }

  v7 = 0;
  return v7 & 1;
}

- (void)setEditorHelper:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) = a3;
  v3 = a3;
}

- (id)cursorAtPoint:(CGPoint)a3 withCursorPlatformObject:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_10093E094(v7, x, y);

  return v9;
}

- (void)addContextualMenuElementsToArray:(id)a3 atPoint:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_10096423C(v5);
}

- (void)selectMenuAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [*(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) selectWordWithFlags:{16, v6, v7}];

  sub_10000CAAC(&v6, &unk_1019F4D00);
}

- (void)selectAll
{
  v2 = self;
  sub_10093EE84();
}

- (void)selectAllMenuAction:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_10093EE84();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)lookUp:(id)a3
{
  if (!a3)
  {
    v9 = 0u;
    v10 = 0u;
    v8 = self;
    sub_100960E34();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v4 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100960E34();
  if (v5)
  {
LABEL_3:
    v6 = [v5 selectedRange];
    sub_10093F4E0(v6, v7);
  }

LABEL_4:

  sub_10000CAAC(&v9, &unk_1019F4D00);
}

- (void)lookUpTextAtRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  sub_10093F4E0(location, length);
}

- (void)deleteBackward:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [(CRLWPEditor *)self deleteCurrentSelection:v6];

  sub_10000CAAC(&v6, &unk_1019F4D00);
}

- (void)showEditMenu
{
  v2 = self;
  sub_100943A08();
}

- (CGRect)targetRectForEditMenu
{
  v2 = self;
  sub_100943FB8();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

- (void)hideEditMenu
{
  v4 = self;
  v2 = sub_100943964();
  if (v2)
  {
    v3 = v2;
    sub_10127F918();
  }
}

- (id)dictationAndAutocorrectionsFor:(int64_t)a3 effectiveRange:(_NSRange *)a4
{
  v6 = self;

  sub_1008ACD34(a3);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (v8)
  {
    if (a4)
    {
      a4->location = v10;
      a4->length = v12;
    }

    v13 = String._bridgeToObjectiveC()();
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (id)autocorrectionRangesToDisplayInRange:(_NSRange)a3
{
  length = a3.length;
  location = a3.location;
  v5 = self;
  v6 = sub_1009443C8(location, length);

  return v6;
}

- (void)toggleListEntry:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v5 = self;
  }

  KeyPath = swift_getKeyPath();
  sub_100946704(KeyPath);
  v8 = v7;

  if (v8)
  {
    v9 = (v8 & 0xFF00) == 512;
  }

  else
  {
    v9 = 1;
  }

  v10 = v9;
  v11 = swift_getKeyPath();
  sub_100947328(v11, v10);

  sub_10000CAAC(v12, &unk_1019F4D00);
}

- (BOOL)canSetWritingDirection:(int64_t)a3
{
  v4 = self;
  sub_100945450(a3);
  LOBYTE(a3) = v5;

  return a3 & 1;
}

- (int64_t)baseWritingDirectionFor:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1009457D8(v4);
  v7 = v6;

  return v7;
}

- (void)setBaseWritingDirection:(int64_t)a3 forParagraphsWithRange:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_100945BA8(a3, v6);
}

- (void)setAutoscroll:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_autoscroll);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_autoscroll) = a3;
  v3 = a3;
}

- (void)setListDragAnimator:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_listDragAnimator);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_listDragAnimator) = a3;
  v3 = a3;
}

- (void)commitMarkedTextWithoutModifyingStorage
{
  v2 = self;
  sub_100947F58();
}

- (void)commitMarkedText
{
  v2 = self;
  sub_1009480A8();
}

- (void)abortMarkedText
{
  v2 = self;
  sub_100948424();
}

- (void)willResignTextInputEditor
{
  v2 = self;
  sub_100948514();
}

- (void)didResignTextInputEditor
{
  v2 = self;
  sub_10094871C();
}

- (void)didBecomeTextInputEditor
{
  v2 = self;
  sub_100948AF4();
}

- (void)setMostRecentGestureKind:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_mostRecentGestureKind);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_mostRecentGestureKind) = a3;
  v3 = a3;
}

- (void)setFidgetResolver:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_fidgetResolver);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_fidgetResolver) = a3;
  v3 = a3;
}

- (void)setDictationInterpretations:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationInterpretations);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationInterpretations) = a3;
  v3 = a3;
}

- (void)setTapInfo:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_tapInfo);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_tapInfo) = a3;
  v3 = a3;
}

- (CRLWPTextMagnifier)magnifier
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMagnifier:(id)a3
{
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_magnifier) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (CGPoint)knobTrackingDragPoint
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTrackingDragPoint);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTrackingDragPoint + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)firstTapUnscaledPoint
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_firstTapUnscaledPoint);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_firstTapUnscaledPoint + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (void)setKnobTracker:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracker);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracker) = a3;
  v3 = a3;
}

- (BOOL)editMenuIsVisible
{
  v2 = self;
  v3 = sub_100943964();

  if (!v3)
  {
    return 0;
  }

  v4 = *&v3[OBJC_IVAR____TtC8Freeform23CRLWPEditMenuController_selectionPath];
  v5 = v4;

  if (!v4)
  {
    return 0;
  }

  return 1;
}

- (_NSRange)originalSelectionRange
{
  v2 = self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_originalSelectionRange;
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_originalSelectionRange);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (CGPoint)knobToTouchOffset
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobToTouchOffset);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobToTouchOffset + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (BOOL)wantsParagraphModeWithSelection:(id)a3
{
  v4 = self;
  if ([a3 isValid])
  {
    v5 = *(v4 + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode);

    if (v5)
    {
      return 1;
    }
  }

  else
  {
  }

  return 0;
}

- (NSSet)editingReps
{
  v2 = self;
  sub_10094946C();

  sub_100006370(0, &qword_1019FB7A0);
  sub_10000FDE0(&qword_1019F5048, &qword_1019FB7A0);
  v3.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (_NSRange)selectedRangeAtPinchAndHalfStart
{
  v2 = self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectedRangeAtPinchAndHalfStart;
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectedRangeAtPinchAndHalfStart);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (_NSRange)expectedWordSelectionAtPoint
{
  v2 = self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_expectedWordSelectionAtPoint;
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_expectedWordSelectionAtPoint);
  v4 = *(v2 + 1);
  result.length = v4;
  result.location = v3;
  return result;
}

- (NSDate)lastSingleImmediateTapTime
{
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastSingleImmediateTapTime;
  swift_beginAccess();
  (*(v4 + 16))(v6, self + v7, v3);
  v8.super.isa = Date._bridgeToObjectiveC()().super.isa;
  (*(v4 + 8))(v6, v3);

  return v8.super.isa;
}

- (void)setLastSingleImmediateTapTime:(id)a3
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastSingleImmediateTapTime;
  swift_beginAccess();
  v9 = *(v5 + 40);
  v10 = self;
  v9(self + v8, v7, v4);
  swift_endAccess();
}

- (CGPoint)adjustedDragPoint
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_adjustedDragPoint);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_adjustedDragPoint + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGPoint)adjustedDragToNaturalPointOffset
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_adjustedDragToNaturalPointOffset);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_adjustedDragToNaturalPointOffset + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)textFieldBounds
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_textFieldBounds);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_textFieldBounds + 8);
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_textFieldBounds + 16);
  v5 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_textFieldBounds + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)selectionTargetToAdjustedDragOffset
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectionTargetToAdjustedDragOffset);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_selectionTargetToAdjustedDragOffset + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CGRect)currentTargetPinRect
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentTargetPinRect);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentTargetPinRect + 8);
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentTargetPinRect + 16);
  v5 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentTargetPinRect + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGRect)currentStationaryPinRect
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentStationaryPinRect);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentStationaryPinRect + 8);
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentStationaryPinRect + 16);
  v5 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentStationaryPinRect + 24);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (CGPoint)currentKnobPoint
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentKnobPoint);
  v3 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_currentKnobPoint + 8);
  result.y = v3;
  result.x = v2;
  return result;
}

- (CRLWPRep)editingRep
{
  v2 = self;
  v3 = sub_100949A1C();

  return v3;
}

- (CGPoint)clampUnscaledPointToTextFieldBounds:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_100949F2C(x, y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)getCenterOfWord:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10094A034(v4);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setDragRep:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dragRep);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dragRep) = a3;
  v3 = a3;
}

- (_TtC8Freeform11CRLWPEditor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)moveRight:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_10094A648(self, v6);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (_NSRange)availableSelectionRangeForCharIndex:(int64_t)a3
{
  v3 = self;
  sub_100966624();
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.length = v9;
  result.location = v8;
  return result;
}

- (BOOL)hasText
{
  v2 = self;
  sub_10094E97C();
  v4 = v3;

  return v4 & 1;
}

- (NSArray)validAttributesForMarkedText
{
  sub_1005B981C(&unk_101A09700);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10146CA70;
  *(v2 + 32) = NSBackgroundColorAttributeName;
  *(v2 + 40) = NSUnderlineStyleAttributeName;
  *(v2 + 48) = NSUnderlineColorAttributeName;
  *(v2 + 56) = NSForegroundColorAttributeName;
  *(v2 + 64) = NSFontAttributeName;
  type metadata accessor for Key(0);
  v3 = NSBackgroundColorAttributeName;
  v4 = NSUnderlineStyleAttributeName;
  v5 = NSUnderlineColorAttributeName;
  v6 = NSForegroundColorAttributeName;
  v7 = NSFontAttributeName;
  v8.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (void)insertText:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10094ECE4(v5);

  sub_100005070(v5);
}

- (void)insertWithText:(id)a3
{
  v4 = qword_1019F1570;
  v5 = a3;
  v6 = self;
  v7 = v6;
  if (v4 != -1)
  {
    swift_once();
    v6 = v7;
  }

  sub_10094F498(v6, v5);
}

- (void)deleteCurrentSelection
{
  v2 = self;
  sub_10094F9F8();
}

- (void)updateStateForCommand:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10094FE78(v4);
}

- (void)replace:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_100950348(v6, v7);
}

- (NSAttributedString)markedText
{
  v2 = qword_1019F1570;
  result = self;
  v4 = result;
  if (v2 != -1)
  {
    result = swift_once();
  }

  v5 = *(*(&v4->super.isa + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v5)
  {
    v6 = *(v5 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_attributedMarkedText);
    v7 = v6;

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_NSRange)markedRange
{
  v2 = qword_1019F1570;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_100951AE8(v3, v6);

  v4 = v6[0];
  v5 = v6[1];
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)clearMarkedRange
{
  v2 = self;
  sub_100951BD0();
}

- (_TtC8Freeform12CRLTextRange)markedTextRange
{
  v2 = qword_1019F1570;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_100951D78(v3, &v6);

  v4 = v6;

  return v4;
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4 replacementRange:(_NSRange)a5
{
  length = a4.length;
  location = a4.location;
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  sub_100951E20(v10, location, length);

  sub_10000CAAC(v10, &unk_1019F4D00);
}

- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  if (a3)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = qword_1019F1570;
  v11 = self;
  if (v10 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&unk_1019F6C70);
  type metadata accessor for _NSRange(0);

  sub_10095260C(v7, v9, v11, location, length);
  swift_arrayDestroy();
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v7 = qword_1019F1570;
  v8 = a3;
  v9 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_101A012B8);
  type metadata accessor for _NSRange(0);
  v10 = v8;
  sub_100952848(v8, v9, location, length);
  swift_arrayDestroy();
}

- (id)attributedSubstringForProposedRange:(_NSRange)a3 actualRange:(_NSRange *)a4
{
  length = a3.length;
  location = a3.location;
  v7 = qword_1019F1570;
  v8 = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_100952E10(location, length, v8, a4, &v11);

  v9 = v11;

  return v9;
}

- (void)unmarkText
{
  v2 = self;
  sub_100953030();
}

- (NSDictionary)markedTextStyle
{
  v2 = *(*(&self->super.isa + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) + OBJC_IVAR____TtC8Freeform14CRLWPShapeItem_textStorage);
  if (v2)
  {
    if (*(v2 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextStyle))
    {
      type metadata accessor for Key(0);
      sub_1009624F8(&qword_1019F34A0, type metadata accessor for Key);

      v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    }

    else
    {
      v3.super.isa = 0;
    }

    return v3.super.isa;
  }

  else
  {
    __break(1u);
  }

  return self;
}

- (void)setMarkedTextStyle:(id)a3
{
  if (a3)
  {
    type metadata accessor for Key(0);
    sub_1009624F8(&qword_1019F34A0, type metadata accessor for Key);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_1009678D4(v4);
}

- (int64_t)writingToolsBehavior
{
  v5 = &type metadata for CRLFeatureFlags;
  v6 = sub_100004D60();
  v4[0] = 4;
  v2 = isFeatureEnabled(_:)();
  sub_100005070(v4);
  if (v2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (id)commandForReplacingTextInRange:(id)a3 withText:(id)a4
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3;
  v10 = self;
  v11 = sub_100953AAC(v9, v6, v8);

  return v11;
}

- (id)commandForReplacingTextInRange:(id)a3 withAttributedText:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100953F60(v6, v7);

  return v9;
}

- (void)deleteWordForward:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_100D712CC();

  sub_1005E09AC(v6);
}

- (void)arrowKeyReceivedInDirection:(unint64_t)a3 withModifierKeys:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_100D72744(a3);
}

@end