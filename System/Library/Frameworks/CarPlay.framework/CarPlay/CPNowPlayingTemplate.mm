@interface CPNowPlayingTemplate
+ (CPNowPlayingTemplate)sharedTemplate;
- (CPNowPlayingTemplate)init;
- (CPNowPlayingTemplate)initWithCoder:(id)coder;
- (id)_updateLowerRegionButtons:(id)buttons;
- (void)_updateNowPlayingTemplateWithThrottle:(BOOL)throttle;
- (void)addObserver:(id)observer;
- (void)albumArtistButtonTapped;
- (void)encodeWithCoder:(id)coder;
- (void)handleAction:(int64_t)action forControlIdentifier:(id)identifier;
- (void)removeObserver:(id)observer;
- (void)setAlbumArtistButtonEnabled:(BOOL)albumArtistButtonEnabled;
- (void)setNowPlayingMode:(id)mode;
- (void)setUpNextButtonEnabled:(BOOL)upNextButtonEnabled;
- (void)setUpNextTitle:(NSString *)upNextTitle;
- (void)upNextButtonTapped;
- (void)updateNowPlayingButtons:(NSArray *)nowPlayingButtons;
@end

@implementation CPNowPlayingTemplate

- (CPNowPlayingTemplate)init
{
  v7.receiver = self;
  v7.super_class = CPNowPlayingTemplate;
  v2 = [(CPTemplate *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CF89C0]);
    v4 = [v3 initWithProtocol:&unk_284A2A8D0 callbackQueue:MEMORY[0x277D85CD0]];
    nowPlayingObservers = v2->_nowPlayingObservers;
    v2->_nowPlayingObservers = v4;
  }

  return v2;
}

+ (CPNowPlayingTemplate)sharedTemplate
{
  if (sharedTemplate_onceToken != -1)
  {
    +[CPNowPlayingTemplate sharedTemplate];
  }

  v3 = sharedTemplate___template;

  return v3;
}

uint64_t __38__CPNowPlayingTemplate_sharedTemplate__block_invoke()
{
  sharedTemplate___template = objc_alloc_init(CPNowPlayingTemplate);

  return MEMORY[0x2821F96F8]();
}

- (CPNowPlayingTemplate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CPNowPlayingTemplate;
  v5 = [(CPTemplate *)&v25 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = [v6 setWithObjects:{v7, v8, v9, v10, v11, v12, v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"kCPTemplateLowerRegionButtons"];
    nowPlayingButtons = v5->_nowPlayingButtons;
    v5->_nowPlayingButtons = v15;

    v5->_upNextButtonEnabled = [coderCopy decodeBoolForKey:@"kCPTemplateUpNextEnabledKey"];
    v5->_albumArtistButtonEnabled = [coderCopy decodeBoolForKey:@"kCPTemplateAlbumArtistButtonEnabledKey"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kCPTemplateUpNextTitleKey"];
    upNextTitle = v5->_upNextTitle;
    v5->_upNextTitle = v17;

    v19 = MEMORY[0x277CBEB98];
    v20 = objc_opt_class();
    v21 = [v19 setWithObjects:{v20, objc_opt_class(), 0}];
    v22 = [coderCopy decodeObjectOfClasses:v21 forKey:@"kCPTemplateNowPlayingModeKey"];
    nowPlayingMode = v5->_nowPlayingMode;
    v5->_nowPlayingMode = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CPNowPlayingTemplate;
  coderCopy = coder;
  [(CPTemplate *)&v10 encodeWithCoder:coderCopy];
  v5 = [(CPNowPlayingTemplate *)self nowPlayingButtons:v10.receiver];
  [coderCopy encodeObject:v5 forKey:@"kCPTemplateLowerRegionButtons"];

  v6 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPNowPlayingTemplate isUpNextButtonEnabled](self, "isUpNextButtonEnabled")}];
  [coderCopy encodeObject:v6 forKey:@"kCPTemplateUpNextEnabledKey"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[CPNowPlayingTemplate isAlbumArtistButtonEnabled](self, "isAlbumArtistButtonEnabled")}];
  [coderCopy encodeObject:v7 forKey:@"kCPTemplateAlbumArtistButtonEnabledKey"];

  upNextTitle = [(CPNowPlayingTemplate *)self upNextTitle];
  [coderCopy encodeObject:upNextTitle forKey:@"kCPTemplateUpNextTitleKey"];

  nowPlayingMode = [(CPNowPlayingTemplate *)self nowPlayingMode];
  [coderCopy encodeObject:nowPlayingMode forKey:@"kCPTemplateNowPlayingModeKey"];
}

