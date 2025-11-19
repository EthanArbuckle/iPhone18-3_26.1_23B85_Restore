@interface UIColor(MobileCal)
- (BOOL)isGreenOrYellow;
- (double)blueComponent;
- (double)brightnessComponent;
- (double)differenceFromColor:()MobileCal;
- (double)greenComponent;
- (double)hueComponent;
- (double)redComponent;
- (double)saturationComponent;
- (id)overlayWithColor:()MobileCal;
@end

@implementation UIColor(MobileCal)

- (double)hueComponent
{
  if (![a1 cgColor])
  {
    return 0.0;
  }

  v17 = 0.0;
  v18 = 0.0;
  v15 = 0;
  v16 = 0.0;
  [a1 getRed:&v18 green:&v17 blue:&v16 alpha:&v15];
  if (v18 < v17 || v18 < v16)
  {
    if (v17 < v18 || v17 < v16)
    {
      if (v17 >= v18)
      {
        v4 = v18;
      }

      else
      {
        v4 = v17;
      }

      v5 = v16;
    }

    else
    {
      if (v18 >= v16)
      {
        v4 = v16;
      }

      else
      {
        v4 = v18;
      }

      v5 = v17;
    }
  }

  else
  {
    if (v17 >= v16)
    {
      v4 = v16;
    }

    else
    {
      v4 = v17;
    }

    v5 = v18;
  }

  result = 0.0;
  if (v5 > 0.0 && v5 != v4)
  {
    v8 = (v5 - v18) / (v5 - v4);
    v9 = 5.0 - v8;
    v10 = (v5 - v17) / (v5 - v4);
    if (v4 == v18)
    {
      v9 = v10 + 3.0;
    }

    v11 = (v5 - v16) / (v5 - v4);
    v12 = 3.0 - v11;
    v13 = v8 + 1.0;
    if (v4 == v16)
    {
      v12 = v13;
    }

    if (v5 != v17)
    {
      v12 = v9;
    }

    v14 = v11 + 5.0;
    if (v4 != v17)
    {
      v14 = 1.0 - v10;
    }

    if (v5 != v18)
    {
      v14 = v12;
    }

    return v14 / 6.0;
  }

  return result;
}

- (double)saturationComponent
{
  v12 = 0.0;
  v10 = 0.0;
  v11 = 0.0;
  v9 = 0;
  [a1 getRed:&v12 green:&v11 blue:&v10 alpha:&v9];
  if (v12 >= v11)
  {
    v1 = v12;
  }

  else
  {
    v1 = v11;
  }

  if (v1 < v10)
  {
    v1 = v10;
  }

  v2 = v12 / v1;
  v3 = v11 / v1;
  v4 = v10 / v1;
  if (v2 <= v3)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v2 < v3)
  {
    v2 = v3;
  }

  if (v5 <= v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4;
  }

  if (v2 >= v4)
  {
    v4 = v2;
  }

  result = 0.0;
  if (v6 != v4)
  {
    v8 = v4 - v6;
    if ((v6 + v4) * 0.5 >= 0.5)
    {
      return v8 / (2.0 - v4 - v6);
    }

    else
    {
      return v8 / (v6 + v4);
    }
  }

  return result;
}

- (double)brightnessComponent
{
  v5 = 0.0;
  v3 = 0.0;
  v4 = 0.0;
  v2 = 0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  result = v5;
  if (v5 < v4)
  {
    result = v4;
  }

  if (result < v3)
  {
    return v3;
  }

  return result;
}

- (double)redComponent
{
  v5 = 0.0;
  v3 = 0;
  v4 = 0;
  v2 = 0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v5;
}

- (double)greenComponent
{
  v5 = 0;
  v3 = 0;
  v4 = 0.0;
  v2 = 0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v4;
}

- (double)blueComponent
{
  v5 = 0;
  v3 = 0.0;
  v4 = 0;
  v2 = 0;
  [a1 getRed:&v5 green:&v4 blue:&v3 alpha:&v2];
  return v3;
}

- (double)differenceFromColor:()MobileCal
{
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0;
  v11 = 0.0;
  v4 = a3;
  [a1 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];
  v8 = 0.0;
  v9 = 0.0;
  v6 = 0;
  v7 = 0.0;
  [v4 getRed:&v9 green:&v8 blue:&v7 alpha:&v6];

  return vabdd_f64(v13, v9) + vabdd_f64(v12, v8) + vabdd_f64(v11, v7);
}

- (BOOL)isGreenOrYellow
{
  [a1 hueComponent];
  if (v1 >= 0.13 && v1 <= 0.18)
  {
    return 1;
  }

  if (v1 <= 0.35)
  {
    return v1 >= 0.25;
  }

  return 0;
}

- (id)overlayWithColor:()MobileCal
{
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0;
  v15 = 0.0;
  v4 = a3;
  [a1 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];
  v12 = 0.0;
  v13 = 0.0;
  v10 = 0;
  v11 = 0.0;
  [v4 getRed:&v13 green:&v12 blue:&v11 alpha:&v10];

  if (v17 >= 0.5)
  {
    v5 = (1.0 - v17) * (1.0 - v13) / -0.498039215 + 1.0;
  }

  else
  {
    v5 = v17 * v13 / 0.498039215;
  }

  v17 = v5;
  if (v16 >= 0.5)
  {
    v6 = (1.0 - v16) * (1.0 - v12) / -0.498039215 + 1.0;
  }

  else
  {
    v6 = v16 * v12 / 0.498039215;
  }

  v16 = v6;
  if (v15 >= 0.5)
  {
    v7 = (1.0 - v15) * (1.0 - v11) / -0.498039215 + 1.0;
  }

  else
  {
    v7 = v15 * v11 / 0.498039215;
  }

  v15 = v7;
  v8 = [MEMORY[0x1E69DC888] colorWithRed:? green:? blue:? alpha:?];

  return v8;
}

@end