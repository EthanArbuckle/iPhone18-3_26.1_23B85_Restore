@interface CPTemplate
- (BOOL)barButton:(id)a3 setImage:(id)a4;
- (BOOL)barButton:(id)a3 setTitle:(id)a4;
- (BOOL)control:(id)a3 setEnabled:(BOOL)a4;
- (BOOL)control:(id)a3 setSelected:(BOOL)a4;
- (BOOL)isEqual:(id)a3;
- (BOOL)shouldHideNavigationBar;
- (CPTemplate)init;
- (CPTemplate)initWithCoder:(id)a3;
- (CPTemplateDelegate)templateDelegate;
- (NSString)backTitle;
- (NSString)description;
- (unint64_t)hash;
- (void)connectTemplateProvider:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)handleActionForControlIdentifier:(id)a3;
- (void)invalidateTemplateProvider;
- (void)setBackButton:(id)a3;
- (void)setLeadingNavigationBarButtons:(id)a3;
- (void)setNeedsUpdate;
- (void)setTrailingNavigationBarButtons:(id)a3;
- (void)templateDidAppearWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)templateDidDisappearWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)templateDidDismissWithIdentifier:(id)a3;
- (void)templateWillAppearWithIdentifier:(id)a3 animated:(BOOL)a4;
- (void)templateWillDisappearWithIdentifier:(id)a3 animated:(BOOL)a4;
@end

@implementation CPTemplate

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v11.receiver = self;
  v11.super_class = CPTemplate;
  v4 = [(CPTemplate *)&v11 description];
  v5 = [(CPTemplate *)self identifier];
  v6 = [(CPTemplate *)self userInfo];
  v7 = [(CPTemplate *)self tabTitle];
  v8 = [(CPTemplate *)self tabImage];
  v9 = [v3 stringWithFormat:@"%@ <identifier: %@, userInfo: %@, tabTitle: %@, tabImage: %@, showsTabBadge: %d>", v4, v5, v6, v7, v8, -[CPTemplate showsTabBadge](self, "showsTabBadge")];

  return v9;
}

- (CPTemplate)init
{
  v12.receiver = self;
  v12.super_class = CPTemplate;
  v2 = [(CPTemplate *)&v12 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCAD78] UUID];
    identifier = v2->_identifier;
    v2->_identifier = v3;

    v5 = objc_opt_new();
    internalLeadingBarButtons = v2->_internalLeadingBarButtons;
    v2->_internalLeadingBarButtons = v5;

    v7 = objc_opt_new();
    internalTrailingBarButtons = v2->_internalTrailingBarButtons;
    v2->_internalTrailingBarButtons = v7;

    v9 = objc_alloc_init(MEMORY[0x277D2C900]);
    templateProviderFuture = v2->_templateProviderFuture;
    v2->_templateProviderFuture = v9;
  }

  return v2;
}

