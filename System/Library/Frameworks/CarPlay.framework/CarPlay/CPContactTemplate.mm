@interface CPContactTemplate
- (CPContactTemplate)initWithCoder:(id)a3;
- (CPContactTemplate)initWithContact:(CPContact *)contact;
- (id)entity;
- (void)encodeWithCoder:(id)a3;
- (void)handleActionForControlIdentifier:(id)a3;
- (void)performUpdate;
- (void)setContact:(CPContact *)contact;
@end

@implementation CPContactTemplate

- (CPContactTemplate)initWithContact:(CPContact *)contact
{
  v5 = contact;
  v9.receiver = self;
  v9.super_class = CPContactTemplate;
  v6 = [(CPTemplate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contact, contact);
    [(CPContact *)v7->_contact setAssociatedTemplate:v7];
  }

  return v7;
}

- (id)entity
{
  v2 = [(CPContactTemplate *)self contact];
  v3 = [v2 contactEntity];

  return v3;
}

- (CPContactTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CPContactTemplate;
  v5 = [(CPTemplate *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPEntity"];
    contact = v5->_contact;
    v5->_contact = v6;

    [(CPContact *)v5->_contact setAssociatedTemplate:v5];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CPContactTemplate;
  v4 = a3;
  [(CPTemplate *)&v6 encodeWithCoder:v4];
  v5 = [(CPContactTemplate *)self contact:v6.receiver];
  [v4 encodeObject:v5 forKey:@"CPEntity"];
}

- (void)setContact:(CPContact *)contact
{
  v5 = contact;
  if (![(CPContact *)self->_contact isEqual:?])
  {
    objc_storeStrong(&self->_contact, contact);
    [(CPContact *)self->_contact setAssociatedTemplate:self];
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (void)performUpdate
{
  v8.receiver = self;
  v8.super_class = CPContactTemplate;
  [(CPTemplate *)&v8 performUpdate];
  objc_initWeak(&location, self);
  v3 = [(CPTemplate *)self templateProviderFuture];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __34__CPContactTemplate_performUpdate__block_invoke;
  v5[3] = &unk_278A11790;
  objc_copyWeak(&v6, &location);
  v4 = [v3 addSuccessBlock:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __34__CPContactTemplate_performUpdate__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 updateEntityTemplate:WeakRetained withProxyDelegate:WeakRetained];
}

- (void)handleActionForControlIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __54__CPContactTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __54__CPContactTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) entity];
  v3 = [v2 objectForIdentifier:*(a1 + 40)];

  if (v3)
  {
    v4 = v3;
    v5 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = *(a1 + 32);
      v7 = *(a1 + 40);
      *buf = 138412802;
      v12 = v6;
      v13 = 2112;
      v14 = v4;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    [v4 handlePrimaryAction];
  }

  else
  {
    v8 = *(a1 + 40);
    v10.receiver = *(a1 + 32);
    v10.super_class = CPContactTemplate;
    objc_msgSendSuper2(&v10, sel_handleActionForControlIdentifier_, v8);
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end