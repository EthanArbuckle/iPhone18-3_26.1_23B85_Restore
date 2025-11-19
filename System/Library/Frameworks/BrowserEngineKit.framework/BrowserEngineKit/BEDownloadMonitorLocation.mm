@interface BEDownloadMonitorLocation
- (BEDownloadMonitorLocation)init;
- (NSData)bookmarkData;
@end

@implementation BEDownloadMonitorLocation

- (NSData)bookmarkData
{
  v2 = *(self + OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData);
  v3 = *(self + OBJC_IVAR___BEDownloadMonitorLocation_bookmarkData + 8);
  sub_19D50D728(v2, v3);
  v4 = sub_19D51DF9C();
  sub_19D5155D8(v2, v3);

  return v4;
}

- (BEDownloadMonitorLocation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end