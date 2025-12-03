@interface TrendsScrubberPlatterView
- (void)fontSizeChangedWithNote:(id)note;
- (void)layoutSubviews;
@end

@implementation TrendsScrubberPlatterView

- (void)fontSizeChangedWithNote:(id)note
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  sub_10060A04C();

  (*(v5 + 8))(v7, v4);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_10060AB60();
}

@end