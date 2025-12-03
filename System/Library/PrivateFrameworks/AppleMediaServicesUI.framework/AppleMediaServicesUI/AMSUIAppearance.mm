@interface AMSUIAppearance
+ (id)_accessoryButtonBackgroundColorWithDictionary:(id)dictionary;
+ (id)_accessoryButtonColorWithDictionary:(id)dictionary;
+ (id)_accessoryButtonFontWithDictionary:(id)dictionary;
+ (id)_accessorySecondaryButtonBackgroundColorWithDictionary:(id)dictionary;
+ (id)_accessorySecondaryButtonColorWithDictionary:(id)dictionary;
+ (id)_accessorySecondaryButtonFontWithDictionary:(id)dictionary;
+ (id)_backgroundColorWithDictionary:(id)dictionary;
+ (id)_backgroundColorWithMetadataDictionary:(id)dictionary;
+ (id)_backgroundImageWithDictionary:(id)dictionary;
+ (id)_backgroundImageWithMetadataDictionary:(id)dictionary;
+ (id)_defaultBackgroundColorForStyle:(unint64_t)style withTraitCollection:(id)collection;
+ (id)_defaultButtonBackgroundColorForStyle:(unint64_t)style withTraitCollection:(id)collection;
+ (id)_defaultButtonContentColorForStyle:(unint64_t)style;
+ (id)_defaultButtonIconColorForStyle:(unint64_t)style;
+ (id)_defaultButtonTextColorForStyle:(unint64_t)style withTraitCollection:(id)collection;
+ (id)_defaultButtonTextFontForStyle:(unint64_t)style withTraitCollection:(id)collection;
+ (id)_defaultImageViewColorForStyle:(unint64_t)style;
+ (id)_defaultMessageFontForStyle:(unint64_t)style withTraitCollection:(id)collection;
+ (id)_defaultTitleFontForStyle:(unint64_t)style withTraitCollection:(id)collection;
+ (id)_footerButtonBackgroundColorWithDictionary:(id)dictionary;
+ (id)_footerButtonColorWithDictionary:(id)dictionary;
+ (id)_footerButtonFontWithDictionary:(id)dictionary;
+ (id)_gradientImageWithDictionary:(id)dictionary;
+ (id)_gradientLayerTypeForRawValue:(id)value;
+ (id)_imageSymbolConfigurationWithDictionary:(id)dictionary;
+ (id)_imageTintColorWithDictionary:(id)dictionary;
+ (id)_impressionAnimationIdentifierWithDictionary:(id)dictionary;
+ (id)_messageFontWithDictionary:(id)dictionary;
+ (id)_messageTextColorWithDictionary:(id)dictionary;
+ (id)_separatorColorWithDictionary:(id)dictionary;
+ (id)_titleFontWithDictionary:(id)dictionary;
+ (id)_titleTextColorWithDictionary:(id)dictionary;
+ (int64_t)_iconAnimationPlayCount:(id)count;
+ (int64_t)_primaryImageRenderingModeWithDictionary:(id)dictionary;
- (AMSUIAppearance)init;
- (AMSUIAppearance)initWithDictionary:(id)dictionary;
@end

@implementation AMSUIAppearance

- (AMSUIAppearance)init
{
  v3.receiver = self;
  v3.super_class = AMSUIAppearance;
  return [(AMSUIAppearance *)&v3 init];
}

- (AMSUIAppearance)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [(AMSUIAppearance *)self init];
  if (!v5)
  {
LABEL_11:
    v8 = v5;
    goto LABEL_12;
  }

  if (dictionaryCopy)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"subtitleFont"];
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

    v10 = [dictionaryCopy objectForKeyedSubscript:@"titleFont"];
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

+ (id)_accessoryButtonColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accessoryButtonColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessoryButtonColor"];
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

+ (id)_accessoryButtonBackgroundColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accessoryButtonBackgroundColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessoryButtonBackgroundColor"];
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

+ (id)_accessorySecondaryButtonBackgroundColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accessorySecondaryButtonBackgroundColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessorySecondaryButtonBackgroundColor"];
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

+ (id)_accessorySecondaryButtonColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accessorySecondaryButtonColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessorySecondaryButtonColor"];
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

+ (id)_accessoryButtonFontWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accessoryButtonFont"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessoryButtonColor"];
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

+ (id)_accessorySecondaryButtonFontWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"accessorySecondaryButtonFont"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"accessorySecondaryButtonColor"];
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

+ (id)_backgroundColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"background"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"backgroundColor"];
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

