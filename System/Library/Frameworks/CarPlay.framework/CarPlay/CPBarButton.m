@interface CPBarButton
- (CPBarButton)initWithCoder:(id)a3;
- (CPBarButton)initWithImage:(UIImage *)image handler:(CPBarButtonHandler)handler;
- (CPBarButton)initWithTitle:(NSString *)title handler:(CPBarButtonHandler)handler;
- (CPBarButton)initWithType:(CPBarButtonType)type handler:(CPBarButtonHandler)handler;
- (CPBarButtonDelegate)delegate;
- (NSString)description;
- (void)encodeWithCoder:(id)a3;
- (void)handlePrimaryAction;
- (void)setImage:(UIImage *)image;
- (void)setTitle:(NSString *)title;
@end

@implementation CPBarButton

- (CPBarButton)initWithImage:(UIImage *)image handler:(CPBarButtonHandler)handler
{
  v7 = image;
  v8 = handler;
  v15.receiver = self;
  v15.super_class = CPBarButton;
  v9 = [(CPBarButton *)&v15 init];
  if (v9)
  {
    v10 = MEMORY[0x2383C2A40](v8);
    v11 = v9->_handler;
    v9->_handler = v10;

    objc_storeStrong(&v9->_image, image);
    v12 = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v12;

    v9->_enabled = 1;
    v9->_buttonStyle = 0;
  }

  return v9;
}

- (CPBarButton)initWithTitle:(NSString *)title handler:(CPBarButtonHandler)handler
{
  v7 = title;
  v8 = handler;
  v15.receiver = self;
  v15.super_class = CPBarButton;
  v9 = [(CPBarButton *)&v15 init];
  if (v9)
  {
    v10 = MEMORY[0x2383C2A40](v8);
    v11 = v9->_handler;
    v9->_handler = v10;

    objc_storeStrong(&v9->_title, title);
    v12 = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = v12;

    v9->_enabled = 1;
    v9->_buttonStyle = 0;
  }

  return v9;
}

- (CPBarButton)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CPBarButton;
  v5 = [(CPBarButton *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPBarButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"CPBarButtonEnabled"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPBarButtonTitle"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPBarButtonImage"];
    v11 = objc_opt_class();
    v12 = CPSanitizeImage(v10, v11);
    image = v5->_image;
    v5->_image = v12;

    v5->_buttonStyle = [v4 decodeIntegerForKey:@"CPBarButtonStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(CPBarButton *)self identifier];
  [v7 encodeObject:v4 forKey:@"CPBarButtonIdentifier"];

  [v7 encodeBool:-[CPBarButton isEnabled](self forKey:{"isEnabled"), @"CPBarButtonEnabled"}];
  v5 = [(CPBarButton *)self title];
  [v7 encodeObject:v5 forKey:@"CPBarButtonTitle"];

  v6 = [(CPBarButton *)self image];
  [v7 encodeObject:v6 forKey:@"CPBarButtonImage"];

  [v7 encodeInteger:-[CPBarButton buttonStyle](self forKey:{"buttonStyle"), @"CPBarButtonStyle"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CPBarButton;
  v4 = [(CPBarButton *)&v9 description];
  v5 = [(CPBarButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPBarButton *)self isEnabled]);
  v7 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@}", v4, v5, v6];

  return v7;
}

- (void)setImage:(UIImage *)image
{
  if (self->_image != image)
  {
    v5 = image;
    v6 = objc_opt_class();
    v7 = CPSanitizeImage(v5, v6);

    v8 = self->_image;
    self->_image = v7;

    v9 = [(CPBarButton *)self delegate];
    [v9 barButton:self setImage:self->_image];
  }
}

- (void)setTitle:(NSString *)title
{
  v7 = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [(NSString *)v7 copy];
    v5 = self->_title;
    self->_title = v4;

    v6 = [(CPBarButton *)self delegate];
    [v6 barButton:self setTitle:v7];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CPBarButton *)self handler];

  v4 = CarPlayFrameworkGeneralLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "%@ will call action handler", &v7, 0xCu);
    }

    v5 = [(CPBarButton *)self handler];
    (*(v5 + 16))(v5, self);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPMapButton *)self handlePrimaryAction];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CPBarButton)initWithType:(CPBarButtonType)type handler:(CPBarButtonHandler)handler
{
  v7 = handler;
  if (type == CPBarButtonTypeImage)
  {
    v8 = [(CPBarButton *)self initWithImage:0 handler:v7];
  }

  else
  {
    if (type)
    {
      v10 = MEMORY[0x277CBEAD8];
      v11 = *MEMORY[0x277CBE660];
      v12 = NSStringFromSelector(a2);
      [v10 raise:v11 format:{@"Invalid button type passed to %@", v12}];

      v9 = 0;
      goto LABEL_7;
    }

    v8 = [(CPBarButton *)self initWithTitle:0 handler:v7];
  }

  self = v8;
  v9 = self;
LABEL_7:

  return v9;
}

- (CPBarButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end