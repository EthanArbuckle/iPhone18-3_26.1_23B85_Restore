@interface TTRIComplicationSwitcherTimelineModelSource
- (TTRComplicationTimelineModel)model;
- (TTRComplicationTimelineModelSourceDelegate)delegate;
- (_TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource)init;
- (void)setModel:(id)model;
@end

@implementation TTRIComplicationSwitcherTimelineModelSource

- (_TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource)init
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model) = [objc_allocWithZone(type metadata accessor for TTRComplicationSwitcherTimelineModel()) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for TTRIComplicationSwitcherTimelineModelSource();
  return [(TTRIComplicationSwitcherTimelineModelSource *)&v4 init];
}

- (TTRComplicationTimelineModel)model
{
  v3 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model;
  swift_beginAccess();
  v4 = *(self + v3);
  v5 = swift_unknownObjectRetain();

  return v5;
}

- (void)setModel:(id)model
{
  v5 = OBJC_IVAR____TtC25NanoRemindersComplication43TTRIComplicationSwitcherTimelineModelSource_model;
  swift_beginAccess();
  v6 = *(self + v5);
  *(self + v5) = model;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (TTRComplicationTimelineModelSourceDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end