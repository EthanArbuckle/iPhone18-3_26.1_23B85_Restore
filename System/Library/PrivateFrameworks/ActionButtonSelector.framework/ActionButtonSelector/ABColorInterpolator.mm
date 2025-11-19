@interface ABColorInterpolator
- (ABColorInterpolator)init;
- (void)color;
- (void)setColor:(int)a3 animated:;
@end

@implementation ABColorInterpolator

- (ABColorInterpolator)init
{
  v12.receiver = self;
  v12.super_class = ABColorInterpolator;
  v2 = [(ABColorInterpolator *)&v12 init];
  if (v2)
  {
    v3 = objc_opt_new();
    red = v2->_red;
    v2->_red = v3;

    [(ABFloatSpringProperty *)v2->_red setBounce:0.0 duration:0.25];
    v5 = objc_opt_new();
    green = v2->_green;
    v2->_green = v5;

    [(ABFloatSpringProperty *)v2->_green setBounce:0.0 duration:0.25];
    v7 = objc_opt_new();
    blue = v2->_blue;
    v2->_blue = v7;

    [(ABFloatSpringProperty *)v2->_blue setBounce:0.0 duration:0.25];
    v9 = objc_opt_new();
    alpha = v2->_alpha;
    v2->_alpha = v9;

    [(ABFloatSpringProperty *)v2->_alpha setBounce:0.0 duration:0.25];
    v2->_isEmpty = 1;
  }

  return v2;
}

- (void)setColor:(int)a3 animated:
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v7 = *(a1 + 40);
    *(a1 + 40) = v5 == 0;
    v8 = *(a1 + 48);
    *(a1 + 48) = 0;

    if ((*(a1 + 40) & 1) == 0)
    {
      OUTLINED_FUNCTION_0_3();
      [v6 getRed:? green:? blue:? alpha:?];
      v9 = *(a1 + 8);
      if (v6)
      {
        v10 = v7;
      }

      else
      {
        v10 = 0;
      }

      if ((v10 & 1) != 0 || !a3)
      {
        [v9 setOutput:v14];
        [*(a1 + 16) setOutput:v13];
        [*(a1 + 24) setOutput:v12];
        [*(a1 + 32) setOutput:v11];
      }

      else
      {
        [v9 setInput:v14];
        [*(a1 + 16) setInput:v13];
        [*(a1 + 24) setInput:v12];
        [*(a1 + 32) setInput:v11];
      }
    }
  }
}

- (void)color
{
  if (a1)
  {
    v2 = a1;
    if (a1[5])
    {
      a1 = 0;
    }

    else
    {
      if (a1[6])
      {
        OUTLINED_FUNCTION_0_3();
        [v3 getRed:? green:? blue:? alpha:?];
        [v2[1] output];
        if (v23 == v4)
        {
          [v2[2] output];
          if (v22 == v5)
          {
            [v2[3] output];
            if (v21 == v6)
            {
              [v2[4] output];
              if (v20 == v7)
              {
                goto LABEL_11;
              }
            }
          }
        }
      }

      v8 = MEMORY[0x277D75348];
      [v2[1] output];
      v10 = v9;
      [v2[2] output];
      v12 = v11;
      [v2[3] output];
      v14 = v13;
      [v2[4] output];
      v16 = [v8 colorWithRed:v10 green:v12 blue:v14 alpha:v15];
      v17 = v2[6];
      v2[6] = v16;

      if ((v2[5] & 1) == 0)
      {
LABEL_11:
        v18 = v2[6];
      }

      else
      {
        v18 = 0;
      }

      a1 = v18;
    }

    v1 = vars8;
  }

  return a1;
}

@end