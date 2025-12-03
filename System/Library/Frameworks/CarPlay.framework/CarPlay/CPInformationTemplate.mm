@interface CPInformationTemplate
- (CPInformationTemplate)initWithCoder:(id)coder;
- (CPInformationTemplate)initWithTitle:(NSString *)title layout:(CPInformationTemplateLayout)layout items:(NSArray *)items actions:(NSArray *)actions;
- (id)_sanitizeButtons:(id)buttons;
- (id)_sanitizeItems:(id)items;
- (void)encodeWithCoder:(id)coder;
- (void)handleActionForControlIdentifier:(id)identifier;
- (void)performUpdate;
- (void)setActions:(NSArray *)actions;
- (void)setItems:(NSArray *)items;
- (void)setTitle:(NSString *)title;
- (void)updateTemplatePropertiesFromTemplate:(id)template;
@end

@implementation CPInformationTemplate

- (CPInformationTemplate)initWithTitle:(NSString *)title layout:(CPInformationTemplateLayout)layout items:(NSArray *)items actions:(NSArray *)actions
{
  v10 = title;
  v11 = items;
  v12 = actions;
  v21.receiver = self;
  v21.super_class = CPInformationTemplate;
  v13 = [(CPTemplate *)&v21 init];
  if (v13)
  {
    v14 = [(NSString *)v10 copy];
    v15 = v13->_title;
    v13->_title = v14;

    v13->_layout = layout;
    v16 = [(CPInformationTemplate *)v13 _sanitizeItems:v11];
    v17 = v13->_items;
    v13->_items = v16;

    v18 = [(CPInformationTemplate *)v13 _sanitizeButtons:v12];
    v19 = v13->_actions;
    v13->_actions = v18;
  }

  return v13;
}

- (id)_sanitizeItems:(id)items
{
  itemsCopy = items;
  if ([itemsCopy count] >= 0xB)
  {
    v4 = [itemsCopy subarrayWithRange:{0, 10}];

    itemsCopy = v4;
  }

  v5 = [itemsCopy copy];

  return v5;
}

- (id)_sanitizeButtons:(id)buttons
{
  buttonsCopy = buttons;
  if ([buttonsCopy count] >= 4)
  {
    v5 = [buttonsCopy subarrayWithRange:{0, 3}];

    buttonsCopy = v5;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__CPInformationTemplate__sanitizeButtons___block_invoke;
  v8[3] = &unk_278A116C8;
  v8[4] = self;
  [buttonsCopy enumerateObjectsUsingBlock:v8];
  v6 = [buttonsCopy copy];

  return v6;
}

void __42__CPInformationTemplate__sanitizeButtons___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setDelegate:v3];
  [v4 setAssociatedTemplate:*(a1 + 32)];
}

- (CPInformationTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v20.receiver = self;
  v20.super_class = CPInformationTemplate;
  v5 = [(CPTemplate *)&v20 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPInformationTemplateTitleKey"];
    title = v5->_title;
    v5->_title = v6;

    v5->_layout = [coderCopy decodeIntegerForKey:@"kCPInformationTemplateLayoutKey"];
    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"kCPInformationTemplateItemsKey"];
    items = v5->_items;
    v5->_items = v12;

    v14 = MEMORY[0x277CBEB98];
    v15 = objc_opt_class();
    v16 = [v14 setWithObjects:{v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"kCPInformationTemplateActionsKey"];
    actions = v5->_actions;
    v5->_actions = v17;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CPInformationTemplate;
  coderCopy = coder;
  [(CPTemplate *)&v8 encodeWithCoder:coderCopy];
  v5 = [(CPInformationTemplate *)self title:v8.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPInformationTemplateTitleKey"];

  [coderCopy encodeInteger:-[CPInformationTemplate layout](self forKey:{"layout"), @"kCPInformationTemplateLayoutKey"}];
  items = [(CPInformationTemplate *)self items];
  [coderCopy encodeObject:items forKey:@"kCPInformationTemplateItemsKey"];

  actions = [(CPInformationTemplate *)self actions];
  [coderCopy encodeObject:actions forKey:@"kCPInformationTemplateActionsKey"];
}

- (void)setTitle:(NSString *)title
{
  v4 = [(NSString *)title copy];
  v5 = self->_title;
  self->_title = v4;

  [(CPTemplate *)self setNeedsUpdate];
}

- (void)setItems:(NSArray *)items
{
  v4 = [(CPInformationTemplate *)self _sanitizeItems:items];
  v5 = self->_items;
  self->_items = v4;

  [(CPTemplate *)self setNeedsUpdate];
}

- (void)setActions:(NSArray *)actions
{
  v8 = actions;
  if ([(NSArray *)v8 count]< 4)
  {
    v5 = v8;
  }

  else
  {
    v4 = [(NSArray *)v8 subarrayWithRange:0, 3];

    v5 = v4;
  }

  v9 = v5;
  v6 = [v5 copy];
  v7 = self->_actions;
  self->_actions = v6;

  [(CPTemplate *)self setNeedsUpdate];
}

- (void)performUpdate
{
  v8.receiver = self;
  v8.super_class = CPInformationTemplate;
  [(CPTemplate *)&v8 performUpdate];
  objc_initWeak(&location, self);
  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__CPInformationTemplate_performUpdate__block_invoke;
  v5[3] = &unk_278A116F0;
  objc_copyWeak(&v6, &location);
  v4 = [templateProviderFuture addSuccessBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __38__CPInformationTemplate_performUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 updateWithInformationTemplate:WeakRetained];
}

- (void)handleActionForControlIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __58__CPInformationTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = identifierCopy;
  v5 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __58__CPInformationTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__6;
  v17 = __Block_byref_object_dispose__6;
  v18 = 0;
  v2 = [*(a1 + 32) actions];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__CPInformationTemplate_handleActionForControlIdentifier___block_invoke_23;
  v10[3] = &unk_278A11718;
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
    v9.super_class = CPInformationTemplate;
    objc_msgSendSuper2(&v9, sel_handleActionForControlIdentifier_, v7);
  }

  _Block_object_dispose(&v13, 8);
  v8 = *MEMORY[0x277D85DE8];
}

void __58__CPInformationTemplate_handleActionForControlIdentifier___block_invoke_23(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (void)updateTemplatePropertiesFromTemplate:(id)template
{
  templateCopy = template;
  items = [templateCopy items];
  v6 = [items copy];
  items = self->_items;
  self->_items = v6;

  actions = [templateCopy actions];

  v8 = [actions copy];
  actions = self->_actions;
  self->_actions = v8;
}

@end