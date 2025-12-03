@interface CPButton
- (CPButton)initWithCoder:(id)coder;
- (CPButton)initWithImage:(UIImage *)image handler:(void *)handler;
- (CPControlDelegate)delegate;
- (CPTemplate)associatedTemplate;
- (NSString)description;
- (UIImage)image;
- (void)encodeWithCoder:(id)coder;
- (void)handlePrimaryAction;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image;
- (void)setTitle:(NSString *)title;
@end

@implementation CPButton

- (CPButton)initWithImage:(UIImage *)image handler:(void *)handler
{
  v6 = image;
  v7 = handler;
  v14.receiver = self;
  v14.super_class = CPButton;
  v8 = [(CPButton *)&v14 init];
  if (v8)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = uUID;

    v8->_enabled = 1;
    v11 = MEMORY[0x2383C2A40](v7);
    v12 = v8->_handler;
    v8->_handler = v11;

    if (v6)
    {
      [(CPButton *)v8 setImage:v6];
    }
  }

  return v8;
}

- (CPButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(CPButton *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [coderCopy decodeBoolForKey:@"CPButtonEnabled"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPButtonImageSet"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPButtonTitleKey"];
    title = v5->_title;
    v5->_title = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"CPButtonIdentifier"];

  [coderCopy encodeBool:-[CPButton isEnabled](self forKey:{"isEnabled"), @"CPButtonEnabled"}];
  imageSet = [(CPButton *)self imageSet];
  [coderCopy encodeObject:imageSet forKey:@"CPButtonImageSet"];

  title = [(CPButton *)self title];
  [coderCopy encodeObject:title forKey:@"CPButtonTitleKey"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CPButton;
  v4 = [(CPButton *)&v9 description];
  identifier = [(CPButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPButton *)self isEnabled]);
  v7 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@}", v4, identifier, v6];

  return v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    delegate = [(CPButton *)self delegate];
    [delegate control:self setEnabled:self->_enabled];
  }
}

- (void)setImage:(id)image
{
  imageCopy = image;
  image = [(CPButton *)self image];
  v5 = [image isEqual:imageCopy];

  if ((v5 & 1) == 0)
  {
    if (imageCopy)
    {
      v6 = [[CPImageSet alloc] initWithImage:imageCopy treatmentBlock:&__block_literal_global_6];
      imageSet = self->_imageSet;
      self->_imageSet = v6;
    }

    associatedTemplate = [(CPButton *)self associatedTemplate];
    [associatedTemplate setNeedsUpdate];
  }
}

- (UIImage)image
{
  imageSet = [(CPButton *)self imageSet];
  image = [imageSet image];

  return image;
}

- (void)setTitle:(NSString *)title
{
  v9 = title;
  title = [(CPButton *)self title];
  v5 = [title isEqualToString:v9];

  if ((v5 & 1) == 0)
  {
    v6 = [(NSString *)v9 copy];
    v7 = self->_title;
    self->_title = v6;

    associatedTemplate = [(CPButton *)self associatedTemplate];
    [associatedTemplate setNeedsUpdate];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  handler = [(CPButton *)self handler];

  v4 = CarPlayFrameworkGeneralLogging();
  handler2 = v4;
  if (handler)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_236ED4000, handler2, OS_LOG_TYPE_INFO, "%@ will call action handler", &v7, 0xCu);
    }

    handler2 = [(CPButton *)self handler];
    (*(handler2 + 16))(handler2, self);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPMapButton *)self handlePrimaryAction];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (CPControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPTemplate)associatedTemplate
{
  WeakRetained = objc_loadWeakRetained(&self->_associatedTemplate);

  return WeakRetained;
}

@end