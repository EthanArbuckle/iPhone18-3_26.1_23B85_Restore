@interface HKWorkoutMetricsDataSource
+ (NSString)taskIdentifier;
- (_TtC9HealthKit26HKWorkoutMetricsDataSource)init;
- (_TtP9HealthKit24HKWorkoutMetricsDelegate_)delegate;
- (id)exportedInterface;
- (id)identifier;
- (void)clientRemote_didReceiveMetrics:(id)a3;
- (void)connectionInterrupted;
- (void)setDelegate:(id)a3;
@end

@implementation HKWorkoutMetricsDataSource

- (id)exportedInterface
{
  v0 = _s9HealthKit26HKWorkoutMetricsDataSourceC15clientInterfaceSo14NSXPCInterfaceCvgZ_0();

  return v0;
}

- (_TtP9HealthKit24HKWorkoutMetricsDelegate_)delegate
{
  v3 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  v4 = *(&self->super.isa + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  v5 = self;
  os_unfair_lock_lock(v4 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(*(&self->super.isa + v3) + 4);

  return Strong;
}

- (void)setDelegate:(id)a3
{
  v4 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  swift_unknownObjectRetain();
  v6 = self;
  os_unfair_lock_lock(v5 + 4);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(*(&self->super.isa + v4) + 4);

  swift_unknownObjectRelease();
}

- (void)clientRemote_didReceiveMetrics:(id)a3
{
  type metadata accessor for HKWorkoutMetric();
  v4 = sub_191CC68E8();
  v5 = self;
  HKWorkoutMetricsDataSource.clientRemote_didReceiveMetrics(_:)(v4);
}

+ (NSString)taskIdentifier
{
  swift_getObjCClassMetadata();
  sub_191CC76A8();
  v2 = sub_191CC6778();

  return v2;
}

- (id)identifier
{
  v3 = sub_191CC61A8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, self + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_uuid, v3);
  v9 = sub_191CC6168();
  (*(v4 + 8))(v8, v3);

  return v9;
}

- (void)connectionInterrupted
{
  v2 = self;
  HKWorkoutMetricsDataSource.connectionInterrupted()();
}

- (_TtC9HealthKit26HKWorkoutMetricsDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end