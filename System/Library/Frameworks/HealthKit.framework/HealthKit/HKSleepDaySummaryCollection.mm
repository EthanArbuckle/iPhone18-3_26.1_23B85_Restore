@interface HKSleepDaySummaryCollection
- (BOOL)isEqual:(id)a3;
- (HKSleepDaySummaryCollection)init;
- (HKSleepDaySummaryCollection)initWithSleepDaySummaries:(id)a3;
- (NSArray)sleepDaySummaries;
- (int64_t)hash;
@end

@implementation HKSleepDaySummaryCollection

- (NSArray)sleepDaySummaries
{
  v2 = *(self + OBJC_IVAR___HKSleepDaySummaryCollection_sleepDaySummaries);
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);

  v3 = sub_191CC68D8();

  return v3;
}

- (HKSleepDaySummaryCollection)initWithSleepDaySummaries:(id)a3
{
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  result = sub_191CC68E8();
  if (result >> 62)
  {
    v7 = result;
    v8 = sub_191CC6EE8();
    result = v7;
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *(self + OBJC_IVAR___HKSleepDaySummaryCollection_sleepDaySummaries) = result;
    v6 = [objc_opt_self() sleepMetricsForDaySummaries_];
    *(self + OBJC_IVAR___HKSleepDaySummaryCollection_metrics) = v6;
    v9.receiver = self;
    v9.super_class = HKSleepDaySummaryCollection;
    return [(HKSleepDaySummaryCollection *)&v9 init];
  }

  __break(1u);
  return result;
}

- (BOOL)isEqual:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = self;
  }

  v6 = HKSleepDaySummaryCollection.isEqual(_:)(v8);

  sub_191C74400(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v2 = self;
  v3 = [(HKSleepDaySummaryCollection *)v2 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  sub_191CC68E8();

  sub_191C74868();
  v4 = sub_191CC6998();

  return v4;
}

- (HKSleepDaySummaryCollection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end