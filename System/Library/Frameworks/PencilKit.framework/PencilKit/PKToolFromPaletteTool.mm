@interface PKToolFromPaletteTool
+ (id)toolByApplyingPropertiesFromPaletteTool:(id)tool toTool:(id)toTool;
@end

@implementation PKToolFromPaletteTool

+ (id)toolByApplyingPropertiesFromPaletteTool:(id)tool toTool:(id)toTool
{
  toolCopy = tool;
  toToolCopy = toTool;
  _configuration = [toToolCopy _configuration];
  v8 = [_configuration copy];

  if ([toolCopy isInkingTool] && (objc_msgSend(toolCopy, "isLassoTool") & 1) == 0 && (objc_msgSend(toolCopy, "isCustomTool") & 1) == 0)
  {
    inkingTool = [toolCopy inkingTool];
    inkingTool2 = [inkingTool ink];
    v12 = [(PKTool *)[PKInkingTool alloc] _initWithInk:inkingTool2 configuration:v8];
    _toolPickerItemIdentifier = [toToolCopy _toolPickerItemIdentifier];
    [(PKTool *)v12 _setToolPickerItemIdentifier:_toolPickerItemIdentifier];
    goto LABEL_13;
  }

  if ([toolCopy isErasingTool])
  {
    inkingTool = [toolCopy erasingTool];
    isBitmapEraser = [inkingTool isBitmapEraser];
    v11 = [PKEraserTool alloc];
    [inkingTool weight];
    v12 = [(PKEraserTool *)v11 initWithEraserType:isBitmapEraser weight:?];
LABEL_15:

    goto LABEL_16;
  }

  if ([toolCopy isLassoTool])
  {
    inkingTool = [toolCopy inkingTool];
    inkingTool2 = [inkingTool ink];
    v12 = [[PKLassoTool alloc] _initWithInk:inkingTool2];
LABEL_14:

    goto LABEL_15;
  }

  if (![toolCopy isHandwritingTool])
  {
    if (![toolCopy isCustomTool])
    {
      v20 = os_log_create("com.apple.pencilkit", "");
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_1C7CCA000, v20, OS_LOG_TYPE_ERROR, "Unsupported tool type.", v21, 2u);
      }

      v14 = toToolCopy;
      goto LABEL_22;
    }

    v16 = objc_opt_class();
    inkingTool = PKCheckedDynamicCast(v16, toToolCopy);
    inkingTool2 = [toolCopy inkingTool];
    _toolPickerItemIdentifier = [inkingTool2 ink];
    v17 = [_toolPickerItemIdentifier colorForUIAllowHDR:1];
    v18 = [inkingTool copyWithScrubbedColor:v17];
    [_toolPickerItemIdentifier weight];
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