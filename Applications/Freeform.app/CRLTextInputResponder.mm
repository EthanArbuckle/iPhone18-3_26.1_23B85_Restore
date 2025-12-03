@interface CRLTextInputResponder
- (BOOL)becomeFirstResponder;
- (BOOL)editorWantsPlainTextDelete;
- (BOOL)hasText;
- (BOOL)iccAllowsTextEditing;
- (BOOL)keyboardIsAnimating;
- (BOOL)p_accessibilityShouldCheckAncestorCanPerformAction:(SEL)action withSender:(id)sender;
- (BOOL)resignFirstResponder;
- (BOOL)shouldChangeFirstResponderFor:(id)for;
- (CGPoint)convertPointFromTopResponderView:(CGPoint)view;
- (CGPoint)convertPointToTopResponderView:(CGPoint)view;
- (CGRect)_accessibilitySpeakRectForRange:(id)range;
- (CGRect)caretRectForPosition:(id)position;
- (CGRect)convertRectFromTopResponderView:(CGRect)view;
- (CGRect)convertRectToTopResponderView:(CGRect)view;
- (CGRect)firstRectForRange:(id)range;
- (CRLInteractiveCanvasController)icc;
- (NSArray)keyCommands;
- (NSArray)tirKeyCommands;
- (UITextInputDelegate)inputDelegate;
- (UITextInputTokenizer)tokenizer;
- (UITextPosition)beginningOfDocument;
- (UITextPosition)endOfDocument;
- (UITextRange)markedTextRange;
- (UITextRange)selectedTextRange;
- (UIView)inputView;
- (UIView)selectionContainerViewAboveText;
- (UIView)selectionContainerViewBelowText;
- (UIView)textInputView;
- (UIView)topFirstResponderView;
- (_TtC8Freeform21CRLTextInputResponder)init;
- (_TtP8Freeform18CRLTextInputEditor_)editor;
- (id)_accessibilitySpeakTextSelectionViews;
- (id)_crlaxEditingTextRep;
- (id)attributedTextInRange:(id)range;
- (id)characterRangeAtPoint:(CGPoint)point;
- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction;
- (id)closestPositionToPoint:(CGPoint)point;
- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range;
- (id)keyCommandForArrowIn:(id)in with:(int64_t)with;
- (id)keyCommandsForArrowsWithModifiersIn:(id)in;
- (id)nextResponder;
- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset;
- (id)positionFromPosition:(id)position offset:(int64_t)offset;
- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction;
- (id)selectionRectsForRange:(id)range;
- (id)targetForAction:(SEL)action withSender:(id)sender;
- (id)textInRange:(id)range;
- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction;
- (int64_t)comparePosition:(id)position toPosition:(id)toPosition;
- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition;
- (int64_t)writingToolsBehavior;
- (uint64_t)mathExpressionCompletionType;
- (unint64_t)allowedWritingToolsResultOptions;
- (void)_startWritingToolsWithTool:(id)tool prompt:(id)prompt sender:(id)sender;
- (void)applicationDidEnterBackgroundWithNotification:(id)notification;
- (void)applicationWillEnterForegroundWithNotification:(id)notification;
- (void)arrowKeyInputReceivedFrom:(id)from;
- (void)beginFloatingCursorAtPoint:(CGPoint)point;
- (void)beginTextInput;
- (void)deleteBackward;
- (void)deleteKeyPressed;
- (void)didDismissWritingTools;
- (void)endFloatingCursor;
- (void)endTextInput:(id)input;
- (void)firstResponderChangedWithNotification:(id)notification;
- (void)forwardInvocation:(id)invocation;
- (void)insertAttributedText:(id)text;
- (void)insertText:(id)text;
- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style;
- (void)insertWithText:(id)text;
- (void)reloadForMathPaperChangesWithNotification:(id)notification;
- (void)reloadInputViews;
- (void)replaceRange:(id)range withAttributedText:(id)text;
- (void)replaceRange:(id)range withText:(id)text;
- (void)replaceWithRange:(id)range with:(id)with;
- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range;
- (void)setEditor:(id)editor withFlags:(unint64_t)flags;
- (void)setFloatingCursorHelper:(id)helper;
- (void)setInputLogger:(id)logger;
- (void)setMarkedText:(id)text selectedRange:(_NSRange)range;
- (void)setNeedsInputViewsReloaded;
- (void)setSelectedTextRange:(id)range;
- (void)textDidChange;
- (void)textInput:(id)input;
- (void)textSelectionDidChange;
- (void)textSelectionWillChange;
- (void)textWillChange;
- (void)unmarkText;
- (void)updateFloatingCursorAtPoint:(CGPoint)point;
@end

