@interface ATXTimeField
- (ATXTimeField)initWithCoder:(id)a3;
- (ATXTimeField)initWithTitle:(id)a3 value:(id)a4;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeField

- (ATXTimeField)initWithTitle:(id)a3 value:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = ATXTimeField;
  v8 = [(ATXTimeField *)&v15 init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    value = v8->_value;
    v8->_value = v11;

    v13 = v8;
  }

  return v8;
}

- (ATXTimeField)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"value"];

  v7 = [(ATXTimeField *)self initWithTitle:v5 value:v6];
  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  title = self->_title;
  v5 = a3;
  [v5 encodeObject:title forKey:@"title"];
  [v5 encodeObject:self->_value forKey:@"value"];
}

@end