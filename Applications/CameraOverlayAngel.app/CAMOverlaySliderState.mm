@interface CAMOverlaySliderState
+ (id)coachingState;
+ (id)hiddenState;
+ (id)hintWithNormalizedButtonOffset:(double)a3;
+ (id)presentedState;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToState:(id)a3;
- (CAMOverlaySliderState)init;
- (double)_effectiveNormalizedButtonOffsetFromState:(id)a3;
- (id)_modeDescription;
- (id)description;
@end

@implementation CAMOverlaySliderState

- (CAMOverlaySliderState)init
{
  v3.receiver = self;
  v3.super_class = CAMOverlaySliderState;
  result = [(CAMOverlaySliderState *)&v3 init];
  if (result)
  {
    result->__sliderMode = 0;
  }

  return result;
}

+ (id)hiddenState
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)presentedState
{
  v2 = objc_alloc_init(a1);
  v2[1] = 3;
  v2[2] = 0x3FE0000000000000;

  return v2;
}

+ (id)hintWithNormalizedButtonOffset:(double)a3
{
  v4 = objc_alloc_init(a1);
  *(v4 + 1) = 2;
  v4[2] = a3;

  return v4;
}

+ (id)coachingState
{
  v2 = objc_alloc_init(a1);
  v2[1] = 1;

  return v2;
}

- (double)_effectiveNormalizedButtonOffsetFromState:(id)a3
{
  v5 = a3;
  v6 = [(CAMOverlaySliderState *)self _sliderMode];
  if ((v6 - 1) < 3 || (self = v5, !v6))
  {
    [(CAMOverlaySliderState *)self _normalizedButtonOffset];
    v3 = v7;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CAMOverlaySliderState *)self isEqualToState:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToState:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v10 = 1;
  }

  else if (v4 && (v6 = [(CAMOverlaySliderState *)v4 _sliderMode], v6 == [(CAMOverlaySliderState *)self _sliderMode]))
  {
    [(CAMOverlaySliderState *)v5 _normalizedButtonOffset];
    v8 = v7;
    [(CAMOverlaySliderState *)self _normalizedButtonOffset];
    v10 = v8 == v9;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_modeDescription
{
  v3 = [(CAMOverlaySliderState *)self _sliderMode];
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      [(CAMOverlaySliderState *)self _normalizedButtonOffset];
      v5 = [NSString stringWithFormat:@"Hinting (pos %.3f)", v6];
    }

    else if (v3 == 3)
    {
      v5 = @"Presented";
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v4 = @"Coaching";
    if (v3 != 1)
    {
      v4 = 0;
    }

    if (v3)
    {
      v5 = v4;
    }

    else
    {
      v5 = @"Hidden";
    }
  }

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [(CAMOverlaySliderState *)self _modeDescription];
  v6 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, v5];

  return v6;
}

@end