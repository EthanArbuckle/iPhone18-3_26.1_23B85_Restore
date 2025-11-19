@interface CPMapButton
- (CPMapButton)initWithCoder:(id)a3;
- (CPMapButton)initWithHandler:(void *)handler;
- (CPMapButtonDelegate)controlDelegate;
- (NSString)description;
- (UIImage)image;
- (void)encodeWithCoder:(id)a3;
- (void)handlePrimaryAction;
- (void)setEnabled:(BOOL)enabled;
- (void)setFocusedImage:(UIImage *)focusedImage;
- (void)setImage:(UIImage *)image;
@end

@implementation CPMapButton

- (CPMapButton)initWithHandler:(void *)handler
{
  v4 = handler;
  v11.receiver = self;
  v11.super_class = CPMapButton;
  v5 = [(CPMapButton *)&v11 init];
  if (v5)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = 1;
    v8 = MEMORY[0x2383C2A40](v4);
    v9 = v5->_handler;
    v5->_handler = v8;
  }

  return v5;
}

- (CPMapButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPMapButton *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPMapButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"CPMapButtonEnabled"];
    v5->_hidden = [v4 decodeBoolForKey:@"CPMapButtonHidden"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPMapButtonImage"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPMapButtonFocusedImage"];
    v11 = objc_opt_class();
    v12 = CPSanitizeImage(v10, v11);
    focusedImage = v5->_focusedImage;
    v5->_focusedImage = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPMapButton *)self identifier];
  [v4 encodeObject:v5 forKey:@"CPMapButtonIdentifier"];

  [v4 encodeBool:-[CPMapButton isEnabled](self forKey:{"isEnabled"), @"CPMapButtonEnabled"}];
  [v4 encodeBool:-[CPMapButton isHidden](self forKey:{"isHidden"), @"CPMapButtonHidden"}];
  v6 = [(CPMapButton *)self imageSet];
  [v4 encodeObject:v6 forKey:@"CPMapButtonImage"];

  v7 = [(CPMapButton *)self focusedImage];
  [v4 encodeObject:v7 forKey:@"CPMapButtonFocusedImage"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v10.receiver = self;
  v10.super_class = CPMapButton;
  v4 = [(CPMapButton *)&v10 description];
  v5 = [(CPMapButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPMapButton *)self isEnabled]);
  v7 = CPSStringFromBOOL([(CPMapButton *)self isHidden]);
  v8 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@, hidden: %@}", v4, v5, v6, v7];

  return v8;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    v5 = [(CPMapButton *)self controlDelegate];
    [v5 control:self setEnabled:self->_enabled];
  }
}

- (void)setImage:(UIImage *)image
{
  v4 = image;
  v8 = v4;
  if (v4)
  {
    v4 = [[CPImageSet alloc] initWithImage:v4 treatmentBlock:&__block_literal_global_0];
  }

  imageSet = self->_imageSet;
  self->_imageSet = v4;

  v6 = [(CPMapButton *)self controlDelegate];
  v7 = [(CPMapButton *)self imageSet];
  [v6 mapButton:self setImageSet:v7];
}

- (UIImage)image
{
  v2 = [(CPMapButton *)self imageSet];
  v3 = [v2 image];

  return v3;
}

- (void)setFocusedImage:(UIImage *)focusedImage
{
  if (self->_focusedImage != focusedImage)
  {
    v5 = focusedImage;
    v6 = objc_opt_class();
    v7 = CPSanitizeImage(v5, v6);

    v8 = self->_focusedImage;
    self->_focusedImage = v7;

    v9 = [(CPMapButton *)self controlDelegate];
    [v9 mapButton:self setFocusedImage:self->_focusedImage];
  }
}

- (void)handlePrimaryAction
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_236ED4000, a2, OS_LOG_TYPE_ERROR, "%@ action handler nil", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (CPMapButtonDelegate)controlDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_controlDelegate);

  return WeakRetained;
}

@end