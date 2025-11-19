@interface CNTipsHelper
+ (_TtC10ContactsUI12CNTipsHelper)shared;
- (UIView)currentTipView;
- (void)setCurrentTipView:(id)a3;
- (void)tipKitSetSiriTipContext:(id)a3;
- (void)tipKitStartObservation:(id)a3;
- (void)tipKitStopObservation;
@end

@implementation CNTipsHelper

+ (_TtC10ContactsUI12CNTipsHelper)shared
{
  if (qword_1EAF71BF8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAF71C00;

  return v3;
}

- (UIView)currentTipView
{
  v3 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)tipKitSetSiriTipContext:(id)a3
{
  qword_1EAF71BB0 = sub_199DF9F8C();
  qword_1EAF71BB8 = v3;
}

- (void)tipKitStartObservation:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_199A86434(a3);
  swift_unknownObjectRelease();
}

- (void)tipKitStopObservation
{
  v3 = self;
  sub_199A90270(v3, v2);
}

- (void)setCurrentTipView:(id)a3
{
  v5 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = a3;
  v7 = a3;
}

@end