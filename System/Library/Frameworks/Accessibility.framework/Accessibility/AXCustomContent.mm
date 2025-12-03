@interface AXCustomContent
+ (AXCustomContent)customContentWithAttributedLabel:(NSAttributedString *)label attributedValue:(NSAttributedString *)value;
+ (AXCustomContent)customContentWithLabel:(NSString *)label value:(NSString *)value;
- (AXCustomContent)initWithCoder:(id)coder;
- (BOOL)isEqual:(id)equal;
- (NSAttributedString)attributedLabel;
- (NSAttributedString)attributedValue;
- (NSString)label;
- (NSString)value;
- (id)_init;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  selfCopy = self;
  v14.receiver = selfCopy;
  v14.super_class = AXCustomContent;
  v4 = [(AXCustomContent *)&v14 init];
  label = [(AXCustomContent *)selfCopy label];
  v6 = [label copy];
  [(AXCustomContent *)v4 setLabel:v6];

  attributedLabel = [(AXCustomContent *)selfCopy attributedLabel];
  v8 = [attributedLabel copy];
  [(AXCustomContent *)v4 setAttributedLabel:v8];

  value = [(AXCustomContent *)selfCopy value];
  v10 = [value copy];
  [(AXCustomContent *)v4 setValue:v10];

  attributedValue = [(AXCustomContent *)selfCopy attributedValue];
  v12 = [attributedValue copy];
  [(AXCustomContent *)v4 setAttributedValue:v12];

  [(AXCustomContent *)v4 setImportance:[(AXCustomContent *)selfCopy importance]];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = [(AXCustomContent *)self label];
  [coderCopy encodeObject:label forKey:@"label"];

  attributedLabel = [(AXCustomContent *)self attributedLabel];
  [coderCopy encodeObject:attributedLabel forKey:@"attributedLabel"];

  value = [(AXCustomContent *)self value];
  [coderCopy encodeObject:value forKey:@"value"];

  attributedValue = [(AXCustomContent *)self attributedValue];
  [coderCopy encodeObject:attributedValue forKey:@"attributedValue"];

  [coderCopy encodeInteger:-[AXCustomContent importance](self forKey:{"importance"), @"importance"}];
}

- (AXCustomContent)initWithCoder:(id)coder
{
  v28[1] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  _init = [(AXCustomContent *)self _init];
  v6 = MEMORY[0x1E695DFD8];
  v28[0] = objc_opt_class();
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:1];
  v8 = [v6 setWithArray:v7];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"label"];
  [(AXCustomContent *)_init setLabel:v9];

  v10 = MEMORY[0x1E695DFD8];
  v27 = objc_opt_class();
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:1];
  v12 = [v10 setWithArray:v11];
  v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"attributedLabel"];
  [(AXCustomContent *)_init setAttributedLabel:v13];

  v14 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v16 = [v14 setWithArray:v15];
  v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"value"];
  [(AXCustomContent *)_init setValue:v17];

  v18 = MEMORY[0x1E695DFD8];
  v25 = objc_opt_class();
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  v20 = [v18 setWithArray:v19];
  v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"attributedValue"];
  [(AXCustomContent *)_init setAttributedValue:v21];

  v22 = [coderCopy decodeIntegerForKey:@"importance"];
  [(AXCustomContent *)_init setImportance:v22];

  v23 = *MEMORY[0x1E69E9840];
  return _init;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    label = [(AXCustomContent *)self label];
    label2 = [equalCopy label];
    if ([label isEqualToString:label2])
    {
      value = [(AXCustomContent *)self value];
      value2 = [equalCopy value];
      if ([value isEqualToString:value2])
      {
        attributedLabel = [(AXCustomContent *)self attributedLabel];
        attributedLabel2 = [equalCopy attributedLabel];
        if ([attributedLabel isEqual:attributedLabel2])
        {
          attributedValue = [(AXCustomContent *)self attributedValue];
          attributedValue2 = [equalCopy attributedValue];
          if ([attributedValue isEqual:attributedValue2])
          {
            importance = [(AXCustomContent *)self importance];
            v14 = importance == [equalCopy importance];
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
    string = label;
  }

  else
  {
    string = [(NSAttributedString *)attributedLabel string];
  }

  return string;
}

- (NSString)value
{
  value = self->_value;
  if (value || (attributedValue = self->_attributedValue) == 0)
  {
    string = value;
  }

  else
  {
    string = [(NSAttributedString *)attributedValue string];
  }

  return string;
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
  label = [(AXCustomContent *)self label];
  value = [(AXCustomContent *)self value];
  v7 = [v3 stringWithFormat:@"%@: label: %@, value: %@", v4, label, value];

  return v7;
}

@end