- (void)addObserver:(id)observer
{
  v4 = observer;
  nowPlayingObservers = [(CPNowPlayingTemplate *)self nowPlayingObservers];
  [nowPlayingObservers registerObserver:v4];
}

- (void)removeObserver:(id)observer
{
  v4 = observer;
  nowPlayingObservers = [(CPNowPlayingTemplate *)self nowPlayingObservers];
  [nowPlayingObservers unregisterObserver:v4];
}

- (void)updateNowPlayingButtons:(NSArray *)nowPlayingButtons
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(CPNowPlayingTemplate *)self _updateLowerRegionButtons:nowPlayingButtons];
  v5 = self->_nowPlayingButtons;
  self->_nowPlayingButtons = v4;

  v6 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    nowPlayingButtons = [(CPNowPlayingTemplate *)self nowPlayingButtons];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = nowPlayingButtons;
    _os_log_impl(&dword_236ED4000, v6, OS_LOG_TYPE_DEFAULT, "%@: Update now playing buttons %@", &v9, 0x16u);
  }

  [(CPNowPlayingTemplate *)self _updateNowPlayingTemplateWithThrottle:1];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)setUpNextButtonEnabled:(BOOL)upNextButtonEnabled
{
  if (self->_upNextButtonEnabled != upNextButtonEnabled)
  {
    self->_upNextButtonEnabled = upNextButtonEnabled;
    [(CPNowPlayingTemplate *)self _updateNowPlayingTemplateWithThrottle:0];
  }
}

- (void)setUpNextTitle:(NSString *)upNextTitle
{
  v5 = upNextTitle;
  if (![(NSString *)self->_upNextTitle isEqualToString:?])
  {
    objc_storeStrong(&self->_upNextTitle, upNextTitle);
    [(CPNowPlayingTemplate *)self _updateNowPlayingTemplateWithThrottle:0];
  }
}

- (void)setAlbumArtistButtonEnabled:(BOOL)albumArtistButtonEnabled
{
  if (self->_albumArtistButtonEnabled != albumArtistButtonEnabled)
  {
    self->_albumArtistButtonEnabled = albumArtistButtonEnabled;
    [(CPNowPlayingTemplate *)self _updateNowPlayingTemplateWithThrottle:0];
  }
}

- (void)handleAction:(int64_t)action forControlIdentifier:(id)identifier
{
  identifierCopy = identifier;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__CPNowPlayingTemplate_handleAction_forControlIdentifier___block_invoke;
  block[3] = &unk_278A10D48;
  block[4] = self;
  v9 = identifierCopy;
  actionCopy = action;
  v7 = identifierCopy;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__CPNowPlayingTemplate_handleAction_forControlIdentifier___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__2;
  v27 = __Block_byref_object_dispose__2;
  v28 = 0;
  v2 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = [v3 nowPlayingButtons];
    *buf = 138412802;
    v30 = v3;
    v31 = 2112;
    v32 = v4;
    v33 = 2112;
    v34 = v5;
    _os_log_impl(&dword_236ED4000, v2, OS_LOG_TYPE_DEFAULT, "%@: handle action for identifier %@ in now playing buttons %@", buf, 0x20u);
  }

  v6 = [*(a1 + 32) nowPlayingButtons];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __58__CPNowPlayingTemplate_handleAction_forControlIdentifier___block_invoke_98;
  v20 = &unk_278A10D20;
  v21 = *(a1 + 40);
  v22 = &v23;
  [v6 enumerateObjectsUsingBlock:&v17];

  if (v24[5])
  {
    v7 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v24[5];
      v9 = *(a1 + 32);
      v10 = *(a1 + 40);
      *buf = 138412802;
      v30 = v9;
      v31 = 2112;
      v32 = v8;
      v33 = 2112;
      v34 = v10;
      _os_log_impl(&dword_236ED4000, v7, OS_LOG_TYPE_DEFAULT, "%@: Activated button: %@ for control identifier: %@", buf, 0x20u);
    }

    v11 = *(a1 + 48);
    v12 = v24[5];
    if (v11 == 2)
    {
      [v12 handlePressesEnd];
    }

    else if (v11 == 1)
    {
      [v12 handlePressesStart];
    }

    else
    {
      [v12 handlePrimaryAction];
    }
  }

  else
  {
    v13 = CarPlayFrameworkGeneralLogging();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v15 = *(a1 + 40);
      *buf = 138412546;
      v30 = v14;
      v31 = 2112;
      v32 = v15;
      _os_log_impl(&dword_236ED4000, v13, OS_LOG_TYPE_DEFAULT, "%@: No available button for identifier %@", buf, 0x16u);
    }
  }

  _Block_object_dispose(&v23, 8);
  v16 = *MEMORY[0x277D85DE8];
}

