@interface TrendsScrubberPlatterView
- (void)fontSizeChangedWithNote:(id)a3;
- (void)layoutSubviews;
@end

@implementation TrendsScrubberPlatterView

- (void)fontSizeChangedWithNote:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_10060A04C();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_10060AB60();
}

@end