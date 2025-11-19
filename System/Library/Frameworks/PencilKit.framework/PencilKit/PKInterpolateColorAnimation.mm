@interface PKInterpolateColorAnimation
- (char)colorAtTime:(char *)a1;
- (uint64_t)initWithStartColor:(void *)a3 endColor:(double)a4 startTime:(double)a5 duration:;
@end

@implementation PKInterpolateColorAnimation

- (uint64_t)initWithStartColor:(void *)a3 endColor:(double)a4 startTime:(double)a5 duration:
{
  v10 = a3;
  if (a1)
  {
    *(a1 + 72) = a4;
    *(a1 + 80) = a5;
    v11 = [a2 getRed:a1 + 8 green:a1 + 16 blue:a1 + 24 alpha:a1 + 32];
    v12 = [v10 getRed:a1 + 40 green:a1 + 48 blue:a1 + 56 alpha:a1 + 64];
    if (!v11 || (v12 & 1) == 0)
    {
      objc_storeStrong((a1 + 88), a3);
    }

    v13 = a1;
  }

  return a1;
}

- (char)colorAtTime:(char *)a1
{
  if (a1)
  {
    v3 = *(a1 + 11);
    if (v3)
    {
      a1 = v3;
    }

    else
    {
      v4 = *(a1 + 10);
      v5 = a2 - *(a1 + 9);
      v6 = 0.0;
      if (v5 >= 0.0)
      {
        v6 = v5;
        if (v5 > v4)
        {
          v6 = *(a1 + 10);
        }
      }

      a1 = [MEMORY[0x1E69DC888] colorWithRed:vmlaq_n_f64(*(a1 + 8) green:vsubq_f64(*(a1 + 40) blue:*(a1 + 8)) alpha:{v6 / v4), vmlaq_n_f64(*(a1 + 24), vsubq_f64(*(a1 + 56), *(a1 + 24)), v6 / v4)}];
    }

    v2 = vars8;
  }

  return a1;
}

@end