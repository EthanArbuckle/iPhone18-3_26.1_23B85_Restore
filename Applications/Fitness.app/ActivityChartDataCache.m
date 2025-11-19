@interface ActivityChartDataCache
- (_TtC10FitnessApp22ActivityChartDataCache)init;
@end

@implementation ActivityChartDataCache

- (_TtC10FitnessApp22ActivityChartDataCache)init
{
  v3 = OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_calendar;
  if (qword_1008DA540 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Calendar();
  v5 = sub_10001AC90(v4, qword_100924FE8);
  (*(*(v4 - 8) + 16))(self + v3, v5, v4);
  v6 = OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_cache;
  *(&self->super.isa + v6) = [objc_allocWithZone(NSCache) init];
  v7 = OBJC_IVAR____TtC10FitnessApp22ActivityChartDataCache_basalEnergyCache;
  *(&self->super.isa + v7) = [objc_allocWithZone(NSCache) init];
  v9.receiver = self;
  v9.super_class = type metadata accessor for ActivityChartDataCache();
  return [(ActivityChartDataCache *)&v9 init];
}

@end