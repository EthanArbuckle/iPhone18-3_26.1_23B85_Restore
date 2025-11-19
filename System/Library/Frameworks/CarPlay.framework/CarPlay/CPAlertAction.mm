@interface CPAlertAction
- (CPAlertAction)initWithCoder:(id)a3;
- (CPAlertAction)initWithTitle:(NSString *)title color:(UIColor *)color handler:(CPAlertActionHandler)handler;
- (CPAlertAction)initWithTitle:(NSString *)title style:(CPAlertActionStyle)style handler:(CPAlertActionHandler)handler;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CPAlertAction

- (CPAlertAction)initWithTitle:(NSString *)title style:(CPAlertActionStyle)style handler:(CPAlertActionHandler)handler
{
  v9 = title;
  v10 = handler;
  v18.receiver = self;
  v18.super_class = CPAlertAction;
  v11 = [(CPAlertAction *)&v18 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_title, title);
    v12->_style = style;
    v13 = MEMORY[0x2383C2A40](v10);
    v14 = v12->_handler;
    v12->_handler = v13;

    v15 = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = v15;
  }

  return v12;
}

- (CPAlertAction)initWithTitle:(NSString *)title color:(UIColor *)color handler:(CPAlertActionHandler)handler
{
  v8 = color;
  v9 = [(CPAlertAction *)self initWithTitle:title style:0 handler:handler];
  v10 = v9;
  if (v8 && v9)
  {
    v11 = CPSanitizedBackgroundColor(v8);
    v12 = v10->_color;
    v10->_color = v11;
  }

  return v10;
}

- (CPAlertAction)initWithCoder:(id)a3
{
  v4 = a3;
  v13.receiver = self;
  v13.super_class = CPAlertAction;
  v5 = [(CPAlertAction *)&v13 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPAlertActionTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v5->_style = [v4 decodeIntegerForKey:@"kCPAlertActionStyleKey"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPAlertActionIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPAlertActionColorKey"];
    color = v5->_color;
    v5->_color = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPAlertAction *)self title];
  [v4 encodeObject:v5 forKey:@"kCPAlertActionTitleKey"];

  [v4 encodeInteger:-[CPAlertAction style](self forKey:{"style"), @"kCPAlertActionStyleKey"}];
  v6 = [(CPAlertAction *)self identifier];
  [v4 encodeObject:v6 forKey:@"kCPAlertActionIdentifierKey"];

  v7 = [(CPAlertAction *)self color];
  [v4 encodeObject:v7 forKey:@"kCPAlertActionColorKey"];
}

@end