+ (id)_backgroundColorWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"backgroundType"];
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
    v6 = [dictionaryCopy objectForKeyedSubscript:@"color"];
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

+ (id)_backgroundImageWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"background"];
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

+ (id)_backgroundImageWithMetadataDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"backgroundType"];
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
    v7 = [self _gradientImageWithDictionary:dictionaryCopy];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)_footerButtonBackgroundColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"footerButtonBackgroundColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"footerButtonBackgroundColor"];
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

+ (id)_footerButtonColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"footerButtonColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"footerButtonColor"];
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

+ (id)_footerButtonFontWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"footerButtonFont"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"footerButtonFont"];
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

+ (int64_t)_iconAnimationPlayCount:(id)count
{
  v3 = [count objectForKeyedSubscript:@"iconAnimationPlayCount"];
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
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = -90;
  }

  return integerValue;
}

+ (id)_imageSymbolConfigurationWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"iconSymbolConfiguration"];
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

+ (id)_imageTintColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"imageTintColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"imageTintColor"];
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

+ (id)_impressionAnimationIdentifierWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"impressionAnimationIdentifier"];
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

+ (id)_messageFontWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"subtitleFont"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"subtitleFont"];
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

+ (id)_messageTextColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"subtitleColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"subtitleColor"];
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

+ (id)_separatorColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"separatorColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"separatorColor"];
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

+ (id)_titleFontWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"titleFont"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"titleFont"];
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

+ (id)_titleTextColorWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKeyedSubscript:@"titleColor"];
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
    v7 = [dictionaryCopy objectForKeyedSubscript:@"titleColor"];
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

+ (int64_t)_primaryImageRenderingModeWithDictionary:(id)dictionary
{
  v3 = [dictionary objectForKeyedSubscript:@"primaryImageRenderingMode"];
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
    integerValue = [v4 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  return integerValue;
}

+ (id)_gradientLayerTypeForRawValue:(id)value
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
  valueCopy = value;
  v7 = [v5 dictionaryWithObjects:v12 forKeys:v11 count:3];
  v8 = [v7 objectForKeyedSubscript:valueCopy];

  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)_gradientImageWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  layer = [MEMORY[0x1E6979380] layer];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"gradientType"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  [layer setFrame:{0.0, 0.0, 400.0, 400.0}];
  if (v7)
  {
    v8 = [self _gradientLayerTypeForRawValue:v7];
    if (v8)
    {
      [layer setType:v8];
    }
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"colors"];
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
    [layer setColors:v11];
  }

  v12 = [dictionaryCopy objectForKeyedSubscript:@"locations"];
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
    [layer setLocations:v13];
  }

  v14 = [dictionaryCopy objectForKeyedSubscript:@"startPoint"];
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
    [layer setStartPoint:{v18, v20}];
  }

  v21 = [dictionaryCopy objectForKeyedSubscript:@"endPoint"];
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
    [layer setEndPoint:{v25, v27}];
  }

  [layer frame];
  v34.width = v28;
  v34.height = v29;
  UIGraphicsBeginImageContext(v34);
  [layer renderInContext:UIGraphicsGetCurrentContext()];
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

+ (id)_defaultButtonBackgroundColorForStyle:(unint64_t)style withTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", style) && [collectionCopy userInterfaceIdiom] == 6)
  {
    secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] secondarySystemBackgroundColor];
  }

  else
  {
    if ([AMSUIAppearance _isBannerStyle:style]|| [AMSUIAppearance _isBubbleTipStyle:style])
    {
      systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
      v8 = MEMORY[0x1E69DC888];
      v9 = [systemBlueColor colorWithAlphaComponent:0.08];
      v10 = [systemBlueColor colorWithAlphaComponent:0.18];
      v11 = [v8 ams_dynamicColorWithLightColor:v9 darkColor:v10];

      goto LABEL_14;
    }

    if ([AMSUIAppearance _isBubbleTipStyle:style])
    {
      secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] systemBlueColor];
    }

    else
    {
      if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
      {
        v11 = 0;
        goto LABEL_14;
      }

      secondarySystemBackgroundColor = [MEMORY[0x1E69DC888] clearColor];
    }
  }

  v11 = secondarySystemBackgroundColor;
LABEL_14:

  return v11;
}

