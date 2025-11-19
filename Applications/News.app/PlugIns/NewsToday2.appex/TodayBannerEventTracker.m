@interface TodayBannerEventTracker
- (_TtC10NewsToday223TodayBannerEventTracker)init;
- (void)submitEventsIfNeededWithCompletion:(id)a3;
- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5;
- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5;
- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4;
@end

@implementation TodayBannerEventTracker

- (void)widgetDidAppearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v6 = sub_1000C95A0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  swift_unknownObjectRetain();
  v10 = self;
  sub_100051444(v10, a4);
  swift_unknownObjectRelease();

  (*(v7 + 8))(v9, v6);
}

- (void)userEngagedWithWidgetAtDate:(id)a3 actionURL:(id)a4 trackableWidgetState:(id)a5
{
  v8 = sub_100019558(&unk_10011E590);
  __chkstk_darwin(v8 - 8);
  v10 = &v18 - v9;
  v11 = sub_1000C95A0();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  if (a4)
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
  v17 = self;
  sub_100051860(v17, v10, a5);
  swift_unknownObjectRelease();

  sub_100031844(v10, &unk_10011E590);
  (*(v12 + 8))(v14, v11);
}

- (void)widgetDidDisappearAtDate:(id)a3 withTrackableWidgetState:(id)a4
{
  v4 = sub_1000C95A0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  (*(v5 + 8))(v7, v4);
}

- (void)visibleItemsDidChangeAtDate:(id)a3 withTriggerEvent:(unint64_t)a4 trackableWidgetState:(id)a5
{
  v5 = sub_1000C95A0();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v9 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000C9580();
  (*(v6 + 8))(v8, v5);
}

- (void)submitEventsIfNeededWithCompletion:(id)a3
{
  v5 = sub_100019558(&unk_10011FAE0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  sub_1000529C4(0, 0, v7, &unk_1000D6498, v12);
}

- (_TtC10NewsToday223TodayBannerEventTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end