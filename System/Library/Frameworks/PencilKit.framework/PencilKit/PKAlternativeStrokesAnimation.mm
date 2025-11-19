@interface PKAlternativeStrokesAnimation
- (double)alphaAtTime:(uint64_t)a1;
- (double)originalStrokeAlphaAtTime:(uint64_t)a1;
- (id)initWithStrokes:(void *)a3 shape:(double)a4 startTime:(double)a5 fadeDuration:;
@end

@implementation PKAlternativeStrokesAnimation

- (id)initWithStrokes:(void *)a3 shape:(double)a4 startTime:(double)a5 fadeDuration:
{
  v10 = a2;
  v11 = a3;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = PKAlternativeStrokesAnimation;
    v12 = objc_msgSendSuper2(&v14, sel_init);
    a1 = v12;
    if (v12)
    {
      objc_storeStrong(v12 + 2, a3);
      objc_storeStrong(a1 + 3, a2);
      *(a1 + 4) = a4;
      a1[5] = 0;
      *(a1 + 6) = a5;
      a1[7] = 0x3FE0000000000000;
    }
  }

  return a1;
}

- (double)alphaAtTime:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if (*(a1 + 9) == 1)
  {
    v2 = *(a1 + 8) == 0;
    v3 = 0.0;
    v4 = 1.0;
LABEL_10:
    if (v2)
    {
      return v3;
    }

    return v4;
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v4 = (a2 - *(a1 + 32)) / v6;
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
    v2 = *(a1 + 8) == 0;
    goto LABEL_10;
  }

  return v4;
}

- (double)originalStrokeAlphaAtTime:(uint64_t)a1
{
  if (!a1)
  {
    return 0.0;
  }

  if (*(a1 + 9) == 1)
  {
    v2 = 0.0;
    if (!*(a1 + 8))
    {
      return 1.0;
    }
  }

  else
  {
    v3 = *(a1 + 40);
    v5 = *(a1 + 48);
    v4 = *(a1 + 56);
    v6 = (a2 - *(a1 + 32)) / v5;
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
      if (*(a1 + 8))
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