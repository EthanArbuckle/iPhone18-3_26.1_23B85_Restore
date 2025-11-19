@interface CRLTextInputResponder
- (BOOL)becomeFirstResponder;
- (BOOL)editorWantsPlainTextDelete;
- (BOOL)hasText;
- (BOOL)iccAllowsTextEditing;
- (BOOL)keyboardIsAnimating;
- (BOOL)p_accessibilityShouldCheckAncestorCanPerformAction:(SEL)a3 withSender:(id)a4;
- (BOOL)resignFirstResponder;
- (BOOL)shouldChangeFirstResponderFor:(id)a3;
- (CGPoint)convertPointFromTopResponderView:(CGPoint)a3;
- (CGPoint)convertPointToTopResponderView:(CGPoint)a3;
- (CGRect)_accessibilitySpeakRectForRange:(id)a3;
- (CGRect)caretRectForPosition:(id)a3;
- (CGRect)convertRectFromTopResponderView:(CGRect)a3;
- (CGRect)convertRectToTopResponderView:(CGRect)a3;
- (CGRect)firstRectForRange:(id)a3;
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
- (id)attributedTextInRange:(id)a3;
- (id)characterRangeAtPoint:(CGPoint)a3;
- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4;
- (id)closestPositionToPoint:(CGPoint)a3;
- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4;
- (id)keyCommandForArrowIn:(id)a3 with:(int64_t)a4;
- (id)keyCommandsForArrowsWithModifiersIn:(id)a3;
- (id)nextResponder;
- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5;
- (id)positionFromPosition:(id)a3 offset:(int64_t)a4;
- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4;
- (id)selectionRectsForRange:(id)a3;
- (id)targetForAction:(SEL)a3 withSender:(id)a4;
- (id)textInRange:(id)a3;
- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4;
- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4;
- (int64_t)comparePosition:(id)a3 toPosition:(id)a4;
- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4;
- (int64_t)writingToolsBehavior;
- (uint64_t)mathExpressionCompletionType;
- (unint64_t)allowedWritingToolsResultOptions;
- (void)_startWritingToolsWithTool:(id)a3 prompt:(id)a4 sender:(id)a5;
- (void)applicationDidEnterBackgroundWithNotification:(id)a3;
- (void)applicationWillEnterForegroundWithNotification:(id)a3;
- (void)arrowKeyInputReceivedFrom:(id)a3;
- (void)beginFloatingCursorAtPoint:(CGPoint)a3;
- (void)beginTextInput;
- (void)deleteBackward;
- (void)deleteKeyPressed;
- (void)didDismissWritingTools;
- (void)endFloatingCursor;
- (void)endTextInput:(id)a3;
- (void)firstResponderChangedWithNotification:(id)a3;
- (void)forwardInvocation:(id)a3;
- (void)insertAttributedText:(id)a3;
- (void)insertText:(id)a3;
- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5;
- (void)insertWithText:(id)a3;
- (void)reloadForMathPaperChangesWithNotification:(id)a3;
- (void)reloadInputViews;
- (void)replaceRange:(id)a3 withAttributedText:(id)a4;
- (void)replaceRange:(id)a3 withText:(id)a4;
- (void)replaceWithRange:(id)a3 with:(id)a4;
- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4;
- (void)setEditor:(id)a3 withFlags:(unint64_t)a4;
- (void)setFloatingCursorHelper:(id)a3;
- (void)setInputLogger:(id)a3;
- (void)setMarkedText:(id)a3 selectedRange:(_NSRange)a4;
- (void)setNeedsInputViewsReloaded;
- (void)setSelectedTextRange:(id)a3;
- (void)textDidChange;
- (void)textInput:(id)a3;
- (void)textSelectionDidChange;
- (void)textSelectionWillChange;
- (void)textWillChange;
- (void)unmarkText;
- (void)updateFloatingCursorAtPoint:(CGPoint)a3;
@end

@implementation CRLTextInputResponder

