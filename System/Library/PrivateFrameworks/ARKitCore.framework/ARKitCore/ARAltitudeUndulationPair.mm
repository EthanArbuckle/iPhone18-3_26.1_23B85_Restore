@interface ARAltitudeUndulationPair
- (ARAltitudeUndulationPair)initWithAltitude:(double)altitude undulation:(double)undulation lookupFailed:(BOOL)failed source:(int64_t)source;
@end

@implementation ARAltitudeUndulationPair

- (ARAltitudeUndulationPair)initWithAltitude:(double)altitude undulation:(double)undulation lookupFailed:(BOOL)failed source:(int64_t)source
{
  v11.receiver = self;
  v11.super_class = ARAltitudeUndulationPair;
  result = [(ARAltitudeUndulationPair *)&v11 init];
  if (result)
  {
    result->_altitude = altitude;
    result->_undulation = undulation;
    result->_lookupFailed = failed;
    result->_source = source;
  }

  return result;
}

@end