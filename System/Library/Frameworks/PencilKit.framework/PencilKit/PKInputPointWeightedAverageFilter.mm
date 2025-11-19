@interface PKInputPointWeightedAverageFilter
- (void)addInputPoint:(id *)a3;
@end

@implementation PKInputPointWeightedAverageFilter

- (void)addInputPoint:(id *)a3
{
  if (self)
  {
    numInputPoints = self->super._numInputPoints;
    self->super._numInputPoints = numInputPoints + 1;
    if (numInputPoints)
    {
      x = a3->var0.var0.x;
      xyPositionSmoothingFactor = self->_xyPositionSmoothingFactor;
      if (xyPositionSmoothingFactor > 1.0)
      {
        x = (x + self->super._filteredPoint.var0.point.x * (xyPositionSmoothingFactor + -1.0)) / xyPositionSmoothingFactor;
      }

      y = self->super._filteredPoint.var0.point.y;
      azimuth = self->super._filteredPoint.azimuth;
      altitude = self->super._filteredPoint.altitude;
      zPosition = self->super._filteredPoint.zPosition;
      a3->var0.var0.x = x;
      v12 = a3->var0.var0.y;
      v13 = self->_xyPositionSmoothingFactor;
      if (v13 > 1.0)
      {
        v12 = (v12 + y * (v13 + -1.0)) / v13;
      }

      a3->var0.var0.y = v12;
      var6 = a3->var6;
      zPositionSmoothingFactor = self->_zPositionSmoothingFactor;
      if (zPositionSmoothingFactor > 1.0)
      {
        var6 = (var6 + zPosition * (zPositionSmoothingFactor + -1.0)) / zPositionSmoothingFactor;
      }

      a3->var6 = var6;
      var3 = a3->var3;
      altitudeSmoothingFactor = self->_altitudeSmoothingFactor;
      if (altitudeSmoothingFactor > 1.0)
      {
        DKDMixAnglesInRadians(altitude, var3, 1.0 / (altitudeSmoothingFactor + 1.0));
        var3 = v18;
      }

      a3->var3 = var3;
      var2 = a3->var2;
      azimuthSmoothingFactor = self->_azimuthSmoothingFactor;
      if (azimuthSmoothingFactor > 1.0)
      {
        DKDMixAnglesInRadians(azimuth, var2, 1.0 / (azimuthSmoothingFactor + 1.0));
        var2 = v21;
      }

      a3->var2 = var2;
    }

    memmove(&self->super._filteredPoint, a3, 0x88uLL);
  }
}

@end