- (id)nextResponder
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)forwardInvocation:(id)a3
{
  v4 = a3;
  v15 = 0;
  [v4 getArgument:&v15 atIndex:2];
  if (![CRLCanvasEditor physicalKeyboardIsSender:v15]|| ![(CRLTextInputResponder *)self isIgnoringKeyboardInput])
  {
    v5 = [v4 selector];
    v6 = [(CRLTextInputResponder *)self icc];
    v7 = [v6 layerHost];
    v8 = [v7 asiOSCVC];

    if ([v8 respondsToSelector:v5 withSender:v15])
    {
      v9 = +[UIMenuController sharedMenuController];
      [v9 hideMenu];

      [v4 invokeWithTarget:v8];
    }

    else if ((v15 == self || [@"UIEditingInteraction" isEqual:?]) && (v5 == "cut:" || v5 == "copy:" || v5 == "paste:"))
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

    else if (![(CRLTextInputResponder *)self p_workAround17828487ForSelector:v5])
    {
      [(CRLTextInputResponder *)self doesNotRecognizeSelector:v5];
    }
  }
}

- (BOOL)p_accessibilityShouldCheckAncestorCanPerformAction:(SEL)a3 withSender:(id)a4
{
  v4 = NSStringFromSelector(a3);
  v5 = [&off_1018E1308 containsObject:v4];

  return v5;
}

- (id)_crlaxEditingTextRep
{
  v13 = 0;
  v2 = [(CRLTextInputResponder *)self editor];
  v3 = objc_opt_class();
  v4 = __CRLAccessibilityCastAsClass(v3, v2, 1, &v13);
  if (v13 == 1 || (v5 = v4, v2, v12 = 0, [v5 editingReps], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "anyObject"), v7 = objc_claimAutoreleasedReturnValue(), v6, v8 = objc_opt_class(), __CRLAccessibilityCastAsClass(v8, v7, 1, &v12), v9 = objc_claimAutoreleasedReturnValue(), v12 == 1))
  {
    abort();
  }

  v10 = v9;

  return v10;
}

- (id)_accessibilitySpeakTextSelectionViews
{
  v2 = [(CRLTextInputResponder *)self _crlaxEditingTextRep];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 crlaxValueForKey:@"_selectionHighlightLayer"];
    v5 = [v3 overlayRenderables];
    v35 = 0;
    v6 = v3;
    v7 = objc_opt_class();
    v8 = __CRLAccessibilityCastAsSafeCategory(v7, v6, 1, &v35);
    if (v35 == 1)
    {
      abort();
    }

    v9 = v8;

    v10 = [v9 crlaxRetainedTarget];
    v11 = [v10 knobs];

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
    v14 = v5;
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

          v19 = [*(*(&v31 + 1) + 8 * i) layer];
          [v13 addObject:v19];
        }

        v16 = [v14 countByEnumeratingWithState:&v31 objects:v37 count:16];
      }

      while (v16);
    }

    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v20 = v11;
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

- (CGRect)_accessibilitySpeakRectForRange:(id)a3
{
  v4 = a3;
  v34 = 0;
  v35 = &v34;
  v37 = &unk_1016A8115;
  v36 = 0x4010000000;
  size = CGRectZero.size;
  origin = CGRectZero.origin;
  v39 = size;
  v33 = 0;
  v6 = v4;
  v7 = objc_opt_class();
  v8 = __CRLAccessibilityCastAsClass(v7, v6, 1, &v33);
  if (v33 == 1)
  {
    goto LABEL_9;
  }

  v9 = v8;

  if (v9)
  {
    v10 = [(CRLTextInputResponder *)self _crlaxEditingTextRep];
    v11 = v10;
    if (!v10)
    {
LABEL_7:

      goto LABEL_8;
    }

    v33 = 0;
    v12 = v10;
    v13 = objc_opt_class();
    v14 = __CRLAccessibilityCastAsSafeCategory(v13, v12, 1, &v33);
    if (v33 != 1)
    {
      v15 = v14;

      v16 = [v15 crlaxRetainedTarget];
      v17 = [v16 canvas];
      v18 = [v17 canvasController];

      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_10026DC7C;
      v28[3] = &unk_101842C68;
      v29 = v9;
      v32 = &v34;
      v30 = v12;
      v19 = v18;
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
  v2 = self;
  v3 = sub_1007E4714();

  return v3;
}

- (UIView)selectionContainerViewAboveText
{
  v2 = self;
  v3 = sub_1007E4764();

  return v3;
}

- (void)setInputLogger:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputLogger);
  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_inputLogger) = a3;
  v3 = a3;
}

- (BOOL)iccAllowsTextEditing
{
  v2 = self;
  v3 = sub_1007E4940();

  return v3 & 1;
}

