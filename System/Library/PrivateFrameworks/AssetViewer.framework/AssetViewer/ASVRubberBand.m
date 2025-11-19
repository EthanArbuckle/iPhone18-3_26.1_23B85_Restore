@interface ASVRubberBand
- (ASVRubberBand)initWithRubberBandFactor:(float)a3 minOffset:(float)a4 maxOffset:(float)a5 overshoot:(float)a6;
- (BOOL)offsetIsWithinRubberBandedRange:(float)a3;
- (float)offsetForRubberBandOffset:(float)a3;
- (float)rubberBandOffsetForOffset:(float)a3;
@end

@implementation ASVRubberBand

- (ASVRubberBand)initWithRubberBandFactor:(float)a3 minOffset:(float)a4 maxOffset:(float)a5 overshoot:(float)a6
{
  v11.receiver = self;
  v11.super_class = ASVRubberBand;
  result = [(ASVRubberBand *)&v11 init];
  if (result)
  {
    result->_rubberBandFactor = a3;
    result->_minOffset = a4;
    result->_maxOffset = a5;
    result->_overshoot = a6;
  }

  return result;
}

- (float)rubberBandOffsetForOffset:(float)a3
{
  [(ASVRubberBand *)self maxOffset];
  if (v5 >= a3)
  {
    [(ASVRubberBand *)self minOffset];
    if (v16 <= a3)
    {
      return a3;
    }

    else
    {
      [(ASVRubberBand *)self minOffset];
      v18 = v17 - a3;
      [(ASVRubberBand *)self overshoot];
      v20 = v18 / v19;
      [(ASVRubberBand *)self rubberBandFactor];
      v22 = 1.0 - (1.0 / ((v21 * v20) + 1.0));
      [(ASVRubberBand *)self minOffset];
      v24 = v23;
      [(ASVRubberBand *)self overshoot];
      return v24 - (v22 * v25);
    }
  }

  else
  {
    [(ASVRubberBand *)self maxOffset];
    v7 = a3 - v6;
    [(ASVRubberBand *)self overshoot];
    v9 = v7 / v8;
    [(ASVRubberBand *)self rubberBandFactor];
    v11 = 1.0 - (1.0 / ((v10 * v9) + 1.0));
    [(ASVRubberBand *)self overshoot];
    v13 = v12;
    [(ASVRubberBand *)self maxOffset];
    return v14 + (v11 * v13);
  }
}

- (float)offsetForRubberBandOffset:(float)a3
{
  [(ASVRubberBand *)self maxOffset];
  if (v5 >= a3)
  {
    [(ASVRubberBand *)self minOffset];
    if (v17 > a3)
    {
      [(ASVRubberBand *)self minOffset];
      v19 = v18 - a3;
      [(ASVRubberBand *)self overshoot];
      v21 = (v19 / v20) + -1.0;
      if (v21 != 0.0)
      {
        v22 = (-1.0 / v21) + -1.0;
        [(ASVRubberBand *)self rubberBandFactor];
        v24 = v23;
        [(ASVRubberBand *)self minOffset];
        v26 = v25;
        [(ASVRubberBand *)self overshoot];
        return v26 + ((-v22 / v24) * v27);
      }
    }
  }

  else
  {
    [(ASVRubberBand *)self maxOffset];
    v7 = a3 - v6;
    [(ASVRubberBand *)self overshoot];
    v9 = (v7 / v8) + -1.0;
    if (v9 != 0.0)
    {
      v10 = (-1.0 / v9) + -1.0;
      [(ASVRubberBand *)self rubberBandFactor];
      v12 = v10 / v11;
      [(ASVRubberBand *)self overshoot];
      v14 = v13;
      [(ASVRubberBand *)self maxOffset];
      return v15 + (v12 * v14);
    }
  }

  return a3;
}

- (BOOL)offsetIsWithinRubberBandedRange:(float)a3
{
  [(ASVRubberBand *)self maxOffset];
  if (v5 < a3)
  {
    return 1;
  }

  [(ASVRubberBand *)self minOffset];
  return v7 > a3;
}

@end