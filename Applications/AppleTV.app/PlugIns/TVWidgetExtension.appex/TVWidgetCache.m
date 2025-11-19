@interface TVWidgetCache
- (_TtC17TVWidgetExtension13TVWidgetCache)init;
@end

@implementation TVWidgetCache

- (_TtC17TVWidgetExtension13TVWidgetCache)init
{
  v3 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntry;
  v4 = type metadata accessor for TVWidgetEntry();
  (*(*(v4 - 8) + 56))(self + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtC17TVWidgetExtension13TVWidgetCache_lastKnownWidgetEntryDate;
  v6 = sub_1000D19FC();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  v8.receiver = self;
  v8.super_class = type metadata accessor for TVWidgetCache();
  return [(TVWidgetCache *)&v8 init];
}

@end