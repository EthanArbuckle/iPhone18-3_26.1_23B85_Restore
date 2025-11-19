@interface UIColor(LPExtras)
+ (id)_lp_colorWithDynamicProvider:()LPExtras;
+ (id)_lp_colorWithDynamicProvider:()LPExtras name:;
- (id)_lp_CSSTextForcingUserInterfaceStyle:()LPExtras;
- (id)_lp_CSSTextHexFormatForcingUserInterfaceStyle:()LPExtras;
- (id)_lp_colorBlendedWithColor:()LPExtras;
- (id)_lp_colorBlendedWithColor:()LPExtras withFraction:;
- (id)_lp_colorForcingUserInterfaceStyle:()LPExtras;
- (uint64_t)_lp_isDynamicColor;
@end

@implementation UIColor(LPExtras)

+ (id)_lp_colorWithDynamicProvider:()LPExtras name:
{
  v5 = a4;
  v6 = [MEMORY[0x1E69DC888] colorWithDynamicProvider:a3];
  if (objc_opt_respondsToSelector())
  {
    [v6 _setDebugName:v5];
  }

  return v6;
}

+ (id)_lp_colorWithDynamicProvider:()LPExtras
{
  v3 = [a1 _lp_colorWithDynamicProvider:a3 name:0];

  return v3;
}

- (id)_lp_CSSTextForcingUserInterfaceStyle:()LPExtras
{
  v16 = 0.0;
  v17 = 0.0;
  v14 = 0;
  v15 = 0.0;
  v1 = [a1 _lp_colorForcingUserInterfaceStyle:?];
  [v1 getRed:&v17 green:&v16 blue:&v15 alpha:&v14];

  v2 = v17 * 255.0;
  v3 = llroundf(v2);
  v4 = v3 & ~(v3 >> 63);
  v5 = 255;
  if (v4 >= 255)
  {
    v4 = 255;
  }

  v6 = v16 * 255.0;
  v7 = llroundf(v6);
  v8 = v7 & ~(v7 >> 63);
  if (v8 >= 255)
  {
    v8 = 255;
  }

  v9 = v15 * 255.0;
  v10 = llroundf(v9);
  v11 = v10 & ~(v10 >> 63);
  if (v11 < 255)
  {
    v5 = v11;
  }

  v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"rgba(%d, %d, %d, %g)", v4, v8, v5, v14];

  return v12;
}

- (id)_lp_CSSTextHexFormatForcingUserInterfaceStyle:()LPExtras
{
  v19 = 0.0;
  v20 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v1 = [a1 _lp_colorForcingUserInterfaceStyle:?];
  [v1 getRed:&v20 green:&v19 blue:&v18 alpha:&v17];

  v3 = v19;
  v2 = v20;
  v4 = v18;
  if (v17 != 1.0)
  {
    v4 = v18 + 1.0 - v17;
    v3 = v19 + 1.0 - v17;
    v2 = v20 + 1.0 - v17;
  }

  v5 = v2 * 255.0;
  v6 = llroundf(v5);
  v7 = v6 & ~(v6 >> 63);
  v8 = 255;
  if (v7 >= 255)
  {
    v7 = 255;
  }

  v9 = v3 * 255.0;
  v10 = llroundf(v9);
  v11 = v10 & ~(v10 >> 63);
  if (v11 >= 255)
  {
    v11 = 255;
  }

  v12 = v4 * 255.0;
  v13 = llroundf(v12);
  v14 = v13 & ~(v13 >> 63);
  if (v14 < 255)
  {
    v8 = v14;
  }

  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"#%02X%02X%02X", v7, v11, v8];

  return v15;
}

- (id)_lp_colorForcingUserInterfaceStyle:()LPExtras
{
  if (a3 == 1)
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v5 = [MEMORY[0x1E69DD1B8] traitCollectionWithUserInterfaceStyle:v4];
  v6 = [a1 resolvedColorWithTraitCollection:v5];

  return v6;
}

- (id)_lp_colorBlendedWithColor:()LPExtras
{
  v1 = [a1 _colorBlendedWithColor:?];

  return v1;
}

- (id)_lp_colorBlendedWithColor:()LPExtras withFraction:
{
  v6 = a4;
  v7 = [a1 colorWithAlphaComponent:1.0 - a2];
  v8 = [v7 _lp_colorBlendedWithColor:v6];

  return v8;
}

- (uint64_t)_lp_isDynamicColor
{
  v2 = [a1 _lp_colorForcingUserInterfaceStyle:0];
  v3 = [a1 _lp_colorForcingUserInterfaceStyle:1];
  v4 = [v2 isEqual:v3];

  return v4 ^ 1u;
}

@end