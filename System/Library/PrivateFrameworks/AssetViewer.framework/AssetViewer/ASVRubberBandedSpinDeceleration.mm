@interface ASVRubberBandedSpinDeceleration
- (ASVRubberBandedSpinDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4 startingOffset:(float)a5 decelerationRate:(float)a6 rubberBand:(id)a7;
- (float)decelerationDelta;
@end

@implementation ASVRubberBandedSpinDeceleration

- (ASVRubberBandedSpinDeceleration)initWithVelocity:(float)a3 minEndDelta:(float)a4 startingOffset:(float)a5 decelerationRate:(float)a6 rubberBand:(id)a7
{
  v13 = a7;
  v22.receiver = self;
  v22.super_class = ASVRubberBandedSpinDeceleration;
  *&v14 = a3;
  *&v15 = a4;
  *&v16 = a6;
  v17 = [(ASVDampingDeceleration *)&v22 initWithVelocity:v14 minEndDelta:v15 decelerationRate:v16];
  v18 = v17;
  if (v17)
  {
    v17->_currentOffset = a5;
    objc_storeStrong(&v17->_rubberBand, a7);
    *&v19 = a5;
    [v13 rubberBandOffsetForOffset:v19];
    v18->_previousRubberBandedOffset = v20;
  }

  return v18;
}

- (float)decelerationDelta
{
  v3 = 0.0;
  if (![(ASVDeceleration *)self isDecelerating])
  {
    return v3;
  }

  v27.receiver = self;
  v27.super_class = ASVRubberBandedSpinDeceleration;
  [(ASVDampingDeceleration *)&v27 decelerationDelta];
  v5 = v4;
  [(ASVRubberBandedSpinDeceleration *)self currentOffset];
  *&v7 = v5 + v6;
  [(ASVRubberBandedSpinDeceleration *)self setCurrentOffset:v7];
  [(ASVRubberBandedSpinDeceleration *)self currentOffset];
  v9 = v8;
  v10 = [(ASVRubberBandedSpinDeceleration *)self rubberBand];
  [v10 maxOffset];
  if (v9 <= v11 || ([(ASVDeceleration *)self velocity], v12 <= 0.0))
  {
    [(ASVRubberBandedSpinDeceleration *)self currentOffset];
    v14 = v13;
    v15 = [(ASVRubberBandedSpinDeceleration *)self rubberBand];
    [v15 minOffset];
    if (v14 >= v16)
    {
    }

    else
    {
      [(ASVDeceleration *)self velocity];
      v18 = v17;

      if (v18 < 0.0)
      {
        goto LABEL_7;
      }
    }

    [(ASVRubberBandedSpinDeceleration *)self currentOffset];
    v21 = v22;
    goto LABEL_10;
  }

LABEL_7:
  v19 = [(ASVRubberBandedSpinDeceleration *)self rubberBand];
  [(ASVRubberBandedSpinDeceleration *)self currentOffset];
  [v19 rubberBandOffsetForOffset:?];
  v21 = v20;

LABEL_10:
  [(ASVRubberBandedSpinDeceleration *)self previousRubberBandedOffset];
  v3 = v21 - v23;
  *&v24 = v21;
  [(ASVRubberBandedSpinDeceleration *)self setPreviousRubberBandedOffset:v24];
  if ([(ASVDeceleration *)self frameCount])
  {
    [(ASVDeceleration *)self minEndDelta];
    if (fabsf(v3) <= v25)
    {
      [(ASVDeceleration *)self setIsDecelerating:0];
      return 0.0;
    }
  }

  return v3;
}

@end