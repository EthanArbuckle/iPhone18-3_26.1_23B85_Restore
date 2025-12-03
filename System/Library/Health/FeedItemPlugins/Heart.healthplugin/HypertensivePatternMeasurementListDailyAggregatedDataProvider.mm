@interface HypertensivePatternMeasurementListDailyAggregatedDataProvider
- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)init;
- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)initWithDisplayType:(id)type profile:(id)profile;
- (id)textForObject:(id)object;
- (id)titleForSection:(int64_t)section;
@end

@implementation HypertensivePatternMeasurementListDailyAggregatedDataProvider

- (id)textForObject:(id)object
{
  swift_unknownObjectRetain();
  selfCopy = self;
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

- (id)titleForSection:(int64_t)section
{
  v3 = qword_2A17B0D68;
  selfCopy = self;
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

- (_TtC5Heart61HypertensivePatternMeasurementListDailyAggregatedDataProvider)initWithDisplayType:(id)type profile:(id)profile
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(WDSampleListStatisticsDataProvider *)&v7 initWithDisplayType:type profile:profile];
}

@end