@interface CRLWPEditor
+ (BOOL)canEditTextIn:(id)in using:(id)using;
- (BOOL)blockGesture:(id)gesture;
- (BOOL)canHandleGesture:(id)gesture;
- (BOOL)canMutateTextStorage;
- (BOOL)canPasteWithItemSource:(id)source selection:(id)selection sender:(id)sender;
- (BOOL)canSetWritingDirection:(int64_t)direction;
- (BOOL)editMenuIsVisible;
- (BOOL)hasText;
- (BOOL)isACurrentEditor;
- (BOOL)isUnscaledPointInTextSelection:(CGPoint)selection;
- (BOOL)needsTextEditingAccessoryBar;
- (BOOL)p_shouldBeginCaretGrabAtUnscaledCanvasPoint:(CGPoint)point;
- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors;
- (BOOL)wantsParagraphModeWithSelection:(id)selection;
- (CGPoint)adjustedDragPoint;
- (CGPoint)adjustedDragToNaturalPointOffset;
- (CGPoint)clampUnscaledPointToTextFieldBounds:(CGPoint)bounds;
- (CGPoint)currentKnobPoint;
- (CGPoint)firstTapUnscaledPoint;
- (CGPoint)getCenterOfWord:(id)word;
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
- (_NSRange)availableSelectionRangeForCharIndex:(int64_t)index;
- (_NSRange)expectedWordSelectionAtPoint;
- (_NSRange)markedRange;
- (_NSRange)nextWordFromIndex:(unint64_t)index forward:(BOOL)forward;
- (_NSRange)originalSelectionRange;
- (_NSRange)selectedRangeAtPinchAndHalfStart;
- (_TtC8Freeform11CRLWPEditor)init;
- (_TtC8Freeform11CRLWPLayout)layout;
- (_TtC8Freeform12CRLTextRange)markedTextRange;
- (_TtC8Freeform12CRLWPStorage)storageWithMarkedText;
- (_TtC8Freeform25CRLWPTextSelectionManager)textSelectionManager;
- (_TtP8Freeform16CRLTextSelecting_)textSelectionDelegate;
- (id)attributedSubstringForProposedRange:(_NSRange)range actualRange:(_NSRange *)actualRange;
- (id)autocorrectionRangesToDisplayInRange:(_NSRange)range;
- (id)closestRepToPoint:(CGPoint)point forStorage:(id)storage;
- (id)commandForReplacingTextInRange:(id)range withAttributedText:(id)text;
- (id)commandForReplacingTextInRange:(id)range withText:(id)text;
- (id)cursorAtPoint:(CGPoint)point withCursorPlatformObject:(id)object;
- (id)dictationAndAutocorrectionsFor:(int64_t)for effectiveRange:(_NSRange *)range;
- (id)icc;
- (id)p_editingRepAtPoint:(CGPoint)point;
- (id)p_editingRepForCharIndex:(unint64_t)index;
- (id)p_endingRepForUnscaledCanvasPoint:(CGPoint)point;
- (id)p_inlineEquationRepInTableCellTextRep:(id)rep atUnscaledCanvasPoint:(CGPoint)point gesture:(id)gesture;
- (id)p_repsForStorage:(id)storage;
- (id)p_selectionForRep:(id)rep naturalPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold precise:(BOOL)precise includeListLabels:(BOOL)labels allowPastBreak:(BOOL)break alternateClick:(BOOL)self0;
- (id)p_textRepAtGestureLocationForGesture:(id)gesture;
- (id)selectionFromUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break isDragging:(BOOL)dragging;
- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors;
- (id)wpRepFromHitRep:(id)rep;
- (int64_t)baseWritingDirectionFor:(id)for;
- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender;
- (int64_t)writingToolsBehavior;
- (unint64_t)charIndexInRep:(id)rep fromPoint:(CGPoint)point allowPastBreak:(BOOL)break allowNotFound:(BOOL)found isAtEndOfLine:(BOOL *)line;
- (unint64_t)charIndexInRep:(id)rep fromPoint:(CGPoint)point allowPastBreak:(BOOL)break allowNotFound:(BOOL)found pastCenterGoesToNextChar:(BOOL)char isAtEndOfLine:(BOOL *)line;
- (unint64_t)charIndexInRep:(id)rep fromPoint:(CGPoint)point allowPastBreak:(BOOL)break isAtEndOfLine:(BOOL *)line leadingEdge:(BOOL *)edge;
- (void)abortMarkedText;
- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point;
- (void)arrowKeyReceivedInDirection:(unint64_t)direction withModifierKeys:(id)keys;
- (void)clearMarkedRange;
- (void)commitMarkedText;
- (void)commitMarkedTextWithoutModifyingStorage;
- (void)cutTo:(id)to nativeOnly:(BOOL)only sender:(id)sender;
- (void)deleteBackward:(id)backward;
- (void)deleteCurrentSelection;
- (void)deleteWordForward:(id)forward;
- (void)didBecomeCurrentEditorForEditorController:(id)controller;
- (void)didBecomeTextInputEditor;
- (void)didResignTextInputEditor;
- (void)didUndo;
- (void)documentEditabilityDidChange;
- (void)endEditing;
- (void)gestureSequenceDidEnd;
- (void)handleGesture:(id)gesture;
- (void)hideEditMenu;
- (void)insertText:(id)text;
- (void)insertWithText:(id)text;
- (void)lookUp:(id)up;
- (void)lookUpTextAtRange:(_NSRange)range;
- (void)moveRight:(id)right;
- (void)p_adjustSelection:(id)selection withOtherSelection:(id)otherSelection textSelectionGranularity:(unint64_t)granularity;
- (void)p_adjustSelection:(id)selection withUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break isDragging:(BOOL)dragging;
- (void)p_beginKnobTrackingSelection:(id)selection forRep:(id)rep atPoint:(CGPoint)point;
- (void)p_beginMagnification:(id)magnification forRep:(id)rep atPoint:(CGPoint)point shouldSetSelection:(BOOL)selection;
- (void)p_beginOperationAndTakeControl;
- (void)p_beginTapAndLongPress;
- (void)p_cancelTapAndLongPressPreviousSelector;
- (void)p_createKnobTracker:(id)tracker forRep:(id)rep tapCount:(unint64_t)count;
- (void)p_endAutoscroll;
- (void)p_handleCaretDragWithImmediatePressGesture:(id)gesture;
- (void)p_handleEditableTextSelectionForceGesture:(id)gesture;
- (void)p_handleImmediateAndLongPressGesture:(id)gesture;
- (void)p_handleIndirectImmediatePressGesture:(id)gesture;
- (void)p_handleKnobDragGestureRecognizer:(id)recognizer;
- (void)p_handleLongPressTextInteractionWithGestureRecognizer:(id)recognizer;
- (void)p_handleTapAndTouchGesture:(id)gesture;
- (void)p_handleTapGestures:(id)gestures;
- (void)p_handleTapWhileMarkedTextGestureRecognizer:(id)recognizer;
- (void)p_handleTwoFingerPanGesture:(id)gesture;
- (void)p_protectedStopKnobTrackingGesture:(id)gesture;
- (void)p_recursivelyAddRep:(id)rep forStorage:(id)storage toSet:(id)set;
- (void)p_sendHandleTapNotification;
- (void)p_setSelectionFromPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity includeListLabels:(BOOL)labels;
- (void)p_setTappedSelectionPath:(id)path;
- (void)pasteFromItemSource:(id)source forceMatchStyle:(BOOL)style;
- (void)pasteWithItemSource:(id)source selection:(id)selection sender:(id)sender selectRange:(int64_t)range dragBlock:(id)block;
- (void)protectedStopMagnification;
- (void)replace:(id)replace with:(id)with;
- (void)selectAll;
- (void)selectAllMenuAction:(id)action;
- (void)selectMenuAction:(id)action;
- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setAutoscroll:(id)autoscroll;
- (void)setBaseWritingDirection:(int64_t)direction forParagraphsWithRange:(id)range;
- (void)setDictationInterpretations:(id)interpretations;
- (void)setDragRep:(id)rep;
- (void)setEditorController:(id)controller;
- (void)setEditorHelper:(id)helper;
- (void)setEnclosingShape:(id)shape;
- (void)setFidgetResolver:(id)resolver;
- (void)setInsertionStyle:(id)style;
- (void)setKnobTracker:(id)tracker;
- (void)setLastSingleImmediateTapTime:(id)time;
- (void)setListDragAnimator:(id)animator;
- (void)setMagnifier:(id)magnifier;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range replacementRange:(_NSRange)replacementRange;
- (void)setMarkedTextStyle:(id)style;
- (void)setMostRecentGestureKind:(id)kind;
- (void)setSelection:(id)selection;
- (void)setSelectionControlsForInputType:(int64_t)type;
- (void)setTapInfo:(id)info;
- (void)setWantsVisibleKeyboard:(BOOL)keyboard;
- (void)showEditMenu;
- (void)tapAndLongPressDidEndOrCancel;
- (void)tappedInRep:(id)rep point:(CGPoint)point tapCount:(unint64_t)count isTapHold:(BOOL)hold precise:(BOOL)precise alternateClick:(BOOL)click;
- (void)textSelectionDidChange;
- (void)textSelectionWillChange;
- (void)textWillChange;
- (void)toggleListEntry:(id)entry;
- (void)unmarkText;
- (void)updateStateForCommand:(id)command;
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
  selfCopy = self;
  sub_100937818();
}

- (BOOL)blockGesture:(id)gesture
{
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  if ([interactiveCanvasController floatingCursorInMotion])
  {
    LOBYTE(v4) = 1;
  }

  else
  {
    textInputResponder = [interactiveCanvasController textInputResponder];
    v4 = [textInputResponder isFirstResponder] ^ 1;
  }

  return v4;
}

