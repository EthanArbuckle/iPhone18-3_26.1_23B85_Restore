@interface PKInputPointAltitudeAndAzimuthZLimitFilter
- (void)addInputPoint:(id *)a3;
@end

@implementation PKInputPointAltitudeAndAzimuthZLimitFilter

- (void)addInputPoint:(id *)a3
{
  if (self)
  {
    ++self->super._numInputPoints;
    altitudeAndAzimuthZLimit = self->_altitudeAndAzimuthZLimit;
    if (altitudeAndAzimuthZLimit >= 0.0 && a3->var6 >= altitudeAndAzimuthZLimit)
    {
      a3->var3 = self->_lastKnownAltitude;
      a3->var2 = self->_lastKnownAzimuth;
    }

    else
    {
      self->_lastKnownAltitude = a3->var3;
      self->_lastKnownAzimuth = a3->var2;
    }

    memmove(&self->super._filteredPoint, a3, 0x88uLL);
  }

  else if (a3->var6 >= 0.0)
  {
    a3->var2 = 0.0;
    a3->var3 = 0.0;
  }
}

@end