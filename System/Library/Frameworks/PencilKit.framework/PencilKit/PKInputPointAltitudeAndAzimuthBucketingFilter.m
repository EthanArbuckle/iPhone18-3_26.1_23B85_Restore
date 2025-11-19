@interface PKInputPointAltitudeAndAzimuthBucketingFilter
- (void)addInputPoint:(id *)a3;
@end

@implementation PKInputPointAltitudeAndAzimuthBucketingFilter

- (void)addInputPoint:(id *)a3
{
  if (self)
  {
    ++self->super._numInputPoints;
    numAzimuthBuckets = self->_numAzimuthBuckets;
    if (numAzimuthBuckets >= 1)
    {
      v6 = 6.28318531 / numAzimuthBuckets;
      v7 = v6 * 0.5;
      var2 = a3->var2;
      v9 = 0.0;
      do
      {
        v10 = v9 - v7;
        if (v9 - v7 < 0.0)
        {
          v10 = fmod(v10, 6.28318531);
          if (v10 < 0.0)
          {
            v10 = v10 + 6.28318531;
          }

          if (v10 == 0.0)
          {
            v10 = 0.0;
          }
        }

        if (var2 <= v7 + v9 && var2 >= v10)
        {
          break;
        }

        v9 = v6 + v9;
        --numAzimuthBuckets;
      }

      while (numAzimuthBuckets);
      a3->var2 = v9;
    }

    numAltitudeBuckets = self->_numAltitudeBuckets;
    if (numAltitudeBuckets >= 1)
    {
      v13 = 1.57079633 / numAltitudeBuckets;
      v14 = 0.0;
      do
      {
        v15 = v14;
        v14 = v13 + v14;
        if (a3->var3 <= v14)
        {
          break;
        }

        v15 = v14;
        --numAltitudeBuckets;
      }

      while (numAltitudeBuckets);
      a3->var3 = v13 * 0.5 + v15;
    }

    memmove(&self->super._filteredPoint, a3, 0x88uLL);
  }
}

@end