@implementation CRLTextInputResponder

- (id)nextResponder
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)forwardInvocation:(id)invocation
{
  invocationCopy = invocation;
  v15 = 0;
  [invocationCopy getArgument:&v15 atIndex:2];
  if (![CRLCanvasEditor physicalKeyboardIsSender:v15]|| ![(CRLTextInputResponder *)self isIgnoringKeyboardInput])
  {
    selector = [invocationCopy selector];
    v6 = [(CRLTextInputResponder *)self icc];
    layerHost = [v6 layerHost];
    asiOSCVC = [layerHost asiOSCVC];

    if ([asiOSCVC respondsToSelector:selector withSender:v15])
    {
      v9 = +[UIMenuController sharedMenuController];
      [v9 hideMenu];

      [invocationCopy invokeWithTarget:asiOSCVC];
    }

    else if ((v15 == self || [@"UIEditingInteraction" isEqual:?]) && (selector == "cut:" || selector == "copy:" || selector == "paste:"))
    {
      v10 = +[CRLAssertionHandler _atomicIncrementAssertCount];
      if (qword_101AD5A10 != -1)
      {
        sub_10131774C();
      }

      v11 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_101317774(v10, v11);
      }

      if (qword_101AD5A10 != -1)
      {
        sub_101317820();
      }

      v12 = off_1019EDA68;
      if (os_log_type_enabled(off_1019EDA68, OS_LOG_TYPE_ERROR))
      {
        sub_10130EE10(v12, v10);
      }

      v13 = [NSString stringWithUTF8String:"[CRLTextInputResponder(ObjCExtension) forwardInvocation:]"];
      v14 = [NSString stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/CRLTextInputResponder.m"];
      [CRLAssertionHandler handleFailureInFunction:v13 file:v14 lineNumber:62 isFatal:0 description:"The OS undo gestures should not be sending us selectors we can't respond to!"];
    }

    else if (![(CRLTextInputResponder *)self p_workAround17828487ForSelector:selector])
    {
      [(CRLTextInputResponder *)self doesNotRecognizeSelector:selector];
    }
  }
}

- (BOOL)p_accessibilityShouldCheckAncestorCanPerformAction:(SEL)action withSender:(id)sender
{
  v4 = NSStringFromSelector(action);
  v5 = [&off_1018E1308 containsObject:v4];

  return v5;
}

