@interface ATXTimeField
- (ATXTimeField)initWithCoder:(id)coder;
- (ATXTimeField)initWithTitle:(id)title value:(id)value;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeField

- (ATXTimeField)initWithTitle:(id)title value:(id)value
{
  titleCopy = title;
  valueCopy = value;
  v15.receiver = self;
  v15.super_class = ATXTimeField;
  v8 = [(ATXTimeField *)&v15 init];
  if (v8)
  {
    v9 = [titleCopy copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [valueCopy copy];
    value = v8->_value;
    v8->_value = v11;

    v13 = v8;
  }

  return v8;
}

- (ATXTimeField)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(ATXTimeField *)self initWithTitle:v5 value:v6];
  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  title = self->_title;
  coderCopy = coder;
  [coderCopy encodeObject:title forKey:@"title"];
  [coderCopy encodeObject:self->_value forKey:@"value"];
}

@end