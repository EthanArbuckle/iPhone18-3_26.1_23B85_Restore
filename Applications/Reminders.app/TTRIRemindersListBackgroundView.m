@interface TTRIRemindersListBackgroundView
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4;
- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4;
- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6;
- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5;
- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4;
- (void)tapGestureAction:(id)a3;
@end

@implementation TTRIRemindersListBackgroundView

- (void)tapGestureAction:(id)a3
{
  if (a3)
  {
    v4 = self;
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
    v5 = self;
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

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_10056CFF0(v7);

  return v9 & 1;
}

- (void)_scribbleInteraction:(id)a3 requestElementsInRect:(CGRect)a4 completion:(id)a5
{
  v6 = _Block_copy(a5);
  sub_100058000(&qword_10076B780);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10062D420;
  v8 = *(&self->super.super.super.isa + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_scribbleElementIdentifier);
  *(v7 + 32) = v8;
  v9 = self;
  v10 = v8;
  v11 = NSNotFound.getter();
  sub_100058000(&qword_10078D780);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6[2](v6, isa, v11);

  _Block_release(v6);
}

- (CGRect)_scribbleInteraction:(id)a3 frameForElement:(id)a4
{
  v5 = a3;
  swift_unknownObjectRetain();
  v6 = self;
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

- (void)_scribbleInteraction:(id)a3 focusElement:(id)a4 initialFocusSelectionReferencePoint:(CGPoint)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  _Block_copy(v9);
  v10 = a3;
  swift_unknownObjectRetain();
  v11 = self;
  sub_10056D21C(a4, v11, v9);
  _Block_release(v9);
  _Block_release(v9);

  swift_unknownObjectRelease();
}

- (void)_scribbleInteraction:(id)a3 willBeginWritingInElement:(id)a4
{
  v5 = self + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 24);
    v8 = self;
    v7();
    swift_unknownObjectRelease();
  }
}

- (void)_scribbleInteraction:(id)a3 didFinishWritingInElement:(id)a4
{
  v5 = self + OBJC_IVAR____TtC9Reminders31TTRIRemindersListBackgroundView_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 32);
    v8 = self;
    v7();
    swift_unknownObjectRelease();
  }
}

@end