- (id)_crlaxEditingTextRep
{
  v13 = 0;
  editor = [(CRLTextInputResponder *)self editor];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, editor, 1, &v13);
  if (v13 == 1 || (v5 = v4, editor, v12 = 0, [v5 editingReps], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "anyObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v8 = objc_opt_class(), __CRLAccessibilityCastAsClass(v8, v7, 1, &v12), v9 = objc_claimAutoreleasedReturnValue(), v12 == 1))
  {
    abort();
  }

  v10 = v9;

  return v10;
}

- (id)_accessibilitySpeakTextSelectionViews
{
  _crlaxEditingTextRep = [(CRLTextInputResponder *)self _crlaxEditingTextRep];
  v3 = _crlaxEditingTextRep;
  if (_crlaxEditingTextRep)
  {
    v4 = [_crlaxEditingTextRep crlaxValueForKey:@"_selectionHighlightLayer"];
    overlayRenderables = [v3 overlayRenderables];
    v35 = 0;
    v6 = v3;
    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v35);
    if (v35 == 1)
    {
      abort();
    }

    v9 = v8;

    crlaxRetainedTarget = [v9 crlaxRetainedTarget];
    knobs = [crlaxRetainedTarget knobs];

    v12 = objc_opt_new();
    v13 = v12;
    if (v4)
    {
      [v12 addObject:v4];
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v14 = overlayRenderables;
    v15 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v32;
      do
      {
        for (i = 0; i != v16; i = i + 1)
        {
          if (*v32 != v17)
          {
            objc_enumerationMutation(v14);
          }

          layer = [*(*(&v31 + 1) + 8 * i) layer];
          [v13 addObject:layer];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v16);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = knobs;
    v21 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (j = 0; j != v22; j = j + 1)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = [*(*(&v27 + 1) + 8 * j) crlaxValueForKey:{@"layer", v27}];
          if (v25)
          {
            [v13 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v27 objects:v36 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (CGRect)_accessibilitySpeakRectForRange:(id)range
{
  rangeCopy = range;
  v34 = 0;
  v35 = &v34;
  v37 = &unk_1016A8115;
  v36 = 0x4010000000;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v39 = size;
  v33 = 0;
  v6 = rangeCopy;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v33);
  if (v33 == 1)
  {
    goto LABEL_9;
  }

  v9 = v8;

  if (v9)
  {
    _crlaxEditingTextRep = [(CRLTextInputResponder *)self _crlaxEditingTextRep];
    v11 = _crlaxEditingTextRep;
    if (!_crlaxEditingTextRep)
    {
LABEL_7:

      goto LABEL_8;
    }

    v33 = 0;
    v12 = _crlaxEditingTextRep;
    v13 = objc_opt_class();
    v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 1, &v33);
    if (v33 != 1)
    {
      v15 = v14;

      crlaxRetainedTarget = [v15 crlaxRetainedTarget];
      canvas = [crlaxRetainedTarget canvas];
      canvasController = [canvas canvasController];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10026DC7C;
      v28[3] = &unk_101842C68;
      v29 = v9;
      v32 = &v34;
      v30 = v12;
      v19 = canvasController;
      v31 = v19;
      if (!__CRLAccessibilityPerformSafeBlock(v28))
      {

        goto LABEL_7;
      }
    }

LABEL_9:
    abort();
  }

LABEL_8:
  v20 = v35[4];
  v21 = v35[5];
  v22 = v35[6];
  v23 = v35[7];

  _Block_object_dispose(&v34, 8);
  v24 = v20;
  v25 = v21;
  v26 = v22;
  v27 = v23;
  result.size.height = v27;
  result.size.width = v26;
  result.origin.y = v25;
  result.origin.x = v24;
  return result;
}

- (UIView)selectionContainerViewBelowText
{
  selfCopy = self;
  v3 = sub_1007E4714();

  return v3;
}

- (UIView)selectionContainerViewAboveText
{
  selfCopy = self;
  v3 = sub_1007E4764();

  return v3;
}

- (void)setInputLogger:(id)logger
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputLogger);
  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputLogger) = logger;
  loggerCopy = logger;
}

- (BOOL)iccAllowsTextEditing
{
  selfCopy = self;
  v3 = sub_1007E4940();

  return v3 & 1;
}

- (BOOL)shouldChangeFirstResponderFor:(id)for
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1007E4A2C(for);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (_TtP8Freeform18CRLTextInputEditor_)editor
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setNeedsInputViewsReloaded
{
  selfCopy = self;
  sub_1007E4BF0();
}

- (BOOL)keyboardIsAnimating
{
  v2 = objc_opt_self();

  return [v2 keyboardIsAnimating];
}

- (void)reloadInputViews
{
  selfCopy = self;
  sub_1007E4FC0();
  v3.receiver = selfCopy;
  v3.super_class = type metadata accessor for CRLTextInputResponder();
  [(CRLTextInputResponder *)&v3 reloadInputViews];
}

- (void)textWillChange
{
  selfCopy = self;
  sub_1007E529C(selfCopy, &selRef_textWillChange_);
}

- (void)textDidChange
{
  selfCopy = self;
  sub_1007E529C(selfCopy, &selRef_textDidChange_);
}

- (void)setEditor:(id)editor withFlags:(unint64_t)flags
{
  flagsCopy = flags;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1007E5330(editor, flagsCopy);
  swift_unknownObjectRelease();
}

- (CRLInteractiveCanvasController)icc
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)applicationDidEnterBackgroundWithNotification:(id)notification
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3)
  {
    selfCopy = self;
    textInputReceiver = [v3 textInputReceiver];
    if (textInputReceiver)
    {
      [textInputReceiver abortMarkedText];
      swift_unknownObjectRelease();
    }
  }
}

- (void)applicationWillEnterForegroundWithNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  sub_1007EDF30();
}

- (void)firstResponderChangedWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007E5D40();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)becomeFirstResponder
{
  selfCopy = self;
  v3 = sub_1007E5F08();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  selfCopy = self;
  v3 = sub_1007E6140();

  return v3 & 1;
}

- (void)textSelectionWillChange
{
  selfCopy = self;
  sub_1007E6454(selfCopy, &selRef_selectionWillChange_);
}

- (void)textSelectionDidChange
{
  selfCopy = self;
  sub_1007E6454(selfCopy, &selRef_selectionDidChange_);
}

- (void)textInput:(id)input
{
  v4 = _Block_copy(input);
  v5 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v6 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress);
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) = v8;
  v9 = v4[2];
  v10 = v4;
  selfCopy = self;
  v9(v10);
  _Block_release(v10);
  v11 = *(self + v5);
  v7 = __OFSUB__(v11, 1);
  v12 = v11 - 1;
  if (v7)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(self + v5) = v12;
}

- (UITextRange)selectedTextRange
{
  selfCopy = self;
  v3 = sub_1007E65F0();

  return v3;
}

- (void)setSelectedTextRange:(id)range
{
  v3 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v4 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) = v6;
  rangeCopy = range;
  selfCopy = self;
  sub_1007E66F4(range, selfCopy);

  v10 = *(self + v3);
  v5 = __OFSUB__(v10, 1);
  v11 = v10 - 1;
  if (v5)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(self + v3) = v11;
}

- (UITextRange)markedTextRange
{
  selfCopy = self;
  v3 = sub_1007E6F88();

  return v3;
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

  selfCopy = self;
  sub_1007E7098(v7, v9, location, length);
}

- (void)setAttributedMarkedText:(id)text selectedRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  textCopy = text;
  selfCopy = self;
  sub_1007E7310(text, location, length);
}

- (void)unmarkText
{
  selfCopy = self;
  sub_1007E74EC(selfCopy);
}

- (UITextPosition)beginningOfDocument
{
  selfCopy = self;
  v3 = sub_1007E7644();

  return v3;
}

- (UITextPosition)endOfDocument
{
  selfCopy = self;
  v3 = sub_1007E7694();

  return v3;
}

- (id)textRangeFromPosition:(id)position toPosition:(id)toPosition
{
  v6 = qword_1019F1570;
  positionCopy = position;
  toPositionCopy = toPosition;
  selfCopy = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1007E7744(selfCopy, &v12);

  v10 = v12;

  return v10;
}

- (id)positionFromPosition:(id)position offset:(int64_t)offset
{
  positionCopy = position;
  selfCopy = self;
  v8 = sub_1007E7978(positionCopy, offset);

  return v8;
}

- (id)positionFromPosition:(id)position inDirection:(int64_t)direction offset:(int64_t)offset
{
  positionCopy = position;
  selfCopy = self;
  v10 = sub_1007E7AF4(positionCopy, direction, offset);

  return v10;
}

- (int64_t)comparePosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  selfCopy = self;
  v9 = sub_1007E7C74(positionCopy, toPositionCopy);

  return v9;
}

- (int64_t)offsetFromPosition:(id)position toPosition:(id)toPosition
{
  positionCopy = position;
  toPositionCopy = toPosition;
  selfCopy = self;
  v9 = sub_1007E7CE4(positionCopy, toPositionCopy);

  return v9;
}

