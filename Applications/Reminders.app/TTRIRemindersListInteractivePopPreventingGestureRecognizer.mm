@interface TTRIRemindersListInteractivePopPreventingGestureRecognizer
- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer;
- (_TtC9Reminders58TTRIRemindersListInteractivePopPreventingGestureRecognizer)initWithTarget:(id)target action:(SEL)action;
- (void)touchesBegan:(id)began withEvent:(id)event;
@end

@implementation TTRIRemindersListInteractivePopPreventingGestureRecognizer

- (_TtC9Reminders58TTRIRemindersListInteractivePopPreventingGestureRecognizer)initWithTarget:(id)target action:(SEL)action
{
  if (target)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1002DE8F0(v6, action);
}

- (void)touchesBegan:(id)began withEvent:(id)event
{
  sub_1002DEE84();
  sub_1002DEED0();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  LOBYTE(self) = sub_1002DEB88(v5);

  if (self)
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  [(TTRIRemindersListInteractivePopPreventingGestureRecognizer *)selfCopy setState:v6];
}

- (BOOL)gestureRecognizer:(id)recognizer shouldBeRequiredToFailByGestureRecognizer:(id)gestureRecognizer
{
  recognizerCopy = recognizer;
  gestureRecognizerCopy = gestureRecognizer;
  selfCopy = self;
  v9 = sub_1002DEDD8(gestureRecognizerCopy);

  return v9 & 1;
}

@end