@interface PKAlternativeStrokesAnimation
- (double)alphaAtTime:(uint64_t)time;
- (double)originalStrokeAlphaAtTime:(uint64_t)time;
- (id)initWithStrokes:(void *)strokes shape:(double)shape startTime:(double)time fadeDuration:;
@end

@implementation PKAlternativeStrokesAnimation

- (id)initWithStrokes:(void *)strokes shape:(double)shape startTime:(double)time fadeDuration:
{
  v10 = a2;
  strokesCopy = strokes;
  if (self)
  {
    v14.receiver = self;
    v14.super_class = PKAlternativeStrokesAnimation;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    self = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, strokes);
      objc_storeStrong(self + 3, a2);
      *(self + 4) = shape;
      self[5] = 0;
      *(self + 6) = time;
      self[7] = 0x3FE0000000000000;
    }
  }

  return self;
}

- (double)alphaAtTime:(uint64_t)time
{
  if (!time)
  {
    return 0.0;
  }

  if (*(time + 9) == 1)
  {
    v2 = *(time + 8) == 0;
    v3 = 0.0;
    v4 = 1.0;
LABEL_10:
    if (v2)
    {
      return v3;
    }

    return v4;
  }

  v5 = *(time + 40);
  v6 = *(time + 48);
  v4 = (a2 - *(time + 32)) / v6;
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v5 > 0.0)
  {
    v7 = (a2 - v5) / v6;
    if (v7 > 1.0)
    {
      v7 = 1.0;
    }

    v3 = v4 - v7;
    v2 = *(time + 8) == 0;
    goto LABEL_10;
  }

  return v4;
}

- (double)originalStrokeAlphaAtTime:(uint64_t)time
{
  if (!time)
  {
    return 0.0;
  }

  if (*(time + 9) == 1)
  {
    v2 = 0.0;
    if (!*(time + 8))
    {
      return 1.0;
    }
  }

  else
  {
    v3 = *(time + 40);
    v5 = *(time + 48);
    v4 = *(time + 56);
    v6 = (a2 - *(time + 32)) / v5;
    v7 = -v6;
    v8 = v6 <= 1.0;
    v9 = -1.0;
    if (v8)
    {
      v9 = v7;
    }

    v2 = v9 * v4 + 1.0;
    if (v3 > 0.0)
    {
      v10 = (a2 - v3) / v5;
      if (v10 > 1.0)
      {
        v10 = 1.0;
      }

      v11 = v2 * (1.0 - v10);
      v12 = v2 + (1.0 - v4) * v10;
      if (*(time + 8))
      {
        return v11;
      }

      else
      {
        return v12;
      }
    }
  }

  return v2;
}

@end