- (UITextInputDelegate)inputDelegate
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (UITextInputTokenizer)tokenizer
{
  v2 = [objc_allocWithZone(type metadata accessor for CRLTextInputResponder.CRLWPInputStringTokenizer()) initWithTextInput:self];

  return v2;
}

- (id)positionWithinRange:(id)range farthestInDirection:(int64_t)direction
{
  rangeCopy = range;
  selfCopy = self;
  v8 = sub_1007E7EE0(rangeCopy, direction);

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)position inDirection:(int64_t)direction
{
  v6 = qword_1019F1570;
  positionCopy = position;
  selfCopy = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1007E7FF8(selfCopy, direction, &v11);

  v9 = v11;

  return v9;
}

- (int64_t)baseWritingDirectionForPosition:(id)position inDirection:(int64_t)direction
{
  positionCopy = position;
  selfCopy = self;
  v7 = sub_1007EDFA4(positionCopy);

  return v7;
}

- (void)setBaseWritingDirection:(int64_t)direction forRange:(id)range
{
  rangeCopy = range;
  selfCopy = self;
  sub_1007E81A0(direction, rangeCopy);
}

- (CGRect)firstRectForRange:(id)range
{
  v3 = sub_1007E8588(self, a2, range, sub_1007E8324);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)position
{
  v3 = sub_1007E8588(self, a2, position, sub_1007E8460);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)selectionRectsForRange:(id)range
{
  rangeCopy = range;
  selfCopy = self;
  sub_1007E8608(rangeCopy);

  sub_100006370(0, &qword_101A012B0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)closestPositionToPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  v6 = sub_1007E87D8(x, y);

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)point withinRange:(id)range
{
  y = point.y;
  x = point.x;
  rangeCopy = range;
  selfCopy = self;
  v9 = sub_1007E88EC(rangeCopy, x, y);

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = qword_1019F1570;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1007E8A8C(selfCopy, &v9, x, y);

  v7 = v9;

  return v7;
}

- (BOOL)hasText
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v2)
  {
    selfCopy = self;
    textInputReceiver = [v2 textInputReceiver];
    if (textInputReceiver)
    {
      hasText = [textInputReceiver hasText];

      swift_unknownObjectRelease();
      return hasText;
    }
  }

  return 0;
}

- (void)beginTextInput
{
  selfCopy = self;
  sub_1007E8C64();
}

- (void)endTextInput:(id)input
{
  selfCopy = self;
  if (input)
  {
    selfCopy2 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    selfCopy3 = self;
  }

  v6 = *(selfCopy + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_resigningFirstResponder);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (v6)
    {
      v8 = 8320;
    }

    else
    {
      v8 = 0x2000;
    }

    v9 = Strong;
    [(CRLTextInputResponder *)Strong endEditingWithFlags:v8, v10, v11];

    selfCopy = v9;
  }

  sub_10000CAAC(&v10, &unk_1019F4D00);
}

- (BOOL)editorWantsPlainTextDelete
{
  selfCopy = self;
  v3 = sub_1007E9418();

  return v3 & 1;
}

- (void)deleteKeyPressed
{
  selfCopy = self;
  sub_1007E9574();
}

- (void)deleteBackward
{
  v2 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress;
  v3 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_textInputInProgress) = v5;
  selfCopy = self;
  sub_1007E9A24(selfCopy);
  v7 = *(self + v2);
  v4 = __OFSUB__(v7, 1);
  v8 = v7 - 1;
  if (v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  *(self + v2) = v8;
}

- (UIView)inputView
{
  selfCopy = self;
  v3 = sub_1007EA084();

  return v3;
}