- (CPTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v24.receiver = self;
  v24.super_class = CPTemplate;
  v5 = [(CPTemplate *)&v24 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPTemplateIdentifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"CPTemplateLeadingNavigationBarButtons"];
    internalLeadingBarButtons = v5->_internalLeadingBarButtons;
    v5->_internalLeadingBarButtons = v12;

    v14 = [v4 decodeObjectOfClasses:v11 forKey:@"CPTemplateTrailingNavigationBarButtons"];
    internalTrailingBarButtons = v5->_internalTrailingBarButtons;
    v5->_internalTrailingBarButtons = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPTemplateNavigationBarBackButtonKey"];
    backButton = v5->_backButton;
    v5->_backButton = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPTemplateTabTitleKey"];
    tabTitle = v5->_tabTitle;
    v5->_tabTitle = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"CPTemplateTabImageKey"];
    tabImage = v5->_tabImage;
    v5->_tabImage = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPTemplateTabSystemItemKey"];
    v5->_tabSystemItem = [v22 unsignedIntegerValue];

    v5->_showsTabBadge = [v4 decodeBoolForKey:@"kCPTemplateTabBadgeKey"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11 = a3;
  v4 = [(CPTemplate *)self identifier];
  [v11 encodeObject:v4 forKey:@"CPTemplateIdentifier"];

  v5 = [(CPTemplate *)self internalLeadingBarButtons];
  [v11 encodeObject:v5 forKey:@"CPTemplateLeadingNavigationBarButtons"];

  v6 = [(CPTemplate *)self internalTrailingBarButtons];
  [v11 encodeObject:v6 forKey:@"CPTemplateTrailingNavigationBarButtons"];

  v7 = [(CPTemplate *)self backButton];
  [v11 encodeObject:v7 forKey:@"kCPTemplateNavigationBarBackButtonKey"];

  v8 = [(CPTemplate *)self tabTitle];
  [v11 encodeObject:v8 forKey:@"CPTemplateTabTitleKey"];

  v9 = [(CPTemplate *)self tabImage];
  [v11 encodeObject:v9 forKey:@"CPTemplateTabImageKey"];

  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[CPTemplate tabSystemItem](self, "tabSystemItem")}];
  [v11 encodeObject:v10 forKey:@"kCPTemplateTabSystemItemKey"];

  [v11 encodeBool:-[CPTemplate showsTabBadge](self forKey:{"showsTabBadge"), @"kCPTemplateTabBadgeKey"}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(CPTemplate *)v4 identifier];
      v6 = [(CPTemplate *)self identifier];
      v7 = [v5 isEqual:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(CPTemplate *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (void)connectTemplateProvider:(id)a3
{
  v4 = a3;
  [(CPTemplate *)self setTemplateProvider:v4];
  v5 = [(CPTemplate *)self templateProviderFuture];
  [v5 finishWithResult:v4];
}

- (void)invalidateTemplateProvider
{
  [(CPTemplate *)self setTemplateProvider:0];
  v3 = [(CPTemplate *)self templateProviderFuture];
  [v3 cancel];

  v4 = objc_opt_new();
  [(CPTemplate *)self setTemplateProviderFuture:v4];
}

- (BOOL)shouldHideNavigationBar
{
  v3 = [(CPTemplate *)self backButton];
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CPTemplate *)self leadingNavigationBarButtons];
    if ([v5 count])
    {
      v4 = 0;
    }

    else
    {
      v6 = [(CPTemplate *)self trailingNavigationBarButtons];
      v4 = [v6 count] == 0;
    }
  }

  return v4;
}

- (void)setBackButton:(id)a3
{
  v6 = a3;
  if (v6)
  {
    v7 = objc_opt_class();
    v8 = v6;
    v9 = [MEMORY[0x277CBEB98] setWithObject:v7];
    v10 = v8;
    if (([v9 containsObject:object_getClass(v10)] & 1) == 0)
    {
      v11 = MEMORY[0x277CBEAD8];
      v12 = *MEMORY[0x277CBE660];
      v13 = NSStringFromSelector(a2);
      [v11 raise:v12 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v10, v13, v9, 0}];
    }
  }

  objc_storeStrong(&self->_backButton, a3);
  [v6 setDelegate:self];
  v14 = [(CPTemplate *)self templateProviderFuture];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __28__CPTemplate_setBackButton___block_invoke;
  v17[3] = &unk_278A11E20;
  v18 = v6;
  v15 = v6;
  v16 = [v14 addSuccessBlock:v17];
}

- (void)setLeadingNavigationBarButtons:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __45__CPTemplate_setLeadingNavigationBarButtons___block_invoke;
  v19[3] = &__block_descriptor_40_e28_v32__0__CPBarButton_8Q16_B24l;
  v19[4] = a2;
  [v5 enumerateObjectsUsingBlock:v19];
  v6 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "%@: New leading bar buttons: %@", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [(CPTemplate *)self setInternalLeadingBarButtons:0];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __45__CPTemplate_setLeadingNavigationBarButtons___block_invoke_38;
  v17[3] = &unk_278A11E68;
  v17[4] = self;
  v18 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v17];
  v9 = [v8 copy];
  [(CPTemplate *)self setInternalLeadingBarButtons:v9];

  v10 = [(CPTemplate *)self internalLeadingBarButtons];
  v11 = [(CPTemplate *)self templateProviderFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __45__CPTemplate_setLeadingNavigationBarButtons___block_invoke_2;
  v15[3] = &unk_278A11E20;
  v16 = v10;
  v12 = v10;
  v13 = [v11 addSuccessBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __45__CPTemplate_setLeadingNavigationBarButtons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = *(a1 + 32);
  v11 = v3;
  if (([v6 containsObject:object_getClass(v11)] & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = NSStringFromSelector(v7);
    [v8 raise:v9 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v11, v10, v6, 0}];
  }
}

void __45__CPTemplate_setLeadingNavigationBarButtons___block_invoke_38(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3 == 2)
  {
    *a4 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a2;
    [v7 setDelegate:v6];
    [*(a1 + 40) addObject:v7];
  }
}

