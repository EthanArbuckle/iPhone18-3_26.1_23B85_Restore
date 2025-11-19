@interface PKPaletteToolViewFactory
- (id)makePaletteToolViewForTool:(uint64_t)a1;
@end

@implementation PKPaletteToolViewFactory

- (id)makePaletteToolViewForTool:(uint64_t)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (!v3)
    {
      v24 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Tool parameter can not be nil." userInfo:0];
      objc_exception_throw(v24);
    }

    v5 = [v3 ink];
    v6 = [v5 identifier];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v4 customConfigurationCopy];
    }

    else if ([v4 _isRulerTool])
    {
      v8 = @"com.apple.tool.ruler";

      v7 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:v8];
      v6 = v8;
    }

    else
    {
      v9 = [v4 _configuration];

      if (v9)
      {
        v10 = [v4 _configuration];
        v7 = [v10 copy];
      }

      else
      {
        v10 = [v4 ink];
        v11 = [v10 identifier];
        v12 = [v4 ink];
        v7 = +[PKToolConfiguration defaultConfigurationForToolWithIdentifier:inkVersion:](PKToolConfiguration, v11, [v12 version]);
      }
    }

    v13 = [v4 _toolPickerItemIdentifier];
    v14 = [v4 ink];
    v15 = [v14 variant];
    v16 = [PKPaletteToolView toolViewWithToolIdentifier:v6 itemIdentifier:v13 variant:v15 configuration:v7];

    v17 = [v4 ink];
    v18 = [v17 properties];
    [v16 setToolProperties:v18];

    v19 = [v4 ink];
    LODWORD(v18) = [v19 _isHandwritingInk];

    if (v18)
    {
      v20 = [v16 tool];
      v21 = [v20 handwritingTool];
      v22 = [v4 localeIdentifier];
      [v21 setLocaleIdentifier:v22];
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

@end