- (BOOL)shouldChangeFirstResponderFor:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1007E4A2C(a3);
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
  v2 = self;
  sub_1007E4BF0();
}

- (BOOL)keyboardIsAnimating
{
  v2 = objc_opt_self();

  return [v2 keyboardIsAnimating];
}

- (void)reloadInputViews
{
  v2 = self;
  sub_1007E4FC0();
  v3.receiver = v2;
  v3.super_class = type metadata accessor for CRLTextInputResponder();
  [(CRLTextInputResponder *)&v3 reloadInputViews];
}

- (void)textWillChange
{
  v2 = self;
  sub_1007E529C(v2, &selRef_textWillChange_);
}

- (void)textDidChange
{
  v2 = self;
  sub_1007E529C(v2, &selRef_textDidChange_);
}

- (void)setEditor:(id)a3 withFlags:(unint64_t)a4
{
  v4 = a4;
  swift_unknownObjectRetain();
  v7 = self;
  sub_1007E5330(a3, v4);
  swift_unknownObjectRelease();
}

- (CRLInteractiveCanvasController)icc
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)applicationDidEnterBackgroundWithNotification:(id)a3
{
  v3 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v3)
  {
    v5 = self;
    v4 = [v3 textInputReceiver];
    if (v4)
    {
      [v4 abortMarkedText];
      swift_unknownObjectRelease();
    }
  }
}

- (void)applicationWillEnterForegroundWithNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007EDF30();
}

- (void)firstResponderChangedWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1007E5D40();

  (*(v5 + 8))(v7, v4);
}

- (BOOL)becomeFirstResponder
{
  v2 = self;
  v3 = sub_1007E5F08();

  return v3 & 1;
}

- (BOOL)resignFirstResponder
{
  v2 = self;
  v3 = sub_1007E6140();

  return v3 & 1;
}

- (void)textSelectionWillChange
{
  v2 = self;
  sub_1007E6454(v2, &selRef_selectionWillChange_);
}

- (void)textSelectionDidChange
{
  v2 = self;
  sub_1007E6454(v2, &selRef_selectionDidChange_);
}

- (void)textInput:(id)a3
{
  v4 = _Block_copy(a3);
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
  v13 = self;
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
  v2 = self;
  v3 = sub_1007E65F0();

  return v3;
}

- (void)setSelectedTextRange:(id)a3
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
  v9 = a3;
  v12 = self;
  sub_1007E66F4(a3, v12);

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
  v2 = self;
  v3 = sub_1007E6F88();

  return v3;
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

  v10 = self;
  sub_1007E7098(v7, v9, location, length);
}

- (void)setAttributedMarkedText:(id)a3 selectedRange:(_NSRange)a4
{
  length = a4.length;
  location = a4.location;
  v8 = a3;
  v9 = self;
  sub_1007E7310(a3, location, length);
}

- (void)unmarkText
{
  v2 = self;
  sub_1007E74EC(v2);
}

- (UITextPosition)beginningOfDocument
{
  v2 = self;
  v3 = sub_1007E7644();

  return v3;
}

- (UITextPosition)endOfDocument
{
  v2 = self;
  v3 = sub_1007E7694();

  return v3;
}

- (id)textRangeFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = qword_1019F1570;
  v7 = a3;
  v8 = a4;
  v9 = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1007E7744(v9, &v12);

  v10 = v12;

  return v10;
}

- (id)positionFromPosition:(id)a3 offset:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1007E7978(v6, a4);

  return v8;
}

- (id)positionFromPosition:(id)a3 inDirection:(int64_t)a4 offset:(int64_t)a5
{
  v8 = a3;
  v9 = self;
  v10 = sub_1007E7AF4(v8, a4, a5);

  return v10;
}

- (int64_t)comparePosition:(id)a3 toPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1007E7C74(v6, v7);

  return v9;
}

- (int64_t)offsetFromPosition:(id)a3 toPosition:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1007E7CE4(v6, v7);

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

- (id)positionWithinRange:(id)a3 farthestInDirection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1007E7EE0(v6, a4);

  return v8;
}

- (id)characterRangeByExtendingPosition:(id)a3 inDirection:(int64_t)a4
{
  v6 = qword_1019F1570;
  v7 = a3;
  v8 = self;
  if (v6 != -1)
  {
    swift_once();
  }

  sub_1007E7FF8(v8, a4, &v11);

  v9 = v11;

  return v9;
}

