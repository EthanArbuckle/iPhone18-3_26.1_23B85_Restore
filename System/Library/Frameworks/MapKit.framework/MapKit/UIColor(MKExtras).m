@interface UIColor(MKExtras)
+ (id)_maps_colorFromHexString:()MKExtras;
+ (uint64_t)_getColorComponent:()MKExtras fromSubString:;
+ (uint64_t)_maps_getRed:()MKExtras green:blue:fromHue:saturation:value:;
- (id)_maps_hexString;
@end

@implementation UIColor(MKExtras)

- (id)_maps_hexString
{
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  if ([a1 getRed:&v20 green:&v19 blue:&v18 alpha:&v17])
  {
    goto LABEL_4;
  }

  v16 = 0.0;
  if ([a1 getWhite:&v16 alpha:&v17])
  {
    v18 = v16;
    v19 = v16;
    v20 = v16;
LABEL_4:
    v5 = v20;
    v6 = vcvtas_u32_f32(v5 * 255.0);
    v7 = v19;
    LODWORD(v2) = vcvtas_u32_f32(v7 * 255.0);
    v8 = v18;
    LODWORD(v3) = vcvtas_u32_f32(v8 * 255.0);
    v9 = v17;
    LODWORD(v4) = vcvtas_u32_f32(v9 * 255.0);
    v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%.2x%.2x%.2x%.2x", v6, v2, v3, v4];
    v11 = [v10 uppercaseString];

    goto LABEL_5;
  }

  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  if ([a1 getHue:&v15 saturation:&v14 brightness:&v13 alpha:&v17] && (objc_msgSend(MEMORY[0x1E69DC888], "_maps_getRed:green:blue:fromHue:saturation:value:", &v20, &v19, &v18, v15, v14, v13) & 1) != 0)
  {
    goto LABEL_4;
  }

  v11 = 0;
LABEL_5:

  return v11;
}

+ (uint64_t)_maps_getRed:()MKExtras green:blue:fromHue:saturation:value:
{
  v10 = a1 * 360.0;
  v11 = *a2.i64 * a3;
  a2.i32[1] = 1078853632;
  v12 = v10 / 60.0;
  *a2.i32 = v12;
  *a5.i32 = *a2.i32 + (truncf(*a2.i32 * 0.5) * -2.0);
  v13.i64[0] = 0x8000000080000000;
  v13.i64[1] = 0x8000000080000000;
  *a2.i32 = *vbslq_s8(v13, a5, a2).i32 + -1.0;
  if (*a2.i32 < 0.0)
  {
    *a2.i32 = -*a2.i32;
  }

  v14 = v11 * (1.0 - *a2.i32);
  if (v12 < 1.0)
  {
    v15 = v11;
    v16 = v14;
LABEL_7:
    v14 = 0.0;
    goto LABEL_8;
  }

  if (v12 < 2.0)
  {
    v15 = v14;
    v16 = v11;
    goto LABEL_7;
  }

  v15 = 0.0;
  if (v12 < 3.0)
  {
    v16 = v11;
    goto LABEL_8;
  }

  if (v12 < 4.0)
  {
    v16 = v14;
LABEL_21:
    v14 = v11;
    goto LABEL_8;
  }

  v16 = 0.0;
  if (v12 < 5.0)
  {
    v15 = v14;
    goto LABEL_21;
  }

  v15 = v11;
  if (v12 >= 6.0)
  {
    return 0;
  }

LABEL_8:
  v17 = a3 - v11;
  if (a8)
  {
    *a8 = v17 + v15;
  }

  if (a9)
  {
    *a9 = v17 + v16;
  }

  if (a10)
  {
    *a10 = v17 + v14;
  }

  return 1;
}

+ (uint64_t)_getColorComponent:()MKExtras fromSubString:
{
  v8 = 0;
  v5 = [MEMORY[0x1E696AE88] scannerWithString:a4];
  v6 = [v5 scanHexInt:&v8];

  if (a3 && v6)
  {
    *a3 = (v8 / 255.0);
  }

  return v6;
}

+ (id)_maps_colorFromHexString:()MKExtras
{
  v4 = a3;
  v5 = v4;
  if ([v4 hasPrefix:@"#"])
  {
    v5 = [v4 substringFromIndex:1];
  }

  if ([v5 length] == 6 || objc_msgSend(v5, "length") == 8)
  {
    v19 = 0.0;
    v20 = 0.0;
    v18 = 0.0;
    v6 = [v5 substringWithRange:{0, 2, 0}];
    v7 = [a1 _getColorComponent:&v20 fromSubString:v6];

    if (v7)
    {
      v8 = [v5 substringWithRange:{2, 2}];
      v9 = [a1 _getColorComponent:&v19 fromSubString:v8];

      if (v9)
      {
        v10 = [v5 substringWithRange:{4, 2}];
        v11 = [a1 _getColorComponent:&v18 fromSubString:v10];

        if (v11)
        {
          if ([v5 length] != 8)
          {
            v17 = 0x3FF0000000000000;
            v12 = 1.0;
LABEL_10:
            v13 = [MEMORY[0x1E69DC888] colorWithRed:v20 green:v19 blue:v18 alpha:{v12, v17}];
            goto LABEL_14;
          }

          v14 = [v5 substringWithRange:{6, 2}];
          v15 = [a1 _getColorComponent:&v17 fromSubString:v14];

          if (v15)
          {
            v12 = *&v17;
            goto LABEL_10;
          }
        }
      }
    }
  }

  v13 = 0;
LABEL_14:

  return v13;
}

@end