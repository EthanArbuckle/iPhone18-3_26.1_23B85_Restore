@interface WISCellularCoverageTile
- (NSString)description;
- (WISCellularCoverageTile)init;
- (WISCellularCoverageTile)initWithLatitude:(double)a3 longitude:(double)a4 noServiceCount:(int64_t)a5 inServiceCount:(int64_t)a6 limitedServiceCount:(int64_t)a7 highestFrequencyRsrp:(id)a8 highestCountMCC:(int64_t)a9 highestCountMNC:(int64_t)a10 highestCountBand:(id)a11 highestCountARFCN:(id)a12 highestCountRAT:(int64_t)a13 highestCount:(int64_t)a14;
@end

@implementation WISCellularCoverageTile

- (WISCellularCoverageTile)initWithLatitude:(double)a3 longitude:(double)a4 noServiceCount:(int64_t)a5 inServiceCount:(int64_t)a6 limitedServiceCount:(int64_t)a7 highestFrequencyRsrp:(id)a8 highestCountMCC:(int64_t)a9 highestCountMNC:(int64_t)a10 highestCountBand:(id)a11 highestCountARFCN:(id)a12 highestCountRAT:(int64_t)a13 highestCount:(int64_t)a14
{
  v19 = a8;
  v20 = a11;
  v21 = a12;
  v22 = sub_1001B7C90(a5, a6, a7, a8, a9, a10, a11, a12, a3, a4, a13, a14);

  return v22;
}

- (NSString)description
{
  v2 = self;
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