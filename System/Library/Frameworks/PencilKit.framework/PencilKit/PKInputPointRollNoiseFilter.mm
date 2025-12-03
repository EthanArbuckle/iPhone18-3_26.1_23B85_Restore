@interface PKInputPointRollNoiseFilter
- (void)_recalculateOffset;
- (void)addInputPoint:(id *)point;
- (void)resetFilter;
@end

@implementation PKInputPointRollNoiseFilter

- (void)resetFilter
{
  v3.receiver = self;
  v3.super_class = PKInputPointRollNoiseFilter;
  [(PKInputPointBaseFilter *)&v3 resetFilter];
  [(PKInputPointRollNoiseFilter *)self _recalculateOffset];
}

- (void)_recalculateOffset
{
  if (self)
  {
    rollOffsetNoise = self->_rollOffsetNoise;
  }

  else
  {
    rollOffsetNoise = 0.0;
  }

  v3[0] = 0.0;
  v3[1] = rollOffsetNoise;
  v4 = 0;
  self->currentRollOffsetValue = std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v3, &self->generator.__x_, v3) * 0.0174532925;
}

- (void)addInputPoint:(id *)point
{
  if (!self)
  {
    rollJitterNoise = 0.0;
LABEL_3:
    if (self->currentRollOffsetValue <= 0.0)
    {
      goto LABEL_14;
    }

    goto LABEL_4;
  }

  ++self->super._numInputPoints;
  rollJitterNoise = self->_rollJitterNoise;
  if (rollJitterNoise <= 0.0)
  {
    goto LABEL_3;
  }

LABEL_4:
  v9[0] = 0.0;
  v9[1] = rollJitterNoise;
  v10 = 0;
  v6 = point->var13 + std::normal_distribution<double>::operator()<std::linear_congruential_engine<unsigned int,48271u,0u,2147483647u>>(v9, &self->generator.__x_, v9) * 0.0174532925 + self->currentRollOffsetValue;
  v7 = fmod(v6, 6.28318531);
  if (v6 <= 6.28318531 && v6 >= 0.0)
  {
    v7 = v6;
  }

  if (v7 < 0.0)
  {
    v7 = v7 + 6.28318531;
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  point->var13 = v7;
LABEL_14:

  memmove(&self->super._filteredPoint, point, 0x88uLL);
}

@end