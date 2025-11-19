@interface CTFlightInfo
- (NSNumber)arrivalAirportLat;
- (NSNumber)arrivalAirportLong;
- (NSNumber)arrivalTime;
- (NSNumber)departureAirportLat;
- (NSNumber)departureAirportLong;
- (NSNumber)departureTime;
@end

@implementation CTFlightInfo

- (NSNumber)departureAirportLat
{
  v3 = OBJC_IVAR___CTFlightInfo_departureAirportLat;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)departureAirportLong
{
  v3 = OBJC_IVAR___CTFlightInfo_departureAirportLong;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)departureTime
{
  v3 = OBJC_IVAR___CTFlightInfo_departureTime;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)arrivalAirportLat
{
  v3 = OBJC_IVAR___CTFlightInfo_arrivalAirportLat;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)arrivalAirportLong
{
  v3 = OBJC_IVAR___CTFlightInfo_arrivalAirportLong;
  swift_beginAccess();
  return *(self + v3);
}

- (NSNumber)arrivalTime
{
  v3 = OBJC_IVAR___CTFlightInfo_arrivalTime;
  swift_beginAccess();
  return *(self + v3);
}

@end