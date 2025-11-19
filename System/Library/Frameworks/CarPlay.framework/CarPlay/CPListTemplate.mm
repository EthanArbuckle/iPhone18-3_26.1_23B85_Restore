@interface CPListTemplate
+ (CGSize)maximumGridButtonImageSize;
+ (NSUInteger)maximumItemCount;
+ (void)_setMaximumGridButtonImageSize:(CGSize)a3;
- (CPListTemplate)initWithCoder:(id)a3;
- (CPListTemplate)initWithTitle:(NSString *)title sections:(NSArray *)sections;
- (CPListTemplate)initWithTitle:(NSString *)title sections:(NSArray *)sections assistantCellConfiguration:(CPAssistantCellConfiguration *)assistantCellConfiguration;
- (CPListTemplate)initWithTitle:(id)a3 sections:(id)a4 assistantCellConfiguration:(id)a5 headerGridButtons:(id)a6;
- (CPListTemplate)listTemplateWithIdentifier:(id)a3 didSelectImageAtIndex:(unint64_t)a4 inImageRowItemWithIdentifier:(id)a5;
- (CPListTemplate)listTemplateWithIdentifier:(id)a3 didSelectListItemWithIdentifier:(id)a4 completionHandler:(id)a5;
- (NSIndexPath)indexPathForItem:(id)item;
- (NSUInteger)itemCount;
- (id)_gridButtonsByFilteringAndTrimming:(id)a3;
- (id)_itemForHostItemWithIdentifier:(id)a3;
- (id)_sectionsByTrimmingAndLinkingSections:(id)a3;
- (id)delegate;
- (void)_linkItemsInSection:(id)a3;
- (void)_setItemNeedsUpdate:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)gridButton:(id)a3 setImageSet:(id)a4;
- (void)gridButton:(id)a3 setTitleVariants:(id)a4;
- (void)gridButton:(id)a3 setUnread:(BOOL)a4;
- (void)handleActionForControlIdentifier:(id)a3;
- (void)performUpdate;
- (void)setAssistantCellConfiguration:(CPAssistantCellConfiguration *)assistantCellConfiguration;
- (void)setHeaderGridButtons:(id)a3;
- (void)setShowsSpinnerWhileEmpty:(BOOL)a3;
- (void)updateHeaderImage:(id)a3 forSectionIdentifier:(id)a4;
- (void)updateSections:(NSArray *)sections;
@end

@implementation CPListTemplate

+ (void)_setMaximumGridButtonImageSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v11 = *MEMORY[0x277D85DE8];
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 134349312;
    v8 = width;
    v9 = 2050;
    v10 = height;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_INFO, "CPListTemplate setting maxImageSize (%{public}f,%{public}f)", &v7, 0x16u);
  }

  _maximumGridButtonImageSize_0_0 = *&width;
  _maximumGridButtonImageSize_1_0 = *&height;
  v6 = *MEMORY[0x277D85DE8];
}

+ (NSUInteger)maximumItemCount
{
  if (CPCurrentProcessHasAudioEntitlement() & 1) != 0 || (CPCurrentProcessHasPublicSafetyEntitlement() & 1) != 0 || (CPCurrentProcessHasVideoEntitlement())
  {
    return 500;
  }

  if (CPCurrentProcessHasCommunicationEntitlement())
  {
    return 24;
  }

  if (CPCurrentProcessHasMapsEntitlement())
  {
    return 24;
  }

  return 12;
}

+ (CGSize)maximumGridButtonImageSize
{
  v2 = *&_maximumGridButtonImageSize_0_0;
  v3 = *&_maximumGridButtonImageSize_1_0;
  if (*&_maximumGridButtonImageSize_0_0 == *MEMORY[0x277CBF3A8] && *&_maximumGridButtonImageSize_1_0 == *(MEMORY[0x277CBF3A8] + 8))
  {
    v2 = 50.0;
    v3 = 50.0;
  }

  result.height = v3;
  result.width = v2;
  return result;
}

- (id)_sectionsByTrimmingAndLinkingSections:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x2020000000;
  v21[3] = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v20[3] = 0;
  v7 = [objc_opt_class() maximumSectionCount];
  v8 = [objc_opt_class() maximumItemCount];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__CPListTemplate__sectionsByTrimmingAndLinkingSections___block_invoke;
  v12[3] = &unk_278A111B8;
  v15 = v20;
  v16 = v21;
  v17 = v7;
  v18 = v8;
  v19 = a2;
  v9 = v6;
  v13 = v9;
  v14 = self;
  [v5 enumerateObjectsUsingBlock:v12];
  v10 = [MEMORY[0x277CBEA60] arrayWithArray:v9];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(v21, 8);

  return v10;
}