- (_NSRange)nextWordFromIndex:(unint64_t)index forward:(BOOL)forward
{
  forwardCopy = forward;
  length = 0;
  storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
  v9 = [storageWithMarkedText wordAtCharIndex:index includePreviousWord:forwardCopy];
  v31 = v10;

  editorHelper = [(CRLWPEditor *)self editorHelper];
  v12 = [editorHelper availableSelectionRangeForCharIndex:index];
  v14 = v13;

  storageWithMarkedText2 = [(CRLWPEditor *)self storageWithMarkedText];
  v16 = [storageWithMarkedText2 textRangeForParagraphAtCharIndex:index];
  v18 = v17;

  storageWithMarkedText3 = [(CRLWPEditor *)self storageWithMarkedText];
  string = [storageWithMarkedText3 string];
  if (forwardCopy)
  {
    v12 += v14;
    v33.length = v12 - v16;
    v33.location = v16;
    v21 = CFStringTokenizerCreate(0, string, v33, 0, 0);

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      v23 = 0;
      indexCopy = index;
      do
      {
        v25 = indexCopy - 1;
        ++v23;
        if (CFStringTokenizerGoToTokenAtIndex(v21, indexCopy))
        {
          break;
        }

        if (indexCopy <= v16)
        {
          break;
        }

        --indexCopy;
      }

      while (v12 == index);
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
    v21 = CFStringTokenizerCreate(0, string, v34, 0, 0);

    v22 = 0x7FFFFFFFFFFFFFFFLL;
    if (v21)
    {
      indexCopy2 = index;
      while (1)
      {
        while (!CFStringTokenizerGoToTokenAtIndex(v21, indexCopy2))
        {
          if (indexCopy2 <= v12)
          {
            goto LABEL_28;
          }

          --indexCopy2;
        }

        v29 = CFStringTokenizerGetCurrentTokenRange(v21);
        length = v29.length;
        if (v29.location + v29.length < index || (v29.location + v29.length) == v9)
        {
          break;
        }

        if (v29.location <= v12)
        {
          goto LABEL_28;
        }

        if (indexCopy2 - 1 >= v29.location - 1)
        {
          indexCopy2 = v29.location - 1;
        }

        else
        {
          --indexCopy2;
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

- (void)p_adjustSelection:(id)selection withOtherSelection:(id)otherSelection textSelectionGranularity:(unint64_t)granularity
{
  selectionCopy = selection;
  otherSelectionCopy = otherSelection;
  if ([selectionCopy isValid] && objc_msgSend(otherSelectionCopy, "isValid"))
  {
    v50[0] = _NSConcreteStackBlock;
    v50[1] = 3221225472;
    v50[2] = sub_100568BC4;
    v50[3] = &unk_10186F7E8;
    selectionCopy = selectionCopy;
    v51 = selectionCopy;
    v9 = otherSelectionCopy;
    v52 = v9;
    v10 = objc_retainBlock(v50);
    if ([v9 type] == 7 && !objc_msgSend(selectionCopy, "type"))
    {
      editorHelper = [(CRLWPEditor *)self editorHelper];
      v12 = [editorHelper logicalToVisualSelection:selectionCopy];

      editorHelper2 = [(CRLWPEditor *)self editorHelper];
      selectionCopy = [editorHelper2 calculateVisualRunsFromSelection:v12 updateControllerSelection:0];
    }

    if ([v9 type] != 7 || objc_msgSend(selectionCopy, "type") != 7)
    {
      v25 = (v10[2])(v10);
      v27 = v26;
      selection = [(CRLWPEditor *)self selection];
      if ([selection isValid])
      {
        [(CRLWPEditor *)self selection];
        v29 = v9;
        v31 = v30 = v10;
        range = [v31 range];
        v47 = v33;

        v10 = v30;
        v9 = v29;

        if (range == v25 && v47 == v27)
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
    editorHelper3 = [(CRLWPEditor *)self editorHelper];
    v15 = [editorHelper3 adjustVisualSelection:selectionCopy withOtherSelection:v9 outLeadingEdge:&v49 outCaretAffinity:&v48];
    v17 = v16;

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v15 = (v10[2])(v10);
      v17 = v18;
    }

    selection2 = [(CRLWPEditor *)self selection];
    v46 = v10;
    if ([selection2 isValid])
    {
      selection3 = [(CRLWPEditor *)self selection];
      range2 = [selection3 range];
      v23 = v22;

      if (range2 == v15 && v23 == v17)
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
    storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
    LOBYTE(v45) = v36;
    v24 = [(CRLWPSelection *)v34 initWithType:7 range:v15 styleInsertionBehavior:v17 caretAffinity:0 smartFieldRange:v35 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:0, v45, storageWithMarkedText];

LABEL_23:
    v10 = v46;
    if (v24)
    {
LABEL_24:
      editorHelper4 = [(CRLWPEditor *)self editorHelper];
      selectionLastModifiedWithKeyboard = [editorHelper4 selectionLastModifiedWithKeyboard];

      editorController = [(CRLWPEditor *)self editorController];
      [editorController setSelection:v24 forEditor:self withFlags:8];

      if (selectionLastModifiedWithKeyboard)
      {
        editorController2 = [(CRLWPEditor *)self editorController];
        selectionPath = [editorController2 selectionPath];
        v43 = [selectionPath selectionPathByAppendingOrReplacingMostSpecificSelectionWithSelection:v9];

        interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
        [interactiveCanvasController scrollToSelectionPath:v43 scrollOptions:1];
      }

      goto LABEL_26;
    }

    goto LABEL_26;
  }

LABEL_27:
}

- (void)p_adjustSelection:(id)selection withUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break isDragging:(BOOL)dragging
{
  draggingCopy = dragging;
  breakCopy = break;
  holdCopy = hold;
  y = point.y;
  x = point.x;
  selectionCopy = selection;
  v15 = [(CRLWPEditor *)self selectionFromUnscaledCanvasPoint:granularity textSelectionGranularity:holdCopy isTapHold:breakCopy allowPastBreak:draggingCopy isDragging:x, y];
  if (v15)
  {
    [(CRLWPEditor *)self p_adjustSelection:selectionCopy withOtherSelection:v15 textSelectionGranularity:granularity];
  }
}

- (id)p_editingRepAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_opt_class();
  storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
  v8 = [(CRLWPEditor *)self closestRepToPoint:storageWithMarkedText forStorage:x, y];
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

- (void)p_setSelectionFromPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity includeListLabels:(BOOL)labels
{
  labelsCopy = labels;
  y = point.y;
  x = point.x;
  v10 = [(CRLWPEditor *)self p_editingRepAtPoint:?];
  if (v10)
  {
    v21 = v10;
    [v10 convertNaturalPointFromUnscaledCanvas:{x, y}];
    [v21 pinToClosestColumn:?];
    v12 = v11;
    v14 = v13;
    v15 = [(CRLWPEditor *)self p_selectionForRep:v21 point:granularity textSelectionGranularity:0 isTapHold:1 precise:labelsCopy includeListLabels:0 allowPastBreak:?];
    selection = [(CRLWPEditor *)self selection];
    v17 = [v15 isEqual:selection];

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

      editorController = [(CRLWPEditor *)self editorController];
      [editorController setSelection:v15 forEditor:self withFlags:v18];

      textSelectionDelegate = [(CRLWPEditor *)self textSelectionDelegate];
      [textSelectionDelegate moveLoupeTo:{v12, v14}];
    }

    v10 = v21;
  }
}

- (id)selectionFromUnscaledCanvasPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold allowPastBreak:(BOOL)break isDragging:(BOOL)dragging
{
  breakCopy = break;
  holdCopy = hold;
  y = point.y;
  x = point.x;
  v13 = objc_opt_class();
  storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
  v15 = [(CRLWPEditor *)self closestRepToPoint:storageWithMarkedText forStorage:x, y];
  v16 = sub_100014370(v13, v15);

  if ([v16 isBeingEdited])
  {
    [v16 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v17 = [(CRLWPEditor *)self p_selectionForRep:v16 point:granularity textSelectionGranularity:holdCopy isTapHold:1 precise:0 includeListLabels:breakCopy allowPastBreak:?];
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)wpRepFromHitRep:(id)rep
{
  repCopy = rep;
  v4 = objc_opt_class();
  v5 = sub_100014370(v4, repCopy);

  return v5;
}

- (id)p_textRepAtGestureLocationForGesture:(id)gesture
{
  gestureCopy = gesture;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v7 = v6;
  v9 = v8;
  v10 = objc_opt_class();
  targetRep = [gestureCopy targetRep];

  v12 = sub_100014370(v10, targetRep);

  if (!v12)
  {
    v13 = objc_opt_class();
    v14 = [interactiveCanvasController hitRep:{v7, v9}];
    v15 = [(CRLWPEditor *)self wpRepFromHitRep:v14];
    v12 = sub_100014370(v13, v15);
  }

  return v12;
}

- (void)p_recursivelyAddRep:(id)rep forStorage:(id)storage toSet:(id)set
{
  repCopy = rep;
  storageCopy = storage;
  setCopy = set;
  v11 = objc_opt_class();
  v12 = sub_100014370(v11, repCopy);
  v13 = v12;
  if (v12 && ([v12 storage], v14 = objc_claimAutoreleasedReturnValue(), v14, v14 == storageCopy))
  {
    [setCopy addObject:v13];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    childReps = [repCopy childReps];
    v16 = [childReps countByEnumeratingWithState:&v20 objects:v24 count:16];
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
            objc_enumerationMutation(childReps);
          }

          [(CRLWPEditor *)self p_recursivelyAddRep:*(*(&v20 + 1) + 8 * v19) forStorage:storageCopy toSet:setCopy];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [childReps countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (id)p_repsForStorage:(id)storage
{
  storageCopy = storage;
  v5 = +[NSMutableSet set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  canvas = [interactiveCanvasController canvas];
  topLevelReps = [canvas topLevelReps];

  v9 = [topLevelReps countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(topLevelReps);
        }

        [(CRLWPEditor *)self p_recursivelyAddRep:*(*(&v14 + 1) + 8 * i) forStorage:storageCopy toSet:v5];
      }

      v10 = [topLevelReps countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  return v5;
}

- (id)closestRepToPoint:(CGPoint)point forStorage:(id)storage
{
  y = point.y;
  x = point.x;
  storageCopy = storage;
  [(CRLWPEditor *)self p_repsForStorage:storageCopy];
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

- (id)p_endingRepForUnscaledCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v6 = objc_opt_class();
  storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
  v8 = [(CRLWPEditor *)self closestRepToPoint:storageWithMarkedText forStorage:x, y];
  v9 = sub_100014370(v6, v8);

  return v9;
}

- (void)p_handleTwoFingerPanGesture:(id)gesture
{
  gestureCopy = gesture;
  targetRep = [gestureCopy targetRep];

  v6 = objc_opt_class();
  if (targetRep)
  {
    targetRep2 = [gestureCopy targetRep];
    v8 = sub_100014370(v6, targetRep2);
  }

  else
  {
    targetRep2 = [(CRLWPEditor *)self editingReps];
    anyObject = [targetRep2 anyObject];
    v8 = sub_100014370(v6, anyObject);
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

  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v15 = v14;
  v17 = v16;

  gestureState = [gestureCopy gestureState];
  if (gestureState == 2)
  {
    [v8 updateFloatingCursorAtPoint:{v15, v17}];
  }

  else if (gestureState == 1)
  {
    [(CRLWPEditor *)self twoFingerPanGestureWillBegin];
    [v8 beginFloatingCursorAtPoint:1 animate:{v15, v17}];
  }

  else
  {
    [v8 endFloatingCursorWithRepForAnimation:v8];
    [(CRLWPEditor *)self twoFingerPanGestureDidEnd];
    v19 = +[NSNotificationCenter defaultCenter];
    storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
    [v19 postNotificationName:@"CRLTPEditorSelectionChanged" object:storageWithMarkedText];

    v21 = +[NSNotificationCenter defaultCenter];
    storageWithMarkedText2 = [(CRLWPEditor *)self storageWithMarkedText];
    [v21 postNotificationName:@"CRLWPEditorSelectionContentsChanged" object:storageWithMarkedText2];
  }
}

- (void)p_handleImmediateAndLongPressGesture:(id)gesture
{
  gestureCopy = gesture;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v22 = 0;
  v6 = 1;
  v7 = [interactiveCanvasController hitKnobAtPoint:1 inputType:&v22 returningRep:?];
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
    storage = [v10 storage];
    storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
    v14 = storage != storageWithMarkedText;

    v11 = v14 || !v6;
  }

  knobTracker = [(CRLWPEditor *)self knobTracker];
  v16 = [gestureCopy gestureState] == 1 && (v11 & 1) == 0 || (objc_msgSend(gestureCopy, "gestureState") == 2 || objc_msgSend(gestureCopy, "gestureState") == 3 || objc_msgSend(gestureCopy, "gestureState") == 4) && knobTracker != 0;
  gestureKind = [gestureCopy gestureKind];
  inputType = [gestureCopy inputType];
  if ([gestureCopy gestureState] == 1)
  {
    selection = [(CRLWPEditor *)self selection];
    isInsertionPoint = [selection isInsertionPoint];
    if (inputType == 2)
    {
      v21 = 0;
    }

    else
    {
      v21 = isInsertionPoint;
    }
  }

  else
  {
    v21 = inputType != 2;
  }

  if (gestureKind != @"CRLWPImmediatePress" || !v21 || v16)
  {
    [(CRLWPEditor *)self p_handleLongPressTextInteractionWithGestureRecognizer:gestureCopy];
  }

  else
  {
    [(CRLWPEditor *)self p_handleCaretDragWithImmediatePressGesture:gestureCopy];
  }
}

- (void)p_handleCaretDragWithImmediatePressGesture:(id)gesture
{
  gestureCopy = gesture;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v6 = v5;
  v8 = v7;
  [interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v10 = v9;
  v12 = v11;
  gestureState = [gestureCopy gestureState];
  if (gestureState - 3 < 2)
  {
    [(CRLWPEditor *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
    [(CRLWPEditor *)self protectedStopMagnification];
  }

  else if (gestureState == 2)
  {
    v18 = [(CRLWPEditor *)self p_editingRepAtPoint:v6, v8];
    magnifier = [(CRLWPEditor *)self magnifier];

    if (magnifier)
    {
      magnifier2 = [(CRLWPEditor *)self magnifier];
      [magnifier2 setTarget:v18];

      magnifier3 = [(CRLWPEditor *)self magnifier];
      [interactiveCanvasController convertUnscaledToBoundsPoint:{v6, v8}];
      [magnifier3 continueMagnifyingWithMagnificationPoint:?];

      v22 = objc_opt_class();
      selection = sub_100013F00(v22, gestureCopy);
      [selection velocity];
      v25 = v24;
      magnifier4 = [(CRLWPEditor *)self magnifier];
      [magnifier4 setPointVelocity:v25];
    }

    else
    {
      selection = [(CRLWPEditor *)self selection];
      [(CRLWPEditor *)self p_beginMagnification:selection forRep:v18 atPoint:1 shouldSetSelection:v10, v12];
    }
  }

  else if (gestureState == 1)
  {
    [(CRLWPEditor *)self p_clearEditMenuFlags];
    if (![(CRLWPEditor *)self editMenuIsVisible])
    {
      selection2 = [(CRLWPEditor *)self selection];
      if ([selection2 isValid])
      {
        range = [selection2 range];
        v17 = v16;
      }

      else
      {
        range = 0x7FFFFFFFFFFFFFFFLL;
        v17 = 0;
      }

      [(CRLWPEditor *)self setOriginalSelectionRange:range, v17];
    }

    [interactiveCanvasController layoutIfNeeded];
  }
}

- (BOOL)isUnscaledPointInTextSelection:(CGPoint)selection
{
  y = selection.y;
  x = selection.x;
  selection = [(CRLWPEditor *)self selection];
  v7 = objc_opt_class();
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  v9 = [interactiveCanvasController hitRep:{x, y}];
  v10 = [(CRLWPEditor *)self wpRepFromHitRep:v9];
  v11 = sub_100014370(v7, v10);

  v12 = [v11 canEditWithEditor:self];
  v13 = 0;
  if ([selection isValid] && v12)
  {
    [v11 convertNaturalPointFromUnscaledCanvas:{x, y}];
    v13 = [v11 isPointInSelectedArea:?];
  }

  return v13;
}

- (unint64_t)charIndexInRep:(id)rep fromPoint:(CGPoint)point allowPastBreak:(BOOL)break isAtEndOfLine:(BOOL *)line leadingEdge:(BOOL *)edge
{
  if (!rep)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  breakCopy = break;
  y = point.y;
  x = point.x;
  layout = [rep layout];
  v13 = [CRLWPColumn charIndexFromPoint:breakCopy allowPastBreak:0 allowNotFound:line isAtEndOfLine:edge leadingEdge:layout inLayoutTarget:x, y];

  return v13;
}

- (unint64_t)charIndexInRep:(id)rep fromPoint:(CGPoint)point allowPastBreak:(BOOL)break allowNotFound:(BOOL)found isAtEndOfLine:(BOOL *)line
{
  foundCopy = found;
  breakCopy = break;
  y = point.y;
  x = point.x;
  repCopy = rep;
  v13 = repCopy;
  if (repCopy)
  {
    layout = [repCopy layout];
    v15 = [CRLWPColumn charIndexFromPoint:breakCopy allowPastBreak:foundCopy allowNotFound:line isAtEndOfLine:0 leadingEdge:layout inLayoutTarget:x, y];
  }

  else
  {
    if (!foundCopy)
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

- (unint64_t)charIndexInRep:(id)rep fromPoint:(CGPoint)point allowPastBreak:(BOOL)break allowNotFound:(BOOL)found pastCenterGoesToNextChar:(BOOL)char isAtEndOfLine:(BOOL *)line
{
  charCopy = char;
  foundCopy = found;
  breakCopy = break;
  y = point.y;
  x = point.x;
  repCopy = rep;
  v15 = repCopy;
  if (repCopy)
  {
    layout = [repCopy layout];
    v17 = [CRLWPColumn charIndexFromPoint:breakCopy allowPastBreak:foundCopy allowNotFound:charCopy pastCenterGoesToNextChar:line isAtEndOfLine:0 leadingEdge:layout inLayoutTarget:x, y];
  }

  else
  {
    if (!foundCopy)
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

- (id)p_selectionForRep:(id)rep naturalPoint:(CGPoint)point textSelectionGranularity:(unint64_t)granularity isTapHold:(BOOL)hold precise:(BOOL)precise includeListLabels:(BOOL)labels allowPastBreak:(BOOL)break alternateClick:(BOOL)self0
{
  breakCopy = break;
  preciseCopy = precise;
  y = point.y;
  x = point.x;
  repCopy = rep;
  if (!repCopy)
  {
    goto LABEL_6;
  }

  v127[0] = 1;
  v126 = 0;
  storage = [(CRLWPEditor *)self storage];
  storage2 = [repCopy storage];

  if (storage == storage2)
  {
    range2 = [(CRLWPEditor *)self charIndexInRep:repCopy fromPoint:breakCopy allowPastBreak:&v126 isAtEndOfLine:v127 leadingEdge:x, y];
  }

  else
  {
    storage3 = [(CRLWPEditor *)self storage];
    range2 = [storage3 length];
  }

  if (range2 == 0x7FFFFFFFFFFFFFFFLL || (v22 = range2, (v127[0] & 1) == 0) && (-[CRLWPEditor storageWithMarkedText](self, "storageWithMarkedText"), v23 = objc_claimAutoreleasedReturnValue(), v22 = [v23 nextCharacterIndex:range2], v23, v22 == 0x7FFFFFFFFFFFFFFFLL))
  {
LABEL_6:
    v21 = 0;
    goto LABEL_74;
  }

  v24 = objc_opt_class();
  storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
  v26 = sub_100014370(v24, storageWithMarkedText);

  rect_8 = v26;
  if (granularity == 2)
  {
    if ([(CRLWPEditor *)self charIndexInRep:repCopy fromPoint:breakCopy allowPastBreak:0 allowNotFound:&v126 isAtEndOfLine:x, y]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      range2 = [v26 textRangeForParagraphAtCharIndex:v22];
      v29 = v47;
      v46 = 0;
      goto LABEL_62;
    }

    goto LABEL_33;
  }

  if (granularity == 1)
  {
    v36 = [(CRLWPEditor *)self charIndexInRep:repCopy fromPoint:breakCopy allowPastBreak:1 allowNotFound:1 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
    v37 = [(CRLWPEditor *)self charIndexInRep:repCopy fromPoint:breakCopy allowPastBreak:0 allowNotFound:0 pastCenterGoesToNextChar:0 isAtEndOfLine:x, y];
    if (v36 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v45 = v37;
LABEL_52:
      editorHelper = [(CRLWPEditor *)self editorHelper];
      v55 = [editorHelper rangeForSelectionAtCharIndex:objc_msgSend(v26 caretIndex:{"charIndexMappedFromStorage:", v45), objc_msgSend(v26, "charIndexMappedFromStorage:", v36)}];
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

    storageWithMarkedText2 = [(CRLWPEditor *)self storageWithMarkedText];
    v39 = [storageWithMarkedText2 length];

    storageWithMarkedText3 = [(CRLWPEditor *)self storageWithMarkedText];
    v41 = [storageWithMarkedText3 textRangeForParagraphAtCharIndex:v22];
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
      range2 = v55;
      v46 = v58;
    }

    goto LABEL_62;
  }

  if (granularity)
  {
    v46 = 8;
    v29 = 0;
    range2 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_62;
  }

  v28 = [repCopy rangeOfMisspelledWordAtCharIndex:v22];
  v29 = v27;
  v30 = v28 < v22 && &v28[v27] > v22;
  v31 = v30;
  v32 = v30 && click;
  if (!preciseCopy || v32)
  {
    if (v22 && (v126 & 1) != 0 && (-[CRLWPEditor storageWithMarkedText](self, "storageWithMarkedText"), preciseCopy = objc_claimAutoreleasedReturnValue(), v33 = [preciseCopy length], preciseCopy, v22 < v33))
    {
      preciseCopy = rect_8;
      v34 = [rect_8 rangeOfNearestWhitespaceBeforeCharIndex:objc_msgSend(rect_8 includingBreaks:{"previousCharacterIndex:", objc_msgSend(rect_8, "charIndexMappedFromStorage:", v22)), 0}];
      v35 = v22;
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v127[0] = 1;
        range2 = v34;
        v35 = v34;
      }
    }

    else
    {
      v35 = v22;
    }

    if (v31)
    {
      selection = [(CRLWPEditor *)self selection];
      if ([selection isValid])
      {
        rect = selection;
        selection2 = [(CRLWPEditor *)self selection];
        type = [selection2 type];
        if (type == 3 || (-[CRLWPEditor selection](self, "selection"), preciseCopy = objc_claimAutoreleasedReturnValue(), [preciseCopy type] == 5))
        {
          v119 = selection2;
          [(CRLWPEditor *)self selection];
          v51 = v50 = v35;
          range = [v51 range];
          v118 = v50;
          if (v50 >= range && v50 - range < v53)
          {

            if (type != 3)
            {
            }

LABEL_98:
            selection3 = [(CRLWPEditor *)self selection];
            range2 = [selection3 range];
            v29 = v106;
            v46 = 0;
LABEL_119:

            goto LABEL_62;
          }

          selection4 = [(CRLWPEditor *)self selection];
          range3 = [selection4 range];
          v117 = &range3[v104];

          if (type != 3)
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
        range2 = v28;
        goto LABEL_62;
      }
    }

    v75 = [rect_8 wordAtCharIndex:v22 includePreviousWord:1];
    if (v75 == 0x7FFFFFFFFFFFFFFFLL)
    {
      editorHelper2 = [(CRLWPEditor *)self editorHelper];
      v78 = [editorHelper2 whiteSpaceRangeAtCharIndex:v22 includingBreaks:0];
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
    range2 = v81 + v82 - 1;
    [repCopy caretRectForCharIndex:v81 leadingEdge:1 caretAffinity:0];
    v122 = v84;
    recta = v83;
    v86 = v85;
    v120 = v85;
    v88 = v87;
    [repCopy caretRectForCharIndex:range2 leadingEdge:0 caretAffinity:0];
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
          range2 = v81;
        }

        else
        {
          v109 = 0;
        }

        v127[0] = v109;
LABEL_109:
        if (range2 == 0x7FFFFFFFFFFFFFFFLL)
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

          selection3 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_selectionForRep:naturalPoint:textSelectionGranularity:isTapHold:precise:includeListLabels:allowPastBreak:alternateClick:]"];
          v111 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
          [CRLAssertionHandler handleFailureInFunction:selection3 file:v111 lineNumber:868 isFatal:0 description:"invalid charIndex for visual selection"];

          v29 = 0;
          range2 = 0x7FFFFFFFFFFFFFFFLL;
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
    range2 = v81;
    goto LABEL_109;
  }

LABEL_33:
  v29 = 0;
  v46 = 7;
LABEL_62:
  storageWithMarkedText4 = [(CRLWPEditor *)self storageWithMarkedText];
  v130.location = [storageWithMarkedText4 range];
  v130.length = v61;
  v129.location = range2;
  v129.length = v29;
  v62 = sub_1002BC8E0(v129, v130);
  v64 = v63;

  storageWithMarkedText5 = [(CRLWPEditor *)self storageWithMarkedText];
  v67 = v62 == [storageWithMarkedText5 length] && v64 == 0;
  if (v127[0])
  {
    v67 = 1;
  }

  v127[0] = v67;

  v68 = objc_alloc([(CRLWPEditor *)self wpSelectionClass]);
  v69 = v126;
  v70 = v127[0];
  storageWithMarkedText6 = [(CRLWPEditor *)self storageWithMarkedText];
  LOBYTE(v112) = v70;
  v21 = [v68 initWithType:v46 range:v62 styleInsertionBehavior:v64 caretAffinity:0 smartFieldRange:v69 leadingEdge:0x7FFFFFFFFFFFFFFFLL storage:{0, v112, storageWithMarkedText6}];

  if (granularity == 1 && !v46)
  {
    editorHelper3 = [(CRLWPEditor *)self editorHelper];
    v73 = [editorHelper3 logicalToVisualSelection:v21];

    v21 = v73;
  }

LABEL_74:

  return v21;
}

- (void)p_setTappedSelectionPath:(id)path
{
  pathCopy = path;
  v4 = [pathCopy mostSpecificSelectionOfClass:objc_opt_class()];
  v5 = [_TtC8Freeform12CRLTextRange alloc];
  range = [v4 range];
  v8 = [(CRLTextRange *)v5 initWithRange:range, v7];
  storage = [(CRLWPEditor *)self storage];
  if ([storage hasMarkedText])
  {
    storage2 = [(CRLWPEditor *)self storage];
    markedTextRange = [storage2 markedTextRange];
    v12 = [markedTextRange containsTextRange:v8];

    if (v12)
    {
      goto LABEL_11;
    }
  }

  else
  {
  }

  storage3 = [(CRLWPEditor *)self storage];
  hasMarkedText = [storage3 hasMarkedText];

  if (hasMarkedText)
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
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [interactiveCanvasController setSelectionPath:pathCopy withSelectionFlags:v15];

  [(CRLWPEditor *)self setSelectionBeingSetFromGestures:0];
LABEL_11:
}

- (void)tappedInRep:(id)rep point:(CGPoint)point tapCount:(unint64_t)count isTapHold:(BOOL)hold precise:(BOOL)precise alternateClick:(BOOL)click
{
  preciseCopy = precise;
  holdCopy = hold;
  y = point.y;
  x = point.x;
  repCopy = rep;
  [(CRLWPEditor *)self p_sendHandleTapNotification];
  if (count == 3)
  {
    v15 = 2;
  }

  else if (count == 2)
  {
    v15 = 1;
  }

  else
  {
    if (count == 1)
    {
      [repCopy convertNaturalPointToUnscaledCanvas:{x, y}];
      if ([(CRLWPEditor *)self isUnscaledPointInTextSelection:?])
      {
        [(CRLWPEditor *)self hideEditMenu];
      }
    }

    v15 = 0;
  }

  storage = [(CRLWPEditor *)self storage];
  if (([storage hasMarkedText] & 1) == 0)
  {

    goto LABEL_13;
  }

  layout = [(CRLWPEditor *)self layout];
  v18 = [layout markedTextContainsPoint:{x, y}];

  v19 = repCopy;
  if ((v18 & 1) == 0)
  {
LABEL_13:
    LOBYTE(v26) = click;
    v20 = [(CRLWPEditor *)self p_selectionForRep:repCopy naturalPoint:v15 textSelectionGranularity:holdCopy isTapHold:preciseCopy precise:count != 0 includeListLabels:0 allowPastBreak:x alternateClick:y, v26];
    editorController = [(CRLWPEditor *)self editorController];
    selectionPath = [editorController selectionPath];
    selection = [(CRLWPEditor *)self selection];
    v24 = [selectionPath selectionPathPoppingOffSelection:selection];

    v25 = [v24 selectionPathWithAppendedSelection:v20];

    [(CRLWPEditor *)self p_setTappedSelectionPath:v25];
    v19 = repCopy;
  }
}

- (BOOL)isACurrentEditor
{
  selfCopy = self;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];
  currentEditors = [editorController currentEditors];
  LOBYTE(selfCopy) = [currentEditors containsObject:selfCopy];

  return selfCopy;
}

- (void)p_sendHandleTapNotification
{
  v4 = @"CRLEditorControllerEditorKey";
  selfCopy = self;
  v2 = [NSDictionary dictionaryWithObjects:&selfCopy forKeys:&v4 count:1];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 postNotificationName:@"CRLEditorControllerTextEditorWillHandleTap" object:0 userInfo:v2];
}

- (void)p_handleLongPressTextInteractionWithGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [recognizerCopy unscaledLocationForICC:interactiveCanvasController];
  v7 = v6;
  v9 = v8;
  [interactiveCanvasController convertUnscaledToBoundsPoint:?];
  v11 = v10;
  v13 = v12;
  v42 = 0;
  v14 = [interactiveCanvasController hitKnobAtPoint:1 inputType:&v42 returningRep:{v7, v9}];
  v15 = v42;
  gestureKind = [recognizerCopy gestureKind];
  shouldUseModernTextGestures = [(CRLWPEditor *)self shouldUseModernTextGestures];
  gestureState = [recognizerCopy gestureState];
  if (gestureState - 3 < 2)
  {
    knobTracker = [(CRLWPEditor *)self knobTracker];

    if (knobTracker)
    {
      knobTracker2 = [(CRLWPEditor *)self knobTracker];
      if ([knobTracker2 didDragKnob])
      {
      }

      else
      {
        wantsParagraphMode = [(CRLWPEditor *)self wantsParagraphMode];

        if ((wantsParagraphMode & 1) == 0)
        {
          [(CRLWPEditor *)self p_tappedOnKnob:v14];
        }
      }

      [(CRLWPEditor *)self p_protectedStopKnobTrackingGesture:recognizerCopy];
    }

    else
    {
      [(CRLWPEditor *)self p_endAutoscroll];
      [(CRLWPEditor *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
      [(CRLWPEditor *)self protectedStopMagnification];
      if ([recognizerCopy gestureState] == 3)
      {
        [(CRLWPEditor *)self setShouldShowEditMenuForInsertionPoint:1];
      }
    }
  }

  else
  {
    if (gestureState != 2)
    {
      if (gestureState != 1)
      {
        goto LABEL_36;
      }

      [(CRLWPEditor *)self p_clearEditMenuFlags];
      [interactiveCanvasController layoutIfNeeded];
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
        [(CRLWPEditor *)self p_handleKnobDragGestureRecognizer:recognizerCopy];

        goto LABEL_36;
      }

LABEL_20:
      if (gestureKind != @"CRLWPLongPress")
      {
        goto LABEL_36;
      }

      v28 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:recognizerCopy];
      [v28 convertNaturalPointFromUnscaledCanvas:{v7, v9}];
      v30 = v29;
      v32 = v31;
      selection = [(CRLWPEditor *)self selection];
      if ([selection isRange])
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
      selection2 = [(CRLWPEditor *)self selection];
      if ([selection2 isInsertionPoint])
      {
        if (shouldUseModernTextGestures)
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
          [(CRLWPEditor *)self p_beginMagnification:selection2 forRep:v28 atPoint:1 shouldSetSelection:v11, v13];
        }
      }

      goto LABEL_36;
    }

    knobTracker3 = [(CRLWPEditor *)self knobTracker];

    if (knobTracker3)
    {
      [(CRLWPEditor *)self p_handleKnobDragGestureRecognizer:recognizerCopy];
    }

    else if ((shouldUseModernTextGestures & 1) == 0)
    {
      layerHost = [interactiveCanvasController layerHost];
      canvasView = [layerHost canvasView];
      enclosingScrollView = [canvasView enclosingScrollView];
      isScrollEnabled = [enclosingScrollView isScrollEnabled];

      if (isScrollEnabled)
      {
        [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v7, v9];
      }

      [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v7, v9];
    }
  }

LABEL_36:
}

- (id)p_editingRepForCharIndex:(unint64_t)index
{
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [interactiveCanvasController visibleUnscaledRect];
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

      range = [v17 range];
      if (index < range || index - range >= v23)
      {
        v25 = range;
        v26 = v23;
        storage = [(CRLWPEditor *)self storage];
        if ([storage length] != index)
        {
          goto LABEL_15;
        }

        if (&v25[v26] != index)
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

      storage = v16;
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

- (BOOL)p_shouldBeginCaretGrabAtUnscaledCanvasPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  if (![(CRLWPEditor *)self shouldUseModernTextGestures])
  {
    return 0;
  }

  selection = [(CRLWPEditor *)self selection];
  isInsertionPoint = [selection isInsertionPoint];

  if (!isInsertionPoint)
  {
    return 0;
  }

  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [interactiveCanvasController layoutIfNeeded];

  selection2 = [(CRLWPEditor *)self selection];
  v10 = -[CRLWPEditor p_editingRepForCharIndex:](self, "p_editingRepForCharIndex:", [selection2 start]);

  interactiveCanvasController2 = [(CRLWPEditor *)self interactiveCanvasController];
  v12 = [interactiveCanvasController2 hitRep:{x, y}];
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

- (id)p_inlineEquationRepInTableCellTextRep:(id)rep atUnscaledCanvasPoint:(CGPoint)point gesture:(id)gesture
{
  v5 = [(CRLWPEditor *)self storageWithMarkedText:rep];
  [v5 wpKind];

  return 0;
}

- (void)p_handleTapAndTouchGesture:(id)gesture
{
  gestureCopy = gesture;
  inputType = [gestureCopy inputType];
  [(CRLWPEditor *)self setIgnoreFutureImmediatePresses:1];
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v8 = v7;
  v10 = v9;

  interactiveCanvasController2 = [(CRLWPEditor *)self interactiveCanvasController];
  [interactiveCanvasController2 layoutIfNeeded];

  v12 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:gestureCopy];
  [v12 convertNaturalPointFromUnscaledCanvas:{v8, v10}];
  v14 = v13;
  v16 = v15;
  numberOfTapsRequired = [gestureCopy numberOfTapsRequired];
  knobTracker = [(CRLWPEditor *)self knobTracker];
  if (knobTracker || ([(CRLWPEditor *)self magnifier], (knobTracker = objc_claimAutoreleasedReturnValue()) != 0))
  {
  }

  else
  {
    pinchAndHalfDidStart = [(CRLWPEditor *)self pinchAndHalfDidStart];
    if (!v12 && (pinchAndHalfDidStart & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  selection = [(CRLWPEditor *)self selection];
  if ([selection type] == 3)
  {
  }

  else
  {
    selection2 = [(CRLWPEditor *)self selection];
    type = [selection2 type];

    if (type != 5)
    {
      interactiveCanvasController3 = [(CRLWPEditor *)self interactiveCanvasController];
      [interactiveCanvasController3 convertUnscaledToBoundsPoint:{v8, v10}];
      v24 = v23;
      v26 = v25;

      if ([gestureCopy gestureState] == 1)
      {
        [(CRLWPEditor *)self p_clearEditMenuFlags];
        [(CRLWPEditor *)self tappedInRep:v12 point:numberOfTapsRequired + 1 tapCount:1 isTapHold:0 precise:v14, v16];
        [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:1];
        if (inputType)
        {
          [(CRLWPEditor *)self p_cancelTapAndLongPressPreviousSelector];
          selection3 = [NSValue valueWithCGPoint:v24, v26];
          v47[0] = @"CRLWPEditorTextRepKey";
          v47[1] = @"CRLWPEditorRepPointKey";
          v48[0] = v12;
          v48[1] = selection3;
          v28 = [NSDictionary dictionaryWithObjects:v48 forKeys:v47 count:2];
          [(CRLWPEditor *)self setTapInfo:v28];

          [(CRLWPEditor *)self performSelector:"p_beginTapAndLongPress" withObject:0 afterDelay:0.2];
        }

        else
        {
          selection3 = [(CRLWPEditor *)self selection];
          editorHelper = [(CRLWPEditor *)self editorHelper];
          [editorHelper setAnchorSelection:selection3];
        }
      }

      else
      {
        if ([gestureCopy gestureState] != 2)
        {
          [(CRLWPEditor *)self p_endAutoscroll];
          if (!inputType)
          {
            editorHelper2 = [(CRLWPEditor *)self editorHelper];
            [editorHelper2 setAnchorSelection:0];

            [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:0];
            goto LABEL_34;
          }

          [(CRLWPEditor *)self p_cancelTapAndLongPressPreviousSelector];
          knobTracker2 = [(CRLWPEditor *)self knobTracker];

          if (knobTracker2)
          {
LABEL_16:
            [(CRLWPEditor *)self p_protectedStopKnobTrackingGesture:gestureCopy];
            goto LABEL_34;
          }

          [(CRLWPEditor *)self tapAndLongPressDidEndOrCancel];
LABEL_23:
          [(CRLWPEditor *)self protectedStopMagnification];
          goto LABEL_34;
        }

        if (inputType)
        {
          goto LABEL_34;
        }

        interactiveCanvasController4 = [(CRLWPEditor *)self interactiveCanvasController];
        canvasView = [interactiveCanvasController4 canvasView];
        enclosingScrollView = [canvasView enclosingScrollView];
        isScrollEnabled = [enclosingScrollView isScrollEnabled];

        if (isScrollEnabled)
        {
          [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v8, v10];
        }

        selection3 = [(CRLWPEditor *)self editorHelper];
        anchorSelection = [selection3 anchorSelection];
        [(CRLWPEditor *)self p_adjustSelection:anchorSelection withUnscaledCanvasPoint:[(CRLWPEditor *)self initialPressTextSelectionGranularity] textSelectionGranularity:0 isTapHold:[(CRLWPEditor *)self initialPressTextSelectionGranularity]^ 1 allowPastBreak:1 isDragging:v8, v10];
      }

      goto LABEL_34;
    }
  }

LABEL_12:
  [(CRLWPEditor *)self p_endAutoscroll];
  [(CRLWPEditor *)self p_cancelTapAndLongPressPreviousSelector];
  if ([gestureCopy gestureState] == 3 || objc_msgSend(gestureCopy, "gestureState") == 4)
  {
    if (!inputType)
    {
      editorHelper3 = [(CRLWPEditor *)self editorHelper];
      [editorHelper3 setAnchorSelection:0];

      goto LABEL_34;
    }

    knobTracker3 = [(CRLWPEditor *)self knobTracker];

    if (knobTracker3)
    {
      goto LABEL_16;
    }

    magnifier = [(CRLWPEditor *)self magnifier];

    if (!magnifier)
    {
      goto LABEL_34;
    }

    goto LABEL_23;
  }

  magnifier2 = [(CRLWPEditor *)self magnifier];

  if (magnifier2)
  {
    interactiveCanvasController5 = [(CRLWPEditor *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController5 layerHost];
    canvasView2 = [layerHost canvasView];
    enclosingScrollView2 = [canvasView2 enclosingScrollView];
    isScrollEnabled2 = [enclosingScrollView2 isScrollEnabled];

    if (isScrollEnabled2)
    {
      [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v8, v10];
    }

    [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v8, v10];
  }

LABEL_34:
}

- (void)p_beginTapAndLongPress
{
  tapInfo = [(CRLWPEditor *)self tapInfo];

  if (!tapInfo)
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

  tapInfo2 = [(CRLWPEditor *)self tapInfo];
  v8 = [tapInfo2 objectForKeyedSubscript:@"CRLWPEditorTextRepKey"];

  tapInfo3 = [(CRLWPEditor *)self tapInfo];
  v10 = [tapInfo3 objectForKeyedSubscript:@"CRLWPEditorRepPointKey"];
  [v10 CGPointValue];
  v12 = v11;
  v14 = v13;

  selection = [(CRLWPEditor *)self selection];
  knobTracker = [(CRLWPEditor *)self knobTracker];
  if (knobTracker || ![selection isValid])
  {
  }

  else if ([selection isRange])
  {
    [(CRLWPEditor *)self p_beginKnobTrackingSelection:selection forRep:v8 atPoint:v12, v14];
  }

  [(CRLWPEditor *)self setTapInfo:0];
}

- (void)updateTapAndLongPress
{
  tapInfo = [(CRLWPEditor *)self tapInfo];

  if (!tapInfo)
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

  tapInfo2 = [(CRLWPEditor *)self tapInfo];
  v8 = [tapInfo2 objectForKeyedSubscript:@"CRLWPEditorRepPointKey"];
  [v8 CGPointValue];
  v10 = v9;
  v12 = v11;

  [(CRLWPEditor *)self clampUnscaledPointToTextFieldBounds:v10, v12];
  v14 = v13;
  v16 = v15;
  selectedRangeAtPinchAndHalfStart = [(CRLWPEditor *)self selectedRangeAtPinchAndHalfStart];
  v19 = v18;
  editingRep = [(CRLWPEditor *)self editingRep];
  [editingRep convertNaturalPointFromUnscaledCanvas:{v14, v16}];
  v22 = v21;
  v24 = v23;

  [(CRLWPEditor *)self adjustedDragToNaturalPointOffset];
  v26 = sub_10011F31C(v22, v24, v25);
  v28 = v27;
  textSelectionDelegate = [(CRLWPEditor *)self textSelectionDelegate];
  v30 = [textSelectionDelegate selectWordAt:{v26, v28}];

  v39.location = [v30 nsRange];
  v39.length = v31;
  v38.location = selectedRangeAtPinchAndHalfStart;
  v38.length = v19;
  v32 = NSUnionRange(v38, v39);
  [(CRLWPEditor *)self setAdjustedDragPoint:v26, v28];
  storageWithMarkedText = [(CRLWPEditor *)self storageWithMarkedText];
  v34 = [storageWithMarkedText length];

  if (v32.length >= v34)
  {
    [(CRLWPEditor *)self tapAndLongPressDidEndOrCancel];
  }

  else
  {
    v35 = [[_TtC8Freeform12CRLTextRange alloc] initWithRange:v32.location, v32.length];
    interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
    textInputResponder = [interactiveCanvasController textInputResponder];
    [textInputResponder setSelectedTextRange:v35];
  }
}

- (void)tapAndLongPressDidEndOrCancel
{
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  editingReps = [(CRLWPEditor *)self editingReps];
  v4 = [editingReps countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(editingReps);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        [v8 setSuppressSelectionControls:0];
        [v8 invalidateKnobs];
      }

      v5 = [editingReps countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  tapInfo = [(CRLWPEditor *)self tapInfo];

  if (tapInfo)
  {
    [NSObject cancelPreviousPerformRequestsWithTarget:self selector:"p_beginTapAndLongPress" object:0];
  }

  [(CRLWPEditor *)self setTapInfo:0];
}

- (void)p_beginKnobTrackingSelection:(id)selection forRep:(id)rep atPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selectionCopy = selection;
  repCopy = rep;
  v11 = [(CRLWPEditor *)self charIndexInRep:repCopy fromPoint:0 allowPastBreak:0 isAtEndOfLine:0 leadingEdge:x, y];
  range = [selectionCopy range];
  [selectionCopy range];
  if (v11 >= range + (v13 >> 1))
  {
    v14 = 10;
  }

  else
  {
    v14 = 11;
  }

  v15 = [repCopy knobForTag:v14];
  if (v15)
  {
LABEL_15:
    [v15 position];
    if (sub_100120888(v22, v23))
    {
      [(CRLWPEditor *)self p_createKnobTracker:v15 forRep:repCopy tapCount:2];
      [(CRLWPEditor *)self p_beginOperationAndTakeControl];
    }
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    siblings = [repCopy siblings];
    v17 = [siblings countByEnumeratingWithState:&v24 objects:v28 count:16];
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
            objc_enumerationMutation(siblings);
          }

          v21 = [*(*(&v24 + 1) + 8 * i) knobForTag:v14];
          if (v21)
          {
            v15 = v21;

            goto LABEL_15;
          }
        }

        v18 = [siblings countByEnumeratingWithState:&v24 objects:v28 count:16];
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

- (void)p_createKnobTracker:(id)tracker forRep:(id)rep tapCount:(unint64_t)count
{
  trackerCopy = tracker;
  repCopy = rep;
  knobTracker = [(CRLWPEditor *)self knobTracker];

  if (knobTracker)
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

  knobTracker2 = [(CRLWPEditor *)self knobTracker];

  if (!knobTracker2)
  {
    [(CRLWPEditor *)self setKnobTrackingTapCount:count];
    v15 = [repCopy newTrackerForKnob:trackerCopy];
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

- (void)p_handleEditableTextSelectionForceGesture:(id)gesture
{
  gestureCopy = gesture;
  v5 = objc_opt_class();
  targetRep = [gestureCopy targetRep];
  v7 = sub_100013F00(v5, targetRep);

  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v10 = v9;
  v12 = v11;

  interactiveCanvasController2 = [(CRLWPEditor *)self interactiveCanvasController];
  [interactiveCanvasController2 convertUnscaledToBoundsPoint:{v10, v12}];
  v15 = v14;
  v17 = v16;

  gestureState = [gestureCopy gestureState];
  if (gestureState - 3 < 2)
  {
    [(CRLWPEditor *)self setEditableTextSelectionForceGestureInProgress:0];
    [(CRLWPEditor *)self p_endAutoscroll];
    [(CRLWPEditor *)self revertLastSelectionChangeIfElapsedTimeIsUnderPinFidgetThreshold];
    [(CRLWPEditor *)self protectedStopMagnification];
  }

  else if (gestureState == 2)
  {
    magnifier = [(CRLWPEditor *)self magnifier];

    if (!magnifier)
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

    magnifier2 = [(CRLWPEditor *)self magnifier];
    [magnifier2 setTarget:v7];

    magnifier3 = [(CRLWPEditor *)self magnifier];
    [magnifier3 continueMagnifyingWithMagnificationPoint:{v15, v17}];

    interactiveCanvasController3 = [(CRLWPEditor *)self interactiveCanvasController];
    layerHost = [interactiveCanvasController3 layerHost];
    canvasView = [layerHost canvasView];
    enclosingScrollView = [canvasView enclosingScrollView];
    isScrollEnabled = [enclosingScrollView isScrollEnabled];

    if (isScrollEnabled)
    {
      [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v10, v12];
    }

    [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:0 includeListLabels:v10, v12];
  }

  else if (gestureState == 1)
  {
    [(CRLWPEditor *)self setEditableTextSelectionForceGestureInProgress:1];
    selection = [(CRLWPEditor *)self selection];
    [(CRLWPEditor *)self p_beginMagnification:selection forRep:v7 atPoint:1 shouldSetSelection:v15, v17];
  }
}

- (void)p_handleTapGestures:(id)gestures
{
  gesturesCopy = gestures;
  gestureKind = [gesturesCopy gestureKind];
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gesturesCopy unscaledLocationForICC:interactiveCanvasController];
  v8 = v7;
  v10 = v9;
  [(CRLWPEditor *)self setFirstTapUnscaledPoint:?];
  [interactiveCanvasController layoutIfNeeded];
  v11 = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:gesturesCopy];
  [v11 convertNaturalPointFromUnscaledCanvas:{v8, v10}];
  v13 = v12;
  v15 = v14;
  if (gestureKind == @"CRLWPImmediateSingleTap")
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

    v26 = [(CRLWPEditor *)self p_shiftKeyIsDownWIthGesture:gesturesCopy];
    range = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    [(CRLWPEditor *)self setOriginalSelectionRange:0x7FFFFFFFFFFFFFFFLL, 0];
    [(CRLWPEditor *)self p_clearEditMenuFlags];
    if (![(CRLWPEditor *)self editMenuIsVisible])
    {
      selection = [(CRLWPEditor *)self selection];
      if ([selection isValid])
      {
        range = [selection range];
        v28 = v30;
      }

      [(CRLWPEditor *)self setOriginalSelectionRange:range, v28];
    }

    if ((-[CRLWPEditor shouldUseModernTextGestures](self, "shouldUseModernTextGestures") & v26) == 1 && (-[CRLWPEditor selection](self, "selection"), v31 = objc_claimAutoreleasedReturnValue(), v32 = [v31 isValid], v31, v32))
    {
      selection2 = [(CRLWPEditor *)self selection];
      [(CRLWPEditor *)self p_adjustSelection:selection2 withUnscaledCanvasPoint:0 textSelectionGranularity:0 isTapHold:0 allowPastBreak:0 isDragging:v8, v10];
    }

    else
    {
      v34 = 1;
      [(CRLWPEditor *)self setSelectionSetFromSingleTap:1];
      if ([gesturesCopy inputType])
      {
        v34 = [gesturesCopy inputType] == 2;
      }

      -[CRLWPEditor tappedInRep:point:tapCount:isTapHold:precise:alternateClick:](self, "tappedInRep:point:tapCount:isTapHold:precise:alternateClick:", v11, 1, 0, v34, [gesturesCopy inputType] == 2, v13, v15);
      [(CRLWPEditor *)self setSelectionSetFromSingleTap:0];
      [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:0];
      [(CRLWPEditor *)self setIsBecomingActive:0];
    }
  }

  else if (gestureKind == @"CRLWPImmediateDoubleTap")
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

- (void)setSelectionControlsForInputType:(int64_t)type
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  editingReps = [(CRLWPEditor *)self editingReps];
  v6 = [editingReps countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(editingReps);
        }

        [*(*(&v10 + 1) + 8 * v9) setSuppressSelectionControls:type == 0];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [editingReps countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  [(CRLWPEditor *)self setSuppressEditMenuForIndirectGesture:type == 0];
}

- (BOOL)canHandleGesture:(id)gesture
{
  gestureCopy = gesture;
  if ([(CRLWPEditor *)self blockGesture:gestureCopy])
  {
    v5 = 0;
  }

  else
  {
    interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
    [gestureCopy unscaledLocationForICC:interactiveCanvasController];
    v8 = v7;
    v10 = v9;
    v11 = objc_opt_class();
    v12 = [interactiveCanvasController hitRep:{v8, v10}];
    v13 = sub_100014370(v11, v12);

    v14 = [v13 canEditWithEditor:self];
    canIgnoreEvent = [(CRLWPEditor *)self canIgnoreEvent];
    v32 = 0;
    v15 = 1;
    v16 = [interactiveCanvasController hitKnobAtPoint:1 inputType:&v32 returningRep:{v8, v10}];
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
      storage = [v19 storage];
      storage2 = [(CRLWPEditor *)self storage];
      v20 = storage == storage2 && v15;
    }

    if (v19)
    {
      v5 = v15 & v14;
    }

    else
    {
      v5 = v14;
    }

    gestureKind = [gestureCopy gestureKind];
    if ([gestureCopy inputType])
    {
      if (gestureKind == @"CRLWPTwoFingerPan")
      {
        v5 = 1;
      }

      else if (gestureKind != @"CRLWPLongPress" || v16)
      {
        if (gestureKind == @"CRLWPImmediatePress" && ![(CRLWPEditor *)self ignoreFutureImmediatePresses])
        {
          v5 = [(CRLWPEditor *)self p_shouldBeginCaretGrabAtUnscaledCanvasPoint:v8, v10]|| v20;
        }

        else if (gestureKind == @"CRLWPImmediateSingleTap" || gestureKind == @"CRLWPSecondarySingleTap" || gestureKind == @"CRLWPImmediateDoubleTap" || gestureKind == @"CRLWPTapAndTouch" || gestureKind == @"CRLWPDoubleTapAndTouch")
        {
          interactiveCanvasController2 = [(CRLWPEditor *)self interactiveCanvasController];
          editingDisabled = [interactiveCanvasController2 editingDisabled];

          v5 |= editingDisabled;
        }

        else
        {
          v5 &= gestureKind == @"CRLWPEditableTextSelectionForceGesture";
        }
      }
    }

    else
    {
      v27 = gestureKind == @"CRLWPImmediatePress" || gestureKind == @"CRLWPImmediateSingleTap" || gestureKind == @"CRLWPTapAndTouch" || gestureKind == @"CRLWPDoubleTapAndTouch";
      v5 &= v27 & (canIgnoreEvent ^ 1);
    }
  }

  return v5 & 1;
}

- (void)handleGesture:(id)gesture
{
  gestureCopy = gesture;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  gestureKind = [gestureCopy gestureKind];
  if ([gestureCopy gestureState] != 2)
  {
    [interactiveCanvasController layoutIfNeeded];
  }

  inputType = [gestureCopy inputType];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v9 = v8;
  v11 = v10;
  v12 = objc_opt_class();
  v13 = [interactiveCanvasController hitRep:{v9, v11}];
  v14 = [(CRLWPEditor *)self wpRepFromHitRep:v13];
  v15 = sub_100014370(v12, v14);

  suppressSelectionControls = [v15 suppressSelectionControls];
  v17 = objc_opt_class();
  layerHost = [interactiveCanvasController layerHost];
  v19 = sub_100014370(v17, layerHost);

  [interactiveCanvasController convertUnscaledToBoundsPoint:{v9, v11}];
  v21 = v20;
  v23 = v22;
  if ([gestureCopy inputType] == 2 && objc_msgSend(v19, "shouldBeginScribblingAtPoint:", v21, v23))
  {
    [(CRLWPEditor *)self setShouldQueueBeginScribbleMode:1];
  }

  -[CRLWPEditor setSelectionControlsForInputType:](self, "setSelectionControlsForInputType:", [gestureCopy inputType]);
  [v15 convertNaturalPointFromUnscaledCanvas:{v9, v11}];
  v25 = v24;
  v27 = v26;
  layout = [v15 layout];
  [layout validate];

  v29 = [(CRLWPEditor *)self charIndexInRep:v15 fromPoint:0 allowPastBreak:0 isAtEndOfLine:0 leadingEdge:v25, v27];
  if (!inputType)
  {
    if (v29 != 0x7FFFFFFFFFFFFFFFLL || (-[CRLWPEditor editorHelper](self, "editorHelper"), v42 = objc_claimAutoreleasedReturnValue(), [v42 anchorSelection], v43 = objc_claimAutoreleasedReturnValue(), v43, v42, v43))
    {
      if (gestureKind == @"CRLWPImmediatePress")
      {
        [(CRLWPEditor *)self p_handleIndirectImmediatePressGesture:gestureCopy];
        goto LABEL_42;
      }

      if (gestureKind == @"CRLWPTapAndTouch" || gestureKind == @"CRLWPDoubleTapAndTouch")
      {
        v50 = sub_1003035DC(gestureCopy, 1, v30, v31, v32, v33, v34, v35, &OBJC_PROTOCOL___CRLTapGesture);
        [(CRLWPEditor *)self p_handleTapAndTouchGesture:v50];

        goto LABEL_42;
      }

      if (gestureKind == @"CRLWPImmediateSingleTap" || gestureKind == @"CRLWPImmediateDoubleTap" && (-[CRLWPEditor interactiveCanvasController](self, "interactiveCanvasController"), v44 = objc_claimAutoreleasedReturnValue(), v45 = [v44 editingDisabled], v44, v45))
      {
        [(CRLWPEditor *)self p_handleTapGestures:gestureCopy];
LABEL_42:
        [(CRLWPEditor *)self setMostRecentGestureKind:gestureKind];
        goto LABEL_43;
      }
    }

    [(CRLWPEditor *)self setMostRecentGestureKind:gestureKind];
LABEL_29:
    v46 = +[CRLAssertionHandler _atomicIncrementAssertCount];
    if (qword_101AD5A10 != -1)
    {
      sub_101394D78();
    }

    if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
    {
      sub_101394D8C(gestureKind, v46);
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
    [CRLAssertionHandler handleFailureInFunction:v48 file:v49 lineNumber:2355 isFatal:0 description:"CRLWPEditor can't handle a gesture of kind %{public}@", gestureKind];

    goto LABEL_40;
  }

  [(CRLWPEditor *)self setMostRecentGestureKind:gestureKind];
  if (gestureKind == @"CRLWPTwoFingerPan")
  {
    [(CRLWPEditor *)self p_handleTwoFingerPanGesture:gestureCopy];
    goto LABEL_43;
  }

  if (gestureKind == @"CRLWPLongPress" || gestureKind == @"CRLWPImmediatePress")
  {
    [(CRLWPEditor *)self p_handleImmediateAndLongPressGesture:gestureCopy];
    goto LABEL_43;
  }

  if (gestureKind == @"CRLWPTapAndTouch" || gestureKind == @"CRLWPDoubleTapAndTouch")
  {
    v48 = sub_1003035DC(gestureCopy, 1, v36, v37, v38, v39, v40, v41, &OBJC_PROTOCOL___CRLTapGesture);
    [(CRLWPEditor *)self p_handleTapAndTouchGesture:v48];
LABEL_40:

    goto LABEL_43;
  }

  if (gestureKind != @"CRLWPImmediateSingleTap" && gestureKind != @"CRLWPSecondarySingleTap" && gestureKind != @"CRLWPImmediateDoubleTap")
  {
    if (gestureKind == @"CRLWPEditableTextSelectionForceGesture")
    {
      [(CRLWPEditor *)self p_handleEditableTextSelectionForceGesture:gestureCopy];
      goto LABEL_43;
    }

    goto LABEL_29;
  }

  v51 = [v15 isPointInSelectedArea:{v25, v27}];
  inputType2 = [gestureCopy inputType];
  if (((gestureKind == @"CRLWPImmediateSingleTap") & v51 & suppressSelectionControls) != 1 || !inputType2)
  {
    [(CRLWPEditor *)self p_handleTapGestures:gestureCopy];
  }

LABEL_43:
}

- (void)p_handleIndirectImmediatePressGesture:(id)gesture
{
  gestureCopy = gesture;
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  [gestureCopy unscaledLocationForICC:interactiveCanvasController];
  v6 = v5;
  v8 = v7;

  v9 = objc_opt_class();
  v10 = sub_100013F00(v9, gestureCopy);
  v11 = [(CRLWPEditor *)self icc];
  [v10 initialPosition];
  [v11 convertBoundsToUnscaledPoint:?];
  v13 = v12;
  v15 = v14;

  v16 = [(CRLWPEditor *)self p_shiftKeyIsDownWIthGesture:gestureCopy];
  gestureState = [gestureCopy gestureState];
  if (gestureState - 3 < 2)
  {
    [(CRLWPEditor *)self p_endAutoscroll];
    editorHelper = [(CRLWPEditor *)self editorHelper];
    [editorHelper setAnchorSelection:0];
    goto LABEL_19;
  }

  if (gestureState != 2)
  {
    if (gestureState != 1)
    {
      goto LABEL_20;
    }

    interactiveCanvasController2 = [(CRLWPEditor *)self interactiveCanvasController];
    [interactiveCanvasController2 layoutIfNeeded];

    editorHelper = [(CRLWPEditor *)self p_textRepAtGestureLocationForGesture:gestureCopy];
    [editorHelper convertNaturalPointFromUnscaledCanvas:{v13, v15}];
    v21 = v20;
    v23 = v22;
    v24 = [editorHelper didPointHitSelectionEnd:?];
    v25 = v24;
    if (v16)
    {
      selection = [(CRLWPEditor *)self selection];
      isValid = [selection isValid];

      if (((isValid | v25) & 1) == 0)
      {
LABEL_6:
        [(CRLWPEditor *)self setSelectionSetFromSingleTap:1];
        [(CRLWPEditor *)self tappedInRep:editorHelper point:1 tapCount:1 isTapHold:1 precise:v21, v23];
        [(CRLWPEditor *)self setSelectionSetFromSingleTap:0];
        selection2 = [(CRLWPEditor *)self selection];
        editorHelper2 = [(CRLWPEditor *)self editorHelper];
        [editorHelper2 setAnchorSelection:selection2];

        [(CRLWPEditor *)self setInitialPressTextSelectionGranularity:0];
LABEL_19:

        goto LABEL_20;
      }
    }

    else if ((v24 & 1) == 0)
    {
      goto LABEL_6;
    }

    selection3 = [(CRLWPEditor *)self selection];
    range = [selection3 range];
    v42 = v41;

    anchorSelection2 = [(CRLWPEditor *)self selectionFromUnscaledCanvasPoint:0 textSelectionGranularity:1 isTapHold:0 allowPastBreak:0 isDragging:v6, v8];
    selection4 = [(CRLWPEditor *)self selection];
    [(CRLWPEditor *)self p_adjustSelection:selection4 withOtherSelection:anchorSelection2 textSelectionGranularity:0];

    editorHelper3 = [(CRLWPEditor *)self editorHelper];
    [editorHelper3 setAnchorSelection:0];

    if ([anchorSelection2 range] > &range[v42 >> 1])
    {
      v42 = 0;
    }

    v45 = [objc_alloc(-[CRLWPEditor wpSelectionClass](self "wpSelectionClass"))];
    editorHelper4 = [(CRLWPEditor *)self editorHelper];
    [editorHelper4 setAnchorSelection:v45];

LABEL_18:
    goto LABEL_19;
  }

  interactiveCanvasController3 = [(CRLWPEditor *)self interactiveCanvasController];
  canvasView = [interactiveCanvasController3 canvasView];
  enclosingScrollView = [canvasView enclosingScrollView];
  isScrollEnabled = [enclosingScrollView isScrollEnabled];

  if (isScrollEnabled)
  {
    [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v6, v8];
  }

  editorHelper5 = [(CRLWPEditor *)self editorHelper];
  anchorSelection = [editorHelper5 anchorSelection];

  if (!anchorSelection)
  {
    selection5 = [(CRLWPEditor *)self selection];
    editorHelper6 = [(CRLWPEditor *)self editorHelper];
    [editorHelper6 setAnchorSelection:selection5];
  }

  if (sub_100120090(v13, v15, v6, v8) >= 3.0)
  {
    editorHelper = [(CRLWPEditor *)self editorHelper];
    anchorSelection2 = [editorHelper anchorSelection];
    [(CRLWPEditor *)self p_adjustSelection:anchorSelection2 withUnscaledCanvasPoint:[(CRLWPEditor *)self initialPressTextSelectionGranularity] textSelectionGranularity:1 isTapHold:[(CRLWPEditor *)self initialPressTextSelectionGranularity]^ 1 allowPastBreak:1 isDragging:v6, v8];
    goto LABEL_18;
  }

LABEL_20:
}

- (void)gestureSequenceDidEnd
{
  [(CRLWPEditor *)self setIgnoreFutureImmediatePresses:0];
  v3 = objc_opt_class();
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  v18 = sub_100014370(v3, layerHost);

  if ([(CRLWPEditor *)self shouldQueueBeginScribbleMode])
  {
    [v18 scribbleInteractionDidFinishWriting];
    [(CRLWPEditor *)self setShouldQueueBeginScribbleMode:0];
  }

  if ([(CRLWPEditor *)self isACurrentEditor])
  {
    selection = [(CRLWPEditor *)self selection];
    if (!selection)
    {
      goto LABEL_18;
    }

    mostRecentGestureKind = [(CRLWPEditor *)self mostRecentGestureKind];
    v8 = mostRecentGestureKind;
    if (mostRecentGestureKind == @"CRLWPImmediateSingleTap")
    {
    }

    else
    {
      mostRecentGestureKind2 = [(CRLWPEditor *)self mostRecentGestureKind];

      if (mostRecentGestureKind2 != @"CRLWPImmediatePress")
      {
        mostRecentGestureKind3 = [(CRLWPEditor *)self mostRecentGestureKind];
        v11 = mostRecentGestureKind3;
        if (mostRecentGestureKind3 == @"CRLWPTapAndTouch")
        {

          goto LABEL_16;
        }

        mostRecentGestureKind4 = [(CRLWPEditor *)self mostRecentGestureKind];

        if (mostRecentGestureKind4 == @"CRLWPImmediateDoubleTap")
        {
LABEL_16:
          [selection range];
          if (!v17)
          {
            [(CRLWPEditor *)self gestureBeganWhenEditingBegan];
          }
        }

LABEL_18:

        goto LABEL_19;
      }
    }

    range = [selection range];
    v15 = v14;
    if (range == [(CRLWPEditor *)self originalSelectionRange]&& v15 == v16 && ![(CRLWPEditor *)self gestureBeganWhenEditingBegan])
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
  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  dynamicOperationController = [interactiveCanvasController dynamicOperationController];
  isInOperation = [dynamicOperationController isInOperation];

  if (isInOperation)
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

  tmCoordinator = [interactiveCanvasController tmCoordinator];
  [tmCoordinator registerTrackerManipulator:self];

  tmCoordinator2 = [interactiveCanvasController tmCoordinator];
  v11 = [tmCoordinator2 takeControlWithTrackerManipulator:self];

  if (v11)
  {
    dynamicOperationController2 = [interactiveCanvasController dynamicOperationController];
    [dynamicOperationController2 beginOperation];
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
      sub_101394F54(v14, interactiveCanvasController, v13);
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

    dynamicOperationController2 = [NSString stringWithUTF8String:"[CRLWPEditor(GestureInterfaces) p_beginOperationAndTakeControl]"];
    v16 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Gestures/CRLWPEditor+Gestures.m"];
    tmCoordinator3 = [interactiveCanvasController tmCoordinator];
    controllingTM = [tmCoordinator3 controllingTM];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [CRLAssertionHandler handleFailureInFunction:dynamicOperationController2 file:v16 lineNumber:2832 isFatal:0 description:"could not take control with WP Editing Controller. Controlling TM is %{public}@", v20];
  }
}

- (void)p_endAutoscroll
{
  autoscroll = [(CRLWPEditor *)self autoscroll];
  [autoscroll invalidate];

  [(CRLWPEditor *)self setAutoscroll:0];
}

- (void)p_handleTapWhileMarkedTextGestureRecognizer:(id)recognizer
{
  v4 = [(CRLWPEditor *)self icc];
  textInputResponder = [v4 textInputResponder];
  [textInputResponder acceptAutocorrection];
}

- (void)p_handleKnobDragGestureRecognizer:(id)recognizer
{
  recognizerCopy = recognizer;
  v5 = recognizerCopy;
  v6 = !recognizerCopy || [recognizerCopy gestureState] == 3 || objc_msgSend(v5, "gestureState") == 4;
  [(CRLWPEditor *)self setReadyToEnd:v6];
  knobTracker = [(CRLWPEditor *)self knobTracker];

  if (!knobTracker)
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
    knobTracker2 = [(CRLWPEditor *)self knobTracker];
    [knobTracker2 setIgnoreNextCall:1];
  }

  v12 = [(CRLWPEditor *)self icc];
  [v5 unscaledLocationForICC:v12];
  v15 = sub_100122154(v13, v14);
  v17 = v16;

  [(CRLWPEditor *)self knobToTouchOffset];
  v19 = sub_10011F334(v15, v17, v18);
  v21 = v20;
  knobTracker3 = [(CRLWPEditor *)self knobTracker];
  [knobTracker3 setCurrentPosition:{v19, v21}];

  if ([(CRLWPEditor *)self readyToEnd])
  {
    [(CRLWPEditor *)self p_endAutoscroll];
  }

  else
  {
    [CRLCanvasAutoscroll startAutoscroll:self unscaledPoint:v15, v17];
  }

  interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
  dynamicOperationController = [interactiveCanvasController dynamicOperationController];
  [dynamicOperationController handleTrackerManipulator:self];
}

- (void)p_beginMagnification:(id)magnification forRep:(id)rep atPoint:(CGPoint)point shouldSetSelection:(BOOL)selection
{
  selectionCopy = selection;
  y = point.y;
  x = point.x;
  v10 = [(CRLWPEditor *)self interactiveCanvasController:magnification];
  [v10 convertBoundsToUnscaledPoint:{x, y}];
  v12 = v11;
  v14 = v13;

  if (selectionCopy)
  {

    [(CRLWPEditor *)self p_setSelectionFromPoint:0 textSelectionGranularity:1 includeListLabels:v12, v14];
  }
}

- (void)protectedStopMagnification
{
  textSelectionDelegate = [(CRLWPEditor *)self textSelectionDelegate];
  [textSelectionDelegate endLoupeSession];

  magnifier = [(CRLWPEditor *)self magnifier];

  if (magnifier)
  {
    interactiveCanvasController = [(CRLWPEditor *)self interactiveCanvasController];
    [interactiveCanvasController layoutIfNeeded];

    magnifier2 = [(CRLWPEditor *)self magnifier];
    [magnifier2 stopMagnifying:1];

    [(CRLWPEditor *)self setMagnifier:0];

    [(CRLWPEditor *)self setFidgetResolver:0];
  }
}

- (void)p_protectedStopKnobTrackingGesture:(id)gesture
{
  gestureCopy = gesture;
  knobTracker = [(CRLWPEditor *)self knobTracker];

  if (knobTracker)
  {
    [(CRLWPEditor *)self p_handleKnobDragGestureRecognizer:gestureCopy];
    y = CGPointZero.y;
    [(CRLWPEditor *)self setAdjustedDragPoint:CGPointZero.x, y];
    [(CRLWPEditor *)self setAdjustedDragToNaturalPointOffset:CGPointZero.x, y];
    [(CRLWPEditor *)self setSelectionTargetToAdjustedDragOffset:CGPointZero.x, y];
    [(CRLWPEditor *)self setKnobTracker:0];
  }
}

- (void)setInsertionStyle:(id)style
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_insertionStyle) = style;
  styleCopy = style;
}

- (void)setEnclosingShape:(id)shape
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_enclosingShape) = shape;
  shapeCopy = shape;
}

- (_TtC8Freeform12CRLWPStorage)storageWithMarkedText
{
  selfCopy = self;
  sub_100936C74();
  v4 = v3;

  return v4;
}

- (_TtC8Freeform11CRLWPLayout)layout
{
  selfCopy = self;
  v3 = sub_100936D54();

  return v3;
}

- (void)textSelectionWillChange
{
  selfCopy = self;
  sub_100937648();
}

- (void)textSelectionDidChange
{
  selfCopy = self;
  sub_10093769C();
}

- (void)textWillChange
{
  selfCopy = self;
  sub_1009377C4();
}

- (void)willUndo
{
  selfCopy = self;
  sub_100937824();
}

- (void)documentEditabilityDidChange
{
  selfCopy = self;
  sub_100937A54();
}

+ (BOOL)canEditTextIn:(id)in using:(id)using
{
  inCopy = in;
  usingCopy = using;
  v7 = sub_100962604(inCopy, usingCopy);

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

- (void)setSelection:(id)selection
{
  selectionCopy = selection;
  selfCopy = self;
  sub_100937C74(selection);
}

- (CRLSearchReference)editingSearchReference
{
  selfCopy = self;
  v3 = sub_100937E64();

  return v3;
}

- (void)endEditing
{
  memset(v3, 0, sizeof(v3));
  selfCopy = self;
  sub_1009380EC();

  sub_10000CAAC(v3, &unk_1019F4D00);
}

- (void)setWantsVisibleKeyboard:(BOOL)keyboard
{
  selfCopy = self;
  sub_1009383D8(keyboard);
}

- (_TtP8Freeform16CRLTextSelecting_)textSelectionDelegate
{
  selfCopy = self;
  sub_100960E34();
  v4 = v3;
  swift_unknownObjectRetain();

  return v4;
}

- (_TtC8Freeform25CRLWPTextSelectionManager)textSelectionManager
{
  selfCopy = self;
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

- (void)setEditorController:(id)controller
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorController) = controller;
  controllerCopy = controller;
}

- (BOOL)needsTextEditingAccessoryBar
{
  selfCopy = self;
  v3 = sub_1009385E0();

  return v3 & 1;
}

- (UIInputViewController)inputAccessoryViewController
{
  selfCopy = self;
  v3 = sub_1009386D4();

  return v3;
}

- (BOOL)shouldRemainOnEditorStackForSelection:(id)selection inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
  pathCopy = path;
  selfCopy = self;
  v10 = sub_100962708(selectionCopy, pathCopy);

  return v10 & 1;
}

- (id)selectionWillChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags inSelectionPath:(id)path withNewEditors:(id)editors
{
  selectionCopy = selection;
  toSelectionCopy = toSelection;
  pathCopy = path;
  selfCopy = self;
  v15 = sub_1009628E0(selection, toSelectionCopy);

  return v15;
}

- (void)selectionDidChangeFromSelection:(id)selection toSelection:(id)toSelection withFlags:(unint64_t)flags
{
  selectionCopy = selection;
  toSelectionCopy = toSelection;
  selfCopy = self;
  sub_100938C50(selection, toSelectionCopy, flags);
}

- (void)didBecomeCurrentEditorForEditorController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_100962C70();
}

- (void)willResignCurrentEditor
{
  selfCopy = self;
  sub_100939624();
}

- (BOOL)canPasteWithItemSource:(id)source selection:(id)selection sender:(id)sender
{
  if (sender)
  {
    swift_unknownObjectRetain();
    selectionCopy = selection;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v14, 0, sizeof(v14));
    swift_unknownObjectRetain();
    selectionCopy2 = selection;
    selfCopy2 = self;
  }

  v12 = sub_100962DFC(source);
  swift_unknownObjectRelease();

  sub_10000CAAC(v14, &unk_1019F4D00);
  return v12 & 1;
}

- (void)pasteFromItemSource:(id)source forceMatchStyle:(BOOL)style
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100939C9C(source, style);
  swift_unknownObjectRelease();
}

- (void)pasteWithItemSource:(id)source selection:(id)selection sender:(id)sender selectRange:(int64_t)range dragBlock:(id)block
{
  v12 = _Block_copy(block);
  if (sender)
  {
    swift_unknownObjectRetain();
    selectionCopy = selection;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    swift_unknownObjectRetain();
    selectionCopy2 = selection;
    selfCopy2 = self;
  }

  _Block_copy(v12);
  sub_100962F14(source, selection, v17, range, self, v12);
  _Block_release(v12);
  _Block_release(v12);
  swift_unknownObjectRelease();

  sub_10000CAAC(v17, &unk_1019F4D00);
}

- (void)cutTo:(id)to nativeOnly:(BOOL)only sender:(id)sender
{
  if (sender)
  {
    toCopy = to;
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    toCopy2 = to;
    selfCopy2 = self;
  }

  sub_10093C2F4(to, only);

  sub_10000CAAC(v12, &unk_1019F4D00);
}

- (int64_t)canPerformEditorAction:(SEL)action withSender:(id)sender
{
  if (sender)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  v8 = sub_10093CC50(action);

  sub_10000CAAC(v10, &unk_1019F4D00);
  return v8;
}

- (BOOL)canMutateTextStorage
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    selfCopy = self;
    editingDisabled = [v4 editingDisabled];

    if (!editingDisabled)
    {
      v8 = *(selfCopy + OBJC_IVAR____TtC8Freeform11CRLWPEditor_disallowEditingOfTextString);

      v7 = v8 ^ 1;
      return v7 & 1;
    }
  }

  v7 = 0;
  return v7 & 1;
}

- (void)setEditorHelper:(id)helper
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) = helper;
  helperCopy = helper;
}

- (id)cursorAtPoint:(CGPoint)point withCursorPlatformObject:(id)object
{
  y = point.y;
  x = point.x;
  objectCopy = object;
  selfCopy = self;
  v9 = sub_10093E094(objectCopy, x, y);

  return v9;
}

- (void)addContextualMenuElementsToArray:(id)array atPoint:(CGPoint)point
{
  arrayCopy = array;
  selfCopy = self;
  sub_10096423C(arrayCopy);
}

- (void)selectMenuAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [*(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper) selectWordWithFlags:{16, v6, v7}];

  sub_10000CAAC(&v6, &unk_1019F4D00);
}

- (void)selectAll
{
  selfCopy = self;
  sub_10093EE84();
}

- (void)selectAllMenuAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_10093EE84();

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (void)lookUp:(id)up
{
  if (!up)
  {
    v9 = 0u;
    v10 = 0u;
    selfCopy = self;
    sub_100960E34();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  selfCopy2 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100960E34();
  if (v5)
  {
LABEL_3:
    selectedRange = [v5 selectedRange];
    sub_10093F4E0(selectedRange, v7);
  }

LABEL_4:

  sub_10000CAAC(&v9, &unk_1019F4D00);
}

- (void)lookUpTextAtRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  sub_10093F4E0(location, length);
}

- (void)deleteBackward:(id)backward
{
  if (backward)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(CRLWPEditor *)self deleteCurrentSelection:v6];

  sub_10000CAAC(&v6, &unk_1019F4D00);
}

- (void)showEditMenu
{
  selfCopy = self;
  sub_100943A08();
}

- (CGRect)targetRectForEditMenu
{
  selfCopy = self;
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
  selfCopy = self;
  v2 = sub_100943964();
  if (v2)
  {
    v3 = v2;
    sub_10127F918();
  }
}

- (id)dictationAndAutocorrectionsFor:(int64_t)for effectiveRange:(_NSRange *)range
{
  selfCopy = self;

  sub_1008ACD34(for);
  v8 = v7;
  v10 = v9;
  v12 = v11;

  if (v8)
  {
    if (range)
    {
      range->location = v10;
      range->length = v12;
    }

    v13 = String._bridgeToObjectiveC()();
  }

  else
  {

    v13 = 0;
  }

  return v13;
}

- (id)autocorrectionRangesToDisplayInRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v6 = sub_1009443C8(location, length);

  return v6;
}

- (void)toggleListEntry:(id)entry
{
  if (entry)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    selfCopy2 = self;
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

- (BOOL)canSetWritingDirection:(int64_t)direction
{
  selfCopy = self;
  sub_100945450(direction);
  LOBYTE(direction) = v5;

  return direction & 1;
}

- (int64_t)baseWritingDirectionFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  sub_1009457D8(forCopy);
  v7 = v6;

  return v7;
}

- (void)setBaseWritingDirection:(int64_t)direction forParagraphsWithRange:(id)range
{
  rangeCopy = range;
  selfCopy = self;
  sub_100945BA8(direction, rangeCopy);
}

- (void)setAutoscroll:(id)autoscroll
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_autoscroll);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_autoscroll) = autoscroll;
  autoscrollCopy = autoscroll;
}

- (void)setListDragAnimator:(id)animator
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_listDragAnimator);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_listDragAnimator) = animator;
  animatorCopy = animator;
}

