@interface PKInputPointAltitudeAndAzimuthZLimitFilter
- (void)addInputPoint:(id *)point;
@end

@implementation PKInputPointAltitudeAndAzimuthZLimitFilter

- (void)addInputPoint:(id *)point
{
  if (self)
  {
    ++self->super._numInputPoints;
    altitudeAndAzimuthZLimit = self->_altitudeAndAzimuthZLimit;
    if (altitudeAndAzimuthZLimit >= 0.0 && point->var6 >= altitudeAndAzimuthZLimit)
    {
      point->var3 = self->_lastKnownAltitude;
      point->var2 = self->_lastKnownAzimuth;
    }

    else
    {
      self->_lastKnownAltitude = point->var3;
      self->_lastKnownAzimuth = point->var2;
    }

    memmove(&self->super._filteredPoint, point, 0x88uLL);
  }

  else if (point->var6 >= 0.0)
  {
    point->var2 = 0.0;
    point->var3 = 0.0;
  }
}

@end