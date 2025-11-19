@interface PKInputPointAltitudeAndAzimuthEdgeFilter
- (void)addInputPoint:(id *)a3;
@end

@implementation PKInputPointAltitudeAndAzimuthEdgeFilter

- (void)addInputPoint:(id *)a3
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

  v6 = *&a3->var13;
  v12[6] = *&a3->var11;
  v12[7] = v6;
  var15 = a3->var15;
  v7 = *&a3->var5;
  v12[2] = *&a3->var3;
  v12[3] = v7;
  v8 = *&a3->var9;
  v12[4] = *&a3->var7;
  v12[5] = v8;
  v9 = *&a3->var1;
  v12[0] = a3->var0;
  v12[1] = v9;
  [WeakRetained inputPointFilter:self distanceToEdge:v12];
  v11 = v10;

  if (self)
  {
    if (v11 >= self->_edgeLimit)
    {
      self->_lastKnownAltitude = a3->var3;
      self->_lastKnownAzimuth = a3->var2;
    }

    else
    {
      a3->var3 = self->_lastKnownAltitude;
      a3->var2 = self->_lastKnownAzimuth;
    }

    memmove(&self->super._filteredPoint, a3, 0x88uLL);
  }

  else if (v11 < 0.0)
  {
    a3->var2 = 0.0;
    a3->var3 = 0.0;
  }
}

@end