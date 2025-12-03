@interface WISCellularCoverageTile
- (NSString)description;
- (WISCellularCoverageTile)init;
- (WISCellularCoverageTile)initWithLatitude:(double)latitude longitude:(double)longitude noServiceCount:(int64_t)count inServiceCount:(int64_t)serviceCount limitedServiceCount:(int64_t)limitedServiceCount highestFrequencyRsrp:(id)rsrp highestCountMCC:(int64_t)c highestCountMNC:(int64_t)self0 highestCountBand:(id)self1 highestCountARFCN:(id)self2 highestCountRAT:(int64_t)self3 highestCount:(int64_t)self4;
@end

@implementation WISCellularCoverageTile

- (WISCellularCoverageTile)initWithLatitude:(double)latitude longitude:(double)longitude noServiceCount:(int64_t)count inServiceCount:(int64_t)serviceCount limitedServiceCount:(int64_t)limitedServiceCount highestFrequencyRsrp:(id)rsrp highestCountMCC:(int64_t)c highestCountMNC:(int64_t)self0 highestCountBand:(id)self1 highestCountARFCN:(id)self2 highestCountRAT:(int64_t)self3 highestCount:(int64_t)self4
{
  rsrpCopy = rsrp;
  bandCopy = band;
  nCopy = n;
  v22 = sub_1001B7C90(count, serviceCount, limitedServiceCount, rsrp, c, nC, band, n, latitude, longitude, t, highestCount);

  return v22;
}

- (NSString)description
{
  selfCopy = self;
  sub_1001A425C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (WISCellularCoverageTile)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end