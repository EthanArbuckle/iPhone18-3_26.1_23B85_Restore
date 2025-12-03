@interface CPBarButton
- (CPBarButton)initWithCoder:(id)coder;
- (CPBarButton)initWithImage:(UIImage *)image handler:(CPBarButtonHandler)handler;
- (CPBarButton)initWithTitle:(NSString *)title handler:(CPBarButtonHandler)handler;
- (CPBarButton)initWithType:(CPBarButtonType)type handler:(CPBarButtonHandler)handler;
- (CPBarButtonDelegate)delegate;
- (NSString)description;
- (void)encodeWithCoder:(id)coder;
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
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = uUID;

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
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v9->_identifier;
    v9->_identifier = uUID;

    v9->_enabled = 1;
    v9->_buttonStyle = 0;
  }

  return v9;
}

- (CPBarButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CPBarButton;
  v5 = [(CPBarButton *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPBarButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [coderCopy decodeBoolForKey:@"CPBarButtonEnabled"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPBarButtonTitle"];
    title = v5->_title;
    v5->_title = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPBarButtonImage"];
    v11 = objc_opt_class();
    v12 = CPSanitizeImage(v10, v11);
    image = v5->_image;
    v5->_image = v12;

    v5->_buttonStyle = [coderCopy decodeIntegerForKey:@"CPBarButtonStyle"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPBarButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"CPBarButtonIdentifier"];

  [coderCopy encodeBool:-[CPBarButton isEnabled](self forKey:{"isEnabled"), @"CPBarButtonEnabled"}];
  title = [(CPBarButton *)self title];
  [coderCopy encodeObject:title forKey:@"CPBarButtonTitle"];

  image = [(CPBarButton *)self image];
  [coderCopy encodeObject:image forKey:@"CPBarButtonImage"];

  [coderCopy encodeInteger:-[CPBarButton buttonStyle](self forKey:{"buttonStyle"), @"CPBarButtonStyle"}];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CPBarButton;
  v4 = [(CPBarButton *)&v9 description];
  identifier = [(CPBarButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPBarButton *)self isEnabled]);
  v7 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@}", v4, identifier, v6];

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

    delegate = [(CPBarButton *)self delegate];
    [delegate barButton:self setImage:self->_image];
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

    delegate = [(CPBarButton *)self delegate];
    [delegate barButton:self setTitle:v7];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  handler = [(CPBarButton *)self handler];

  v4 = CarPlayFrameworkGeneralLogging();
  handler2 = v4;
  if (handler)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_236ED4000, handler2, OS_LOG_TYPE_DEFAULT, "%@ will call action handler", &v7, 0xCu);
    }

    handler2 = [(CPBarButton *)self handler];
    (*(handler2 + 16))(handler2, self);
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

      selfCopy = 0;
      goto LABEL_7;
    }

    v8 = [(CPBarButton *)self initWithTitle:0 handler:v7];
  }

  self = v8;
  selfCopy = self;
LABEL_7:

  return selfCopy;
}

- (CPBarButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end