uint64_t __56__CPListTemplate__sectionsByTrimmingAndLinkingSections___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v7 = a2;
  v8 = v7;
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 64) || *(*(*(a1 + 56) + 8) + 24) >= *(a1 + 72))
  {
    *a4 = 1;
    goto LABEL_11;
  }

  v21 = v7;
  v9 = objc_opt_class();
  CPAssertAllowedClass(v21, v9, *(a1 + 80));
  ++*(*(*(a1 + 48) + 8) + 24);
  v10 = *(*(*(a1 + 56) + 8) + 24);
  v11 = [v21 items];
  v12 = [v11 count] + v10;
  v13 = *(a1 + 72);

  if (v12 > v13)
  {
    v14 = *(a1 + 72) - *(*(*(a1 + 56) + 8) + 24);
    if (v14 >= 1)
    {
      v15 = [v21 items];
      v16 = [v15 subarrayWithRange:{0, v14}];
      [v21 replaceItems:v16];
    }
  }

  v17 = [v21 items];
  if ([v17 count])
  {
  }

  else
  {
    v18 = [v21 sectionHeaderStyle];

    v8 = v21;
    if (v18 != 2)
    {
      goto LABEL_11;
    }
  }

  [*(a1 + 32) addObject:v21];
  v19 = [v21 items];
  *(*(*(a1 + 56) + 8) + 24) += [v19 count];

  [v21 setIndex:a3];
  v7 = [*(a1 + 40) _linkItemsInSection:v21];
  v8 = v21;
LABEL_11:

  return MEMORY[0x2821F96F8](v7, v8);
}

- (id)_gridButtonsByFilteringAndTrimming:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [objc_opt_class() maximumHeaderGridButtonCount];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v16[3] = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __53__CPListTemplate__gridButtonsByFilteringAndTrimming___block_invoke;
  v11[3] = &unk_278A111E0;
  v14 = v7;
  v15 = a2;
  v13 = v16;
  v11[4] = self;
  v8 = v6;
  v12 = v8;
  [v5 enumerateObjectsUsingBlock:v11];
  v9 = [MEMORY[0x277CBEA60] arrayWithArray:v8];

  _Block_object_dispose(v16, 8);

  return v9;
}

void __53__CPListTemplate__gridButtonsByFilteringAndTrimming___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(*(*(a1 + 48) + 8) + 24) >= *(a1 + 56))
  {
    *a4 = 1;
  }

  else
  {
    v5 = a2;
    v6 = objc_opt_class();
    CPAssertAllowedClass(v5, v6, *(a1 + 64));
    [v5 setDelegate:*(a1 + 32)];
    [*(a1 + 40) addObject:v5];

    ++*(*(*(a1 + 48) + 8) + 24);
  }
}

- (CPListTemplate)initWithTitle:(NSString *)title sections:(NSArray *)sections
{
  v7 = title;
  v8 = sections;
  v15.receiver = self;
  v15.super_class = CPListTemplate;
  v9 = [(CPTemplate *)&v15 init];
  if (v9)
  {
    v10 = [MEMORY[0x277CBEB58] set];
    itemsToReload = v9->_itemsToReload;
    v9->_itemsToReload = v10;

    objc_storeStrong(&v9->_title, title);
    v12 = [(CPListTemplate *)v9 _sectionsByTrimmingAndLinkingSections:v8];
    v13 = v9->_sections;
    v9->_sections = v12;
  }

  return v9;
}

- (CPListTemplate)initWithTitle:(NSString *)title sections:(NSArray *)sections assistantCellConfiguration:(CPAssistantCellConfiguration *)assistantCellConfiguration
{
  v9 = assistantCellConfiguration;
  v10 = [(CPListTemplate *)self initWithTitle:title sections:sections];
  v11 = v10;
  if (v10)
  {
    if (v9)
    {
      objc_storeStrong(&v10->_assistantCellConfiguration, assistantCellConfiguration);
    }

    else
    {
      v12 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        *v14 = 0;
        _os_log_impl(&dword_236ED4000, v12, OS_LOG_TYPE_INFO, "No assistant cell configuration", v14, 2u);
      }
    }
  }

  return v11;
}

