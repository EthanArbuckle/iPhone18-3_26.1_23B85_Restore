@interface AMSUIAppearance
+ (id)_accessoryButtonBackgroundColorWithDictionary:(id)a3;
+ (id)_accessoryButtonColorWithDictionary:(id)a3;
+ (id)_accessoryButtonFontWithDictionary:(id)a3;
+ (id)_accessorySecondaryButtonBackgroundColorWithDictionary:(id)a3;
+ (id)_accessorySecondaryButtonColorWithDictionary:(id)a3;
+ (id)_accessorySecondaryButtonFontWithDictionary:(id)a3;
+ (id)_backgroundColorWithDictionary:(id)a3;
+ (id)_backgroundColorWithMetadataDictionary:(id)a3;
+ (id)_backgroundImageWithDictionary:(id)a3;
+ (id)_backgroundImageWithMetadataDictionary:(id)a3;
+ (id)_defaultBackgroundColorForStyle:(unint64_t)a3 withTraitCollection:(id)a4;
+ (id)_defaultButtonBackgroundColorForStyle:(unint64_t)a3 withTraitCollection:(id)a4;
+ (id)_defaultButtonContentColorForStyle:(unint64_t)a3;
+ (id)_defaultButtonIconColorForStyle:(unint64_t)a3;
+ (id)_defaultButtonTextColorForStyle:(unint64_t)a3 withTraitCollection:(id)a4;
+ (id)_defaultButtonTextFontForStyle:(unint64_t)a3 withTraitCollection:(id)a4;
+ (id)_defaultImageViewColorForStyle:(unint64_t)a3;
+ (id)_defaultMessageFontForStyle:(unint64_t)a3 withTraitCollection:(id)a4;
+ (id)_defaultTitleFontForStyle:(unint64_t)a3 withTraitCollection:(id)a4;
+ (id)_footerButtonBackgroundColorWithDictionary:(id)a3;
+ (id)_footerButtonColorWithDictionary:(id)a3;
+ (id)_footerButtonFontWithDictionary:(id)a3;
+ (id)_gradientImageWithDictionary:(id)a3;
+ (id)_gradientLayerTypeForRawValue:(id)a3;
+ (id)_imageSymbolConfigurationWithDictionary:(id)a3;
+ (id)_imageTintColorWithDictionary:(id)a3;
+ (id)_impressionAnimationIdentifierWithDictionary:(id)a3;
+ (id)_messageFontWithDictionary:(id)a3;
+ (id)_messageTextColorWithDictionary:(id)a3;
+ (id)_separatorColorWithDictionary:(id)a3;
+ (id)_titleFontWithDictionary:(id)a3;
+ (id)_titleTextColorWithDictionary:(id)a3;
+ (int64_t)_iconAnimationPlayCount:(id)a3;
+ (int64_t)_primaryImageRenderingModeWithDictionary:(id)a3;
- (AMSUIAppearance)init;
- (AMSUIAppearance)initWithDictionary:(id)a3;
@end

@implementation AMSUIAppearance

- (AMSUIAppearance)init
{
  v3.receiver = self;
  v3.super_class = AMSUIAppearance;
  return [(AMSUIAppearance *)&v3 init];
}

- (AMSUIAppearance)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [(AMSUIAppearance *)self init];
  if (!v5)
  {
LABEL_11:
    v8 = v5;
    goto LABEL_12;
  }

  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"subtitleFont"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    messageFontDictionary = v5->__messageFontDictionary;
    v5->__messageFontDictionary = v7;

    v10 = [v4 objectForKeyedSubscript:@"titleFont"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    titleFontDictionary = v5->__titleFontDictionary;
    v5->__titleFontDictionary = v11;

    goto LABEL_11;
  }

  v8 = 0;
LABEL_12:

  return v8;
}

