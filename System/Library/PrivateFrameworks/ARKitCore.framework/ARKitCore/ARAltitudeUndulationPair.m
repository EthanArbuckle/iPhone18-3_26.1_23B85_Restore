@interface ARAltitudeUndulationPair
- (ARAltitudeUndulationPair)initWithAltitude:(double)a3 undulation:(double)a4 lookupFailed:(BOOL)a5 source:(int64_t)a6;
@end

@implementation ARAltitudeUndulationPair

- (ARAltitudeUndulationPair)initWithAltitude:(double)a3 undulation:(double)a4 lookupFailed:(BOOL)a5 source:(int64_t)a6
{
  v11.receiver = self;
  v11.super_class = ARAltitudeUndulationPair;
  result = [(ARAltitudeUndulationPair *)&v11 init];
  if (result)
  {
    result->_altitude = a3;
    result->_undulation = a4;
    result->_lookupFailed = a5;
    result->_source = a6;
  }

  return result;
}

@end