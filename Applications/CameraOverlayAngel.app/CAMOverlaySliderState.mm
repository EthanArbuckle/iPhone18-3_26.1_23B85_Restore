@interface CAMOverlaySliderState
+ (id)coachingState;
+ (id)hiddenState;
+ (id)hintWithNormalizedButtonOffset:(double)offset;
+ (id)presentedState;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToState:(id)state;
- (CAMOverlaySliderState)init;
- (double)_effectiveNormalizedButtonOffsetFromState:(id)state;
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
  v2 = objc_alloc_init(self);

  return v2;
}

+ (id)presentedState
{
  v2 = objc_alloc_init(self);
  v2[1] = 3;
  v2[2] = 0x3FE0000000000000;

  return v2;
}

+ (id)hintWithNormalizedButtonOffset:(double)offset
{
  v4 = objc_alloc_init(self);
  *(v4 + 1) = 2;
  v4[2] = offset;

  return v4;
}

+ (id)coachingState
{
  v2 = objc_alloc_init(self);
  v2[1] = 1;

  return v2;
}

- (double)_effectiveNormalizedButtonOffsetFromState:(id)state
{
  stateCopy = state;
  _sliderMode = [(CAMOverlaySliderState *)self _sliderMode];
  if ((_sliderMode - 1) < 3 || (self = stateCopy, !_sliderMode))
  {
    [(CAMOverlaySliderState *)self _normalizedButtonOffset];
    v3 = v7;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(CAMOverlaySliderState *)self isEqualToState:equalCopy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToState:(id)state
{
  stateCopy = state;
  v5 = stateCopy;
  if (stateCopy == self)
  {
    v10 = 1;
  }

  else if (stateCopy && (v6 = [(CAMOverlaySliderState *)stateCopy _sliderMode], v6 == [(CAMOverlaySliderState *)self _sliderMode]))
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
  _sliderMode = [(CAMOverlaySliderState *)self _sliderMode];
  if (_sliderMode > 1)
  {
    if (_sliderMode == 2)
    {
      [(CAMOverlaySliderState *)self _normalizedButtonOffset];
      v5 = [NSString stringWithFormat:@"Hinting (pos %.3f)", v6];
    }

    else if (_sliderMode == 3)
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
    if (_sliderMode != 1)
    {
      v4 = 0;
    }

    if (_sliderMode)
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
  _modeDescription = [(CAMOverlaySliderState *)self _modeDescription];
  v6 = [NSString stringWithFormat:@"<%@ %p: %@>", v4, self, _modeDescription];

  return v6;
}

@end