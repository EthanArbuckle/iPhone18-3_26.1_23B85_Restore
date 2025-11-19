@interface PKCustomTool
- (BOOL)isEqual:(id)a3;
- (PKCustomTool)initWithCustomIdentifier:(id)a3 configuration:(id)a4 color:(id)a5 weight:(double)a6;
- (PKToolConfiguration)customConfigurationCopy;
- (UIColor)color;
- (double)_width;
- (double)weight;
- (id)copyWithColor:(id)a3;
- (id)copyWithScrubbedColor:(id)a3;
- (id)copyWithScrubbedWeight:(double)a3;
- (id)copyWithWeight:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation PKCustomTool

- (PKCustomTool)initWithCustomIdentifier:(id)a3 configuration:(id)a4 color:(id)a5 weight:(double)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [v11 supportsColor];
  if (v12 && (v13 & 1) == 0)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Color must be nil if tool does not support color.";
    goto LABEL_21;
  }

  v14 = [v11 supportsColor];
  if (!v12 && v14)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Color must not be nil if tool supports color.";
    goto LABEL_21;
  }

  if ([v11 supportsColor])
  {
    if (([v11 supportsOpacity] & 1) == 0)
    {
      [v12 alphaComponent];
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

  v16 = [v11 supportsStrokeWeight];
  if (a6 != 0.0 && (v16 & 1) == 0)
  {
    v24 = MEMORY[0x1E695DF30];
    v25 = *MEMORY[0x1E695D940];
    v26 = @"Weight must be 0 if tool does not support weight.";
    goto LABEL_21;
  }

  if (v12 && ([v11 supportsColor] & 1) != 0)
  {
    v17 = [v12 copy];
  }

  else
  {
    v17 = [MEMORY[0x1E69DC888] blackColor];
  }

  v18 = v17;
  v19 = [PKInk inkWithIdentifier:@"com.apple.ink.custom" color:v17 weight:a6];
  v28.receiver = self;
  v28.super_class = PKCustomTool;
  v20 = [(PKTool *)&v28 _initWithInk:v19 configuration:v11];

  if (v20)
  {
    v21 = [v10 copy];
    customIdentifier = v20->_customIdentifier;
    v20->_customIdentifier = v21;
  }

  return v20;
}

- (PKToolConfiguration)customConfigurationCopy
{
  v2 = [(PKTool *)self _configuration];
  v3 = [v2 copy];

  return v3;
}

- (UIColor)color
{
  v3 = [(PKTool *)self _configuration];
  v4 = [v3 supportsColor];

  if ((v4 & 1) == 0)
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
  v3 = [(PKTool *)self _configuration];
  v4 = [v3 supportsStrokeWeight];

  if ((v4 & 1) == 0)
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
  v3 = [(PKTool *)self _configuration];
  v4 = [v3 supportsStrokeWeight];

  if (!v4)
  {
    return 0.0;
  }

  [(PKCustomTool *)self weight];
  return result;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    if (v4)
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

          v14 = [(PKTool *)self _configuration];
          v15 = [(PKTool *)v6 _configuration];
          v8 = v14;
          v16 = v15;
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
  v5 = [(PKTool *)self _configuration];
  v6 = v3 ^ [v5 hash];

  return v4 ^ v6;
}

- (id)copyWithColor:(id)a3
{
  v4 = a3;
  v5 = [(PKTool *)self _configuration];
  v6 = 0.0;
  if ([v5 supportsStrokeWeight])
  {
    [(PKCustomTool *)self weight];
    v6 = v7;
  }

  v8 = [PKCustomTool alloc];
  customIdentifier = self->_customIdentifier;
  v10 = [(PKTool *)self _configuration];
  v11 = [(PKCustomTool *)v8 initWithCustomIdentifier:customIdentifier configuration:v10 color:v4 weight:v6];

  return v11;
}

- (id)copyWithScrubbedColor:(id)a3
{
  v4 = a3;
  v5 = [(PKTool *)self _configuration];
  if ([v5 supportsColor])
  {
    v6 = v4;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(PKTool *)self _configuration];
  if ([v8 supportsColor])
  {
    v9 = [(PKTool *)self _configuration];
    if ([v9 supportsOpacity] || (objc_msgSend(v7, "alphaComponent"), v10 == 1.0))
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
      v7 = v8 = v7;
    }
  }

LABEL_9:
  v11 = [(PKCustomTool *)self copyWithColor:v7];

  return v11;
}

- (id)copyWithWeight:(double)a3
{
  v5 = [(PKTool *)self _configuration];
  if ([v5 supportsColor])
  {
    v6 = [(PKCustomTool *)self color];
  }

  else
  {
    v6 = 0;
  }

  v7 = [PKCustomTool alloc];
  customIdentifier = self->_customIdentifier;
  v9 = [(PKTool *)self _configuration];
  v10 = [(PKCustomTool *)v7 initWithCustomIdentifier:customIdentifier configuration:v9 color:v6 weight:a3];

  return v10;
}

- (id)copyWithScrubbedWeight:(double)a3
{
  v5 = [(PKTool *)self _configuration];
  if (![v5 supportsStrokeWeight])
  {
    a3 = 0.0;
  }

  return [(PKCustomTool *)self copyWithWeight:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [(PKTool *)self _configuration];
  if ([v5 supportsColor])
  {
    v6 = [(PKCustomTool *)self color];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(PKTool *)self _configuration];
  v8 = 0.0;
  if ([v7 supportsStrokeWeight])
  {
    [(PKCustomTool *)self weight];
    v8 = v9;
  }

  v10 = [objc_opt_class() allocWithZone:a3];
  customIdentifier = self->_customIdentifier;
  v12 = [(PKTool *)self _configuration];
  v13 = [v10 initWithCustomIdentifier:customIdentifier configuration:v12 color:v6 weight:v8];

  return v13;
}

@end