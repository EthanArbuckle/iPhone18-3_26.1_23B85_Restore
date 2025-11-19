@interface CPGridButton
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToGridButton:(id)a3;
- (CPGridButton)initWithCoder:(id)a3;
- (CPGridButton)initWithTitleVariants:(id)a3 image:(id)a4 messageConfiguration:(id)a5 handler:(id)a6;
- (CPGridButtonDelegate)delegate;
- (NSString)description;
- (UIImage)image;
- (id)_init;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)handlePrimaryAction;
- (void)setDelegate:(id)a3;
- (void)setEnabled:(BOOL)enabled;
- (void)updateImage:(id)a3;
- (void)updateTitleVariants:(id)a3;
@end

@implementation CPGridButton

- (CPGridButton)initWithTitleVariants:(id)a3 image:(id)a4 messageConfiguration:(id)a5 handler:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v26.receiver = self;
  v26.super_class = CPGridButton;
  v15 = [(CPGridButton *)&v26 init];
  if (v15)
  {
    v16 = [MEMORY[0x277CCAD78] UUID];
    identifier = v15->_identifier;
    v15->_identifier = v16;

    v15->_enabled = 1;
    objc_storeStrong(&v15->_titleVariants, a3);
    v18 = [[CPImageSet alloc] initWithImage:v12];
    imageSet = v15->_imageSet;
    v15->_imageSet = v18;

    v20 = MEMORY[0x2383C2A40](v14);
    handler = v15->_handler;
    v15->_handler = v20;

    objc_storeStrong(&v15->_messageConfiguration, a5);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CPGridButton *)self isEqualToGridButton:v4];

  return v5;
}

- (BOOL)isEqualToGridButton:(id)a3
{
  v4 = a3;
  v5 = [(CPGridButton *)self identifier];
  v6 = [v4 identifier];
  v7 = [v5 isEqual:v6];

  if (!v7)
  {
    goto LABEL_6;
  }

  v8 = [(CPGridButton *)self isEnabled];
  if (v8 != [v4 isEnabled])
  {
    goto LABEL_6;
  }

  v9 = [(CPGridButton *)self titleVariants];
  v10 = [v4 titleVariants];
  v11 = [v9 isEqualToArray:v10];

  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = [(CPGridButton *)self imageSet];
  v13 = [v4 imageSet];
  v14 = [v12 isEqual:v13];

  if (v14)
  {
    v15 = [(CPGridButton *)self messageConfiguration];
    v16 = [v4 messageConfiguration];
    v17 = [v15 isEqual:v16];
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
  v3 = [(CPGridButton *)self identifier];
  v4 = [v3 hash];
  v5 = [(CPGridButton *)self titleVariants];
  v6 = [v5 hash] ^ v4;
  v7 = [(CPGridButton *)self imageSet];
  v8 = v6 ^ [v7 hash];
  v9 = [(CPGridButton *)self isEnabled];
  v10 = [(CPGridButton *)self messageConfiguration];
  v11 = v9 ^ [v10 hash];

  return v8 ^ v11;
}

- (CPGridButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPGridButton *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPGridButtonIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v5->_enabled = [v4 decodeBoolForKey:@"CPGridButtonEnabled"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"CPGridButtonTitleVariants"];
    titleVariants = v5->_titleVariants;
    v5->_titleVariants = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPGridButtonImageSet"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPMessageGridItemConfiguration"];
    messageConfiguration = v5->_messageConfiguration;
    v5->_messageConfiguration = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPGridButton *)self identifier];
  [v4 encodeObject:v5 forKey:@"CPGridButtonIdentifier"];

  [v4 encodeBool:-[CPGridButton isEnabled](self forKey:{"isEnabled"), @"CPGridButtonEnabled"}];
  v6 = [(CPGridButton *)self titleVariants];
  [v4 encodeObject:v6 forKey:@"CPGridButtonTitleVariants"];

  v7 = [(CPGridButton *)self imageSet];
  [v4 encodeObject:v7 forKey:@"CPGridButtonImageSet"];

  v8 = [(CPGridButton *)self messageConfiguration];
  [v4 encodeObject:v8 forKey:@"CPMessageGridItemConfiguration"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v9.receiver = self;
  v9.super_class = CPGridButton;
  v4 = [(CPGridButton *)&v9 description];
  v5 = [(CPGridButton *)self identifier];
  v6 = CPSStringFromBOOL([(CPGridButton *)self isEnabled]);
  v7 = [v3 stringWithFormat:@"%@ {UUID: %@, enabled: %@}", v4, v5, v6];

  return v7;
}

- (void)setDelegate:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != v4)
  {
    v6 = objc_storeWeak(&self->_delegate, v4);
    [objc_opt_class() maximumGridButtonImageSize];
    v8 = v7;
    v10 = v9;

    v11 = [CPImageSet alloc];
    v12 = [(CPImageSet *)self->_imageSet image];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __28__CPGridButton_setDelegate___block_invoke;
    v15[3] = &__block_descriptor_48_e26___UIImage_16__0__UIImage_8l;
    v15[4] = v8;
    v15[5] = v10;
    v13 = [(CPImageSet *)v11 initWithImage:v12 treatmentBlock:v15];
    imageSet = self->_imageSet;
    self->_imageSet = v13;
  }
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    self->_enabled = enabled;
    v5 = [(CPGridButton *)self delegate];
    [v5 control:self setEnabled:self->_enabled];
  }
}

- (void)updateImage:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [objc_opt_class() maximumGridButtonImageSize];
  v7 = v6;
  v9 = v8;

  if (v4)
  {
    v10 = [CPImageSet alloc];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __28__CPGridButton_updateImage___block_invoke;
    v17[3] = &__block_descriptor_48_e26___UIImage_16__0__UIImage_8l;
    v17[4] = v7;
    v17[5] = v9;
    v11 = [(CPImageSet *)v10 initWithImage:v4 treatmentBlock:v17];
    imageSet = self->_imageSet;
    self->_imageSet = v11;
  }

  else
  {
    imageSet = self->_imageSet;
    self->_imageSet = 0;
  }

  v13 = [(CPGridButton *)self delegate];
  v14 = objc_opt_respondsToSelector();

  if (v14)
  {
    v15 = [(CPGridButton *)self delegate];
    v16 = [(CPGridButton *)self identifier];
    [v15 gridButton:v16 setImageSet:self->_imageSet];
  }
}

- (void)updateTitleVariants:(id)a3
{
  if (self->_titleVariants != a3)
  {
    v5 = [a3 copy];
    titleVariants = self->_titleVariants;
    self->_titleVariants = v5;

    v9 = [(CPGridButton *)self delegate];
    v7 = [(CPGridButton *)self identifier];
    v8 = [(CPGridButton *)self titleVariants];
    [v9 gridButton:v7 setTitleVariants:v8];
  }
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CPGridButton *)self handler];

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

    v5 = [(CPGridButton *)self handler];
    (*(v5 + 16))(v5, self);
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(CPMapButton *)self handlePrimaryAction];
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (UIImage)image
{
  v2 = [(CPGridButton *)self imageSet];
  v3 = [v2 image];

  return v3;
}

- (CPGridButtonDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end