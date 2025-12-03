@interface CPTabBarTemplate
+ (NSInteger)maximumTabCount;
- (CPInterfaceController)interfaceController;
- (CPTabBarTemplate)initWithCoder:(id)coder;
- (CPTabBarTemplate)initWithTemplates:(NSArray *)templates;
- (CPTemplate)selectedTemplate;
- (id)delegate;
- (void)encodeWithCoder:(id)coder;
- (void)handleActionForControlIdentifier:(id)identifier;
- (void)selectTemplate:(CPTemplate *)newTemplate;
- (void)selectTemplateAtIndex:(NSInteger)index;
- (void)updateTemplates:(NSArray *)newTemplates;
- (void)validateTemplates:(id)templates;
@end

@implementation CPTabBarTemplate

+ (NSInteger)maximumTabCount
{
  if (CPCurrentProcessHasAudioEntitlement())
  {
    return 4;
  }

  if (CPCurrentProcessHasVideoEntitlement())
  {
    return 4;
  }

  return 5;
}

- (CPTabBarTemplate)initWithTemplates:(NSArray *)templates
{
  v5 = templates;
  v9.receiver = self;
  v9.super_class = CPTabBarTemplate;
  v6 = [(CPTemplate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(CPTabBarTemplate *)v6 validateTemplates:v5];
    objc_storeStrong(&v7->_templates, templates);
    v7->_indexOfSelectedTab = 0;
  }

  return v7;
}

- (CPTabBarTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = CPTabBarTemplate;
  v5 = [(CPTemplate *)&v10 initWithCoder:coderCopy];
  if (v5)
  {
    if (CPWhiteListedTemplates_onceToken != -1)
    {
      [CPTabBarTemplate initWithCoder:];
    }

    v6 = CPWhiteListedTemplates_classes;
    v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"kCPTabBarTemplatesKey"];
    templates = v5->_templates;
    v5->_templates = v7;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CPTabBarTemplate;
  coderCopy = coder;
  [(CPTemplate *)&v6 encodeWithCoder:coderCopy];
  v5 = [(CPTabBarTemplate *)self templates:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPTabBarTemplatesKey"];
}

- (void)updateTemplates:(NSArray *)newTemplates
{
  v4 = newTemplates;
  [(CPTabBarTemplate *)self validateTemplates:v4];
  templates = self->_templates;
  self->_templates = v4;
  v6 = v4;

  interfaceController = [(CPTabBarTemplate *)self interfaceController];
  [interfaceController updateTabBarTemplate:self];

  indexOfSelectedTab = [(CPTabBarTemplate *)self indexOfSelectedTab];
  v9 = [(NSArray *)v6 count];

  if (indexOfSelectedTab > v9)
  {

    [(CPTabBarTemplate *)self setIndexOfSelectedTab:0];
  }
}

- (void)validateTemplates:(id)templates
{
  v29 = *MEMORY[0x277D85DE8];
  templatesCopy = templates;
  maximumTabCount = [objc_opt_class() maximumTabCount];
  v5 = [templatesCopy count];
  v6 = MEMORY[0x277CBE660];
  if (v5 > maximumTabCount)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = NSStringFromSelector(a2);
    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:maximumTabCount];
    [v7 raise:v8 format:{@"Too many templates passed to %@. Maximum allowed is %@.", v9, v10}];
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = templatesCopy;
  v11 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    v14 = *v6;
    do
    {
      v15 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        if (CPTabTemplates_onceToken != -1)
        {
          [CPTabBarTemplate validateTemplates:];
        }

        v17 = CPTabTemplates_classes;
        v18 = v16;
        if (([v17 containsObject:object_getClass(v18)] & 1) == 0)
        {
          v19 = MEMORY[0x277CBEAD8];
          v20 = NSStringFromSelector(a2);
          [v19 raise:v14 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v18, v20, v17, 0}];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v12);
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (CPTemplate)selectedTemplate
{
  indexOfSelectedTab = [(CPTabBarTemplate *)self indexOfSelectedTab];
  templates = [(CPTabBarTemplate *)self templates];
  v5 = [templates count];

  if (indexOfSelectedTab >= v5)
  {
    v7 = 0;
  }

  else
  {
    templates2 = [(CPTabBarTemplate *)self templates];
    v7 = [templates2 objectAtIndexedSubscript:{-[CPTabBarTemplate indexOfSelectedTab](self, "indexOfSelectedTab")}];
  }

  return v7;
}

- (void)selectTemplate:(CPTemplate *)newTemplate
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = newTemplate;
  templates = self->_templates;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__CPTabBarTemplate_selectTemplate___block_invoke;
  v10[3] = &unk_278A11050;
  v6 = v4;
  v11 = v6;
  v7 = [(NSArray *)templates indexOfObjectPassingTest:v10];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = v6;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "Requested template to select in tab bar doesn't exist: %@", buf, 0xCu);
    }
  }

  else
  {
    [(CPTabBarTemplate *)self selectTemplateAtIndex:v7];
  }

  v9 = *MEMORY[0x277D85DE8];
}

