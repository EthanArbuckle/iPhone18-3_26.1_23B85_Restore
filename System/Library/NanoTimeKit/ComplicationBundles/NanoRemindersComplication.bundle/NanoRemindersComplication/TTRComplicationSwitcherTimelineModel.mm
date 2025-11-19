@interface TTRComplicationSwitcherTimelineModel
- (TTRComplicationTimelineModelEntry)currentEntry;
- (_TtC25NanoRemindersComplicationP33_223A9DD7C06B514C3D1F54AF27D67BC936TTRComplicationSwitcherTimelineModel)init;
@end

@implementation TTRComplicationSwitcherTimelineModel

- (TTRComplicationTimelineModelEntry)currentEntry
{
  v2 = sub_6AD4();

  return v2;
}

- (_TtC25NanoRemindersComplicationP33_223A9DD7C06B514C3D1F54AF27D67BC936TTRComplicationSwitcherTimelineModel)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRComplicationSwitcherTimelineModel();
  return [(TTRComplicationSwitcherTimelineModel *)&v3 init];
}

@end