@interface HypertensivePatternMeasurementListDailyAggregatedDataProvider
- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)init;
- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)initWithDisplayType:(id)a3 profile:(id)a4;
- (id)textForObject:(id)a3;
- (id)titleForSection:(int64_t)a3;
@end

@implementation HypertensivePatternMeasurementListDailyAggregatedDataProvider

- (id)textForObject:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_29D93A868();
  sub_29D936978();
  sub_29D7F0140(v9);
  v6 = v5;

  sub_29D69417C(v9);
  if (v6)
  {
    v7 = sub_29D939D28();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)titleForSection:(int64_t)a3
{
  v3 = qword_2A17B0D68;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_29D9334A8();

  v5 = sub_29D939D28();

  return v5;
}

- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(HypertensivePatternMeasurementListDailyAggregatedDataProvider *)&v3 init];
}

- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)initWithDisplayType:(id)a3 profile:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(WDSampleListStatisticsDataProvider *)&v7 initWithDisplayType:a3 profile:a4];
}

@end