uint64_t __35__CPTabBarTemplate_selectTemplate___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [*(a1 + 32) identifier];
  v5 = [v3 isEqual:v4];

  return v5;
}

- (void)selectTemplateAtIndex:(NSInteger)index
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(CPTabBarTemplate *)self indexOfSelectedTab]== index)
  {
    interfaceController = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(interfaceController, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:index];
      v12 = 138412290;
      v13 = v6;
      v7 = "Requested to select tab bar index %@, but it's already selected.";
LABEL_10:
      _os_log_impl(&dword_236ED4000, interfaceController, OS_LOG_TYPE_DEFAULT, v7, &v12, 0xCu);
    }
  }

  else
  {
    v8 = [(NSArray *)self->_templates count];
    interfaceController = CarPlayFrameworkGeneralLogging();
    v9 = os_log_type_enabled(interfaceController, OS_LOG_TYPE_DEFAULT);
    if (v8 <= index)
    {
      if (v9)
      {
        v6 = [MEMORY[0x277CCABB0] numberWithInteger:index];
        v12 = 138412290;
        v13 = v6;
        v7 = "Requested template index in tab bar doesn't exist: %@";
        goto LABEL_10;
      }
    }

    else
    {
      if (v9)
      {
        v10 = [MEMORY[0x277CCABB0] numberWithInteger:index];
        v12 = 138412290;
        v13 = v10;
        _os_log_impl(&dword_236ED4000, interfaceController, OS_LOG_TYPE_DEFAULT, "Selecting tab bar template at index %@", &v12, 0xCu);
      }

      interfaceController = [(CPTabBarTemplate *)self interfaceController];
      [interfaceController selectTabBarTemplateIndex:index];
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)handleActionForControlIdentifier:(id)identifier
{
  identifierCopy = identifier;
  templates = [(CPTabBarTemplate *)self templates];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__CPTabBarTemplate_handleActionForControlIdentifier___block_invoke;
  v12[3] = &unk_278A11050;
  v6 = identifierCopy;
  v13 = v6;
  v7 = [templates indexOfObjectPassingTest:v12];

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(CPTabBarTemplate *)v6 handleActionForControlIdentifier:v8];
    }
  }

  else
  {
    [(CPTabBarTemplate *)self setIndexOfSelectedTab:v7];
    delegate = [(CPTabBarTemplate *)self delegate];
    v10 = objc_opt_respondsToSelector();

    if (v10)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __53__CPTabBarTemplate_handleActionForControlIdentifier___block_invoke_12;
      block[3] = &unk_278A10758;
      block[4] = self;
      block[5] = v7;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }
}

uint64_t __53__CPTabBarTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 identifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __53__CPTabBarTemplate_handleActionForControlIdentifier___block_invoke_12(uint64_t a1)
{
  v5 = [*(a1 + 32) delegate];
  v2 = *(a1 + 32);
  v3 = [v2 templates];
  v4 = [v3 objectAtIndexedSubscript:*(a1 + 40)];
  [v5 tabBarTemplate:v2 didSelectTemplate:v4];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CPInterfaceController)interfaceController
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceController);

  return WeakRetained;
}

- (void)handleActionForControlIdentifier:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_236ED4000, a2, OS_LOG_TYPE_ERROR, "Failed to identify a local template for identifier %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end