- (void)setTrailingNavigationBarButtons:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __46__CPTemplate_setTrailingNavigationBarButtons___block_invoke;
  v19[3] = &__block_descriptor_40_e28_v32__0__CPBarButton_8Q16_B24l;
  v19[4] = a2;
  [v5 enumerateObjectsUsingBlock:v19];
  v6 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v21 = self;
    v22 = 2112;
    v23 = v5;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "%@: New trailing bar buttons: %@", buf, 0x16u);
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__CPTemplate_setTrailingNavigationBarButtons___block_invoke_39;
  v17[3] = &unk_278A11E68;
  v17[4] = self;
  v18 = v7;
  v8 = v7;
  [v5 enumerateObjectsUsingBlock:v17];
  v9 = [v8 copy];
  [(CPTemplate *)self setInternalTrailingBarButtons:v9];

  v10 = [(CPTemplate *)self internalTrailingBarButtons];
  v11 = [(CPTemplate *)self templateProviderFuture];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __46__CPTemplate_setTrailingNavigationBarButtons___block_invoke_2;
  v15[3] = &unk_278A11E20;
  v16 = v10;
  v12 = v10;
  v13 = [v11 addSuccessBlock:v15];

  v14 = *MEMORY[0x277D85DE8];
}

void __46__CPTemplate_setTrailingNavigationBarButtons___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = [v4 setWithObjects:{v5, objc_opt_class(), 0}];
  v7 = *(a1 + 32);
  v11 = v3;
  if (([v6 containsObject:object_getClass(v11)] & 1) == 0)
  {
    v8 = MEMORY[0x277CBEAD8];
    v9 = *MEMORY[0x277CBE660];
    v10 = NSStringFromSelector(v7);
    [v8 raise:v9 format:{@"Unsupported object %@ passed to %@. Allowed classes: %@", v11, v10, v6, 0}];
  }
}

void __46__CPTemplate_setTrailingNavigationBarButtons___block_invoke_39(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (a3 == 2)
  {
    *a4 = 1;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = a2;
    [v7 setDelegate:v6];
    [*(a1 + 40) addObject:v7];
  }
}

- (NSString)backTitle
{
  if (objc_opt_respondsToSelector())
  {
    v3 = [(CPTemplate *)self performSelector:sel_title];
  }

  else
  {
    v3 = 0;
  }

  if (![v3 length])
  {
    v4 = [(CPTemplate *)self tabTitle];

    if (v4)
    {
      v5 = [(CPTemplate *)self tabTitle];

      v3 = v5;
    }
  }

  return v3;
}

- (void)handleActionForControlIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CPTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__CPTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__9;
  v25 = __Block_byref_object_dispose__9;
  v26 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v3 = [*(a1 + 32) leadingNavigationBarButtons];
  [v2 addObjectsFromArray:v3];

  v4 = [*(a1 + 32) trailingNavigationBarButtons];
  [v2 addObjectsFromArray:v4];

  v5 = [*(a1 + 32) backButton];

  if (v5)
  {
    v6 = [*(a1 + 32) backButton];
    [v2 addObject:v6];
  }

  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__CPTemplate_handleActionForControlIdentifier___block_invoke_42;
  v18 = &unk_278A11E90;
  v19 = *(a1 + 40);
  v20 = &v21;
  [v2 enumerateObjectsUsingBlock:&v15];
  if (v22[5])
  {
    v7 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = v22[5];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138412802;
      v28 = v9;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v10;
      _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    [v22[5] handlePrimaryAction];
  }

  else
  {
    v11 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      *buf = 138412546;
      v28 = v12;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&dword_236ED4000, v11, OS_LOG_TYPE_INFO, "%@: No button found for control identifier: %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v21, 8);
  v14 = *MEMORY[0x277D85DE8];
}

