@interface PKInterpolateColorAnimation
- (char)colorAtTime:(char *)time;
- (uint64_t)initWithStartColor:(void *)color endColor:(double)endColor startTime:(double)time duration:;
@end

@implementation PKInterpolateColorAnimation

- (uint64_t)initWithStartColor:(void *)color endColor:(double)endColor startTime:(double)time duration:
{
  colorCopy = color;
  if (self)
  {
    *(self + 72) = endColor;
    *(self + 80) = time;
    v11 = [a2 getRed:self + 8 green:self + 16 blue:self + 24 alpha:self + 32];
    v12 = [colorCopy getRed:self + 40 green:self + 48 blue:self + 56 alpha:self + 64];
    if (!v11 || (v12 & 1) == 0)
    {
      objc_storeStrong((self + 88), color);
    }

    selfCopy = self;
  }

  return self;
}

- (char)colorAtTime:(char *)time
{
  if (time)
  {
    v3 = *(time + 11);
    if (v3)
    {
      time = v3;
    }

    else
    {
      v4 = *(time + 10);
      v5 = a2 - *(time + 9);
      v6 = 0.0;
      if (v5 >= 0.0)
      {
        v6 = v5;
        if (v5 > v4)
        {
          v6 = *(time + 10);
        }
      }

      time = [MEMORY[0x1E69DC888] colorWithRed:vmlaq_n_f64(*(time + 8) green:vsubq_f64(*(time + 40) blue:*(time + 8)) alpha:{v6 / v4), vmlaq_n_f64(*(time + 24), vsubq_f64(*(time + 56), *(time + 24)), v6 / v4)}];
    }

    v2 = vars8;
  }

  return time;
}

@end