@interface UIColor(AMSUICommonColor)
+ (id)_colorIdentifierDictionary;
+ (id)ams_colorFromDictionary:()AMSUICommonColor;
+ (id)ams_colorFromHexString:()AMSUICommonColor;
+ (id)ams_dynamicColorFromDictionary:()AMSUICommonColor;
+ (id)ams_namedColorFromDictionary:()AMSUICommonColor;
+ (id)ams_rgbColorFromDictionary:()AMSUICommonColor;
@end

@implementation UIColor(AMSUICommonColor)

+ (id)ams_colorFromHexString:()AMSUICommonColor
{
  v3 = a3;
  v4 = v3;
  if ([v3 hasPrefix:@"#"])
  {
    v4 = [v3 substringFromIndex:1];
  }

  if ([v4 length] < 6)
  {
    v5 = 0;
    goto LABEL_21;
  }

  v21 = 256;
  v6 = [v4 substringWithRange:{0, 2}];
  v7 = [MEMORY[0x1E696AE88] scannerWithString:v6];
  if ([v7 scanHexInt:&v21])
  {
    v20 = 256;
    v8 = [v4 substringWithRange:{2, 2}];
    v9 = [MEMORY[0x1E696AE88] scannerWithString:v8];

    if (![v9 scanHexInt:&v20])
    {
      v5 = 0;
LABEL_19:

      v7 = v9;
      goto LABEL_20;
    }

    v19 = 256;
    v10 = [v4 substringWithRange:{4, 2}];
    v11 = [MEMORY[0x1E696AE88] scannerWithString:v10];

    if (![v11 scanHexInt:&v19])
    {
      v5 = 0;
LABEL_18:

      v9 = v11;
      goto LABEL_19;
    }

    v18 = 256;
    v12 = [v4 length];
    v13 = 1.0;
    if (v12 < 8)
    {
      v15 = v11;
    }

    else
    {
      v14 = [v4 substringWithRange:{6, 2}];
      v15 = [MEMORY[0x1E696AE88] scannerWithString:v14];

      v16 = [v15 scanHexInt:&v18];
      if (!v16)
      {
        v5 = 0;
        goto LABEL_17;
      }

      v13 = vcvtd_n_f64_u32(v18, 8uLL);
    }

    v5 = [MEMORY[0x1E69DC888] colorWithRed:vcvtd_n_f64_u32(v21 green:8uLL) blue:vcvtd_n_f64_u32(v20 alpha:{8uLL), vcvtd_n_f64_u32(v19, 8uLL), v13}];
LABEL_17:
    v11 = v15;
    goto LABEL_18;
  }

  v5 = 0;
LABEL_20:

LABEL_21:

  return v5;
}

