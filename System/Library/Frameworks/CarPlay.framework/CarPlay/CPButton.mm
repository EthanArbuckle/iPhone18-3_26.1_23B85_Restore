@interface CPButton
- (CPButton)initWithCoder:(id)a3;
- (CPButton)initWithImage:(UIImage *)image handler:(void *)handler;
- (CPControlDelegate)delegate;
- (CPTemplate)associatedTemplate;
- (NSString)description;
- (UIImage)image;
- (void)encodeWithCoder:(id)a3;
- (void)handlePrimaryAction;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)a3;
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
    v9 = [MEMORY[0x277CCAD78] UUID];
    identifier = v8->_identifier;
    v8->_identifier = v9;

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

- (CPButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPButton *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"CPButtonEnabled"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPButtonImageSet"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPButtonTitleKey"];
    title = v5->_title;
    v5->_title = v10;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPButton *)self identifier];
  [v4 encodeObject:v5 forKey:@"CPButtonIdentifier"];

  [v4 encodeBool:-[CPButton isEnabled](self forKey:{"isEnabled"), @"CPButtonEnabled"}];
  v6 = [(CPButton *)self imageSet];
  [v4 encodeObject:v6 forKey:@"CPButtonImageSet"];

  v7 = [(CPButton *)self title];
  [v4 encodeObject:v7 forKey:@"CPButtonTitleKey"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CPButton;
  v4 = [(CPButton *)&v9 description];
  v5 = [(CPButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPButton *)self isEnabled]);
  v7 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@}", v4, v5, v6];

  return v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    v5 = [(CPButton *)self delegate];
    [v5 control:self setEnabled:self->_enabled];
  }
}

- (void)setImage:(id)a3
{
  v9 = a3;
  v4 = [(CPButton *)self image];
  v5 = [v4 isEqual:v9];

  if ((v5 & 1) == 0)
  {
    if (v9)
    {
      v6 = [[CPImageSet alloc] initWithImage:v9 treatmentBlock:&__block_literal_global_6];
      imageSet = self->_imageSet;
      self->_imageSet = v6;
    }

    v8 = [(CPButton *)self associatedTemplate];
    [v8 setNeedsUpdate];
  }
}

- (UIImage)image
{
  v2 = [(CPButton *)self imageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setTitle:(NSString *)title
{
  v9 = title;
  v4 = [(CPButton *)self title];
  v5 = [v4 isEqualToString:v9];

  if ((v5 & 1) == 0)
  {
    v6 = [(NSString *)v9 copy];
    v7 = self->_title;
    self->_title = v6;

    v8 = [(CPButton *)self associatedTemplate];
    [v8 setNeedsUpdate];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CPButton *)self handler];

  v4 = CarPlayFrameworkGeneralLogging();
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "%@ will call action handler", &v7, 0xCu);
    }

    v5 = [(CPButton *)self handler];
    (*(v5 + 16))(v5, self);
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