void __47__CPTemplate_handleActionForControlIdentifier___block_invoke_42(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (void)templateWillAppearWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__CPTemplate_templateWillAppearWithIdentifier_animated___block_invoke;
  block[3] = &unk_278A11EB8;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __56__CPTemplate_templateWillAppearWithIdentifier_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) templateDelegate];
    [v4 templateWillAppearWithIdentifier:*(a1 + 40) animated:*(a1 + 48)];
  }
}

- (void)templateWillDisappearWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__CPTemplate_templateWillDisappearWithIdentifier_animated___block_invoke;
  block[3] = &unk_278A11EB8;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __59__CPTemplate_templateWillDisappearWithIdentifier_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) templateDelegate];
    [v4 templateWillDisappearWithIdentifier:*(a1 + 40) animated:*(a1 + 48)];
  }
}

- (void)templateDidAppearWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CPTemplate_templateDidAppearWithIdentifier_animated___block_invoke;
  block[3] = &unk_278A11EB8;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __55__CPTemplate_templateDidAppearWithIdentifier_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) templateDelegate];
    [v4 templateDidAppearWithIdentifier:*(a1 + 40) animated:*(a1 + 48)];
  }
}

- (void)templateDidDisappearWithIdentifier:(id)a3 animated:(BOOL)a4
{
  v6 = a3;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPTemplate_templateDidDisappearWithIdentifier_animated___block_invoke;
  block[3] = &unk_278A11EB8;
  block[4] = self;
  v9 = v6;
  v10 = a4;
  v7 = v6;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CPTemplate_templateDidDisappearWithIdentifier_animated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) templateDelegate];
    [v4 templateDidDisappearWithIdentifier:*(a1 + 40) animated:*(a1 + 48)];
  }
}

- (void)templateDidDismissWithIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __47__CPTemplate_templateDidDismissWithIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __47__CPTemplate_templateDidDismissWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) templateDelegate];
  v3 = objc_opt_respondsToSelector();

  if (v3)
  {
    v4 = [*(a1 + 32) templateDelegate];
    [v4 templateDidDismissWithIdentifier:*(a1 + 40)];
  }
}

- (BOOL)control:(id)a3 setEnabled:(BOOL)a4
{
  v6 = a3;
  v7 = [(CPTemplate *)self templateProviderFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __33__CPTemplate_control_setEnabled___block_invoke;
  v11[3] = &unk_278A11EE0;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 addSuccessBlock:v11];

  return 1;
}

void __33__CPTemplate_control_setEnabled___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setControl:v5 enabled:*(a1 + 40)];
}

- (BOOL)control:(id)a3 setSelected:(BOOL)a4
{
  v6 = a3;
  v7 = [(CPTemplate *)self templateProviderFuture];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __34__CPTemplate_control_setSelected___block_invoke;
  v11[3] = &unk_278A11EE0;
  v12 = v6;
  v13 = a4;
  v8 = v6;
  v9 = [v7 addSuccessBlock:v11];

  return 1;
}

void __34__CPTemplate_control_setSelected___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setControl:v5 selected:*(a1 + 40)];
}

- (BOOL)barButton:(id)a3 setImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__CPTemplate_barButton_setImage___block_invoke;
  v13[3] = &unk_278A11F08;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v13];

  return 1;
}

void __33__CPTemplate_barButton_setImage___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setBarButton:v5 image:*(a1 + 40)];
}

- (BOOL)barButton:(id)a3 setTitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __33__CPTemplate_barButton_setTitle___block_invoke;
  v13[3] = &unk_278A11F08;
  v14 = v6;
  v15 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v13];

  return 1;
}

void __33__CPTemplate_barButton_setTitle___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 identifier];
  [v4 setBarButton:v5 title:*(a1 + 40)];
}

- (void)setNeedsUpdate
{
  v2 = self;
  objc_sync_enter(v2);
  if (![(CPTemplate *)v2 needsUpdate])
  {
    [(CPTemplate *)v2 setNeedsUpdate:1];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __28__CPTemplate_setNeedsUpdate__block_invoke;
    block[3] = &unk_278A105A0;
    block[4] = v2;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_sync_exit(v2);
}

void __28__CPTemplate_setNeedsUpdate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) performUpdate];
  obj = *(a1 + 32);
  objc_sync_enter(obj);
  [*(a1 + 32) setNeedsUpdate:0];
  objc_sync_exit(obj);
}

- (CPTemplateDelegate)templateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_templateDelegate);

  return WeakRetained;
}

@end