+ (id)_accessoryButtonColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"accessoryButtonColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"accessoryButtonColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_accessoryButtonBackgroundColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"accessoryButtonBackgroundColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"accessoryButtonBackgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_accessorySecondaryButtonBackgroundColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"accessorySecondaryButtonBackgroundColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"accessorySecondaryButtonBackgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_accessorySecondaryButtonColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"accessorySecondaryButtonColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"accessorySecondaryButtonColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_accessoryButtonFontWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"accessoryButtonFont"];
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
    v6 = [AMSUIFontParser fontWithDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"accessoryButtonColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_accessorySecondaryButtonFontWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"accessorySecondaryButtonFont"];
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
    v6 = [AMSUIFontParser fontWithDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"accessorySecondaryButtonColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_backgroundColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"background"];
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
    v6 = [AMSUIAppearance _backgroundColorWithMetadataDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"backgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_backgroundColorWithMetadataDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"backgroundType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if ([v5 isEqualToString:@"solid"])
  {
    v6 = [v3 objectForKeyedSubscript:@"color"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)_backgroundImageWithDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"background"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [AMSUIAppearance _backgroundImageWithMetadataDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_backgroundImageWithMetadataDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"backgroundType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if ([v6 isEqualToString:@"gradient"])
  {
    v7 = [a1 _gradientImageWithDictionary:v4];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_footerButtonBackgroundColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"footerButtonBackgroundColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"footerButtonBackgroundColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_footerButtonColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"footerButtonColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"footerButtonColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_footerButtonFontWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"footerButtonFont"];
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
    v6 = [AMSUIFontParser fontWithDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"footerButtonFont"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (int64_t)_iconAnimationPlayCount:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"iconAnimationPlayCount"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = -90;
  }

  return v5;
}

+ (id)_imageSymbolConfigurationWithDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"iconSymbolConfiguration"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [MEMORY[0x1E69DCAD8] ams_imageSymbolConfigurationWithDictionary:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_imageTintColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"imageTintColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"imageTintColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_impressionAnimationIdentifierWithDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"impressionAnimationIdentifier"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_messageFontWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"subtitleFont"];
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
    v6 = [AMSUIFontParser fontWithDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"subtitleFont"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_messageTextColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"subtitleColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"subtitleColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_separatorColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"separatorColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"separatorColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_titleFontWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"titleFont"];
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
    v6 = [AMSUIFontParser fontWithDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"titleFont"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (id)_titleTextColorWithDictionary:(id)a3
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"titleColor"];
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
    v6 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:v5];
  }

  else
  {
    v7 = [v3 objectForKeyedSubscript:@"titleColor"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v7;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

+ (int64_t)_primaryImageRenderingModeWithDictionary:(id)a3
{
  v3 = [a3 objectForKeyedSubscript:@"primaryImageRenderingMode"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = [v4 integerValue];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_gradientLayerTypeForRawValue:(id)a3
{
  v12[3] = *MEMORY[0x1E69E9840];
  v3 = *MEMORY[0x1E6979DA0];
  v11[0] = @"axial";
  v11[1] = @"conic";
  v4 = *MEMORY[0x1E6979DA8];
  v12[0] = v3;
  v12[1] = v4;
  v11[2] = @"radial";
  v12[2] = *MEMORY[0x1E6979DB0];
  v5 = MEMORY[0x1E695DF20];
  v6 = a3;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [v7 objectForKeyedSubscript:v6];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_gradientImageWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E6979380] layer];
  v6 = [v4 objectForKeyedSubscript:@"gradientType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [v5 setFrame:{0.0, 0.0, 400.0, 400.0}];
  if (v7)
  {
    v8 = [a1 _gradientLayerTypeForRawValue:v7];
    if (v8)
    {
      [v5 setType:v8];
    }
  }

  v9 = [v4 objectForKeyedSubscript:@"colors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v10 && [v10 count])
  {
    v11 = [v10 ams_mapWithTransformIgnoresNil:&__block_literal_global_1];
    [v5 setColors:v11];
  }

  v12 = [v4 objectForKeyedSubscript:@"locations"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    [v5 setLocations:v13];
  }

  v14 = [v4 objectForKeyedSubscript:@"startPoint"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15 && [v15 count] == 2)
  {
    v16 = [v15 objectAtIndexedSubscript:0];
    [v16 doubleValue];
    v18 = v17;
    v19 = [v15 objectAtIndexedSubscript:1];
    [v19 doubleValue];
    [v5 setStartPoint:{v18, v20}];
  }

  v21 = [v4 objectForKeyedSubscript:@"endPoint"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v22 && [v22 count] == 2)
  {
    v23 = [v22 objectAtIndexedSubscript:0];
    [v23 doubleValue];
    v25 = v24;
    v26 = [v22 objectAtIndexedSubscript:1];
    [v26 doubleValue];
    [v5 setEndPoint:{v25, v27}];
  }

  [v5 frame];
  v34.width = v28;
  v34.height = v29;
  UIGraphicsBeginImageContext(v34);
  [v5 renderInContext:UIGraphicsGetCurrentContext()];
  v30 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  v31 = [v30 resizableImageWithCapInsets:1 resizingMode:{*MEMORY[0x1E69DDCE0], *(MEMORY[0x1E69DDCE0] + 8), *(MEMORY[0x1E69DDCE0] + 16), *(MEMORY[0x1E69DDCE0] + 24)}];

  return v31;
}

id __48__AMSUIAppearance__gradientImageWithDictionary___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E69DC888] ams_colorFromDictionary:a2];
  v3 = [v2 CGColor];

  return v3;
}

+ (id)_defaultButtonBackgroundColorForStyle:(unint64_t)a3 withTraitCollection:(id)a4
{
  v5 = a4;
  if (+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", a3) && [v5 userInterfaceIdiom] == 6)
  {
    v6 = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    if ([AMSUIAppearance _isBannerStyle:a3]|| [AMSUIAppearance _isBubbleTipStyle:a3])
    {
      v7 = [MEMORY[0x1E69DC888] systemBlueColor];
      v8 = MEMORY[0x1E69DC888];
      v9 = [v7 colorWithAlphaComponent:0.08];
      v10 = [v7 colorWithAlphaComponent:0.18];
      v11 = [v8 ams_dynamicColorWithLightColor:v9 darkColor:v10];

      goto LABEL_14;
    }

    if ([AMSUIAppearance _isBubbleTipStyle:a3])
    {
      v6 = [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
      {
        v11 = 0;
        goto LABEL_14;
      }

      v6 = [MEMORY[0x1E69DC888] clearColor];
    }
  }

  v11 = v6;
LABEL_14:

  return v11;
}

+ (id)_defaultBackgroundColorForStyle:(unint64_t)a3 withTraitCollection:(id)a4
{
  v6 = a4;
  if (a3 <= 2)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        if (a3 != 2)
        {
          goto LABEL_22;
        }

        v8 = MEMORY[0x1E69DC888];
        v9 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
        v10 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
        goto LABEL_19;
      }
    }

    else if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
    {
      v8 = MEMORY[0x1E69DC888];
      v9 = [MEMORY[0x1E69DC888] ams_secondaryBackground];
      v10 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
LABEL_19:
      v11 = v10;
      v4 = [v8 ams_dynamicColorWithLightColor:v9 darkColor:v10];

      goto LABEL_22;
    }

    v7 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    goto LABEL_21;
  }

  if (a3 > 4)
  {
    if (a3 == 5)
    {
      v7 = [MEMORY[0x1E69DC888] ams_primaryBackground];
      goto LABEL_21;
    }

    if (a3 != 6)
    {
      goto LABEL_22;
    }
  }

  else if (a3 != 3)
  {
    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
    {
      v7 = [MEMORY[0x1E69DC888] systemFillColor];
    }

    else
    {
      v7 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }

    goto LABEL_21;
  }

  v7 = [MEMORY[0x1E69DC888] ams_secondaryBackground];
LABEL_21:
  v4 = v7;
LABEL_22:

  return v4;
}

+ (id)_defaultButtonContentColorForStyle:(unint64_t)a3
{
  if (a3 > 6)
  {
    goto LABEL_10;
  }

  if (((1 << a3) & 0x4C) != 0 || ((1 << a3) & 0x12) != 0)
  {
    goto LABEL_4;
  }

  if (a3 == 5)
  {
    v3 = [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
LABEL_10:
    if (a3)
    {
      v3 = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
      {
LABEL_4:
        v3 = [MEMORY[0x1E69DC888] systemBlueColor];
        goto LABEL_5;
      }

      v3 = 0;
    }
  }

LABEL_5:

  return v3;
}

+ (id)_defaultButtonTextColorForStyle:(unint64_t)a3 withTraitCollection:(id)a4
{
  v5 = a4;
  if ([AMSUIAppearance _isBannerStyle:a3]|| [AMSUIAppearance _isBubbleTipStyle:a3])
  {
    if (+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", a3) && [v5 userInterfaceIdiom] == 6)
    {
      v6 = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      v6 = [MEMORY[0x1E69DC888] systemBlueColor];
    }
  }

  else
  {
    v6 = [AMSUIAppearance _defaultButtonContentColorForStyle:a3];
  }

  v7 = v6;

  return v7;
}

+ (id)_defaultButtonIconColorForStyle:(unint64_t)a3
{
  if (a3 != 5 && (a3 || _os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0))
  {
    v4 = [AMSUIAppearance _defaultButtonContentColorForStyle:a3];
  }

  else
  {
    v4 = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  return v4;
}

+ (id)_defaultButtonTextFontForStyle:(unint64_t)a3 withTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [v5 userInterfaceIdiom];
  v7 = *MEMORY[0x1E69DDCF8];
  v8 = [MEMORY[0x1E695DF90] dictionary];
  if (a3 > 6)
  {
    goto LABEL_16;
  }

  if (((1 << a3) & 0x4C) == 0)
  {
    if (((1 << a3) & 0x12) != 0)
    {
      if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (a3 == 5)
    {
      if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

LABEL_16:
    if (a3)
    {
      goto LABEL_32;
    }

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
LABEL_19:
      v10 = *MEMORY[0x1E69DDD28];

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
      [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB990]];
      v7 = v10;
      goto LABEL_31;
    }

    if ([v5 userInterfaceIdiom] == 1)
    {
      v12 = MEMORY[0x1E69DDD28];
LABEL_30:
      v9 = v7;
      v7 = *v12;
      goto LABEL_31;
    }

LABEL_27:
    v12 = MEMORY[0x1E69DDD80];
    goto LABEL_30;
  }

  if (v6 != 5)
  {
    if ([v5 userInterfaceIdiom] == 6)
    {
      v11 = 0;
      goto LABEL_39;
    }

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && a3 != 6)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
      [v8 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB990]];

LABEL_29:
      v12 = MEMORY[0x1E69DDD40];
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (a3 != 6)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
      [v8 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB990]];
LABEL_31:

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_32:
  v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:v5];
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    v15 = [v14 fontDescriptorWithSymbolicTraits:0x8000];
    goto LABEL_37;
  }

  if ([v8 count])
  {
    v15 = [v14 fontDescriptorByAddingAttributes:v8];
LABEL_37:
    v16 = v15;

    v14 = v16;
  }

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];

