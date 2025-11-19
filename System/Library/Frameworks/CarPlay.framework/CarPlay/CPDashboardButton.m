@interface CPDashboardButton
- (CPControlDelegate)delegate;
- (CPDashboardButton)initWithCoder:(id)a3;
- (CPDashboardButton)initWithTitleVariants:(NSArray *)titleVariants subtitleVariants:(NSArray *)subtitleVariants image:(UIImage *)image handler:(void *)handler;
- (NSString)description;
- (UIImage)image;
- (id)_init;
- (void)encodeWithCoder:(id)a3;
- (void)handlePrimaryAction;
@end

@implementation CPDashboardButton

- (CPDashboardButton)initWithTitleVariants:(NSArray *)titleVariants subtitleVariants:(NSArray *)subtitleVariants image:(UIImage *)image handler:(void *)handler
{
  v10 = titleVariants;
  v11 = subtitleVariants;
  v12 = image;
  v13 = handler;
  v27.receiver = self;
  v27.super_class = CPDashboardButton;
  v14 = [(CPDashboardButton *)&v27 init];
  if (v14)
  {
    v15 = [MEMORY[0x277CCAD78] UUID];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [(NSArray *)v10 copy];
    v18 = v14->_titleVariants;
    v14->_titleVariants = v17;

    v19 = [(NSArray *)v11 bs_compactMap:&__block_literal_global_23];
    v20 = [v19 copy];
    v21 = v14->_subtitleVariants;
    v14->_subtitleVariants = v20;

    v22 = [[CPImageSet alloc] initWithImage:v12];
    imageSet = v14->_imageSet;
    v14->_imageSet = v22;

    v24 = MEMORY[0x2383C2A40](v13);
    v25 = v14->_handler;
    v14->_handler = v24;
  }

  return v14;
}

id __74__CPDashboardButton_initWithTitleVariants_subtitleVariants_image_handler___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 length])
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = CPDashboardButton;
  return [(CPDashboardButton *)&v3 init];
}

- (CPDashboardButton)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPDashboardButton *)self _init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPDashboardButtonIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"kCPDashboardButtonTitlesKey"];
    titleVariants = v5->_titleVariants;
    v5->_titleVariants = v11;

    v13 = MEMORY[0x277CBEB98];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"kCPDashboardButtonSubtitlesKey"];
    subtitleVariants = v5->_subtitleVariants;
    v5->_subtitleVariants = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPDashboardButtonImageSetKey"];
    imageSet = v5->_imageSet;
    v5->_imageSet = v18;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(CPDashboardButton *)self identifier];
  [v4 encodeObject:v5 forKey:@"kCPDashboardButtonIdentifierKey"];

  v6 = [(CPDashboardButton *)self titleVariants];
  [v4 encodeObject:v6 forKey:@"kCPDashboardButtonTitlesKey"];

  v7 = [(CPDashboardButton *)self subtitleVariants];
  [v4 encodeObject:v7 forKey:@"kCPDashboardButtonSubtitlesKey"];

  v8 = [(CPDashboardButton *)self imageSet];
  [v4 encodeObject:v8 forKey:@"kCPDashboardButtonImageSetKey"];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = CPDashboardButton;
  v4 = [(CPDashboardButton *)&v8 description];
  v5 = [(CPDashboardButton *)self identifier];
  v6 = [v3 stringWithFormat:@"%@ {UUID: %@}", v4, v5];

  return v6;
}

- (void)handlePrimaryAction
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = [(CPDashboardButton *)self handler];

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

    v5 = [(CPDashboardButton *)self handler];
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
  v2 = [(CPDashboardButton *)self imageSet];
  v3 = [v2 image];

  return v3;
}

- (CPControlDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end