@interface CPGridButton
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToGridButton:(id)button;
- (CPGridButton)initWithCoder:(id)coder;
- (CPGridButton)initWithTitleVariants:(id)variants image:(id)image messageConfiguration:(id)configuration handler:(id)handler;
- (CPGridButtonDelegate)delegate;
- (NSString)description;
- (UIImage)image;
- (id)_init;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)handlePrimaryAction;
- (void)setDelegate:(id)delegate;
- (void)setEnabled:(BOOL)enabled;
- (void)updateImage:(id)image;
- (void)updateTitleVariants:(id)variants;
@end

@implementation CPGridButton

- (CPGridButton)initWithTitleVariants:(id)variants image:(id)image messageConfiguration:(id)configuration handler:(id)handler
{
  variantsCopy = variants;
  imageCopy = image;
  configurationCopy = configuration;
  handlerCopy = handler;
  v26.receiver = self;
  v26.super_class = CPGridButton;
  v15 = [(CPGridButton *)&v26 init];
  if (v15)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v15->_identifier;
    v15->_identifier = uUID;

    v15->_enabled = 1;
    objc_storeStrong(&v15->_titleVariants, variants);
    v18 = [[CPImageSet alloc] initWithImage:imageCopy];
    imageSet = v15->_imageSet;
    v15->_imageSet = v18;

    v20 = MEMORY[0x2383C2A40](handlerCopy);
    handler = v15->_handler;
    v15->_handler = v20;

    objc_storeStrong(&v15->_messageConfiguration, configuration);
    objc_initWeak(&location, v15);
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __73__CPGridButton_initWithTitleVariants_image_messageConfiguration_handler___block_invoke;
    v23[3] = &unk_278A119D0;
    objc_copyWeak(&v24, &location);
    [(CPMessageGridItemConfiguration *)v15->_messageConfiguration setUnreadChangeHandler:v23];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
  }

  return v15;
}

void __73__CPGridButton_initWithTitleVariants_image_messageConfiguration_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained delegate];
  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 identifier];
  [v4 gridButton:v6 setUnread:a2];
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CPGridButton;
  return [(CPGridButton *)&v3 init];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPGridButton *)self isEqualToGridButton:equalCopy];

  return v5;
}

- (BOOL)isEqualToGridButton:(id)button
{
  buttonCopy = button;
  identifier = [(CPGridButton *)self identifier];
  identifier2 = [buttonCopy identifier];
  v7 = [identifier isEqual:identifier2];

  if (!v7)
  {
    goto LABEL_6;
  }

  isEnabled = [(CPGridButton *)self isEnabled];
  if (isEnabled != [buttonCopy isEnabled])
  {
    goto LABEL_6;
  }

  titleVariants = [(CPGridButton *)self titleVariants];
  titleVariants2 = [buttonCopy titleVariants];
  v11 = [titleVariants isEqualToArray:titleVariants2];

  if (!v11)
  {
    goto LABEL_6;
  }

  imageSet = [(CPGridButton *)self imageSet];
  imageSet2 = [buttonCopy imageSet];
  v14 = [imageSet isEqual:imageSet2];

  if (v14)
  {
    messageConfiguration = [(CPGridButton *)self messageConfiguration];
    messageConfiguration2 = [buttonCopy messageConfiguration];
    v17 = [messageConfiguration isEqual:messageConfiguration2];
  }

  else
  {
LABEL_6:
    v17 = 0;
  }

  return v17;
}

- (unint64_t)hash
{
  identifier = [(CPGridButton *)self identifier];
  v4 = [identifier hash];
  titleVariants = [(CPGridButton *)self titleVariants];
  v6 = [titleVariants hash] ^ v4;
  imageSet = [(CPGridButton *)self imageSet];
  v8 = v6 ^ [imageSet hash];
  isEnabled = [(CPGridButton *)self isEnabled];
  messageConfiguration = [(CPGridButton *)self messageConfiguration];
  v11 = isEnabled ^ [messageConfiguration hash];

  return v8 ^ v11;
}