+ (id)_defaultBackgroundColorForStyle:(unint64_t)style withTraitCollection:(id)collection
{
  collectionCopy = collection;
  if (style <= 2)
  {
    if (style)
    {
      if (style != 1)
      {
        if (style != 2)
        {
          goto LABEL_22;
        }

        v8 = MEMORY[0x1E69DC888];
        tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
        quaternarySystemFillColor = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
        goto LABEL_19;
      }
    }

    else if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
    {
      v8 = MEMORY[0x1E69DC888];
      tertiarySystemBackgroundColor = [MEMORY[0x1E69DC888] ams_secondaryBackground];
      quaternarySystemFillColor = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
LABEL_19:
      v11 = quaternarySystemFillColor;
      v4 = [v8 ams_dynamicColorWithLightColor:tertiarySystemBackgroundColor darkColor:quaternarySystemFillColor];

      goto LABEL_22;
    }

    quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] quaternarySystemFillColor];
    goto LABEL_21;
  }

  if (style > 4)
  {
    if (style == 5)
    {
      quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] ams_primaryBackground];
      goto LABEL_21;
    }

    if (style != 6)
    {
      goto LABEL_22;
    }
  }

  else if (style != 3)
  {
    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
    {
      quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] systemFillColor];
    }

    else
    {
      quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] tertiarySystemBackgroundColor];
    }

    goto LABEL_21;
  }

  quaternarySystemFillColor2 = [MEMORY[0x1E69DC888] ams_secondaryBackground];
LABEL_21:
  v4 = quaternarySystemFillColor2;
LABEL_22:

  return v4;
}

+ (id)_defaultButtonContentColorForStyle:(unint64_t)style
{
  if (style > 6)
  {
    goto LABEL_10;
  }

  if (((1 << style) & 0x4C) != 0 || ((1 << style) & 0x12) != 0)
  {
    goto LABEL_4;
  }

  if (style == 5)
  {
    labelColor = [MEMORY[0x1E69DC888] labelColor];
  }

  else
  {
LABEL_10:
    if (style)
    {
      labelColor = [MEMORY[0x1E69DC888] quaternaryLabelColor];
    }

    else
    {
      if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
      {
LABEL_4:
        labelColor = [MEMORY[0x1E69DC888] systemBlueColor];
        goto LABEL_5;
      }

      labelColor = 0;
    }
  }

LABEL_5:

  return labelColor;
}

+ (id)_defaultButtonTextColorForStyle:(unint64_t)style withTraitCollection:(id)collection
{
  collectionCopy = collection;
  if ([AMSUIAppearance _isBannerStyle:style]|| [AMSUIAppearance _isBubbleTipStyle:style])
  {
    if (+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", style) && [collectionCopy userInterfaceIdiom] == 6)
    {
      labelColor = [MEMORY[0x1E69DC888] labelColor];
    }

    else
    {
      labelColor = [MEMORY[0x1E69DC888] systemBlueColor];
    }
  }

  else
  {
    labelColor = [AMSUIAppearance _defaultButtonContentColorForStyle:style];
  }

  v7 = labelColor;

  return v7;
}

+ (id)_defaultButtonIconColorForStyle:(unint64_t)style
{
  if (style != 5 && (style || _os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0))
  {
    tertiaryLabelColor = [AMSUIAppearance _defaultButtonContentColorForStyle:style];
  }

  else
  {
    tertiaryLabelColor = [MEMORY[0x1E69DC888] tertiaryLabelColor];
  }

  return tertiaryLabelColor;
}

+ (id)_defaultButtonTextFontForStyle:(unint64_t)style withTraitCollection:(id)collection
{
  collectionCopy = collection;
  userInterfaceIdiom = [collectionCopy userInterfaceIdiom];
  v7 = *MEMORY[0x1E69DDCF8];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (style > 6)
  {
    goto LABEL_16;
  }

  if (((1 << style) & 0x4C) == 0)
  {
    if (((1 << style) & 0x12) != 0)
    {
      if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
      {
        goto LABEL_32;
      }

      goto LABEL_19;
    }

    if (style == 5)
    {
      if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
      {
        goto LABEL_32;
      }

      goto LABEL_29;
    }

LABEL_16:
    if (style)
    {
      goto LABEL_32;
    }

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
    {
LABEL_19:
      v10 = *MEMORY[0x1E69DDD28];

      v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
      [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB990]];
      v7 = v10;
      goto LABEL_31;
    }

    if ([collectionCopy userInterfaceIdiom] == 1)
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

  if (userInterfaceIdiom != 5)
  {
    if ([collectionCopy userInterfaceIdiom] == 6)
    {
      v11 = 0;
      goto LABEL_39;
    }

    if (_os_feature_enabled_impl() && _os_feature_enabled_impl() && style != 6)
    {
      v13 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB970]];
      [dictionary setObject:v13 forKeyedSubscript:*MEMORY[0x1E69DB990]];

LABEL_29:
      v12 = MEMORY[0x1E69DDD40];
      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    if (style != 6)
    {
      v9 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E69DB958]];
      [dictionary setObject:v9 forKeyedSubscript:*MEMORY[0x1E69DB990]];
LABEL_31:

      goto LABEL_32;
    }

    goto LABEL_27;
  }