- (NSArray)keyCommands
{
  selfCopy = self;
  v3 = sub_1007EA38C();

  if (v3)
  {
    sub_100006370(0, &qword_101A001C0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (id)keyCommandsForArrowsWithModifiersIn:(id)in
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007EE160();

  sub_100006370(0, &qword_101A001C0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)keyCommandForArrowIn:(id)in with:(int64_t)with
{
  v4 = [objc_opt_self() keyCommandWithInput:in modifierFlags:with action:"arrowKeyInputReceivedFrom:"];
  [v4 setWantsPriorityOverSystemBehavior:1];

  return v4;
}

- (NSArray)tirKeyCommands
{
  selfCopy = self;
  sub_1007EA690();

  sub_100006370(0, &qword_101A001C0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)arrowKeyInputReceivedFrom:(id)from
{
  fromCopy = from;
  selfCopy = self;
  sub_1007EAAD4(fromCopy);
}

- (id)targetForAction:(SEL)action withSender:(id)sender
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
    memset(v16, 0, sizeof(v16));
    selfCopy2 = self;
  }

  sub_1007EAC8C(action, v16, &v17);

  sub_10000CAAC(v16, &unk_1019F4D00);
  v8 = v18;
  if (v18)
  {
    v9 = sub_100020E58(&v17, v18);
    v10 = *(v8 - 8);
    v11 = __chkstk_darwin(v9);
    v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v10 + 8))(v13, v8);
    sub_100005070(&v17);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (void)setFloatingCursorHelper:(id)helper
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper);
  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper) = helper;
  helperCopy = helper;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  selfCopy = self;
  sub_1007EB074(x, y);
}

- (void)updateFloatingCursorAtPoint:(CGPoint)point
{
  y = point.y;
  x = point.x;
  v5 = qword_1019F1570;
  selfCopy = self;
  v7 = selfCopy;
  if (v5 != -1)
  {
    swift_once();
    selfCopy = v7;
  }

  sub_1007EB2CC(selfCopy, sub_100F99178, x, y);
}

- (void)endFloatingCursor
{
  v2 = qword_1019F1570;
  selfCopy = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper;
  v5 = *(selfCopy + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper);
  if (v5)
  {
    v6 = v5;
    sub_100F992C4(v6);

    v7 = *(selfCopy + v4);
  }

  else
  {
    v7 = 0;
  }

  *(selfCopy + v4) = 0;
}

- (CGRect)convertRectToTopResponderView:(CGRect)view
{
  v3 = sub_1007EB76C(self, view.origin.x, view.origin.y, view.size.width, view.size.height, a2, sub_1007EB5AC);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertPointToTopResponderView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  selfCopy = self;
  v6 = sub_1007EB5D0(x, y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)convertRectFromTopResponderView:(CGRect)view
{
  v3 = sub_1007EB76C(self, view.origin.x, view.origin.y, view.size.width, view.size.height, a2, sub_1007EB630);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertPointFromTopResponderView:(CGPoint)view
{
  y = view.y;
  x = view.x;
  selfCopy = self;
  v6 = sub_1007EB7F0(x, y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (UIView)topFirstResponderView
{
  selfCopy = self;
  v3 = sub_1007EB984();

  return v3;
}

- (UIView)textInputView
{
  selfCopy = self;
  v3 = sub_1007EBE60();

  return v3;
}

- (void)reloadForMathPaperChangesWithNotification:(id)notification
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_1007E4BF0();

  (*(v5 + 8))(v7, v4);
}

- (void)_startWritingToolsWithTool:(id)tool prompt:(id)prompt sender:(id)sender
{
  promptCopy = prompt;
  if (tool)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (promptCopy)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (sender)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(v15, 0, sizeof(v15));
    selfCopy = self;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!prompt)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  promptCopy = v12;
  if (!sender)
  {
    goto LABEL_7;
  }

LABEL_4:
  selfCopy2 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_8:
  sub_1007EC004(v8, v10, v11, promptCopy, v15);

  sub_10000CAAC(v15, &unk_1019F4D00);
}

- (_TtC8Freeform21CRLTextInputResponder)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (unint64_t)allowedWritingToolsResultOptions
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v2)
  {
    selfCopy = self;
    textInputReceiver = [v2 textInputReceiver];
    if (textInputReceiver)
    {
      allowedWritingToolsResultOptions = [textInputReceiver allowedWritingToolsResultOptions];

      swift_unknownObjectRelease();
      return allowedWritingToolsResultOptions;
    }
  }

  return 0;
}

