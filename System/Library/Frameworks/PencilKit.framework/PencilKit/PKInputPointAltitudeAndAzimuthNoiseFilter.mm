@interface PKInputPointAltitudeAndAzimuthNoiseFilter
- (void)_recalculateOffsets;
- (void)addInputPoint:(id *)point;
- (void)resetFilter;
@end

@implementation PKInputPointAltitudeAndAzimuthNoiseFilter

- (void)_recalculateOffsets
{
  if (self)
  {
    azimuthOffsetNoise = self->_azimuthOffsetNoise;
  }

  else
  {
    azimuthOffsetNoise = 0.0;
  }

  v7[0] = 0.0;
  v7[1] = azimuthOffsetNoise;
  v8 = 0;
  self->currentAzimuthOffsetValue = std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v7, &self->generator.__x_, v7) * 0.0174532925;
  altitudeOffsetNoise = self->_altitudeOffsetNoise;
  v5[0] = 0.0;
  v5[1] = altitudeOffsetNoise;
  v6 = 0;
  self->currentAltitudeOffsetValue = std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v5, &self->generator.__x_, v5) * 0.0174532925;
}

- (void)resetFilter
{
  v3.receiver = self;
  v3.super_class = PKInputPointAltitudeAndAzimuthNoiseFilter;
  [(PKInputPointBaseFilter *)&v3 resetFilter];
  [(PKInputPointAltitudeAndAzimuthNoiseFilter *)self _recalculateOffsets];
}

- (void)addInputPoint:(id *)point
{
  if (self)
  {
    ++self->super._numInputPoints;
    v5 = 1.0;
    if (self->_noiseIsHeightBased)
    {
      v5 = point->var6 / 12.0;
    }

    v6 = v5 * self->_azimuthJitterNoise;
    if (v6 > 0.0)
    {
      v15 = 0;
      v16 = v6;
      v17 = 0;
      v7 = point->var2 + std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v15, &self->generator.__x_, &v15) * 0.0174532925 + self->currentAzimuthOffsetValue * v5;
      v8 = fmod(v7, 6.28318531);
      if (v7 <= 6.28318531 && v7 >= 0.0)
      {
        v8 = v7;
      }

      if (v8 < 0.0)
      {
        v8 = v8 + 6.28318531;
      }

      if (v8 == 0.0)
      {
        v8 = 0.0;
      }

      point->var2 = v8;
    }

    v10 = v5 * self->_altitudeJitterNoise;
    if (v10 > 0.0)
    {
      v15 = 0;
      v16 = v10;
      v17 = 0;
      v11 = point->var3 + std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(&v15, &self->generator.__x_, &v15) * 0.0174532925 + self->currentAltitudeOffsetValue * v5;
      v12 = fmod(v11, 6.28318531);
      v13 = 0.0;
      if (v11 <= 6.28318531 && v11 >= 0.0)
      {
        v12 = v11;
      }

      if (v12 < 0.0)
      {
        v12 = v12 + 6.28318531;
      }

      if (v12 == 0.0)
      {
        v12 = 0.0;
      }

      if (v12 >= 0.0)
      {
        v13 = v12;
        if (v12 > 1.57079633)
        {
          v13 = 1.57079633;
        }
      }

      point->var3 = v13;
    }

    memmove(&self->super._filteredPoint, point, 0x88uLL);
  }
}

@end