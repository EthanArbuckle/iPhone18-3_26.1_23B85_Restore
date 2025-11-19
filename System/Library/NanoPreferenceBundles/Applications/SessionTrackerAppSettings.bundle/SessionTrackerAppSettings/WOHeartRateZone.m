@interface WOHeartRateZone
+ (id)zones:(id)a3 replacingZoneAtIndex:(int64_t)a4 withZone:(id)a5;
- (NSString)description;
- (WOHeartRateZone)init;
- (id)zoneByMutatingLowerBound:(double)a3;
- (id)zoneByMutatingUpperBound:(double)a3;
- (int64_t)zoneCount;
- (int64_t)zoneIndex;
@end

@implementation WOHeartRateZone

- (id)zoneByMutatingLowerBound:(double)a3
{
  v4 = self;
  v5 = sub_1E030(a3);

  return v5;
}

- (id)zoneByMutatingUpperBound:(double)a3
{
  v4 = self;
  v5 = sub_1E168(a3);

  return v5;
}

- (int64_t)zoneIndex
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOHeartRateZone_heartRateZone);
  v3 = self;
  v4 = sub_22734();

  return v4;
}

- (int64_t)zoneCount
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOHeartRateZone_heartRateZone);
  v3 = self;
  sub_22734();
  v5 = v4;

  return v5;
}

- (NSString)description
{
  v2 = self;
  HeartRateZoneBridge.description.getter();

  v3 = sub_22864();

  return v3;
}

+ (id)zones:(id)a3 replacingZoneAtIndex:(int64_t)a4 withZone:(id)a5
{
  type metadata accessor for HeartRateZoneBridge();
  v7 = sub_228D4();
  v8 = a5;
  sub_1F698(v7, a4, v8);

  v9.super.isa = sub_228C4().super.isa;

  return v9.super.isa;
}

- (WOHeartRateZone)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end