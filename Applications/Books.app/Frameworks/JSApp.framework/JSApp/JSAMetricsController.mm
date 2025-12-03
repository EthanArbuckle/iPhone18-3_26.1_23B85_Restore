@interface JSAMetricsController
- (id)newSuspensionAssertion;
- (void)countingAssertProviderTransitionToNonZero:(id)zero;
- (void)countingAssertProviderTransitionToZero:(id)zero;
- (void)flushUnreportedEvents;
- (void)recordEvent:(id)event :(id)a4;
- (void)recordPersonalizedEvent:(id)event :(id)a4;
- (void)startSubmissionIfAllowed;
@end

@implementation JSAMetricsController

- (void)startSubmissionIfAllowed
{
  selfCopy = self;
  sub_67208();
}

- (id)newSuspensionAssertion
{
  result = *(&self->super.isa + OBJC_IVAR___JSAMetricsController_suspensionAssertionProvider);
  if (result)
  {
    return [result newAssertion];
  }

  __break(1u);
  return result;
}

- (void)recordEvent:(id)event :(id)a4
{
  v5 = sub_843AC();
  v7 = v6;
  v8 = sub_8434C();
  if (v5 == 0xD000000000000010 && 0x800000000009DA20 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_84BEC();
  }

  selfCopy = self;
  sub_6747C(v8, v5, v7, v9 & 1);
}

- (void)recordPersonalizedEvent:(id)event :(id)a4
{
  v5 = sub_843AC();
  v7 = v6;
  v8 = sub_8434C();
  selfCopy = self;
  sub_6747C(v8, v5, v7, 1);
}

- (void)flushUnreportedEvents
{
  v3 = sub_2805C(&qword_CA5E8, &qword_A0850);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v11 - v5;
  v7 = sub_8468C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v8;
  selfCopy = self;
  sub_3BBC8(0, 0, v6, &unk_A1DE0, v9);

  sub_692E0(v6);
}

- (void)countingAssertProviderTransitionToNonZero:(id)zero
{
  zeroCopy = zero;
  selfCopy = self;
  _s5JSApp17MetricsControllerC32countingAssertProviderTransition9toNonZeroySo019BUCountingAssertionF0C_tF_0();
}

- (void)countingAssertProviderTransitionToZero:(id)zero
{
  zeroCopy = zero;
  selfCopy = self;
  _s5JSApp17MetricsControllerC32countingAssertProviderTransition6toZeroySo019BUCountingAssertionF0C_tF_0();
}

@end