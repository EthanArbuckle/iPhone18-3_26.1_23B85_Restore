@interface ShowClockIntentHandler
- (_TtC15ClockFlowPlugin22ShowClockIntentHandler)init;
- (void)confirmShowClock:(id)a3 completion:(id)a4;
- (void)handleShowClock:(id)a3 completion:(id)a4;
@end

@implementation ShowClockIntentHandler

- (void)confirmShowClock:(id)a3 completion:(id)a4
{
  v4 = _Block_copy(a4);
  v5 = [objc_allocWithZone(type metadata accessor for ShowClockIntentResponse()) init];
  v6 = OBJC_IVAR___ShowClockIntentResponse_code;
  swift_beginAccess();
  *&v5[v6] = 1;
  [v5 setUserActivity:0];
  v4[2](v4, v5);
  _Block_release(v4);
}

- (void)handleShowClock:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = a3;
  v8 = self;
  sub_309C(v7, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (_TtC15ClockFlowPlugin22ShowClockIntentHandler)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ShowClockIntentHandler();
  return [(ShowClockIntentHandler *)&v3 init];
}

@end