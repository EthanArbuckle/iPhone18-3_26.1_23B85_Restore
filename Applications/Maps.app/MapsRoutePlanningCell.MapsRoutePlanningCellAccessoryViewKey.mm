@interface MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryViewKey
- (BOOL)isEqual:(id)equal;
- (_TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey)init;
- (int64_t)hash;
@end

@implementation MapsRoutePlanningCell.MapsRoutePlanningCellAccessoryViewKey

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_10035BE10(v8);

  sub_100024F64(v8, &unk_101908380);
  return v6 & 1;
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = UUID.hashValue.getter();
  if (selfCopy->width[OBJC_IVAR____TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey_width])
  {
    v4 = 0;
  }

  else
  {
    v4 = Double.hashValue.getter();
  }

  return v4 ^ v3;
}

- (_TtCC4Maps21MapsRoutePlanningCellP33_17835BB28473411CAA6967B2802CDA9237MapsRoutePlanningCellAccessoryViewKey)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end