@interface WOHeartRateZone
+ (id)zones:(id)zones replacingZoneAtIndex:(int64_t)index withZone:(id)zone;
- (NSString)description;
- (WOHeartRateZone)init;
- (id)zoneByMutatingLowerBound:(double)bound;
- (id)zoneByMutatingUpperBound:(double)bound;
- (int64_t)zoneCount;
- (int64_t)zoneIndex;
@end

@implementation WOHeartRateZone

- (id)zoneByMutatingLowerBound:(double)bound
{
  selfCopy = self;
  v5 = sub_1E030(bound);

  return v5;
}

- (id)zoneByMutatingUpperBound:(double)bound
{
  selfCopy = self;
  v5 = sub_1E168(bound);

  return v5;
}

- (int64_t)zoneIndex
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOHeartRateZone_heartRateZone);
  selfCopy = self;
  v4 = sub_22734();

  return v4;
}

- (int64_t)zoneCount
{
  v2 = *(&self->super.isa + OBJC_IVAR___WOHeartRateZone_heartRateZone);
  selfCopy = self;
  sub_22734();
  v5 = v4;

  return v5;
}

- (NSString)description
{
  selfCopy = self;
  HeartRateZoneBridge.description.getter();

  v3 = sub_22864();

  return v3;
}

+ (id)zones:(id)zones replacingZoneAtIndex:(int64_t)index withZone:(id)zone
{
  type metadata accessor for HeartRateZoneBridge();
  v7 = sub_228D4();
  zoneCopy = zone;
  sub_1F698(v7, index, zoneCopy);

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