LABEL_32:
  v14 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v7 compatibleWithTraitCollection:collectionCopy];
  if (!_os_feature_enabled_impl() || !_os_feature_enabled_impl())
  {
    v15 = [v14 fontDescriptorWithSymbolicTraits:0x8000];
    goto LABEL_37;
  }

  if ([dictionary count])
  {
    v15 = [v14 fontDescriptorByAddingAttributes:dictionary];
LABEL_37:
    v16 = v15;

    v14 = v16;
  }

  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v14 size:0.0];

LABEL_39:

  return v11;
}

+ (id)_defaultImageViewColorForStyle:(unint64_t)style
{
  secondaryLabelColor = 0;
  if (style <= 6)
  {
    if (((1 << style) & 0x4C) != 0)
    {
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
    }

    else
    {
      if (((1 << style) & 3) != 0)
      {
LABEL_4:
        secondaryLabelColor = [MEMORY[0x1E69DC888] labelColor];
        goto LABEL_6;
      }

      if (style == 4)
      {
        if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
        {
          goto LABEL_4;
        }

        secondaryLabelColor = 0;
      }
    }
  }

LABEL_6:

  return secondaryLabelColor;
}

+ (id)_defaultMessageFontForStyle:(unint64_t)style withTraitCollection:(id)collection
{
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  v8 = MEMORY[0x1E69DDD80];
  if (IsAccessibilityCategory)
  {
    goto LABEL_18;
  }

  if (style == 4)
  {
    if (_os_feature_enabled_impl() && (_os_feature_enabled_impl() & 1) != 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (style == 1)
  {
    if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
    {
      v8 = MEMORY[0x1E69DDD08];
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (style)
  {
LABEL_15:
    if (!+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", style) || [collectionCopy userInterfaceIdiom] != 6)
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

  if ([collectionCopy userInterfaceIdiom] == 1)
  {
    v8 = MEMORY[0x1E69DDD28];
  }

LABEL_18:
  v9 = *v8;
  v10 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v9 compatibleWithTraitCollection:collectionCopy];
  v11 = [MEMORY[0x1E69DB878] fontWithDescriptor:v10 size:0.0];

  return v11;
}

+ (id)_defaultTitleFontForStyle:(unint64_t)style withTraitCollection:(id)collection
{
  collectionCopy = collection;
  preferredContentSizeCategory = [collectionCopy preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  if (IsAccessibilityCategory)
  {
    v8 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:*MEMORY[0x1E69DDD40] compatibleWithTraitCollection:collectionCopy];
    v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v8 size:0.0];
    goto LABEL_26;
  }

  v8 = *MEMORY[0x1E69DDCF8];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (+[AMSUIAppearance _isBubbleTipStyle:](AMSUIAppearance, "_isBubbleTipStyle:", style) && [collectionCopy userInterfaceIdiom] == 6)
  {
    v11 = *MEMORY[0x1E69DDD40];

    v12 = 0;
    v8 = v11;
    if (style)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 2;
    if (style)
    {
      goto LABEL_8;
    }
  }

  if (!_os_feature_enabled_impl() || (_os_feature_enabled_impl() & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_8:
  if (![AMSUIAppearance _isBannerStyle:style])
  {
    if (style == 5)
    {
      v12 = v12 | 0x8000;
      goto LABEL_21;
    }

    if (style != 6)
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

  if (style != 4)
  {
LABEL_19:
    v13 = MEMORY[0x1E69DDD80];
    goto LABEL_20;
  }

LABEL_21:
  v15 = [MEMORY[0x1E69DB880] preferredFontDescriptorWithTextStyle:v8 compatibleWithTraitCollection:collectionCopy];
  v16 = v15;
  if (v12)
  {
    v17 = [v15 fontDescriptorWithSymbolicTraits:v12];

    v16 = v17;
  }

  if ([dictionary count])
  {
    v18 = [v16 fontDescriptorByAddingAttributes:dictionary];

    v16 = v18;
  }

  v9 = [MEMORY[0x1E69DB878] fontWithDescriptor:v16 size:0.0];

LABEL_26:

  return v9;
}

@end