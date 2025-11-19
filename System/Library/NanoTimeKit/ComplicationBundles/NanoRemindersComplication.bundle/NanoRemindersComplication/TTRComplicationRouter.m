@interface TTRComplicationRouter
- (_TtC25NanoRemindersComplication21TTRComplicationRouter)init;
- (id)launchURLForTimelineWithEntryCount:(int64_t)a3;
@end

@implementation TTRComplicationRouter

- (_TtC25NanoRemindersComplication21TTRComplicationRouter)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for TTRComplicationRouter();
  return [(TTRComplicationRouter *)&v3 init];
}

- (id)launchURLForTimelineWithEntryCount:(int64_t)a3
{
  v5 = sub_7E50();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = self;
  TTRComplicationRouter.launchURLForTimeline(withEntryCount:)(a3, v9);

  sub_7E40(v11);
  v13 = v12;
  (*(v6 + 8))(v9, v5);

  return v13;
}

@end