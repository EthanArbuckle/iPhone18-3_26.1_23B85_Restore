@interface PhoneFocusMetrics
- (_TtC10PhoneFocus17PhoneFocusMetrics)init;
@end

@implementation PhoneFocusMetrics

- (_TtC10PhoneFocus17PhoneFocusMetrics)init
{
  v3 = OBJC_IVAR____TtC10PhoneFocus17PhoneFocusMetrics_analyticsLogger;
  *(&self->super.isa + v3) = [objc_allocWithZone(MPAnalyticsLogger) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PhoneFocusMetrics();
  return [(PhoneFocusMetrics *)&v5 init];
}

@end