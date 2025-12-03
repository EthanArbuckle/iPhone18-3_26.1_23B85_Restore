@interface TodayBannerEventTracker
- (_TtC10NewsToday223TodayBannerEventTracker)init;
- (void)submitEventsIfNeededWithCompletion:(id)completion;
- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state;
- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state;
- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state;
- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state;
@end

@implementation TodayBannerEventTracker

- (void)widgetDidAppearAtDate:(id)date withTrackableWidgetState:(id)state
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100051444(selfCopy, state);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
}

- (void)userEngagedWithWidgetAtDate:(id)date actionURL:(id)l trackableWidgetState:(id)state
{
  v8 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1000C95A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  if (l)
  {
    sub_1000C9440();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = sub_1000C9480();
  (*(*(v16 - 8) + 56))(v10, v15, 1, v16);
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100051860(selfCopy, v10, state);
  swift_unknownObjectRelease();

  sub_100031844(v10, &unk_10011E590);
  (*(v12 + 8))(v14, v11);
}

- (void)widgetDidDisappearAtDate:(id)date withTrackableWidgetState:(id)state
{
  v4 = sub_1000C95A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  (*(v5 + 8))(v7, v4);
}

- (void)visibleItemsDidChangeAtDate:(id)date withTriggerEvent:(unint64_t)event trackableWidgetState:(id)state
{
  v5 = sub_1000C95A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  (*(v6 + 8))(v8, v5);
}

- (void)submitEventsIfNeededWithCompletion:(id)completion
{
  v5 = sub_100019558(&unk_10011FAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_1000CAFC0();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000D6478;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000D6488;
  v12[5] = v11;
  selfCopy = self;
  sub_1000529C4(0, 0, v7, &unk_1000D6498, v12);
}

- (_TtC10NewsToday223TodayBannerEventTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end