- (CPListTemplate)initWithTitle:(id)a3 sections:(id)a4 assistantCellConfiguration:(id)a5 headerGridButtons:(id)a6
{
  v10 = a6;
  v11 = [(CPListTemplate *)self initWithTitle:a3 sections:a4 assistantCellConfiguration:a5];
  v12 = v11;
  if (v10 && v11)
  {
    v13 = [(CPListTemplate *)v11 _gridButtonsByFilteringAndTrimming:v10];
    headerGridButtons = v12->_headerGridButtons;
    v12->_headerGridButtons = v13;
  }

  return v12;
}

- (CPListTemplate)initWithCoder:(id)a3
{
  v4 = a3;
  v36.receiver = self;
  v36.super_class = CPListTemplate;
  v5 = [(CPTemplate *)&v36 initWithCoder:v4];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    itemsToReload = v5->_itemsToReload;
    v5->_itemsToReload = v6;

    v8 = MEMORY[0x277CBEB98];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [v8 setWithObjects:{v9, v10, v11, v12, objc_opt_class(), 0}];
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"kCPListTemplateSectionsKey"];
    sections = v5->_sections;
    v5->_sections = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPListTemplateTitleKey"];
    title = v5->_title;
    v5->_title = v16;

    v18 = MEMORY[0x277CBEB98];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"kCPListTemplateEmptyTitlesKey"];
    emptyViewTitleVariants = v5->_emptyViewTitleVariants;
    v5->_emptyViewTitleVariants = v21;

    v23 = MEMORY[0x277CBEB98];
    v24 = objc_opt_class();
    v25 = [v23 setWithObjects:{v24, objc_opt_class(), 0}];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"kCPListTemplateEmptySubtitlesKey"];
    emptyViewSubtitleVariants = v5->_emptyViewSubtitleVariants;
    v5->_emptyViewSubtitleVariants = v26;

    v5->_showsSpinnerWhileEmpty = [v4 decodeBoolForKey:@"kCPListTemplateShowsEmptySpinnerKey"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kCPAssistantCellConfigurationKey"];
    assistantCellConfiguration = v5->_assistantCellConfiguration;
    v5->_assistantCellConfiguration = v28;

    v30 = MEMORY[0x277CBEB98];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"kCPListTemplateHeaderGridButtonsKey"];
    headerGridButtons = v5->_headerGridButtons;
    v5->_headerGridButtons = v33;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v11.receiver = self;
  v11.super_class = CPListTemplate;
  v4 = a3;
  [(CPTemplate *)&v11 encodeWithCoder:v4];
  v5 = [(CPListTemplate *)self sections:v11.receiver];
  [v4 encodeObject:v5 forKey:@"kCPListTemplateSectionsKey"];

  v6 = [(CPListTemplate *)self title];
  [v4 encodeObject:v6 forKey:@"kCPListTemplateTitleKey"];

  v7 = [(CPListTemplate *)self emptyViewTitleVariants];
  [v4 encodeObject:v7 forKey:@"kCPListTemplateEmptyTitlesKey"];

  v8 = [(CPListTemplate *)self emptyViewSubtitleVariants];
  [v4 encodeObject:v8 forKey:@"kCPListTemplateEmptySubtitlesKey"];

  v9 = [(CPListTemplate *)self assistantCellConfiguration];
  [v4 encodeObject:v9 forKey:@"kCPAssistantCellConfigurationKey"];

  v10 = [(CPListTemplate *)self headerGridButtons];
  [v4 encodeObject:v10 forKey:@"kCPListTemplateHeaderGridButtonsKey"];

  [v4 encodeBool:-[CPListTemplate showsSpinnerWhileEmpty](self forKey:{"showsSpinnerWhileEmpty"), @"kCPListTemplateShowsEmptySpinnerKey"}];
}

- (void)updateSections:(NSArray *)sections
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = sections;
  v5 = [(CPListTemplate *)self _sectionsByTrimmingAndLinkingSections:v4];
  v6 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v5;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "%@ enqueuing list update with %@", buf, 0x16u);
  }

  objc_storeStrong(&self->_sections, v5);
  objc_initWeak(buf, self);
  v7 = [(CPTemplate *)self templateProviderFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __33__CPListTemplate_updateSections___block_invoke;
  v10[3] = &unk_278A11208;
  objc_copyWeak(&v11, buf);
  v8 = [v7 addSuccessBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(buf);

  v9 = *MEMORY[0x277D85DE8];
}

void __33__CPListTemplate_updateSections___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithUnsignedInteger:{objc_msgSend(v8, "sectionCount")}];
    v10 = MEMORY[0x277CCABB0];
    v11 = objc_loadWeakRetained((a1 + 32));
    v12 = [v10 numberWithUnsignedInteger:{objc_msgSend(v11, "itemCount")}];

    v14 = 138412802;
    v15 = v6;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "%@ sending section update with %@ sections, %@ items", &v14, 0x20u);
  }

  [v3 reloadTemplate:WeakRetained];
  v13 = *MEMORY[0x277D85DE8];
}

