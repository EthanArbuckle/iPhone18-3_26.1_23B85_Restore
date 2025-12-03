@interface UIImageSymbolConfiguration(AMSUIImageSymbolConfiguration)
+ (id)ams_imageSymbolConfigurationScaleWithDictionary:()AMSUIImageSymbolConfiguration;
+ (id)ams_imageSymbolConfigurationStyleWithDictionary:()AMSUIImageSymbolConfiguration;
+ (id)ams_imageSymbolConfigurationTextStyleWithDictionary:()AMSUIImageSymbolConfiguration;
+ (id)ams_imageSymbolConfigurationWithDictionary:()AMSUIImageSymbolConfiguration;
@end

@implementation UIImageSymbolConfiguration(AMSUIImageSymbolConfiguration)

+ (id)ams_imageSymbolConfigurationWithDictionary:()AMSUIImageSymbolConfiguration
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [self ams_imageSymbolConfigurationStyleWithDictionary:v5];
    v7 = [self ams_imageSymbolConfigurationTextStyleWithDictionary:v5];
    v8 = v7;
    if (v6)
    {
      v9 = [v6 configurationByApplyingConfiguration:v7];
    }

    else
    {
      v9 = v7;
    }

    v11 = [self ams_imageSymbolConfigurationScaleWithDictionary:v5];
    v12 = v11;
    if (v9)
    {
      v10 = [v9 configurationByApplyingConfiguration:v11];
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)ams_imageSymbolConfigurationScaleWithDictionary:()AMSUIImageSymbolConfiguration
{
  v3 = [a3 objectForKeyedSubscript:@"scale"];
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
    if (ams_imageSymbolConfigurationScaleWithDictionary__ams_once_token___COUNTER__ != -1)
    {
      +[UIImageSymbolConfiguration(AMSUIImageSymbolConfiguration) ams_imageSymbolConfigurationScaleWithDictionary:];
    }

    v5 = [ams_imageSymbolConfigurationScaleWithDictionary__ams_once_object___COUNTER__ objectForKeyedSubscript:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [MEMORY[0x1E69DCAD8] configurationWithScale:{objc_msgSend(v5, "integerValue")}];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)ams_imageSymbolConfigurationTextStyleWithDictionary:()AMSUIImageSymbolConfiguration
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"textStyle"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 || (([v3 objectForKeyedSubscript:@"text-style"], v6 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) ? (v5 = 0) : (v5 = v6), v6, v5))
  {
    v7 = [AMSUIFontParser fontTextStyleForString:v5];
    if (v7)
    {
      v8 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)ams_imageSymbolConfigurationStyleWithDictionary:()AMSUIImageSymbolConfiguration
{
  v3 = a3;
  v4 = [v3 objectForKeyedSubscript:@"style"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 objectForKeyedSubscript:@"colors"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = [v3 objectForKeyedSubscript:@"colors"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {
      v10 = MEMORY[0x1E696ACB0];
      v11 = [v9 dataUsingEncoding:4];
      v12 = [v10 JSONObjectWithData:v11 options:0 error:0];

      v13 = v12;
      objc_opt_class();
      v7 = 0;
      if (objc_opt_isKindOfClass())
      {
        v7 = v13;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  v14 = [v7 ams_mapWithTransformIgnoresNil:&__block_literal_global_45];
  if ([v5 isEqualToString:@"hierarchical"] && objc_msgSend(v14, "count"))
  {
    v15 = MEMORY[0x1E69DCAD8];
    v16 = [v14 objectAtIndexedSubscript:{objc_msgSend(v14, "count") - 1}];
    v17 = [v15 configurationWithHierarchicalColor:v16];

    goto LABEL_28;
  }

  if ([v5 isEqualToString:@"monochrome"])
  {
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMonochrome];
LABEL_27:
    v17 = configurationPreferringMonochrome;
    goto LABEL_28;
  }

  if ([v5 isEqualToString:@"multicolor"])
  {
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationPreferringMulticolor];
    goto LABEL_27;
  }

  if ([v5 isEqualToString:@"palette"] && objc_msgSend(v14, "count"))
  {
    configurationPreferringMonochrome = [MEMORY[0x1E69DCAD8] configurationWithPaletteColors:v14];
    goto LABEL_27;
  }

  v17 = 0;
LABEL_28:

  return v17;
}

@end