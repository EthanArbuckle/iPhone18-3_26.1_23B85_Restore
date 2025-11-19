@interface AudioAnalyticsTestReporter
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithNewReporterID;
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithReporterID:(int64_t)a3;
@end

@implementation AudioAnalyticsTestReporter

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithNewReporterID
{
  v2 = [(AudioAnalyticsTestReporter *)self initWithNewReporterID];
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  [(AudioAnalyticsReporter *)&v4 setServiceType:11];
  return v2;
}

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithReporterID:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return [(AudioAnalyticsReporter *)&v5 initWithReporterID:a3];
}

@end