- (int64_t)baseWritingDirectionForPosition:(id)a3 inDirection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1007EDFA4(v5);

  return v7;
}

- (void)setBaseWritingDirection:(int64_t)a3 forRange:(id)a4
{
  v6 = a4;
  v7 = self;
  sub_1007E81A0(a3, v6);
}

- (CGRect)firstRectForRange:(id)a3
{
  v3 = sub_1007E8588(self, a2, a3, sub_1007E8324);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGRect)caretRectForPosition:(id)a3
{
  v3 = sub_1007E8588(self, a2, a3, sub_1007E8460);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (id)selectionRectsForRange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007E8608(v4);

  sub_100006370(0, &qword_101A012B0);
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (id)closestPositionToPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1007E87D8(x, y);

  return v6;
}

- (id)closestPositionToPoint:(CGPoint)a3 withinRange:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v8 = self;
  v9 = sub_1007E88EC(v7, x, y);

  return v9;
}

- (id)characterRangeAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = qword_1019F1570;
  v6 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  sub_1007E8A8C(v6, &v9, x, y);

  v7 = v9;

  return v7;
}

- (BOOL)hasText
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v2)
  {
    v3 = self;
    v4 = [v2 textInputReceiver];
    if (v4)
    {
      v5 = [v4 hasText];

      swift_unknownObjectRelease();
      return v5;
    }
  }

  return 0;
}

- (void)beginTextInput
{
  v2 = self;
  sub_1007E8C64();
}

- (void)endTextInput:(id)a3
{
  v3 = self;
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
    v5 = self;
  }

  v6 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_resigningFirstResponder);
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

    v3 = v9;
  }

  sub_10000CAAC(&v10, &unk_1019F4D00);
}

- (BOOL)editorWantsPlainTextDelete
{
  v2 = self;
  v3 = sub_1007E9418();

  return v3 & 1;
}

- (void)deleteKeyPressed
{
  v2 = self;
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
  v9 = self;
  sub_1007E9A24(v9);
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
  v2 = self;
  v3 = sub_1007EA084();

  return v3;
}

- (NSArray)keyCommands
{
  v2 = self;
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

- (id)keyCommandsForArrowsWithModifiersIn:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = self;
  sub_1007EE160();

  sub_100006370(0, &qword_101A001C0);
  v5.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v5.super.isa;
}

- (id)keyCommandForArrowIn:(id)a3 with:(int64_t)a4
{
  v4 = [objc_opt_self() keyCommandWithInput:a3 modifierFlags:a4 action:"arrowKeyInputReceivedFrom:"];
  [v4 setWantsPriorityOverSystemBehavior:1];

  return v4;
}

- (NSArray)tirKeyCommands
{
  v2 = self;
  sub_1007EA690();

  sub_100006370(0, &qword_101A001C0);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (void)arrowKeyInputReceivedFrom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007EAAD4(v4);
}

- (id)targetForAction:(SEL)a3 withSender:(id)a4
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
    memset(v16, 0, sizeof(v16));
    v7 = self;
  }

  sub_1007EAC8C(a3, v16, &v17);

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

- (void)setFloatingCursorHelper:(id)a3
{
  v4 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper);
  *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper) = a3;
  v3 = a3;
}

- (void)beginFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  sub_1007EB074(x, y);
}

- (void)updateFloatingCursorAtPoint:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = qword_1019F1570;
  v6 = self;
  v7 = v6;
  if (v5 != -1)
  {
    swift_once();
    v6 = v7;
  }

  sub_1007EB2CC(v6, sub_100F99178, x, y);
}

- (void)endFloatingCursor
{
  v2 = qword_1019F1570;
  v3 = self;
  if (v2 != -1)
  {
    swift_once();
  }

  v4 = OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper;
  v5 = *(v3 + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_floatingCursorHelper);
  if (v5)
  {
    v6 = v5;
    sub_100F992C4(v6);

    v7 = *(v3 + v4);
  }

  else
  {
    v7 = 0;
  }

  *(v3 + v4) = 0;
}

