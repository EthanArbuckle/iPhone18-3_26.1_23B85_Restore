@interface TTRIRemindersListInteractivePopPreventingGestureRecognizer
- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4;
- (_TtC9Reminders58TTRIRemindersListInteractivePopPreventingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4;
- (void)touchesBegan:(id)a3 withEvent:(id)a4;
@end

@implementation TTRIRemindersListInteractivePopPreventingGestureRecognizer

- (_TtC9Reminders58TTRIRemindersListInteractivePopPreventingGestureRecognizer)initWithTarget:(id)a3 action:(SEL)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1002DE8F0(v6, a4);
}

- (void)touchesBegan:(id)a3 withEvent:(id)a4
{
  sub_1002DEE84();
  sub_1002DEED0();
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = self;
  LOBYTE(self) = sub_1002DEB88(v5);

  if (self)
  {
    v6 = 1;
  }

  else
  {
    v6 = 5;
  }

  [(TTRIRemindersListInteractivePopPreventingGestureRecognizer *)v7 setState:v6];
}

- (BOOL)gestureRecognizer:(id)a3 shouldBeRequiredToFailByGestureRecognizer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_1002DEDD8(v7);

  return v9 & 1;
}

@end