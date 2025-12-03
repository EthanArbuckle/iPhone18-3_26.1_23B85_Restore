@interface PKInputPointAltitudeAndAzimuthEdgeFilter
- (void)addInputPoint:(id *)point;
@end

@implementation PKInputPointAltitudeAndAzimuthEdgeFilter

- (void)addInputPoint:(id *)point
{
  if (self)
  {
    ++self->super._numInputPoints;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
  }

  else
  {
    WeakRetained = 0;
  }

  v6 = *&point->var13;
  v12[6] = *&point->var11;
  v12[7] = v6;
  var15 = point->var15;
  v7 = *&point->var5;
  v12[2] = *&point->var3;
  v12[3] = v7;
  v8 = *&point->var9;
  v12[4] = *&point->var7;
  v12[5] = v8;
  v9 = *&point->var1;
  v12[0] = point->var0;
  v12[1] = v9;
  [WeakRetained inputPointFilter:self distanceToEdge:v12];
  v11 = v10;

  if (self)
  {
    if (v11 >= self->_edgeLimit)
    {
      self->_lastKnownAltitude = point->var3;
      self->_lastKnownAzimuth = point->var2;
    }

    else
    {
      point->var3 = self->_lastKnownAltitude;
      point->var2 = self->_lastKnownAzimuth;
    }

    memmove(&self->super._filteredPoint, point, 0x88uLL);
  }

  else if (v11 < 0.0)
  {
    point->var2 = 0.0;
    point->var3 = 0.0;
  }
}

@end