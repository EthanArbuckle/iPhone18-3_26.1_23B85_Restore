@interface ABDeviceButtonAnimator
- (double)opacity;
- (double)pressProgress;
- (id)color;
- (id)initWithBaseColor:(id *)color;
- (uint64_t)isRingHighlightVisible;
- (uint64_t)islandMode;
- (uint64_t)setBaseColor:(int)color animated:;
- (uint64_t)update;
- (void)setActive:(uint64_t)active;
@end

@implementation ABDeviceButtonAnimator

- (id)initWithBaseColor:(id *)color
{
  v3 = a2;
  if (color)
  {
    v13.receiver = color;
    v13.super_class = ABDeviceButtonAnimator;
    color = objc_msgSendSuper2(&v13, sel_init);
    if (color)
    {
      v5 = objc_opt_new();
      v6 = color[1];
      color[1] = v5;

      v7 = objc_opt_new();
      v8 = color[2];
      color[2] = v7;

      [color[2] setBounce:0.0 duration:0.35];
      [color[2] setOutput:0.0];
      v9 = objc_opt_new();
      v10 = color[3];
      color[3] = v9;

      [color[3] setOutput:0.0];
      [color[3] setBounce:0.0 duration:0.45];
      v11 = objc_opt_new();
      v12 = color[4];
      color[4] = v11;

      [color[4] setOutput:0.0];
      [(ABDeviceButtonAnimator *)color setBaseColor:v3 animated:0];
    }
  }

  return color;
}

- (uint64_t)setBaseColor:(int)color animated:
{
  v5 = a2;
  v6 = v5;
  if (self)
  {
    v10 = v5;
    [(ABColorInterpolator *)*(self + 8) setColor:v5 animated:color];
    v7 = 0.0;
    if (v10)
    {
      v7 = 1.0;
    }

    v8 = *(self + 16);
    if (color)
    {
      v5 = [v8 setInput:v7];
    }

    else
    {
      v5 = [v8 setOutput:v7];
    }

    v6 = v10;
  }

  return MEMORY[0x2821F96F8](v5, v6);
}

- (void)setActive:(uint64_t)active
{
  if (active)
  {
    v2 = a2;
    if (*(active + 48) != a2)
    {
      *(active + 48) = a2;
      v4 = OUTLINED_FUNCTION_0_0();
      [v5 setInput:v4];
      [*(active + 24) setInput:0.0];
      *(active + 49) = 0;
      *(active + 56) = 0;
      if (v2)
      {
        v6 = MEMORY[0x277CCABB0];
        v11 = [MEMORY[0x277CBEAA8] now];
        [v11 timeIntervalSinceReferenceDate];
        v8 = [v6 numberWithDouble:v7 + -5.0 + 0.75];
        v9 = *(active + 40);
        *(active + 40) = v8;

        v10 = v11;
      }

      else
      {
        v10 = *(active + 40);
        *(active + 40) = 0;
      }
    }
  }
}

- (id)color
{
  selfCopy = self;
  if (self)
  {
    color = [(ABColorInterpolator *)self[1] color];
    [selfCopy[4] output];
    if (color)
    {
      v8 = 0.0;
      v9 = 0.0;
      v4 = v3 * 0.2 + 0.0;
      v6 = 0.0;
      v7 = 0.0;
      [color getRed:&v9 green:&v8 blue:&v7 alpha:&v6];
      selfCopy = [MEMORY[0x277D75348] colorWithRed:fmin(v4 + v9 green:1.0) blue:fmin(v4 + v8 alpha:{1.0), fmin(v4 + v7, 1.0), v6}];
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (double)opacity
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 16) output];
  return result;
}

- (double)pressProgress
{
  if (!self)
  {
    return 0.0;
  }

  [*(self + 24) output];
  return result;
}

- (uint64_t)update
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  if (*(result + 48) != 1)
  {
    return result;
  }

  v2 = [MEMORY[0x277CBEAA8] now];
  [v2 timeIntervalSinceReferenceDate];
  v4 = v3;

  [*(v1 + 40) doubleValue];
  if (v4 - v5 > 5.0)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithDouble:v4];
    v7 = *(v1 + 40);
    *(v1 + 40) = v6;

    result = [*(v1 + 24) setInput:1.0];
    *(v1 + 49) = 0;
    v8 = 1;
LABEL_5:
    *(v1 + 56) = v8;
    return result;
  }

  result = [*(v1 + 40) doubleValue];
  if (v4 - v9 > 2.0)
  {
    *(v1 + 56) = 0;
    return result;
  }

  [*(v1 + 40) doubleValue];
  if (v4 - v10 > 1.0)
  {
    [*(v1 + 24) setInput:0.0];
    v11 = OUTLINED_FUNCTION_0_0();
    [v12 setBounce:v11 duration:2.0];
    v14 = OUTLINED_FUNCTION_0_0();
LABEL_11:

    return [v13 setInput:v14];
  }

  result = [*(v1 + 40) doubleValue];
  if (v4 - v15 > 0.8)
  {
    *(v1 + 49) = 1;
    v8 = 3;
    goto LABEL_5;
  }

  result = [*(v1 + 40) doubleValue];
  if (v4 - v16 > 0.1)
  {
    *(v1 + 56) = 2;
    v17 = OUTLINED_FUNCTION_0_0();
    [v18 setBounce:v17 duration:3.0];
    v13 = *(v1 + 32);
    v14 = 1.0;
    goto LABEL_11;
  }

  return result;
}

- (uint64_t)islandMode
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

- (uint64_t)isRingHighlightVisible
{
  if (self)
  {
    v1 = *(self + 49);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

@end