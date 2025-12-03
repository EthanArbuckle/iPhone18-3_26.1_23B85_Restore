@interface CPGridTemplate
+ (CGSize)maximumGridButtonImageSize;
+ (void)_setMaximumGridButtonImageSize:(CGSize)size;
- (CPGridTemplate)initWithCoder:(id)coder;
- (CPGridTemplate)initWithTitle:(NSString *)title gridButtons:(NSArray *)gridButtons;
- (id)_prepareButtons:(id)buttons;
- (void)encodeWithCoder:(id)coder;
- (void)gridButton:(id)button setImageSet:(id)set;
- (void)gridButton:(id)button setTitleVariants:(id)variants;
- (void)gridButton:(id)button setUnread:(BOOL)unread;
- (void)handleActionForControlIdentifier:(id)identifier;
- (void)performUpdate;
- (void)updateGridButtons:(NSArray *)gridButtons;
- (void)updateTitle:(NSString *)title;
@end

@implementation CPGridTemplate

+ (void)_setMaximumGridButtonImageSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v11 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = width;
    v9 = 2050;
    v10 = height;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "CPGridTemplate setting maxImageSize (%{public}f,%{public}f)", &v7, 0x16u);
  }

  _maximumGridButtonImageSize_0 = *&width;
  _maximumGridButtonImageSize_1 = *&height;
  v6 = *MEMORY[0x277D85DE8];
}

+ (CGSize)maximumGridButtonImageSize
{
  v2 = *&_maximumGridButtonImageSize_0;
  v3 = *&_maximumGridButtonImageSize_1;
  if (*&_maximumGridButtonImageSize_0 == *MEMORY[0x277CBF3A8] && *&_maximumGridButtonImageSize_1 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v2 = 40.0;
    v3 = 40.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (CPGridTemplate)initWithTitle:(NSString *)title gridButtons:(NSArray *)gridButtons
{
  v6 = title;
  v7 = gridButtons;
  v14.receiver = self;
  v14.super_class = CPGridTemplate;
  v8 = [(CPTemplate *)&v14 init];
  if (v8)
  {
    v9 = [(NSString *)v6 copy];
    v10 = v8->_title;
    v8->_title = v9;

    v11 = [(CPGridTemplate *)v8 _prepareButtons:v7];
    v12 = v8->_gridButtons;
    v8->_gridButtons = v11;
  }

  return v8;
}

- (CPGridTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = CPGridTemplate;
  v5 = [(CPTemplate *)&v14 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"kCPGridTemplateButtonsKey"];
    gridButtons = v5->_gridButtons;
    v5->_gridButtons = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPGridItemTemplateTitleKey"];
    title = v5->_title;
    v5->_title = v11;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CPGridTemplate;
  coderCopy = coder;
  [(CPTemplate *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CPGridTemplate *)self gridButtons:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPGridTemplateButtonsKey"];

  title = [(CPGridTemplate *)self title];
  [coderCopy encodeObject:title forKey:@"kCPGridItemTemplateTitleKey"];
}

- (void)handleActionForControlIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CPGridTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__CPGridTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__3;
  v17 = __Block_byref_object_dispose__3;
  v18 = 0;
  v2 = [*(a1 + 32) gridButtons];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__CPGridTemplate_handleActionForControlIdentifier___block_invoke_11;
  v10[3] = &unk_278A110A0;
  v11 = *(a1 + 40);
  v12 = &v13;
  [v2 enumerateObjectsUsingBlock:v10];

  if (v14[5])
  {
    v3 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v4 = v14[5];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      *buf = 138412802;
      v20 = v5;
      v21 = 2112;
      v22 = v4;
      v23 = 2112;
      v24 = v6;
      _os_log_impl(&dword_236ED4000, v3, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    [v14[5] handlePrimaryAction];
  }

  else
  {
    v7 = *(a1 + 40);
    v9.receiver = *(a1 + 32);
    v9.super_class = CPGridTemplate;
    objc_msgSendSuper2(&v9, sel_handleActionForControlIdentifier_, v7);
  }

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x277D85DE8];
}

void __51__CPGridTemplate_handleActionForControlIdentifier___block_invoke_11(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  v7 = [v9 identifier];
  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    *a4 = 1;
  }
}

- (void)gridButton:(id)button setImageSet:(id)set
{
  buttonCopy = button;
  setCopy = set;
  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__CPGridTemplate_gridButton_setImageSet___block_invoke;
  v12[3] = &unk_278A110C8;
  v13 = buttonCopy;
  v14 = setCopy;
  v9 = setCopy;
  v10 = buttonCopy;
  v11 = [templateProviderFuture addSuccessBlock:v12];
}

- (void)gridButton:(id)button setTitleVariants:(id)variants
{
  buttonCopy = button;
  variantsCopy = variants;
  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__CPGridTemplate_gridButton_setTitleVariants___block_invoke;
  v12[3] = &unk_278A110C8;
  v13 = buttonCopy;
  v14 = variantsCopy;
  v9 = variantsCopy;
  v10 = buttonCopy;
  v11 = [templateProviderFuture addSuccessBlock:v12];
}

- (void)gridButton:(id)button setUnread:(BOOL)unread
{
  buttonCopy = button;
  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__CPGridTemplate_gridButton_setUnread___block_invoke;
  v10[3] = &unk_278A110F0;
  v11 = buttonCopy;
  unreadCopy = unread;
  v8 = buttonCopy;
  v9 = [templateProviderFuture addSuccessBlock:v10];
}

- (id)_prepareButtons:(id)buttons
{
  buttonsCopy = buttons;
  if ([buttonsCopy count] >= 9)
  {
    v6 = [buttonsCopy subarrayWithRange:{0, 8}];

    buttonsCopy = v6;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__CPGridTemplate__prepareButtons___block_invoke;
  v8[3] = &unk_278A11118;
  v8[4] = self;
  v8[5] = a2;
  [buttonsCopy enumerateObjectsUsingBlock:v8];

  return buttonsCopy;
}

void __34__CPGridTemplate__prepareButtons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_class();
  v5 = *(a1 + 40);
  v6 = v3;
  v7 = [MEMORY[0x277CBEB98] setWithObject:v4];
  v11 = v6;
  if (([v7 containsObject:object_getClass(v11)] & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = NSStringFromSelector(v5);
    [v8 raise:v9 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v11, v10, v7, 0}];
  }

  [v11 setDelegate:*(a1 + 32)];
}

- (void)updateGridButtons:(NSArray *)gridButtons
{
  obj = [(CPGridTemplate *)self _prepareButtons:gridButtons];
  gridButtons = [(CPGridTemplate *)self gridButtons];
  v5 = [gridButtons isEqualToArray:obj];

  if ((v5 & 1) == 0)
  {
    objc_storeStrong(&self->_gridButtons, obj);
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (void)updateTitle:(NSString *)title
{
  v7 = title;
  title = [(CPGridTemplate *)self title];
  v6 = [title isEqualToString:v7];

  if ((v6 & 1) == 0)
  {
    objc_storeStrong(&self->_title, title);
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (void)performUpdate
{
  v8.receiver = self;
  v8.super_class = CPGridTemplate;
  [(CPTemplate *)&v8 performUpdate];
  objc_initWeak(&location, self);
  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__CPGridTemplate_performUpdate__block_invoke;
  v5[3] = &unk_278A11140;
  objc_copyWeak(&v6, &location);
  v4 = [templateProviderFuture addSuccessBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __31__CPGridTemplate_performUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 reloadTemplate:WeakRetained];
}

@end