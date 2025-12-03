@interface PKTool
+ (BOOL)_inkIsInkingTool:(id)tool;
+ (id)_toolWithInk:(id)ink configuration:(id)configuration;
+ (id)_toolWithTool:(id)tool color:(id)color ignoringOpacity:(BOOL)opacity;
- (BOOL)isEqual:(id)equal;
- (NSString)_toolPickerItemIdentifier;
- (double)_strokeWeight;
- (id)_color;
- (id)_copyWithColor:(id)color;
- (id)_copyWithStrokeWeight:(double)weight;
- (id)_defaultItemIdentifier;
- (id)_initWithInk:(id)ink;
- (id)_initWithInk:(id)ink configuration:(id)configuration;
- (id)_toolPickerItem;
- (unint64_t)hash;
- (void)_setToolPickerItemIdentifier:(id)identifier;
@end

@implementation PKTool

- (NSString)_toolPickerItemIdentifier
{
  toolPickerItemIdentifier = self->_toolPickerItemIdentifier;
  if (toolPickerItemIdentifier)
  {
    _defaultItemIdentifier = toolPickerItemIdentifier;
  }

  else
  {
    _defaultItemIdentifier = [(PKTool *)self _defaultItemIdentifier];
  }

  return _defaultItemIdentifier;
}

