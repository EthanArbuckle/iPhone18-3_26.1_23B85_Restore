@interface PKTool
+ (BOOL)_inkIsInkingTool:(id)a3;
+ (id)_toolWithInk:(id)a3 configuration:(id)a4;
+ (id)_toolWithTool:(id)a3 color:(id)a4 ignoringOpacity:(BOOL)a5;
- (BOOL)isEqual:(id)a3;
- (NSString)_toolPickerItemIdentifier;
- (double)_strokeWeight;
- (id)_color;
- (id)_copyWithColor:(id)a3;
- (id)_copyWithStrokeWeight:(double)a3;
- (id)_defaultItemIdentifier;
- (id)_initWithInk:(id)a3;
- (id)_initWithInk:(id)a3 configuration:(id)a4;
- (id)_toolPickerItem;
- (unint64_t)hash;
- (void)_setToolPickerItemIdentifier:(id)a3;
@end

@implementation PKTool

- (NSString)_toolPickerItemIdentifier
{
  toolPickerItemIdentifier = self->_toolPickerItemIdentifier;
  if (toolPickerItemIdentifier)
  {
    v3 = toolPickerItemIdentifier;
  }

  else
  {
    v3 = [(PKTool *)self _defaultItemIdentifier];
  }

  return v3;
}

- (id)_initWithInk:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v25.receiver = self;
  v25.super_class = PKTool;
  v6 = [(PKTool *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ink, a3);
    if ([v5 _isMonolineInk])
    {
      v8 = &PKInkIdentifierMonoline;
    }

    else
    {
      v10 = [v5 identifier];
      v11 = @"com.apple.ink.fountainpen";
      v12 = [v10 isEqualToString:@"com.apple.ink.fountainpen"];

      if (v12 || ([v5 identifier], v13 = objc_claimAutoreleasedReturnValue(), v11 = @"com.apple.ink.watercolor", v14 = objc_msgSend(v13, "isEqualToString:", @"com.apple.ink.watercolor"), v13, v14) || (objc_msgSend(v5, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v11 = @"com.apple.ink.reedcalligraphy", v16 = objc_msgSend(v15, "isEqualToString:", @"com.apple.ink.reedcalligraphy"), v15, v16) || (objc_msgSend(v5, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v11 = @"com.apple.ink.crayon", v18 = objc_msgSend(v17, "isEqualToString:", @"com.apple.ink.crayon"), v17, v18))
      {
        v9 = v11;
        goto LABEL_10;
      }

      if ([v5 _isPencilInk])
      {
        v8 = &PKInkIdentifierPencil;
      }

      else
      {
        if ([v5 _isEraserInk])
        {
          p_super = [v5 identifier];
          v22 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:p_super];
          configuration = v7->_configuration;
          v7->_configuration = v22;

          goto LABEL_11;
        }

        if ([v5 _isMarkerInk])
        {
          v8 = &PKInkIdentifierMarker;
        }

        else if ([v5 _isPenInk])
        {
          v8 = &PKInkIdentifierPen;
        }

        else if ([v5 _isHandwritingInk])
        {
          v8 = &PKInkIdentifierHandwriting;
        }

        else
        {
          if (![v5 _isLassoInk])
          {
            p_super = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              v24 = [v5 identifier];
              *buf = 138477827;
              v27 = v24;
              _os_log_error_impl(&dword_1C7CCA000, p_super, OS_LOG_TYPE_ERROR, "Unable to create configuration for ink with id: %{private}@", buf, 0xCu);
            }

            goto LABEL_11;
          }

          v8 = &PKInkIdentifierLasso;
        }
      }
    }

    v9 = *v8;
LABEL_10:
    v19 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:v9];
    p_super = &v7->_configuration->super;
    v7->_configuration = v19;
LABEL_11:
  }

  return v7;
}