- (CGRect)convertRectToTopResponderView:(CGRect)a3
{
  v3 = sub_1007EB76C(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, sub_1007EB5AC);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertPointToTopResponderView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
  v6 = sub_1007EB5D0(x, y);
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (CGRect)convertRectFromTopResponderView:(CGRect)a3
{
  v3 = sub_1007EB76C(self, a3.origin.x, a3.origin.y, a3.size.width, a3.size.height, a2, sub_1007EB630);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)convertPointFromTopResponderView:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v5 = self;
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
  v2 = self;
  v3 = sub_1007EB984();

  return v3;
}

- (UIView)textInputView
{
  v2 = self;
  v3 = sub_1007EBE60();

  return v3;
}

- (void)reloadForMathPaperChangesWithNotification:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1007E4BF0();

  (*(v5 + 8))(v7, v4);
}

- (void)_startWritingToolsWithTool:(id)a3 prompt:(id)a4 sender:(id)a5
{
  v6 = a4;
  if (a3)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v10 = v9;
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_7:
    memset(v15, 0, sizeof(v15));
    v14 = self;
    goto LABEL_8;
  }

  v8 = 0;
  v10 = 0;
  if (!a4)
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v12;
  if (!a5)
  {
    goto LABEL_7;
  }

LABEL_4:
  v13 = self;
  swift_unknownObjectRetain();
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
LABEL_8:
  sub_1007EC004(v8, v10, v11, v6, v15);

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
    v3 = self;
    v4 = [v2 textInputReceiver];
    if (v4)
    {
      v5 = [v4 allowedWritingToolsResultOptions];

      swift_unknownObjectRelease();
      return v5;
    }
  }

  return 0;
}

- (int64_t)writingToolsBehavior
{
  v2 = *(self + OBJC_IVAR____TtC8Freeform21CRLTextInputResponder_editor);
  if (v2)
  {
    v3 = self;
    v4 = [v2 textInputReceiver];
    if (v4)
    {
      v5 = [v4 writingToolsBehavior];

      swift_unknownObjectRelease();
      return v5;
    }
  }

  return -1;
}

- (void)didDismissWritingTools
{
  v2 = self;
  sub_1007EC5AC();
}

- (void)replaceRange:(id)a3 withAttributedText:(id)a4
{
  v7 = type metadata accessor for CRLWPTextString();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v9 = a4;
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14.receiver = v8;
  v14.super_class = v7;
  v10 = a4;
  v11 = a3;
  v12 = self;
  v13 = [(CRLTextInputResponder *)&v14 init];
  [(CRLTextInputResponder *)v12 replaceWithRange:v11 with:v13, v14.receiver, v14.super_class];
}

- (void)replaceRange:(id)a3 withText:(id)a4
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
  v12 = a3;
  v13 = self;

  v14 = [(CRLTextInputResponder *)&v15 init];
  [(CRLTextInputResponder *)v13 replaceWithRange:v12 with:v14, v15.receiver, v15.super_class];
}

- (void)replaceWithRange:(id)a3 with:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1007EC878(v6, v7);
}

- (void)insertText:(id)a3
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
  v10 = self;

  v11 = [(CRLTextInputResponder *)&v12 init];
  [(CRLTextInputResponder *)v10 insertWithText:v11, v12.receiver, v12.super_class];
}

- (void)insertText:(id)a3 alternatives:(id)a4 style:(int64_t)a5
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
  v12 = self;

  v13 = [(CRLTextInputResponder *)&v14 init];
  [(CRLTextInputResponder *)v12 insertWithText:v13, v14.receiver, v14.super_class];
}

- (void)insertAttributedText:(id)a3
{
  v5 = type metadata accessor for CRLWPTextString();
  v6 = objc_allocWithZone(v5);
  v7 = &v6[OBJC_IVAR____TtC8Freeform15CRLWPTextString_text];
  *v7 = a3;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v11.receiver = v6;
  v11.super_class = v5;
  v8 = a3;
  v9 = self;
  v10 = [(CRLTextInputResponder *)&v11 init];
  [(CRLTextInputResponder *)v9 insertWithText:v10, v11.receiver, v11.super_class];
}

- (void)insertWithText:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007ECC64(v4);
}

- (id)attributedTextInRange:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_1007ED2A0(v4);

  return v6;
}

- (id)textInRange:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1007ED804(v4);
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
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = [v0 integerForKey:@"CRLMathRecognitionMode"];

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