@interface TTRIRemindersListBackgroundView
- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch;
- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element;
- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element;
- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion;
- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element;
- (void)tapGestureAction:(id)action;
@end

@implementation TTRIRemindersListBackgroundView

- (void)tapGestureAction:(id)action
{
  if (action)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    if (UIAccessibilityIsVoiceOverRunning())
    {
      goto LABEL_7;
    }
  }

  else
  {
    memset(v9, 0, sizeof(v9));
    selfCopy2 = self;
    if (UIAccessibilityIsVoiceOverRunning())
    {
LABEL_7:

      goto LABEL_8;
    }
  }

  v6 = self + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  v7 = *(v6 + 1);
  ObjectType = swift_getObjectType();
  (*(v7 + 8))(self, ObjectType, v7);

  swift_unknownObjectRelease();
LABEL_8:
  sub_10000B070(v9);
}

- (BOOL)gestureRecognizer:(id)recognizer shouldReceiveTouch:(id)touch
{
  recognizerCopy = recognizer;
  touchCopy = touch;
  selfCopy = self;
  v9 = sub_10056CFF0(touchCopy);

  return v9 & 1;
}

- (void)_scribbleInteraction:(id)interaction requestElementsInRect:(CGRect)rect completion:(id)completion
{
  v6 = _Block_copy(completion);
  sub_100058000(&qword_10076B780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D420;
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier);
  *(v7 + 32) = v8;
  selfCopy = self;
  v10 = v8;
  v11 = NSNotFound.getter();
  sub_100058000(&qword_10078D780);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6[2](v6, isa, v11);

  _Block_release(v6);
}

- (CGRect)_scribbleInteraction:(id)interaction frameForElement:(id)element
{
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  v7 = sub_10056D130();
  v9 = v8;
  v11 = v10;
  v13 = v12;

  swift_unknownObjectRelease();
  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (void)_scribbleInteraction:(id)interaction focusElement:(id)element initialFocusSelectionReferencePoint:(CGPoint)point completion:(id)completion
{
  v9 = _Block_copy(completion);
  _Block_copy(v9);
  interactionCopy = interaction;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10056D21C(element, selfCopy, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)_scribbleInteraction:(id)interaction willBeginWritingInElement:(id)element
{
  v5 = self + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 24);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)_scribbleInteraction:(id)interaction didFinishWritingInElement:(id)element
{
  v5 = self + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 32);
    selfCopy = self;
    v7();
    swift_unknownObjectRelease();
  }
}

@end