- (id)_initWithInk:(id)a3 configuration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = PKTool;
  v9 = [(PKTool *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ink, a3);
    v11 = [v8 copy];
    configuration = v10->_configuration;
    v10->_configuration = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKTool *)self ink];
    v6 = [v4 ink];
    v7 = [v5 isEqual:v6];

    v8 = v4;
    v9 = [v8 _configuration];
    if (v9)
    {

      if ((v7 & 1) == 0)
      {
        v10 = 0;
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v11 = [(PKTool *)self _configuration];

      v10 = (v11 == 0) & v7;
      if (!v11 || ((v7 ^ 1) & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    v12 = [(PKTool *)self _configuration];
    v13 = [v8 _configuration];
    v10 = [v12 isEqual:v13];

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  v2 = [(PKTool *)self ink];
  v3 = [v2 hash];

  return v3;
}

+ (BOOL)_inkIsInkingTool:(id)a3
{
  v3 = a3;
  v4 = [v3 identifier];
  if ([v4 isEqualToString:@"com.apple.ink.lasso"])
  {
    v5 = 0;
  }

  else
  {
    v6 = [v3 identifier];
    if ([v6 isEqualToString:@"com.apple.ink.objectEraser"])
    {
      v5 = 0;
    }

    else
    {
      v7 = [v3 identifier];
      if ([v7 isEqualToString:@"com.apple.ink.eraser"])
      {
        v5 = 0;
      }

      else
      {
        v8 = [v3 identifier];
        v9 = [v8 isEqualToString:@"com.apple.ink.generationtool"];

        v5 = v9 ^ 1;
      }
    }
  }

  return v5;
}

+ (id)_toolWithInk:(id)a3 configuration:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [v5 identifier];
  v8 = [v7 isEqualToString:@"com.apple.ink.lasso"];

  if (v8)
  {
    v9 = PKLassoTool;
LABEL_9:
    v12 = [[v9 alloc] _initWithInk:v5];
    goto LABEL_10;
  }

  v10 = [v5 identifier];
  v11 = [v10 isEqualToString:@"com.apple.ink.handwriting"];

  if (v11)
  {
    v12 = objc_alloc_init(PKHandwritingTool);
    goto LABEL_10;
  }

  v13 = [v5 identifier];
  if ([v13 isEqualToString:@"com.apple.ink.eraser"])
  {

LABEL_8:
    v9 = PKEraserTool;
    goto LABEL_9;
  }

  v14 = [v5 identifier];
  v15 = [v14 isEqualToString:@"com.apple.ink.objectEraser"];

  if (v15)
  {
    goto LABEL_8;
  }

  v18 = [v5 identifier];
  v19 = [v18 isEqualToString:@"com.apple.ink.generationtool"];

  if (v19)
  {
    v9 = PKGenerationTool;
    goto LABEL_9;
  }

  v20 = [v5 identifier];
  v21 = [v20 isEqualToString:@"com.apple.ink.custom"];

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unable to create a custom tool using the -_toolWithInk: method." userInfo:0];
    objc_exception_throw(v22);
  }

  v12 = [(PKTool *)[PKInkingTool alloc] _initWithInk:v5 configuration:v6];
LABEL_10:
  v16 = v12;

  return v16;
}

+ (id)_toolWithTool:(id)a3 color:(id)a4 ignoringOpacity:(BOOL)a5
{
  v5 = a5;
  v21 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v8 = a3;
  v9 = [v8 ink];
  v10 = [v9 sdrColor];
  v19 = __const_DKUColorGetAlpha_rgba;
  v20 = unk_1C801E890;
  DKUColorGetRGBAComponents([v10 CGColor], &v19);
  v11 = *(&v20 + 1);

  v12 = 1.0;
  if (!v5)
  {
    v12 = v11;
  }

  v13 = [v7 colorWithAlphaComponent:v12];

  v14 = [v8 ink];
  v15 = [PKInk inkFromInk:v14 color:v13];

  v16 = [v8 _configuration];

  v17 = [PKTool _toolWithInk:v15 configuration:v16];

  return v17;
}

- (double)_strokeWeight
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = self;
    v4 = [(PKTool *)v3 customConfigurationCopy];
    if ([v4 supportsStrokeWeight])
    {
      [(PKTool *)v3 weight];
      v6 = v5;
    }

    else
    {

      v6 = 2.22507386e-308;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 2.22507386e-308;
    }

    v7 = self;
    [(PKTool *)v7 width];
    v9 = v8;
    v3 = [(PKTool *)v7 inkType];

    [PKInkingTool _weightForWidth:v3 type:v9];
    v6 = v10;
  }

  return v6;
}

- (id)_color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v3 = [(PKTool *)self color];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)_setToolPickerItemIdentifier:(id)a3
{
  v4 = [a3 copy];
  toolPickerItemIdentifier = self->_toolPickerItemIdentifier;
  self->_toolPickerItemIdentifier = v4;
}

- (id)_defaultItemIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_toolPickerItem
{
  v3 = [(PKTool *)self _toolPickerItemClass];
  if (v3)
  {
    v3 = [[v3 alloc] initWithTool:self];
  }

  return v3;
}

- (id)_copyWithStrokeWeight:(double)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self;
    v6 = [(PKTool *)v5 customConfigurationCopy];
    if ([v6 supportsStrokeWeight])
    {
      v7 = [(PKTool *)v5 copyWithWeight:a3];
    }

    else
    {

      v7 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }

    v8 = self;
    v9 = [(PKTool *)v8 ink];
    v5 = [PKInk inkFromInk:v9 weight:a3];

    v10 = [(PKTool *)v8 _configuration];
    v7 = [PKTool _toolWithInk:v5 configuration:v10];

    toolPickerItemIdentifier = v8->_toolPickerItemIdentifier;
    [v7 _setToolPickerItemIdentifier:toolPickerItemIdentifier];
  }

  return v7;
}

- (id)_copyWithColor:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = self;
    v6 = [(PKTool *)v5 customConfigurationCopy];
    if ([v6 supportsColor])
    {
      v7 = [(PKTool *)v5 copyWithColor:v4];
    }

    else
    {

      v7 = 0;
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v7 = 0;
      goto LABEL_9;
    }

    v8 = self;
    v9 = [(PKTool *)v8 ink];
    v5 = [PKInk inkFromInk:v9 color:v4];

    v10 = [(PKTool *)v8 _configuration];
    v7 = [PKTool _toolWithInk:v5 configuration:v10];

    toolPickerItemIdentifier = v8->_toolPickerItemIdentifier;
    [v7 _setToolPickerItemIdentifier:toolPickerItemIdentifier];
  }

LABEL_9:
  return v7;
}

@end