@interface AXCustomContent
+ (AXCustomContent)customContentWithAttributedLabel:(NSAttributedString *)label attributedValue:(NSAttributedString *)value;
+ (AXCustomContent)customContentWithLabel:(NSString *)label value:(NSString *)value;
- (AXCustomContent)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSAttributedString)attributedLabel;
- (NSAttributedString)attributedValue;
- (NSString)label;
- (NSString)value;
- (id)_init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AXCustomContent

- (id)_init
{
  v3.receiver = self;
  v3.super_class = AXCustomContent;
  return [(AXCustomContent *)&v3 init];
}

+ (AXCustomContent)customContentWithLabel:(NSString *)label value:(NSString *)value
{
  v5 = value;
  v6 = label;
  v7 = [[AXCustomContent alloc] init];
  [(AXCustomContent *)v7 setLabel:v6];

  [(AXCustomContent *)v7 setValue:v5];
  [(AXCustomContent *)v7 setImportance:0];

  return v7;
}

+ (AXCustomContent)customContentWithAttributedLabel:(NSAttributedString *)label attributedValue:(NSAttributedString *)value
{
  v5 = value;
  v6 = label;
  v7 = [[AXCustomContent alloc] init];
  [(AXCustomContent *)v7 setAttributedLabel:v6];

  [(AXCustomContent *)v7 setAttributedValue:v5];
  [(AXCustomContent *)v7 setImportance:0];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = self;
  v14.receiver = v3;
  v14.super_class = AXCustomContent;
  v4 = [(AXCustomContent *)&v14 init];
  v5 = [(AXCustomContent *)v3 label];
  v6 = [v5 copy];
  [(AXCustomContent *)v4 setLabel:v6];

  v7 = [(AXCustomContent *)v3 attributedLabel];
  v8 = [v7 copy];
  [(AXCustomContent *)v4 setAttributedLabel:v8];

  v9 = [(AXCustomContent *)v3 value];
  v10 = [v9 copy];
  [(AXCustomContent *)v4 setValue:v10];

  v11 = [(AXCustomContent *)v3 attributedValue];
  v12 = [v11 copy];
  [(AXCustomContent *)v4 setAttributedValue:v12];

  [(AXCustomContent *)v4 setImportance:[(AXCustomContent *)v3 importance]];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v8 = a3;
  v4 = [(AXCustomContent *)self label];
  [v8 encodeObject:v4 forKey:@"label"];

  v5 = [(AXCustomContent *)self attributedLabel];
  [v8 encodeObject:v5 forKey:@"attributedLabel"];

  v6 = [(AXCustomContent *)self value];
  [v8 encodeObject:v6 forKey:@"value"];

  v7 = [(AXCustomContent *)self attributedValue];
  [v8 encodeObject:v7 forKey:@"attributedValue"];

  [v8 encodeInteger:-[AXCustomContent importance](self forKey:{"importance"), @"importance"}];
}

- (AXCustomContent)initWithCoder:(id)a3
{
  v28[1] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(AXCustomContent *)self _init];
  v6 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [v4 decodeObjectOfClasses:v8 forKey:@"label"];
  [(AXCustomContent *)v5 setLabel:v9];

  v10 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v12 = [v10 setWithArray:v11];
  v13 = [v4 decodeObjectOfClasses:v12 forKey:@"attributedLabel"];
  [(AXCustomContent *)v5 setAttributedLabel:v13];

  v14 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v16 = [v14 setWithArray:v15];
  v17 = [v4 decodeObjectOfClasses:v16 forKey:@"value"];
  [(AXCustomContent *)v5 setValue:v17];

  v18 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v20 = [v18 setWithArray:v19];
  v21 = [v4 decodeObjectOfClasses:v20 forKey:@"attributedValue"];
  [(AXCustomContent *)v5 setAttributedValue:v21];

  v22 = [v4 decodeIntegerForKey:@"importance"];
  [(AXCustomContent *)v5 setImportance:v22];

  v23 = *MEMORY[0x1E69E9840];
  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(AXCustomContent *)self label];
    v6 = [v4 label];
    if ([v5 isEqualToString:v6])
    {
      v7 = [(AXCustomContent *)self value];
      v8 = [v4 value];
      if ([v7 isEqualToString:v8])
      {
        v9 = [(AXCustomContent *)self attributedLabel];
        v10 = [v4 attributedLabel];
        if ([v9 isEqual:v10])
        {
          v11 = [(AXCustomContent *)self attributedValue];
          v12 = [v4 attributedValue];
          if ([v11 isEqual:v12])
          {
            v13 = [(AXCustomContent *)self importance];
            v14 = v13 == [v4 importance];
          }

          else
          {
            v14 = 0;
          }
        }

        else
        {
          v14 = 0;
        }
      }

      else
      {
        v14 = 0;
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (NSString)label
{
  label = self->_label;
  if (label || (attributedLabel = self->_attributedLabel) == 0)
  {
    v3 = label;
  }

  else
  {
    v3 = [(NSAttributedString *)attributedLabel string];
  }

  return v3;
}

- (NSString)value
{
  value = self->_value;
  if (value || (attributedValue = self->_attributedValue) == 0)
  {
    v3 = value;
  }

  else
  {
    v3 = [(NSAttributedString *)attributedValue string];
  }

  return v3;
}

- (NSAttributedString)attributedLabel
{
  attributedLabel = self->_attributedLabel;
  if (attributedLabel || !self->_label)
  {
    v3 = attributedLabel;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_label];
  }

  return v3;
}

- (NSAttributedString)attributedValue
{
  attributedValue = self->_attributedValue;
  if (attributedValue || !self->_value)
  {
    v3 = attributedValue;
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:self->_value];
  }

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = AXCustomContent;
  v4 = [(AXCustomContent *)&v9 description];
  v5 = [(AXCustomContent *)self label];
  v6 = [(AXCustomContent *)self value];
  v7 = [v3 stringWithFormat:@"%@: label: %@, value: %@", v4, v5, v6];

  return v7;
}

@end