- (id)_initWithInk:(id)ink
{
  v28 = *MEMORY[0x1E69E9840];
  inkCopy = ink;
  v25.receiver = self;
  v25.super_class = PKTool;
  v6 = [(PKTool *)&v25 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_ink, ink);
    if ([inkCopy _isMonolineInk])
    {
      v8 = &PKInkIdentifierMonoline;
    }

    else
    {
      identifier = [inkCopy identifier];
      v11 = @"com.apple.ink.fountainpen";
      v12 = [identifier isEqualToString:@"com.apple.ink.fountainpen"];

      if (v12 || ([inkCopy identifier], v13 = objc_claimAutoreleasedReturnValue(), v11 = @"com.apple.ink.watercolor", v14 = objc_msgSend(v13, "isEqualToString:", @"com.apple.ink.watercolor"), v13, v14) || (objc_msgSend(inkCopy, "identifier"), v15 = objc_claimAutoreleasedReturnValue(), v11 = @"com.apple.ink.reedcalligraphy", v16 = objc_msgSend(v15, "isEqualToString:", @"com.apple.ink.reedcalligraphy"), v15, v16) || (objc_msgSend(inkCopy, "identifier"), v17 = objc_claimAutoreleasedReturnValue(), v11 = @"com.apple.ink.crayon", v18 = objc_msgSend(v17, "isEqualToString:", @"com.apple.ink.crayon"), v17, v18))
      {
        v9 = v11;
        goto LABEL_10;
      }

      if ([inkCopy _isPencilInk])
      {
        v8 = &PKInkIdentifierPencil;
      }

      else
      {
        if ([inkCopy _isEraserInk])
        {
          p_super = [inkCopy identifier];
          v22 = [PKToolConfiguration defaultConfigurationForToolWithIdentifier:p_super];
          configuration = v7->_configuration;
          v7->_configuration = v22;

          goto LABEL_11;
        }

        if ([inkCopy _isMarkerInk])
        {
          v8 = &PKInkIdentifierMarker;
        }

        else if ([inkCopy _isPenInk])
        {
          v8 = &PKInkIdentifierPen;
        }

        else if ([inkCopy _isHandwritingInk])
        {
          v8 = &PKInkIdentifierHandwriting;
        }

        else
        {
          if (![inkCopy _isLassoInk])
          {
            p_super = os_log_create("com.apple.pencilkit", "");
            if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
            {
              identifier2 = [inkCopy identifier];
              *buf = 138477827;
              v27 = identifier2;
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

- (id)_initWithInk:(id)ink configuration:(id)configuration
{
  inkCopy = ink;
  configurationCopy = configuration;
  v14.receiver = self;
  v14.super_class = PKTool;
  v9 = [(PKTool *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_ink, ink);
    v11 = [configurationCopy copy];
    configuration = v10->_configuration;
    v10->_configuration = v11;
  }

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(PKTool *)self ink];
    v6 = [equalCopy ink];
    v7 = [v5 isEqual:v6];

    v8 = equalCopy;
    _configuration = [v8 _configuration];
    if (_configuration)
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
      _configuration2 = [(PKTool *)self _configuration];

      v10 = (_configuration2 == 0) & v7;
      if (!_configuration2 || ((v7 ^ 1) & 1) != 0)
      {
        goto LABEL_9;
      }
    }

    _configuration3 = [(PKTool *)self _configuration];
    _configuration4 = [v8 _configuration];
    v10 = [_configuration3 isEqual:_configuration4];

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

+ (BOOL)_inkIsInkingTool:(id)tool
{
  toolCopy = tool;
  identifier = [toolCopy identifier];
  if ([identifier isEqualToString:@"com.apple.ink.lasso"])
  {
    v5 = 0;
  }

  else
  {
    identifier2 = [toolCopy identifier];
    if ([identifier2 isEqualToString:@"com.apple.ink.objectEraser"])
    {
      v5 = 0;
    }

    else
    {
      identifier3 = [toolCopy identifier];
      if ([identifier3 isEqualToString:@"com.apple.ink.eraser"])
      {
        v5 = 0;
      }

      else
      {
        identifier4 = [toolCopy identifier];
        v9 = [identifier4 isEqualToString:@"com.apple.ink.generationtool"];

        v5 = v9 ^ 1;
      }
    }
  }

  return v5;
}

+ (id)_toolWithInk:(id)ink configuration:(id)configuration
{
  inkCopy = ink;
  configurationCopy = configuration;
  identifier = [inkCopy identifier];
  v8 = [identifier isEqualToString:@"com.apple.ink.lasso"];

  if (v8)
  {
    v9 = PKLassoTool;
LABEL_9:
    v12 = [[v9 alloc] _initWithInk:inkCopy];
    goto LABEL_10;
  }

  identifier2 = [inkCopy identifier];
  v11 = [identifier2 isEqualToString:@"com.apple.ink.handwriting"];

  if (v11)
  {
    v12 = objc_alloc_init(PKHandwritingTool);
    goto LABEL_10;
  }

  identifier3 = [inkCopy identifier];
  if ([identifier3 isEqualToString:@"com.apple.ink.eraser"])
  {

LABEL_8:
    v9 = PKEraserTool;
    goto LABEL_9;
  }

  identifier4 = [inkCopy identifier];
  v15 = [identifier4 isEqualToString:@"com.apple.ink.objectEraser"];

  if (v15)
  {
    goto LABEL_8;
  }

  identifier5 = [inkCopy identifier];
  v19 = [identifier5 isEqualToString:@"com.apple.ink.generationtool"];

  if (v19)
  {
    v9 = PKGenerationTool;
    goto LABEL_9;
  }

  identifier6 = [inkCopy identifier];
  v21 = [identifier6 isEqualToString:@"com.apple.ink.custom"];

  if (v21)
  {
    v22 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Unable to create a custom tool using the -_toolWithInk: method." userInfo:0];
    objc_exception_throw(v22);
  }

  v12 = [(PKTool *)[PKInkingTool alloc] _initWithInk:inkCopy configuration:configurationCopy];
LABEL_10:
  v16 = v12;

  return v16;
}

+ (id)_toolWithTool:(id)tool color:(id)color ignoringOpacity:(BOOL)opacity
{
  opacityCopy = opacity;
  v21 = *MEMORY[0x1E69E9840];
  colorCopy = color;
  toolCopy = tool;
  v9 = [toolCopy ink];
  sdrColor = [v9 sdrColor];
  v19 = __const_DKUColorGetAlpha_rgba;
  v20 = unk_1C801E890;
  DKUColorGetRGBAComponents([sdrColor CGColor], &v19);
  v11 = *(&v20 + 1);

  v12 = 1.0;
  if (!opacityCopy)
  {
    v12 = v11;
  }

  v13 = [colorCopy colorWithAlphaComponent:v12];

  v14 = [toolCopy ink];
  v15 = [PKInk inkFromInk:v14 color:v13];

  _configuration = [toolCopy _configuration];

  v17 = [PKTool _toolWithInk:v15 configuration:_configuration];

  return v17;
}

- (double)_strokeWeight
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    customConfigurationCopy = [(PKTool *)selfCopy customConfigurationCopy];
    if ([customConfigurationCopy supportsStrokeWeight])
    {
      [(PKTool *)selfCopy weight];
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

    selfCopy2 = self;
    [(PKTool *)selfCopy2 width];
    v9 = v8;
    selfCopy = [(PKTool *)selfCopy2 inkType];

    [PKInkingTool _weightForWidth:selfCopy type:v9];
    v6 = v10;
  }

  return v6;
}

- (id)_color
{
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    color = [(PKTool *)self color];
  }

  else
  {
    color = 0;
  }

  return color;
}

- (void)_setToolPickerItemIdentifier:(id)identifier
{
  v4 = [identifier copy];
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
  _toolPickerItemClass = [(PKTool *)self _toolPickerItemClass];
  if (_toolPickerItemClass)
  {
    _toolPickerItemClass = [[_toolPickerItemClass alloc] initWithTool:self];
  }

  return _toolPickerItemClass;
}

- (id)_copyWithStrokeWeight:(double)weight
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    customConfigurationCopy = [(PKTool *)selfCopy customConfigurationCopy];
    if ([customConfigurationCopy supportsStrokeWeight])
    {
      v7 = [(PKTool *)selfCopy copyWithWeight:weight];
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

    selfCopy2 = self;
    v9 = [(PKTool *)selfCopy2 ink];
    selfCopy = [PKInk inkFromInk:v9 weight:weight];

    _configuration = [(PKTool *)selfCopy2 _configuration];
    v7 = [PKTool _toolWithInk:selfCopy configuration:_configuration];

    toolPickerItemIdentifier = selfCopy2->_toolPickerItemIdentifier;
    [v7 _setToolPickerItemIdentifier:toolPickerItemIdentifier];
  }

  return v7;
}

- (id)_copyWithColor:(id)color
{
  colorCopy = color;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    customConfigurationCopy = [(PKTool *)selfCopy customConfigurationCopy];
    if ([customConfigurationCopy supportsColor])
    {
      v7 = [(PKTool *)selfCopy copyWithColor:colorCopy];
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

    selfCopy2 = self;
    v9 = [(PKTool *)selfCopy2 ink];
    selfCopy = [PKInk inkFromInk:v9 color:colorCopy];

    _configuration = [(PKTool *)selfCopy2 _configuration];
    v7 = [PKTool _toolWithInk:selfCopy configuration:_configuration];

    toolPickerItemIdentifier = selfCopy2->_toolPickerItemIdentifier;
    [v7 _setToolPickerItemIdentifier:toolPickerItemIdentifier];
  }

LABEL_9:
  return v7;
}

@end