- (NSUInteger)itemCount
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_sections;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) items];
        v5 += [v8 count];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)updateHeaderImage:(id)a3 forSectionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __57__CPListTemplate_updateHeaderImage_forSectionIdentifier___block_invoke;
  v12[3] = &unk_278A11230;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v12];
}

- (void)setShowsSpinnerWhileEmpty:(BOOL)a3
{
  if (self->_showsSpinnerWhileEmpty != a3)
  {
    self->_showsSpinnerWhileEmpty = a3;
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (NSIndexPath)indexPathForItem:(id)item
{
  v4 = item;
  if ([(CPListTemplate *)self sectionCount])
  {
    v5 = 0;
    while (1)
    {
      v6 = [(NSArray *)self->_sections objectAtIndexedSubscript:v5];
      v7 = [v6 indexOfItem:v4];

      if (v7 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v5 >= [(CPListTemplate *)self sectionCount])
      {
        goto LABEL_5;
      }
    }

    v8 = [MEMORY[0x277CCAA70] indexPathForRow:v7 inSection:v5];
  }

  else
  {
LABEL_5:
    v8 = 0;
  }

  return v8;
}

- (void)_linkItemsInSection:(id)a3
{
  v4 = a3;
  [v4 setListTemplate:self];
  v5 = [v4 items];

  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__CPListTemplate__linkItemsInSection___block_invoke;
  v6[3] = &unk_278A11258;
  v6[4] = self;
  [v5 enumerateObjectsUsingBlock:v6];
}

void __38__CPListTemplate__linkItemsInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_284A1A6E0])
  {
    [v3 setListTemplate:*(a1 + 32)];
  }
}

- (void)_setItemNeedsUpdate:(id)a3
{
  v4 = a3;
  v5 = [(CPListTemplate *)self itemsToReload];
  [v5 addObject:v4];

  [(CPTemplate *)self setNeedsUpdate];
}

- (void)setHeaderGridButtons:(id)a3
{
  obj = [(CPListTemplate *)self _gridButtonsByFilteringAndTrimming:a3];
  v4 = [(CPListTemplate *)self headerGridButtons];
  v5 = [v4 isEqualToArray:obj];

  if ((v5 & 1) == 0)
  {
    [(CPListTemplate *)self setReloadHeaderButtons:1];
    objc_storeStrong(&self->_headerGridButtons, obj);
    [(CPTemplate *)self setNeedsUpdate];
  }
}

- (void)performUpdate
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(CPListTemplate *)self itemsToReload];
  v4 = [v3 count];

  if (v4)
  {
    v5 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(CPListTemplate *)self itemsToReload];
      *buf = 138412546;
      v27 = self;
      v28 = 2112;
      v29 = v6;
      _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "Sending List Template update for %@ with %@", buf, 0x16u);
    }

    v7 = [(CPListTemplate *)self itemsToReload];
    v8 = [v7 allObjects];

    v9 = [(CPListTemplate *)self itemsToReload];
    [v9 removeAllObjects];

    v10 = [(CPTemplate *)self templateProviderFuture];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __31__CPListTemplate_performUpdate__block_invoke;
    v24[3] = &unk_278A11280;
    v25 = v8;
    v11 = v8;
    v12 = [v10 addSuccessBlock:v24];

    v13 = [(CPListTemplate *)self itemsToReload];
    [v13 removeAllObjects];
  }

  if ([(CPListTemplate *)self reloadHeaderButtons])
  {
    v14 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [(CPListTemplate *)self headerGridButtons];
      *buf = 138412546;
      v27 = self;
      v28 = 2114;
      v29 = v15;
      _os_log_impl(&dword_236ED4000, v14, OS_LOG_TYPE_DEFAULT, "Sending List Template header update for %@ with %{public}@", buf, 0x16u);
    }

    [(CPListTemplate *)self setReloadHeaderButtons:0];
    v16 = [(CPListTemplate *)self headerGridButtons];
    v17 = [v16 copy];

    v18 = [(CPTemplate *)self templateProviderFuture];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __31__CPListTemplate_performUpdate__block_invoke_126;
    v22[3] = &unk_278A11280;
    v23 = v17;
    v19 = v17;
    v20 = [v18 addSuccessBlock:v22];
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)_itemForHostItemWithIdentifier:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__4;
  v19 = __Block_byref_object_dispose__4;
  v20 = 0;
  v5 = [(CPListTemplate *)self sections];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __49__CPListTemplate__itemForHostItemWithIdentifier___block_invoke;
  v12[3] = &unk_278A112D0;
  v6 = v4;
  v13 = v6;
  v14 = &v15;
  [v5 enumerateObjectsUsingBlock:v12];

  v7 = v16[5];
  if (!v7)
  {
    v8 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = v6;
      _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_INFO, "Failed to identify a local item for %@", buf, 0xCu);
    }

    v7 = v16[5];
  }

  v9 = v7;

  _Block_object_dispose(&v15, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __49__CPListTemplate__itemForHostItemWithIdentifier___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = [a2 items];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__CPListTemplate__itemForHostItemWithIdentifier___block_invoke_2;
  v9[3] = &unk_278A112A8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  v12 = a4;
  [v6 enumerateObjectsUsingBlock:v9];
}

