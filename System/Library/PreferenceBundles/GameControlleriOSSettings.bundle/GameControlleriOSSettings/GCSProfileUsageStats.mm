@interface GCSProfileUsageStats
- (BOOL)isActive;
- (NSString)description;
- (_TtC25GameControlleriOSSettings20GCSProfileUsageStats)init;
- (int64_t)controllersCount;
- (int64_t)gamesCount;
@end

@implementation GCSProfileUsageStats

- (NSString)description
{
  selfCopy = self;
  sub_8CFA8();

  v3 = sub_D7BD8();

  return v3;
}

- (int64_t)controllersCount
{
  v2 = *(&stru_20.nsects + (swift_isaMask & *self));
  selfCopy = self;
  v4 = v2();

  v5 = *(v4 + 16);

  return v5;
}

- (int64_t)gamesCount
{
  v2 = *&stru_68.segname[swift_isaMask & *self];
  selfCopy = self;
  v4 = v2();

  v5 = *(v4 + 16);

  return v5;
}

- (BOOL)isActive
{
  v2 = *(&stru_68.size + (swift_isaMask & *self));
  selfCopy = self;
  if (v2() < 1)
  {
    v5 = (*(&stru_68.offset + (swift_isaMask & *selfCopy)))();

    return v5 > 0;
  }

  else
  {

    return 1;
  }
}

- (_TtC25GameControlleriOSSettings20GCSProfileUsageStats)init
{
  *(self + OBJC_IVAR____TtC25GameControlleriOSSettings20GCSProfileUsageStats_controllerIdentifiers) = &_swiftEmptySetSingleton;
  *(self + OBJC_IVAR____TtC25GameControlleriOSSettings20GCSProfileUsageStats_gameIdentifiers) = &_swiftEmptySetSingleton;
  v3.receiver = self;
  v3.super_class = type metadata accessor for GCSProfileUsageStats();
  return [(GCSProfileUsageStats *)&v3 init];
}

@end