void __58__CPNowPlayingTemplate_handleAction_forControlIdentifier___block_invoke_98(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
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

- (void)upNextButtonTapped
{
  nowPlayingObservers = [(CPNowPlayingTemplate *)self nowPlayingObservers];
  [nowPlayingObservers nowPlayingTemplateUpNextButtonTapped:self];
}

- (void)albumArtistButtonTapped
{
  nowPlayingObservers = [(CPNowPlayingTemplate *)self nowPlayingObservers];
  [nowPlayingObservers nowPlayingTemplateAlbumArtistButtonTapped:self];
}

- (id)_updateLowerRegionButtons:(id)buttons
{
  buttonsCopy = buttons;
  if ([buttonsCopy count] < 6)
  {
    v6 = buttonsCopy;
  }

  else
  {
    v5 = [MEMORY[0x277CCAA78] indexSetWithIndexesInRange:{0, 5}];
    v6 = [buttonsCopy objectsAtIndexes:v5];
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__CPNowPlayingTemplate__updateLowerRegionButtons___block_invoke;
  v8[3] = &unk_278A10D70;
  v8[4] = self;
  [v6 enumerateObjectsUsingBlock:v8];

  return v6;
}

- (void)_updateNowPlayingTemplateWithThrottle:(BOOL)throttle
{
  v16 = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  v5 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_loadWeakRetained(&location);
    *buf = 138412290;
    v15 = v6;
    _os_log_impl(&dword_236ED4000, v5, OS_LOG_TYPE_DEFAULT, "%@: Updating now playing template", buf, 0xCu);
  }

  templateProviderFuture = [(CPTemplate *)self templateProviderFuture];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__CPNowPlayingTemplate__updateNowPlayingTemplateWithThrottle___block_invoke;
  v10[3] = &unk_278A10D98;
  objc_copyWeak(&v11, &location);
  throttleCopy = throttle;
  v8 = [templateProviderFuture addSuccessBlock:v10];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
  v9 = *MEMORY[0x277D85DE8];
}

void __62__CPNowPlayingTemplate__updateNowPlayingTemplateWithThrottle___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = CarPlayFrameworkGeneralLogging();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v12 = 138412290;
    v13 = WeakRetained;
    _os_log_impl(&dword_236ED4000, v4, OS_LOG_TYPE_DEFAULT, "%@: Executing Future success block", &v12, 0xCu);
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = MEMORY[0x277CCABB0];
  v8 = *(a1 + 40);
  v9 = v6;
  v10 = [v7 numberWithBool:v8];
  [v3 updateNowPlayingTemplate:v9 withProxyDelegate:v9 canThrottle:v10];

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setNowPlayingMode:(id)mode
{
  v14 = *MEMORY[0x277D85DE8];
  modeCopy = mode;
  if (_os_feature_enabled_impl())
  {
    nowPlayingMode = [(CPNowPlayingTemplate *)self nowPlayingMode];
    v7 = [modeCopy isEqual:nowPlayingMode];

    if ((v7 & 1) == 0)
    {
      v8 = CarPlayFrameworkGeneralLogging();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138412546;
        selfCopy = self;
        v12 = 2112;
        v13 = modeCopy;
        _os_log_impl(&dword_236ED4000, v8, OS_LOG_TYPE_DEFAULT, "%@: Update now playing mode %@", &v10, 0x16u);
      }

      objc_storeStrong(&self->_nowPlayingMode, mode);
      [(CPNowPlayingTemplate *)self _updateNowPlayingTemplateWithThrottle:0];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end