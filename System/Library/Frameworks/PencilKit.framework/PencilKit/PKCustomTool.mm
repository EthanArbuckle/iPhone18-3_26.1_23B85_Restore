@interface PKCustomTool
- (BOOL)isEqual:(id)equal;
- (PKCustomTool)initWithCustomIdentifier:(id)identifier configuration:(id)configuration color:(id)color weight:(double)weight;
- (PKToolConfiguration)customConfigurationCopy;
- (UIColor)color;
- (double)_width;
- (double)weight;
- (id)copyWithColor:(id)color;
- (id)copyWithScrubbedColor:(id)color;
- (id)copyWithScrubbedWeight:(double)weight;
- (id)copyWithWeight:(double)weight;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
@end

@implementation PKCustomTool

- (PKCustomTool)initWithCustomIdentifier:(id)identifier configuration:(id)configuration color:(id)color weight:(double)weight
{
  identifierCopy = identifier;
  configurationCopy = configuration;
  colorCopy = color;
  supportsColor = [configurationCopy supportsColor];
  if (colorCopy && (supportsColor & 1) == 0)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Color must be nil if tool does not support color.";
    goto LABEL_21;
  }

  supportsColor2 = [configurationCopy supportsColor];
  if (!colorCopy && supportsColor2)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Color must not be nil if tool supports color.";
    goto LABEL_21;
  }

  if ([configurationCopy supportsColor])
  {
    if (([configurationCopy supportsOpacity] & 1) == 0)
    {
      [colorCopy alphaComponent];
      if (v15 != 1.0 && fabs(v15 + -1.0) >= 0.000000999999997)
      {
        v24 = MEMORY[0x1E695DF30];
        v25 = *MEMORY[0x1E695D940];
        v26 = @"Color must be opaque if tool does not support opacity.";
LABEL_21:
        v27 = [v24 exceptionWithName:v25 reason:v26 userInfo:0];
        objc_exception_throw(v27);
      }
    }
  }

  supportsStrokeWeight = [configurationCopy supportsStrokeWeight];
  if (weight != 0.0 && (supportsStrokeWeight & 1) == 0)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Weight must be 0 if tool does not support weight.";
    goto LABEL_21;
  }

  if (colorCopy && ([configurationCopy supportsColor] & 1) != 0)
  {
    blackColor = [colorCopy copy];
  }

  else
  {
    blackColor = [MEMORY[0x1E69DC888] blackColor];
  }

  v18 = blackColor;
  v19 = [PKInk inkWithIdentifier:@"com.apple.ink.custom" color:blackColor weight:weight];
  v28.receiver = self;
  v28.super_class = PKCustomTool;
  v20 = [(PKTool *)&v28 _initWithInk:v19 configuration:configurationCopy];

  if (v20)
  {
    v21 = [identifierCopy copy];
    customIdentifier = v20->_customIdentifier;
    v20->_customIdentifier = v21;
  }

  return v20;
}

- (PKToolConfiguration)customConfigurationCopy
{
  _configuration = [(PKTool *)self _configuration];
  v3 = [_configuration copy];

  return v3;
}

- (UIColor)color
{
  _configuration = [(PKTool *)self _configuration];
  supportsColor = [_configuration supportsColor];

  if ((supportsColor & 1) == 0)
  {
    v8 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Should not attempt to access color on a tool that does not support it." userInfo:0];
    objc_exception_throw(v8);
  }

  v5 = [(PKTool *)self ink];
  v6 = [v5 colorForUIAllowHDR:1];

  return v6;
}

- (double)weight
{
  _configuration = [(PKTool *)self _configuration];
  supportsStrokeWeight = [_configuration supportsStrokeWeight];

  if ((supportsStrokeWeight & 1) == 0)
  {
    v9 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Should not attempt to access weight on a tool that does not support it." userInfo:0];
    objc_exception_throw(v9);
  }

  v5 = [(PKTool *)self ink];
  [v5 weight];
  v7 = v6;

  return v7;
}

