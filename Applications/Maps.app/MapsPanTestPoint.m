@interface MapsPanTestPoint
- ($1AB5FA073B851C12C2339EC22442E995)testPoint;
@end

@implementation MapsPanTestPoint

- ($1AB5FA073B851C12C2339EC22442E995)testPoint
{
  latitude = self->_testPoint.latitude;
  longitude = self->_testPoint.longitude;
  altitude = self->_testPoint.altitude;
  result.var2 = altitude;
  result.var1 = longitude;
  result.var0 = latitude;
  return result;
}

@end