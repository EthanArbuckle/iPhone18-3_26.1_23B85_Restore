@interface ASVRubberBand
- (ASVRubberBand)initWithRubberBandFactor:(float)factor minOffset:(float)offset maxOffset:(float)maxOffset overshoot:(float)overshoot;
- (BOOL)offsetIsWithinRubberBandedRange:(float)range;
- (float)offsetForRubberBandOffset:(float)offset;
- (float)rubberBandOffsetForOffset:(float)offset;
@end

@implementation ASVRubberBand

- (ASVRubberBand)initWithRubberBandFactor:(float)factor minOffset:(float)offset maxOffset:(float)maxOffset overshoot:(float)overshoot
{
  v11.receiver = self;
  v11.super_class = ASVRubberBand;
  result = [(ASVRubberBand *)&v11 init];
  if (result)
  {
    result->_rubberBandFactor = factor;
    result->_minOffset = offset;
    result->_maxOffset = maxOffset;
    result->_overshoot = overshoot;
  }

  return result;
}

- (float)rubberBandOffsetForOffset:(float)offset
{
  [(ASVRubberBand *)self maxOffset];
  if (v5 >= offset)
  {
    [(ASVRubberBand *)self minOffset];
    if (v16 <= offset)
    {
      return offset;
    }

    else
    {
      [(ASVRubberBand *)self minOffset];
      v18 = v17 - offset;
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
    v7 = offset - v6;
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

- (float)offsetForRubberBandOffset:(float)offset
{
  [(ASVRubberBand *)self maxOffset];
  if (v5 >= offset)
  {
    [(ASVRubberBand *)self minOffset];
    if (v17 > offset)
    {
      [(ASVRubberBand *)self minOffset];
      v19 = v18 - offset;
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
    v7 = offset - v6;
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

  return offset;
}

- (BOOL)offsetIsWithinRubberBandedRange:(float)range
{
  [(ASVRubberBand *)self maxOffset];
  if (v5 < range)
  {
    return 1;
  }

  [(ASVRubberBand *)self minOffset];
  return v7 > range;
}

@end