- (double)_width
{
  _configuration = [(PKTool *)self _configuration];
  supportsStrokeWeight = [_configuration supportsStrokeWeight];

  if (!supportsStrokeWeight)
  {
    return 0.0;
  }

  [(PKCustomTool *)self weight];
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v18.receiver = self;
        v18.super_class = PKCustomTool;
        if ([(PKTool *)&v18 isEqual:v5])
        {
          v6 = v5;
          customIdentifier = v6->_customIdentifier;
          v8 = self->_customIdentifier;
          v9 = customIdentifier;
          v10 = v9;
          if (v8 == v9)
          {
          }

          else
          {
            if (v8)
            {
              v11 = v9 == 0;
            }

            else
            {
              v11 = 1;
            }

            if (v11)
            {
              v12 = 0;
LABEL_22:

LABEL_23:
              goto LABEL_24;
            }

            v13 = [v8 isEqualToString:v9];

            if (!v13)
            {
              v12 = 0;
              goto LABEL_23;
            }
          }

          _configuration = [(PKTool *)self _configuration];
          _configuration2 = [(PKTool *)v6 _configuration];
          v8 = _configuration;
          v16 = _configuration2;
          v10 = v16;
          if (v8 | v16)
          {
            v12 = 0;
            if (v8 && v16)
            {
              v12 = [v8 isEqual:v16];
            }
          }

          else
          {
            v12 = 1;
          }

          goto LABEL_22;
        }
      }
    }

    v12 = 0;
  }

LABEL_24:

  return v12;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = PKCustomTool;
  v3 = [(PKTool *)&v8 hash];
  v4 = [(NSString *)self->_customIdentifier hash];
  _configuration = [(PKTool *)self _configuration];
  v6 = v3 ^ [_configuration hash];

  return v4 ^ v6;
}

- (id)copyWithColor:(id)color
{
  colorCopy = color;
  _configuration = [(PKTool *)self _configuration];
  v6 = 0.0;
  if ([_configuration supportsStrokeWeight])
  {
    [(PKCustomTool *)self weight];
    v6 = v7;
  }

  v8 = [PKCustomTool alloc];
  customIdentifier = self->_customIdentifier;
  _configuration2 = [(PKTool *)self _configuration];
  v11 = [(PKCustomTool *)v8 initWithCustomIdentifier:customIdentifier configuration:_configuration2 color:colorCopy weight:v6];

  return v11;
}

- (id)copyWithScrubbedColor:(id)color
{
  colorCopy = color;
  _configuration = [(PKTool *)self _configuration];
  if ([_configuration supportsColor])
  {
    v6 = colorCopy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  _configuration2 = [(PKTool *)self _configuration];
  if ([_configuration2 supportsColor])
  {
    _configuration3 = [(PKTool *)self _configuration];
    if ([_configuration3 supportsOpacity] || (objc_msgSend(v7, "alphaComponent"), v10 == 1.0))
    {
    }

    else
    {
      v13 = fabs(v10 + -1.0);

      if (v13 < 0.000000999999997)
      {
        goto LABEL_9;
      }

      [v7 colorWithAlphaComponent:1.0];
      v7 = _configuration2 = v7;
    }
  }

LABEL_9:
  v11 = [(PKCustomTool *)self copyWithColor:v7];

  return v11;
}

- (id)copyWithWeight:(double)weight
{
  _configuration = [(PKTool *)self _configuration];
  if ([_configuration supportsColor])
  {
    color = [(PKCustomTool *)self color];
  }

  else
  {
    color = 0;
  }

  v7 = [PKCustomTool alloc];
  customIdentifier = self->_customIdentifier;
  _configuration2 = [(PKTool *)self _configuration];
  v10 = [(PKCustomTool *)v7 initWithCustomIdentifier:customIdentifier configuration:_configuration2 color:color weight:weight];

  return v10;
}

- (id)copyWithScrubbedWeight:(double)weight
{
  _configuration = [(PKTool *)self _configuration];
  if (![_configuration supportsStrokeWeight])
  {
    weight = 0.0;
  }

  return [(PKCustomTool *)self copyWithWeight:weight];
}

- (id)copyWithZone:(_NSZone *)zone
{
  _configuration = [(PKTool *)self _configuration];
  if ([_configuration supportsColor])
  {
    color = [(PKCustomTool *)self color];
  }

  else
  {
    color = 0;
  }

  _configuration2 = [(PKTool *)self _configuration];
  v8 = 0.0;
  if ([_configuration2 supportsStrokeWeight])
  {
    [(PKCustomTool *)self weight];
    v8 = v9;
  }

  v10 = [objc_opt_class() allocWithZone:zone];
  customIdentifier = self->_customIdentifier;
  _configuration3 = [(PKTool *)self _configuration];
  v13 = [v10 initWithCustomIdentifier:customIdentifier configuration:_configuration3 color:color weight:v8];

  return v13;
}

@end