- (int64_t)writingToolsBehavior
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v2)
  {
    selfCopy = self;
    textInputReceiver = [v2 textInputReceiver];
    if (textInputReceiver)
    {
      writingToolsBehavior = [textInputReceiver writingToolsBehavior];

      swift_unknownObjectRelease();
      return writingToolsBehavior;
    }
  }

  return -1;
}

- (void)didDismissWritingTools
{
  selfCopy = self;
  sub_1007EC5AC();
}

- (void)replaceRange:(id)range withAttributedText:(id)text
{
  v7 = type metadata accessor for CRLWPTextString();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v9 = text;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14.receiver = v8;
  v14.super_class = v7;
  textCopy = text;
  rangeCopy = range;
  selfCopy = self;
  v13 = [(CRLTextInputResponder *)&v14 init];
  [(CRLTextInputResponder *)selfCopy replaceWithRange:rangeCopy with:v13, v14.receiver, v14.super_class];
}

- (void)replaceRange:(id)range withText:(id)text
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = type metadata accessor for CRLWPTextString();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v11 = v6;
  *(v11 + 1) = v8;
  v11[16] = 0;
  v15.receiver = v10;
  v15.super_class = v9;
  rangeCopy = range;
  selfCopy = self;

  v14 = [(CRLTextInputResponder *)&v15 init];
  [(CRLTextInputResponder *)selfCopy replaceWithRange:rangeCopy with:v14, v15.receiver, v15.super_class];
}

- (void)replaceWithRange:(id)range with:(id)with
{
  rangeCopy = range;
  withCopy = with;
  selfCopy = self;
  sub_1007EC878(rangeCopy, withCopy);
}

- (void)insertText:(id)text
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = type metadata accessor for CRLWPTextString();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v9 = v4;
  *(v9 + 1) = v6;
  v9[16] = 0;
  v12.receiver = v8;
  v12.super_class = v7;
  selfCopy = self;

  v11 = [(CRLTextInputResponder *)&v12 init];
  [(CRLTextInputResponder *)selfCopy insertWithText:v11, v12.receiver, v12.super_class];
}

- (void)insertText:(id)text alternatives:(id)alternatives style:(int64_t)style
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = type metadata accessor for CRLWPTextString();
  v10 = objc_allocWithZone(v9);
  v11 = &v10[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v11 = v6;
  *(v11 + 1) = v8;
  v11[16] = 0;
  v14.receiver = v10;
  v14.super_class = v9;
  selfCopy = self;

  v13 = [(CRLTextInputResponder *)&v14 init];
  [(CRLTextInputResponder *)selfCopy insertWithText:v13, v14.receiver, v14.super_class];
}

- (void)insertAttributedText:(id)text
{
  v5 = type metadata accessor for CRLWPTextString();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v7 = text;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11.receiver = v6;
  v11.super_class = v5;
  textCopy = text;
  selfCopy = self;
  v10 = [(CRLTextInputResponder *)&v11 init];
  [(CRLTextInputResponder *)selfCopy insertWithText:v10, v11.receiver, v11.super_class];
}

- (void)insertWithText:(id)text
{
  textCopy = text;
  selfCopy = self;
  sub_1007ECC64(textCopy);
}

- (id)attributedTextInRange:(id)range
{
  rangeCopy = range;
  selfCopy = self;
  v6 = sub_1007ED2A0(rangeCopy);

  return v6;
}

- (id)textInRange:(id)range
{
  rangeCopy = range;
  selfCopy = self;
  sub_1007ED804(rangeCopy);
  v7 = v6;

  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (uint64_t)mathExpressionCompletionType
{
  standardUserDefaults = [objc_opt_self() standardUserDefaults];
  v1 = [standardUserDefaults integerForKey:@"CRLMathRecognitionMode"];

  v2 = sub_1005CC618(v1);
  if (v3)
  {
    return 0;
  }

  if (v2 < 4)
  {
    return qword_10147D230[v2];
  }

  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

@end