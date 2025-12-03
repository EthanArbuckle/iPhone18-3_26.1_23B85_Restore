@interface CNTipsHelper
+ (_TtC10ContactsUI12CNTipsHelper)shared;
- (UIView)currentTipView;
- (void)setCurrentTipView:(id)view;
- (void)tipKitSetSiriTipContext:(id)context;
- (void)tipKitStartObservation:(id)observation;
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

- (void)tipKitSetSiriTipContext:(id)context
{
  qword_1EAF71BB0 = sub_199DF9F8C();
  qword_1EAF71BB8 = v3;
}

- (void)tipKitStartObservation:(id)observation
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_199A86434(observation);
  swift_unknownObjectRelease();
}

- (void)tipKitStopObservation
{
  selfCopy = self;
  sub_199A90270(selfCopy, v2);
}

- (void)setCurrentTipView:(id)view
{
  v5 = OBJC_IVAR____TtC10ContactsUI12CNTipsHelper_currentTipView;
  swift_beginAccess();
  v6 = *(&self->super.isa + v5);
  *(&self->super.isa + v5) = view;
  viewCopy = view;
}

@end