+ (id)ams_colorFromDictionary:()AMSUICommonColor
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"type"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if ([v7 isEqualToString:@"named"])
    {
      v9 = [a1 ams_namedColorFromDictionary:v5];
    }

    else
    {
      if ([v7 isEqualToString:@"dynamic"])
      {
        [a1 ams_dynamicColorFromDictionary:v5];
      }

      else
      {
        [a1 ams_rgbColorFromDictionary:v5];
      }
      v9 = ;
    }

    v8 = v9;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)ams_rgbColorFromDictionary:()AMSUICommonColor
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"red"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 objectForKeyedSubscript:@"green"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = [v3 objectForKeyedSubscript:@"blue"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  if (v5 && v7 && v9)
  {
    v11 = [v3 objectForKeyedSubscript:@"alpha"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    v13 = &unk_1F394AAD0;
    if (v12)
    {
      v13 = v12;
    }

    v14 = v13;

    v15 = MEMORY[0x1E69DC888];
    [v5 doubleValue];
    v17 = v16;
    [v7 doubleValue];
    v19 = v18;
    [v9 doubleValue];
    v21 = v20;
    [v14 doubleValue];
    v23 = v22;

    v10 = [v15 colorWithRed:v17 green:v19 blue:v21 alpha:v23];
  }

  return v10;
}

+ (id)ams_namedColorFromDictionary:()AMSUICommonColor
{
  v4 = [a3 objectForKeyedSubscript:@"name"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = [a1 _colorIdentifierDictionary];
    v7 = [v6 objectForKeyedSubscript:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)ams_dynamicColorFromDictionary:()AMSUICommonColor
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"lightColor"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  if (v6)
  {
    v7 = [v3 objectForKeyedSubscript:@"darkColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v10 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v8];
    if (v10 && ([v6 isEqual:v10] & 1) == 0)
    {
      v11 = [MEMORY[0x1E69DC888] ams_dynamicColorWithLightColor:v6 darkColor:v10];
    }

    else
    {
      v11 = v6;
    }

    v9 = v11;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_colorIdentifierDictionary
{
  v40[34] = *MEMORY[0x1E69E9840];
  v39[0] = @"black";
  v38 = [MEMORY[0x1E69DC888] blackColor];
  v40[0] = v38;
  v39[1] = @"blue";
  v37 = [MEMORY[0x1E69DC888] systemBlueColor];
  v40[1] = v37;
  v39[2] = @"brown";
  v36 = [MEMORY[0x1E69DC888] systemBrownColor];
  v40[2] = v36;
  v39[3] = @"clear";
  v35 = [MEMORY[0x1E69DC888] clearColor];
  v40[3] = v35;
  v39[4] = @"cyan";
  v34 = [MEMORY[0x1E69DC888] systemCyanColor];
  v40[4] = v34;
  v39[5] = @"gray";
  v33 = [MEMORY[0x1E69DC888] systemGrayColor];
  v40[5] = v33;
  v39[6] = @"green";
  v32 = [MEMORY[0x1E69DC888] systemGreenColor];
  v40[6] = v32;
  v39[7] = @"indigo";
  v31 = [MEMORY[0x1E69DC888] systemIndigoColor];
  v40[7] = v31;
  v39[8] = @"mint";
  v30 = [MEMORY[0x1E69DC888] systemMintColor];
  v40[8] = v30;
  v39[9] = @"orange";
  v29 = [MEMORY[0x1E69DC888] systemOrangeColor];
  v40[9] = v29;
  v39[10] = @"pink";
  v28 = [MEMORY[0x1E69DC888] systemPinkColor];
  v40[10] = v28;
  v39[11] = @"purple";
  v27 = [MEMORY[0x1E69DC888] systemPurpleColor];
  v40[11] = v27;
  v39[12] = @"red";
  v26 = [MEMORY[0x1E69DC888] systemRedColor];
  v40[12] = v26;
  v39[13] = @"teal";
  v25 = [MEMORY[0x1E69DC888] systemTealColor];
  v40[13] = v25;
  v39[14] = @"white";
  v24 = [MEMORY[0x1E69DC888] whiteColor];
  v40[14] = v24;
  v39[15] = @"yellow";
  v23 = [MEMORY[0x1E69DC888] systemYellowColor];
  v40[15] = v23;
  v39[16] = @"appTint";
  v0 = [MEMORY[0x1E69DC888] ams_appTint];
  v22 = v0;
  if (!v0)
  {
    v0 = [MEMORY[0x1E69DC888] systemBlueColor];
  }

  v40[16] = v0;
  v39[17] = @"defaultPlatformBackground";
  v21 = [MEMORY[0x1E69DC888] ams_defaultPlatformBackgroundColor];
  v40[17] = v21;
  v39[18] = @"primaryBackground";
  v20 = [MEMORY[0x1E69DC888] ams_primaryBackground];
  v40[18] = v20;
  v39[19] = @"primaryGroupedBackground";
  v19 = [MEMORY[0x1E69DC888] ams_primaryGroupedBackground];
  v40[19] = v19;
  v39[20] = @"secondaryBackground";
  v18 = [MEMORY[0x1E69DC888] ams_secondaryBackground];
  v40[20] = v18;
  v39[21] = @"secondaryGroupedBackground";
  v17 = [MEMORY[0x1E69DC888] ams_secondaryGroupedBackground];
  v40[21] = v17;
  v39[22] = @"componentBackground";
  v16 = [MEMORY[0x1E69DC888] ams_componentBackground];
  v40[22] = v16;
  v39[23] = @"placeholderBackground";
  v15 = [MEMORY[0x1E69DC888] ams_placeholderBackground];
  v40[23] = v15;
  v39[24] = @"tertiarySystemFillColor";
  v1 = [MEMORY[0x1E69DC888] ams_tertiarySystemFillColor];
  v40[24] = v1;
  v39[25] = @"defaultLine";
  v2 = [MEMORY[0x1E69DC888] ams_defaultLine];
  v40[25] = v2;
  v39[26] = @"primaryText";
  v3 = [MEMORY[0x1E69DC888] ams_primaryText];
  v40[26] = v3;
  v39[27] = @"secondaryText";
  v4 = [MEMORY[0x1E69DC888] ams_secondaryText];
  v40[27] = v4;
  v39[28] = @"tertiaryText";
  v5 = [MEMORY[0x1E69DC888] ams_tertiaryText];
  v40[28] = v5;
  v39[29] = @"quaternaryText";
  v6 = [MEMORY[0x1E69DC888] ams_quaternaryText];
  v40[29] = v6;
  v39[30] = @"primaryFill";
  v7 = [MEMORY[0x1E69DC888] systemFillColor];
  v40[30] = v7;
  v39[31] = @"secondaryFill";
  v8 = [MEMORY[0x1E69DC888] secondarySystemFillColor];
  v40[31] = v8;
  v39[32] = @"tertiaryFill";
  v9 = [MEMORY[0x1E69DC888] tertiarySystemFillColor];
  v40[32] = v9;
  v39[33] = @"quaternaryFill";
  v10 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
  v40[33] = v10;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:34];

  if (!v22)
  {
  }

  v11 = *MEMORY[0x1E69E9840];

  return v14;
}

@end