- (CPGridButton)initWithCoder:(id)coder
{
  coderCopy = coder;
  _init = [(CPGridButton *)self _init];
  if (_init)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPGridButtonIdentifier"];
    identifier = _init->_identifier;
    _init->_identifier = v6;

    _init->_enabled = [coderCopy decodeBoolForKey:@"CPGridButtonEnabled"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"CPGridButtonTitleVariants"];
    titleVariants = _init->_titleVariants;
    _init->_titleVariants = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPGridButtonImageSet"];
    imageSet = _init->_imageSet;
    _init->_imageSet = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"CPMessageGridItemConfiguration"];
    messageConfiguration = _init->_messageConfiguration;
    _init->_messageConfiguration = v15;
  }

  return _init;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(CPGridButton *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"CPGridButtonIdentifier"];

  [coderCopy encodeBool:-[CPGridButton isEnabled](self forKey:{"isEnabled"), @"CPGridButtonEnabled"}];
  titleVariants = [(CPGridButton *)self titleVariants];
  [coderCopy encodeObject:titleVariants forKey:@"CPGridButtonTitleVariants"];

  imageSet = [(CPGridButton *)self imageSet];
  [coderCopy encodeObject:imageSet forKey:@"CPGridButtonImageSet"];

  messageConfiguration = [(CPGridButton *)self messageConfiguration];
  [coderCopy encodeObject:messageConfiguration forKey:@"CPMessageGridItemConfiguration"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CPGridButton;
  v4 = [(CPGridButton *)&v9 description];
  identifier = [(CPGridButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPGridButton *)self isEnabled]);
  v7 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@}", v4, identifier, v6];

  return v7;
}

- (void)setDelegate:(id)delegate
{
  delegateCopy = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != delegateCopy)
  {
    v6 = objc_storeWeak(&self->_delegate, delegateCopy);
    [objc_opt_class() maximumGridButtonImageSize];
    v8 = v7;
    v10 = v9;

    v11 = [CPImageSet alloc];
    image = [(CPImageSet *)self->_imageSet image];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__CPGridButton_setDelegate___block_invoke;
    v15[3] = &__block_descriptor_48_e26___UIImage_16__0__UIImage_8l;
    v15[4] = v8;
    v15[5] = v10;
    v13 = [(CPImageSet *)v11 initWithImage:image treatmentBlock:v15];
    imageSet = self->_imageSet;
    self->_imageSet = v13;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    delegate = [(CPGridButton *)self delegate];
    [delegate control:self setEnabled:self->_enabled];
  }
}

- (void)updateImage:(id)image
{
  imageCopy = image;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [objc_opt_class() maximumGridButtonImageSize];
  v7 = v6;
  v9 = v8;

  if (imageCopy)
  {
    v10 = [CPImageSet alloc];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __28__CPGridButton_updateImage___block_invoke;
    v17[3] = &__block_descriptor_48_e26___UIImage_16__0__UIImage_8l;
    v17[4] = v7;
    v17[5] = v9;
    v11 = [(CPImageSet *)v10 initWithImage:imageCopy treatmentBlock:v17];
    imageSet = self->_imageSet;
    self->_imageSet = v11;
  }

  else
  {
    imageSet = self->_imageSet;
    self->_imageSet = 0;
  }

  delegate = [(CPGridButton *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    delegate2 = [(CPGridButton *)self delegate];
    identifier = [(CPGridButton *)self identifier];
    [delegate2 gridButton:identifier setImageSet:self->_imageSet];
  }
}

- (void)updateTitleVariants:(id)variants
{
  if (self->_titleVariants != variants)
  {
    v5 = [variants copy];
    titleVariants = self->_titleVariants;
    self->_titleVariants = v5;

    delegate = [(CPGridButton *)self delegate];
    identifier = [(CPGridButton *)self identifier];
    titleVariants = [(CPGridButton *)self titleVariants];
    [delegate gridButton:identifier setTitleVariants:titleVariants];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  handler = [(CPGridButton *)self handler];

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

    handler2 = [(CPGridButton *)self handler];
    (*(handler2 + 16))(handler2, self);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPMapButton *)self handlePrimaryAction];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (UIImage)image
{
  imageSet = [(CPGridButton *)self imageSet];
  image = [imageSet image];

  return image;
}

- (CPGridButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end