void __49__CPListTemplate__itemForHostItemWithIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  if ([v9 conformsToProtocol:&unk_284A1A6E0])
  {
    v7 = [v9 identifier];
  }

  else
  {
    v7 = 0;
  }

  v8 = [v7 isEqual:*(a1 + 32)];

  if (v8)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    **(a1 + 48) = 1;
    *a4 = 1;
  }
}

- (CPListTemplate)listTemplateWithIdentifier:(id)a3 didSelectListItemWithIdentifier:(id)a4 completionHandler:(id)a5
{
  v7 = a4;
  v8 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__CPListTemplate_listTemplateWithIdentifier_didSelectListItemWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_278A112F8;
  block[4] = self;
  v13 = v7;
  v14 = v8;
  v9 = v8;
  v10 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return result;
}

void __95__CPListTemplate_listTemplateWithIdentifier_didSelectListItemWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v12 = 138412546;
    v13 = v3;
    v14 = 2114;
    v15 = v4;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "%@ selected list item %{public}@", &v12, 0x16u);
  }

  v5 = [*(a1 + 32) _itemForHostItemWithIdentifier:*(a1 + 40)];
  if ([v5 conformsToProtocol:&unk_284A1A968])
  {
    v6 = v5;
    v7 = [v6 handler];

    if (v7)
    {
      v8 = [v6 handler];
      (v8)[2](v8, v6, *(a1 + 48));

LABEL_9:
      goto LABEL_10;
    }
  }

  v9 = [*(a1 + 32) delegate];
  v10 = objc_opt_respondsToSelector();

  if (v10)
  {
    v6 = [*(a1 + 32) delegate];
    [v6 listTemplate:*(a1 + 32) didSelectListItem:v5 completionHandler:*(a1 + 48)];
    goto LABEL_9;
  }

LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
}

- (CPListTemplate)listTemplateWithIdentifier:(id)a3 didSelectImageAtIndex:(unint64_t)a4 inImageRowItemWithIdentifier:(id)a5
{
  v7 = a5;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __96__CPListTemplate_listTemplateWithIdentifier_didSelectImageAtIndex_inImageRowItemWithIdentifier___block_invoke;
  block[3] = &unk_278A10D48;
  block[4] = self;
  v11 = v7;
  v12 = a4;
  v8 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);

  return result;
}

void __96__CPListTemplate_listTemplateWithIdentifier_didSelectImageAtIndex_inImageRowItemWithIdentifier___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
    v11 = 138412802;
    v12 = v3;
    v13 = 2114;
    v14 = v4;
    v15 = 2114;
    v16 = v5;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "%@ selected image row item %{public}@ image index %{public}@", &v11, 0x20u);
  }

  v6 = [*(a1 + 32) _itemForHostItemWithIdentifier:*(a1 + 40)];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
    v8 = [v7 listImageRowHandler];

    if (v8)
    {
      v9 = [v7 listImageRowHandler];
      (v9)[2](v9, v7, *(a1 + 48), &__block_literal_global_11);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)setAssistantCellConfiguration:(CPAssistantCellConfiguration *)assistantCellConfiguration
{
  v5 = assistantCellConfiguration;
  v6 = [(CPListTemplate *)self assistantCellConfiguration];
  v7 = [v6 isEqual:v5];

  if ((v7 & 1) == 0)
  {
    objc_storeStrong(&self->_assistantCellConfiguration, assistantCellConfiguration);
    if ((CPCurrentProcessHasAudioEntitlement() & 1) != 0 || (CPCurrentProcessHasCommunicationEntitlement() & 1) != 0 || CPCurrentProcessHasVideoEntitlement())
    {
      v8 = [(CPTemplate *)self templateProviderFuture];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __48__CPListTemplate_setAssistantCellConfiguration___block_invoke;
      v10[3] = &unk_278A11280;
      v11 = v5;
      v9 = [v8 addSuccessBlock:v10];
    }
  }
}