- (void)commitMarkedTextWithoutModifyingStorage
{
  selfCopy = self;
  sub_100947F58();
}

- (void)commitMarkedText
{
  selfCopy = self;
  sub_1009480A8();
}

- (void)abortMarkedText
{
  selfCopy = self;
  sub_100948424();
}

- (void)willResignTextInputEditor
{
  selfCopy = self;
  sub_100948514();
}

- (void)didResignTextInputEditor
{
  selfCopy = self;
  sub_10094871C();
}

- (void)didBecomeTextInputEditor
{
  selfCopy = self;
  sub_100948AF4();
}

- (void)setMostRecentGestureKind:(id)kind
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_mostRecentGestureKind);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_mostRecentGestureKind) = kind;
  kindCopy = kind;
}

- (void)setFidgetResolver:(id)resolver
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_fidgetResolver);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_fidgetResolver) = resolver;
  resolverCopy = resolver;
}

- (void)setDictationInterpretations:(id)interpretations
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationInterpretations);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dictationInterpretations) = interpretations;
  interpretationsCopy = interpretations;
}

- (void)setTapInfo:(id)info
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_tapInfo);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_tapInfo) = info;
  infoCopy = info;
}

- (CRLWPTextMagnifier)magnifier
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setMagnifier:(id)magnifier
{
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_magnifier) = magnifier;
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

