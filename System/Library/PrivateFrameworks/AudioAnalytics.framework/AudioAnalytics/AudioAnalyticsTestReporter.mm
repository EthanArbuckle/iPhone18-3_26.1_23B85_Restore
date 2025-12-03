@interface AudioAnalyticsTestReporter
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithNewReporterID;
- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithReporterID:(int64_t)d;
@end

@implementation AudioAnalyticsTestReporter

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithNewReporterID
{
  initWithNewReporterID = [(AudioAnalyticsTestReporter *)self initWithNewReporterID];
  v4.receiver = initWithNewReporterID;
  v4.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  [(AudioAnalyticsReporter *)&v4 setServiceType:11];
  return initWithNewReporterID;
}

- (_TtC14AudioAnalytics26AudioAnalyticsTestReporter)initWithReporterID:(int64_t)d
{
  v5.receiver = self;
  v5.super_class = type metadata accessor for AudioAnalyticsTestReporter();
  return [(AudioAnalyticsReporter *)&v5 initWithReporterID:d];
}

@end