LABEL_39:

  return v11;
}

+ (id)_defaultImageViewColorForStyle:(unint64_t)a3
{
  v3 = 0;
  if (a3 <= 6)
  {
    if (((1 << a3) & 0x4C) != 0)
    {
      v3 = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      if (((1 << a3) & 3) != 0)
      {
LABEL_4:
        v3 = [MEMORY[0x1E69DC888] labelColor];
        goto LABEL_6;
      }

      if (a3 == 4)
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          goto LABEL_4;
        }

        v3 = 0;
      }
    }
  }

LABEL_6:

  return v3;
}

+ (id)_defaultMessageFontForStyle:(unint64_t)a3 withTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  v8 = MEMORY[0x1E69DDD80];
  if (IsAccessibilityCategory)
  {
    goto LABEL_18;
  }

  if (a3 == 4)
  {
    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (a3 == 1)
  {
    if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
    {
      v8 = MEMORY[0x1E69DDD08];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (a3)
  {
LABEL_15:
    if (!+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", a3) || [v5 userInterfaceIdiom] != 6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = MEMORY[0x1E69DDD28];
    goto LABEL_18;
  }

  if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
  {
    goto LABEL_17;
  }

  if ([v5 userInterfaceIdiom] == 1)
  {
    v8 = MEMORY[0x1E69DDD28];
  }

LABEL_18:
  v9 = *v8;
  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:v5];
  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:0.0];

  return v11;
}

+ (id)_defaultTitleFontForStyle:(unint64_t)a3 withTraitCollection:(id)a4
{
  v5 = a4;
  v6 = [v5 preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v6);

  if (IsAccessibilityCategory)
  {
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] compatibleWithTraitCollection:v5];
    v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    goto LABEL_26;
  }

  v8 = *MEMORY[0x1E69DDCF8];
  v10 = [MEMORY[0x1E695DF90] dictionary];
  if (+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", a3) && [v5 userInterfaceIdiom] == 6)
  {
    v11 = *MEMORY[0x1E69DDD40];

    v12 = 0;
    v8 = v11;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 2;
    if (a3)
    {
      goto LABEL_8;
    }
  }

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (![AMSUIAppearance _isBannerStyle:a3])
  {
    if (a3 == 5)
    {
      v12 = v12 | 0x8000;
      goto LABEL_21;
    }

    if (a3 != 6)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    v13 = MEMORY[0x1E69DDD28];
LABEL_20:
    v14 = *v13;

    v8 = v14;
    goto LABEL_21;
  }

  if (a3 != 4)
  {
LABEL_19:
    v13 = MEMORY[0x1E69DDD80];
    goto LABEL_20;
  }

LABEL_21:
  v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:v5];
  v16 = v15;
  if (v12)
  {
    v17 = [v15 fontDescriptorWithSymbolicTraits:v12];

    v16 = v17;
  }

  if ([v10 count])
  {
    v18 = [v16 fontDescriptorByAddingAttributes:v10];

    v16 = v18;
  }

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:0.0];

LABEL_26:

  return v9;
}

@end