void __48__CPListTemplate_setAssistantCellConfiguration___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v4 = a3;
  v5 = v4;
  if ((a2 & 1) == 0)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__CPListTemplate_setAssistantCellConfiguration___block_invoke_3;
    block[3] = &unk_278A105A0;
    v7 = v4;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void __48__CPListTemplate_setAssistantCellConfiguration___block_invoke_3(uint64_t a1)
{
  v1 = MEMORY[0x277CBEAD8];
  v2 = *MEMORY[0x277CBE648];
  v3 = [*(a1 + 32) userInfo];
  v4 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  [v1 raise:v2 format:{@"Error: %@", v4}];

  exit(-1);
}

- (void)handleActionForControlIdentifier:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__CPListTemplate_handleActionForControlIdentifier___block_invoke;
  v6[3] = &unk_278A10780;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __51__CPListTemplate_handleActionForControlIdentifier___block_invoke(uint64_t a1)
{
  v46 = *MEMORY[0x277D85DE8];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__4;
  v36 = __Block_byref_object_dispose__4;
  v37 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = [*(a1 + 32) sections];
  v4 = [v3 countByEnumeratingWithState:&v28 objects:v45 count:16];
  if (v4)
  {
    v5 = *v29;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v29 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v28 + 1) + 8 * i);
        v8 = [v7 headerButton];

        if (v8)
        {
          v9 = [v7 headerButton];
          [v2 addObject:v9];
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v28 objects:v45 count:16];
    }

    while (v4);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [*(a1 + 32) headerGridButtons];
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v44 count:16];
  if (v11)
  {
    v12 = *v25;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v25 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [v2 addObject:*(*(&v24 + 1) + 8 * j)];
      }

      v11 = [v10 countByEnumeratingWithState:&v24 objects:v44 count:16];
    }

    while (v11);
  }

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __51__CPListTemplate_handleActionForControlIdentifier___block_invoke_2;
  v21[3] = &unk_278A11320;
  v22 = *(a1 + 40);
  v23 = &v32;
  [v2 enumerateObjectsUsingBlock:v21];
  if (v33[5])
  {
    v14 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = v33[5];
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138412802;
      v39 = v16;
      v40 = 2112;
      v41 = v15;
      v42 = 2112;
      v43 = v17;
      _os_log_impl(&dword_236ED4000, v14, OS_LOG_TYPE_INFO, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    [v33[5] handlePrimaryAction];
  }

  else
  {
    v18 = *(a1 + 40);
    v20.receiver = *(a1 + 32);
    v20.super_class = CPListTemplate;
    objc_msgSendSuper2(&v20, sel_handleActionForControlIdentifier_, v18);
  }

  _Block_object_dispose(&v32, 8);
  v19 = *MEMORY[0x277D85DE8];
}

void __51__CPListTemplate_handleActionForControlIdentifier___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (void)gridButton:(id)a3 setImageSet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__CPListTemplate_gridButton_setImageSet___block_invoke;
  v12[3] = &unk_278A11230;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v12];
}

- (void)gridButton:(id)a3 setTitleVariants:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CPTemplate *)self templateProviderFuture];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__CPListTemplate_gridButton_setTitleVariants___block_invoke;
  v12[3] = &unk_278A11230;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  v11 = [v8 addSuccessBlock:v12];
}

- (void)gridButton:(id)a3 setUnread:(BOOL)a4
{
  v6 = a3;
  v7 = [(CPTemplate *)self templateProviderFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__CPListTemplate_gridButton_setUnread___block_invoke;
  v10[3] = &unk_278A11348;
  v11 = v6;
  v12 = a4;
  v8 = v6;
  v9 = [v7 addSuccessBlock:v10];
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end