- (void)setKnobTracker:(id)tracker
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracker);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_knobTracker) = tracker;
  trackerCopy = tracker;
}

- (BOOL)editMenuIsVisible
{
  selfCopy = self;
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

- (BOOL)wantsParagraphModeWithSelection:(id)selection
{
  selfCopy = self;
  if ([selection isValid])
  {
    v5 = *(selfCopy + OBJC_IVAR____TtC8Freeform11CRLWPEditor_wantsParagraphMode);

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
  selfCopy = self;
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

- (void)setLastSingleImmediateTapTime:(id)time
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = OBJC_IVAR____TtC8Freeform11CRLWPEditor_lastSingleImmediateTapTime;
  swift_beginAccess();
  v9 = *(v5 + 40);
  selfCopy = self;
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
  selfCopy = self;
  v3 = sub_100949A1C();

  return v3;
}

- (CGPoint)clampUnscaledPointToTextFieldBounds:(CGPoint)bounds
{
  y = bounds.y;
  x = bounds.x;
  selfCopy = self;
  v6 = sub_100949F2C(x, y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGPoint)getCenterOfWord:(id)word
{
  wordCopy = word;
  selfCopy = self;
  v6 = sub_10094A034(wordCopy);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (void)setDragRep:(id)rep
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dragRep);
  *(self + OBJC_IVAR____TtC8Freeform11CRLWPEditor_dragRep) = rep;
  repCopy = rep;
}

- (_TtC8Freeform11CRLWPEditor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)moveRight:(id)right
{
  if (right)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_10094A648(self, v6);

  sub_10000CAAC(v6, &unk_1019F4D00);
}

- (_NSRange)availableSelectionRangeForCharIndex:(int64_t)index
{
  selfCopy = self;
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
  selfCopy = self;
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

- (void)insertText:(id)text
{
  swift_unknownObjectRetain();
  selfCopy = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10094ECE4(v5);

  sub_100005070(v5);
}

- (void)insertWithText:(id)text
{
  v4 = qword_1019F1570;
  textCopy = text;
  selfCopy = self;
  v7 = selfCopy;
  if (v4 != -1)
  {
    swift_once();
    selfCopy = v7;
  }

  sub_10094F498(selfCopy, textCopy);
}

- (void)deleteCurrentSelection
{
  selfCopy = self;
  sub_10094F9F8();
}

- (void)updateStateForCommand:(id)command
{
  commandCopy = command;
  selfCopy = self;
  sub_10094FE78(commandCopy);
}

- (void)replace:(id)replace with:(id)with
{
  replaceCopy = replace;
  withCopy = with;
  selfCopy = self;
  sub_100950348(replaceCopy, withCopy);
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
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_100951AE8(selfCopy, v6);

  v4 = v6[0];
  v5 = v6[1];
  result.length = v5;
  result.location = v4;
  return result;
}

- (void)clearMarkedRange
{
  selfCopy = self;
  sub_100951BD0();
}

- (_TtC8Freeform12CRLTextRange)markedTextRange
{
  v2 = qword_1019F1570;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  sub_100951D78(selfCopy, &v6);

  v4 = v6;

  return v4;
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range replacementRange:(_NSRange)replacementRange
{
  length = range.length;
  location = range.location;
  if (text)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_100951E20(v10, location, length);

  sub_10000CAAC(v10, &unk_1019F4D00);
}

- (void)setMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  if (text)
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
  selfCopy = self;
  if (v10 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&unk_1019F6C70);
  type metadata accessor for _NSRange(0);

  sub_10095260C(v7, v9, selfCopy, location, length);
  swift_arrayDestroy();
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v7 = qword_1019F1570;
  textCopy = text;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_1005B981C(&qword_101A012B8);
  type metadata accessor for _NSRange(0);
  v10 = textCopy;
  sub_100952848(textCopy, selfCopy, location, length);
  swift_arrayDestroy();
}

- (id)attributedSubstringForProposedRange:(_NSRange)range actualRange:(_NSRange *)actualRange
{
  length = range.length;
  location = range.location;
  v7 = qword_1019F1570;
  selfCopy = self;
  if (v7 != -1)
  {
    swift_once();
  }

  sub_100952E10(location, length, selfCopy, actualRange, &v11);

  v9 = v11;

  return v9;
}

- (void)unmarkText
{
  selfCopy = self;
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

- (void)setMarkedTextStyle:(id)style
{
  if (style)
  {
    type metadata accessor for Key(0);
    sub_1009624F8(&qword_1019F34A0, type metadata accessor for Key);
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  selfCopy = self;
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

- (id)commandForReplacingTextInRange:(id)range withText:(id)text
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  rangeCopy = range;
  selfCopy = self;
  v11 = sub_100953AAC(rangeCopy, v6, v8);

  return v11;
}

- (id)commandForReplacingTextInRange:(id)range withAttributedText:(id)text
{
  rangeCopy = range;
  textCopy = text;
  selfCopy = self;
  v9 = sub_100953F60(rangeCopy, textCopy);

  return v9;
}

- (void)deleteWordForward:(id)forward
{
  if (forward)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_100D712CC();

  sub_1005E09AC(v6);
}

- (void)arrowKeyReceivedInDirection:(unint64_t)direction withModifierKeys:(id)keys
{
  keysCopy = keys;
  selfCopy = self;
  sub_100D72744(direction);
}

@end