@interface PKToolFromPaletteTool
+ (id)toolByApplyingPropertiesFromPaletteTool:(id)a3 toTool:(id)a4;
@end

@implementation PKToolFromPaletteTool

+ (id)toolByApplyingPropertiesFromPaletteTool:(id)a3 toTool:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v6 _configuration];
  v8 = [v7 copy];

  if ([v5 isInkingTool] && (objc_msgSend(v5, "isLassoTool") & 1) == 0 && (objc_msgSend(v5, "isCustomTool") & 1) == 0)
  {
    v9 = [v5 inkingTool];
    v13 = [v9 ink];
    v12 = [(PKTool *)[PKInkingTool alloc] _initWithInk:v13 configuration:v8];
    v15 = [v6 _toolPickerItemIdentifier];
    [(PKTool *)v12 _setToolPickerItemIdentifier:v15];
    goto LABEL_13;
  }

  if ([v5 isErasingTool])
  {
    v9 = [v5 erasingTool];
    v10 = [v9 isBitmapEraser];
    v11 = [PKEraserTool alloc];
    [v9 weight];
    v12 = [(PKEraserTool *)v11 initWithEraserType:v10 weight:?];
LABEL_15:

    goto LABEL_16;
  }

  if ([v5 isLassoTool])
  {
    v9 = [v5 inkingTool];
    v13 = [v9 ink];
    v12 = [[PKLassoTool alloc] _initWithInk:v13];
LABEL_14:

    goto LABEL_15;
  }

  if (![v5 isHandwritingTool])
  {
    if (![v5 isCustomTool])
    {
      v20 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_ERROR, "Unsupported tool type.", v21, 2u);
      }

      v14 = v6;
      goto LABEL_22;
    }

    v16 = objc_opt_class();
    v9 = PKCheckedDynamicCast(v16, v6);
    v13 = [v5 inkingTool];
    v15 = [v13 ink];
    v17 = [v15 colorForUIAllowHDR:1];
    v18 = [v9 copyWithScrubbedColor:v17];
    [v15 weight];
    v12 = [v18 copyWithWeight:?];

LABEL_13:
    goto LABEL_14;
  }

  v14 = objc_alloc_init(PKHandwritingTool);
LABEL_22:
  v12 = v14;
LABEL_16:

  return v12;
}

@end