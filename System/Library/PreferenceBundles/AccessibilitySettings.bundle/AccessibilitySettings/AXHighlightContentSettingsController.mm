@interface AXHighlightContentSettingsController
- (BOOL)shouldShowSentenceItems;
- (BOOL)shouldShowWordColorItems;
- (id)_colorForStyle:(id)style;
- (id)highlightEnabled:(id)enabled;
- (id)specifiers;
- (void)_insertColorGroupingHeaderIfNecessary;
- (void)_reloadHighlightContentSpecifier;
- (void)loadView;
- (void)setContentHighlightItemsHidden:(BOOL)hidden;
- (void)setHighlightEnabled:(id)enabled specifier:(id)specifier;
- (void)setShowSentenceItems:(BOOL)items;
- (void)setShowWordColorItems:(BOOL)items;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateLayout;
- (void)viewWillAppear:(BOOL)appear;
- (void)willBecomeActive;
@end

@implementation AXHighlightContentSettingsController

- (void)setContentHighlightItemsHidden:(BOOL)hidden
{
  if (self->_contentHighlightItemsHidden != hidden)
  {
    hiddenCopy = hidden;
    self->_contentHighlightItemsHidden = hidden;
    [(AXHighlightContentSettingsController *)self beginUpdates];
    if (hiddenCopy)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      sentenceColorHighlightItems = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
      v6 = [sentenceColorHighlightItems countByEnumeratingWithState:&v46 objects:v54 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v47;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v47 != v8)
            {
              objc_enumerationMutation(sentenceColorHighlightItems);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v46 + 1) + 8 * i) animated:1];
          }

          v7 = [sentenceColorHighlightItems countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v7);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      wordColorHighlightItems = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
      v11 = [wordColorHighlightItems countByEnumeratingWithState:&v42 objects:v53 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v43;
        do
        {
          for (j = 0; j != v12; j = j + 1)
          {
            if (*v43 != v13)
            {
              objc_enumerationMutation(wordColorHighlightItems);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v42 + 1) + 8 * j) animated:1];
          }

          v12 = [wordColorHighlightItems countByEnumeratingWithState:&v42 objects:v53 count:16];
        }

        while (v12);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      colorHighlightItems = [(AXHighlightContentSettingsController *)self colorHighlightItems];
      v16 = [colorHighlightItems countByEnumeratingWithState:&v38 objects:v52 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v39;
        do
        {
          for (k = 0; k != v17; k = k + 1)
          {
            if (*v39 != v18)
            {
              objc_enumerationMutation(colorHighlightItems);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v38 + 1) + 8 * k) animated:1];
          }

          v17 = [colorHighlightItems countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v17);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      sentenceHighlightItems = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
      v21 = [sentenceHighlightItems countByEnumeratingWithState:&v34 objects:v51 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v35;
        do
        {
          for (m = 0; m != v22; m = m + 1)
          {
            if (*v35 != v23)
            {
              objc_enumerationMutation(sentenceHighlightItems);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v34 + 1) + 8 * m) animated:1];
          }

          v22 = [sentenceHighlightItems countByEnumeratingWithState:&v34 objects:v51 count:16];
        }

        while (v22);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      contentHighlightItems = [(AXHighlightContentSettingsController *)self contentHighlightItems];
      v26 = [contentHighlightItems countByEnumeratingWithState:&v30 objects:v50 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v31;
        do
        {
          for (n = 0; n != v27; n = n + 1)
          {
            if (*v31 != v28)
            {
              objc_enumerationMutation(contentHighlightItems);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v30 + 1) + 8 * n) animated:1];
          }

          v27 = [contentHighlightItems countByEnumeratingWithState:&v30 objects:v50 count:16];
        }

        while (v27);
      }
    }

    else
    {
      contentHighlightItems = [(AXHighlightContentSettingsController *)self contentHighlightItems];
      [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:contentHighlightItems afterSpecifierID:@"HighlightContent" animated:1];
    }

    [(AXHighlightContentSettingsController *)self endUpdates];
  }
}

- (void)_insertColorGroupingHeaderIfNecessary
{
  specifiers = [(AXHighlightContentSettingsController *)self specifiers];
  v4 = [specifiers indexOfSpecifierWithID:@"COLOR_CHOICE"];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    colorHighlightItems = [(AXHighlightContentSettingsController *)self colorHighlightItems];
    contentHighlightItems = [(AXHighlightContentSettingsController *)self contentHighlightItems];
    lastObject = [contentHighlightItems lastObject];
    v7 = [lastObject propertyForKey:PSIDKey];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:colorHighlightItems afterSpecifierID:v7 animated:1];
  }
}

- (void)setShowWordColorItems:(BOOL)items
{
  itemsCopy = items;
  [(AXHighlightContentSettingsController *)self beginUpdates];
  if (!itemsCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    wordColorHighlightItems = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
    v10 = [wordColorHighlightItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v15;
      do
      {
        v13 = 0;
        do
        {
          if (*v15 != v12)
          {
            objc_enumerationMutation(wordColorHighlightItems);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v14 + 1) + 8 * v13) animated:1];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [wordColorHighlightItems countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    goto LABEL_11;
  }

  specifiers = [(AXHighlightContentSettingsController *)self specifiers];
  wordColorHighlightItems2 = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
  firstObject = [wordColorHighlightItems2 firstObject];
  v8 = [specifiers containsObject:firstObject];

  if ((v8 & 1) == 0)
  {
    wordColorHighlightItems = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:wordColorHighlightItems afterSpecifierID:@"COLOR_CHOICE" animated:1];
LABEL_11:
  }

  [(AXHighlightContentSettingsController *)self endUpdates];
}

- (void)setShowSentenceItems:(BOOL)items
{
  itemsCopy = items;
  [(AXHighlightContentSettingsController *)self beginUpdates];
  if (!itemsCopy)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    sentenceColorHighlightItems = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
    v16 = [sentenceColorHighlightItems countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        v19 = 0;
        do
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(sentenceColorHighlightItems);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v28 + 1) + 8 * v19) animated:1];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [sentenceColorHighlightItems countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v17);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    sentenceHighlightItems = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
    v20 = [sentenceHighlightItems countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v25;
      do
      {
        v23 = 0;
        do
        {
          if (*v25 != v22)
          {
            objc_enumerationMutation(sentenceHighlightItems);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v24 + 1) + 8 * v23) animated:1];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [sentenceHighlightItems countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v21);
    }

    goto LABEL_20;
  }

  specifiers = [(AXHighlightContentSettingsController *)self specifiers];
  sentenceHighlightItems2 = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
  firstObject = [sentenceHighlightItems2 firstObject];
  v8 = [specifiers containsObject:firstObject];

  if ((v8 & 1) == 0)
  {
    sentenceHighlightItems3 = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:sentenceHighlightItems3 afterSpecifierID:@"HighlightSentenceOption" animated:1];
  }

  specifiers2 = [(AXHighlightContentSettingsController *)self specifiers];
  sentenceColorHighlightItems2 = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
  firstObject2 = [sentenceColorHighlightItems2 firstObject];
  v13 = [specifiers2 containsObject:firstObject2];

  if ((v13 & 1) == 0)
  {
    sentenceHighlightItems = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:sentenceHighlightItems afterSpecifierID:@"WordHighlightColor" animated:1];
LABEL_20:
  }

  [(AXHighlightContentSettingsController *)self endUpdates];
}

- (id)specifiers
{
  v3 = *&self->AXUISettingsSetupCapableListController_opaque[OBJC_IVAR___PSListController__specifiers];
  if (!v3)
  {
    v34 = OBJC_IVAR___PSListController__specifiers;
    selfCopy = self;
    v4 = [(AXHighlightContentSettingsController *)self loadSpecifiersFromPlistName:@"HighlightContentSettings" target:?];
    v40 = +[NSMutableArray array];
    v39 = +[NSMutableArray array];
    v38 = +[NSMutableArray array];
    v37 = +[NSMutableArray array];
    v36 = +[NSMutableArray array];
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    obj = v4;
    v5 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v43;
      do
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v43 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v42 + 1) + 8 * i);
          v11 = [v10 propertyForKey:@"id"];
          v12 = [v11 isEqualToString:@"HighlightContentCell"];

          if (v12)
          {
            v13 = v10;

            v7 = v13;
          }

          v14 = [v10 propertyForKey:@"hideWhenHighlightContentDisabled"];
          bOOLValue = [v14 BOOLValue];

          if (bOOLValue)
          {
            [v40 addObject:v10];
          }

          v16 = [v10 propertyForKey:@"hideWhenColorHighlightContentDisabled"];
          bOOLValue2 = [v16 BOOLValue];

          if (bOOLValue2)
          {
            [v38 addObject:v10];
          }

          v18 = [v10 propertyForKey:@"hideWhenWordColorHighlightContentDisabled"];
          bOOLValue3 = [v18 BOOLValue];

          if (bOOLValue3)
          {
            [v36 addObject:v10];
          }

          v20 = [v10 propertyForKey:@"hideWhenSentenceColorHighlightContentDisabled"];
          bOOLValue4 = [v20 BOOLValue];

          if (bOOLValue4)
          {
            [v37 addObject:v10];
          }

          v22 = [v10 propertyForKey:@"hideWhenSentenceHighlightDisabled"];
          bOOLValue5 = [v22 BOOLValue];

          if (bOOLValue5)
          {
            [v39 addObject:v10];
          }
        }

        v6 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    [(AXHighlightContentSettingsController *)selfCopy setWordColorHighlightItems:v36];
    [(AXHighlightContentSettingsController *)selfCopy setSentenceColorHighlightItems:v37];
    [(AXHighlightContentSettingsController *)selfCopy setColorHighlightItems:v38];
    [(AXHighlightContentSettingsController *)selfCopy setContentHighlightItems:v40];
    [(AXHighlightContentSettingsController *)selfCopy setSentenceHighlightItems:v39];
    selfCopy->_contentHighlightItemsHidden = _AXSQuickSpeakHighlightTextEnabled() == 0;
    selfCopy->_sentenceHighlightItemsHidden = ![(AXHighlightContentSettingsController *)selfCopy shouldShowSentenceItems];
    shouldShowWordColorItems = [(AXHighlightContentSettingsController *)selfCopy shouldShowWordColorItems];
    if (selfCopy->_contentHighlightItemsHidden)
    {
      contentHighlightItems = [(AXHighlightContentSettingsController *)selfCopy contentHighlightItems];
      [obj removeObjectsInArray:contentHighlightItems];

      colorHighlightItems = [(AXHighlightContentSettingsController *)selfCopy colorHighlightItems];
      [obj removeObjectsInArray:colorHighlightItems];
    }

    if (selfCopy->_sentenceHighlightItemsHidden)
    {
      sentenceHighlightItems = [(AXHighlightContentSettingsController *)selfCopy sentenceHighlightItems];
      [obj removeObjectsInArray:sentenceHighlightItems];

      sentenceColorHighlightItems = [(AXHighlightContentSettingsController *)selfCopy sentenceColorHighlightItems];
      [obj removeObjectsInArray:sentenceColorHighlightItems];
    }

    if ((shouldShowWordColorItems & 1) == 0)
    {
      wordColorHighlightItems = [(AXHighlightContentSettingsController *)selfCopy wordColorHighlightItems];
      [obj removeObjectsInArray:wordColorHighlightItems];
    }

    if ([(AXHighlightContentSettingsController *)selfCopy shouldShowFooterText]&& v7)
    {
      v30 = settingsLocString(@"HighlightContentFooterText", @"HighlightContentSettings");
      [v7 setProperty:v30 forKey:PSFooterTextGroupKey];
    }

    [(AXHighlightContentSettingsController *)selfCopy setAllSpecifiersUnsearchable:obj];
    v31 = *&selfCopy->AXUISettingsSetupCapableListController_opaque[v34];
    *&selfCopy->AXUISettingsSetupCapableListController_opaque[v34] = obj;
    v32 = obj;

    v3 = *&selfCopy->AXUISettingsSetupCapableListController_opaque[v34];
  }

  return v3;
}

- (void)_reloadHighlightContentSpecifier
{
  v3 = [(AXHighlightContentSettingsController *)self specifierForID:@"HighlightContent"];
  [(AXHighlightContentSettingsController *)self reloadSpecifier:v3];
}

- (void)loadView
{
  v14.receiver = self;
  v14.super_class = AXHighlightContentSettingsController;
  [(AXHighlightContentSettingsController *)&v14 loadView];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_reloadHighlightContentSpecifier" name:kAXSQuickSpeakHighlightTextEnabledNotification object:0];

  objc_initWeak(&location, self);
  v4 = +[AXSettings sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __48__AXHighlightContentSettingsController_loadView__block_invoke;
  v11[3] = &unk_255818;
  objc_copyWeak(&v12, &location);
  v11[4] = self;
  [v4 registerUpdateBlock:v11 forRetrieveSelector:"quickSpeakHighlightOption" withListener:self];

  objc_destroyWeak(&v12);
  v5 = +[AXSettings sharedInstance];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __48__AXHighlightContentSettingsController_loadView__block_invoke_2;
  v9[3] = &unk_255818;
  objc_copyWeak(&v10, &location);
  v9[4] = self;
  [v5 registerUpdateBlock:v9 forRetrieveSelector:"quickSpeakWordHighlightColor" withListener:self];

  objc_destroyWeak(&v10);
  v6 = +[AXSettings sharedInstance];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = __48__AXHighlightContentSettingsController_loadView__block_invoke_3;
  v7[3] = &unk_255818;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  [v6 registerUpdateBlock:v7 forRetrieveSelector:"quickSpeakSentenceHighlightColor" withListener:self];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __48__AXHighlightContentSettingsController_loadView__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForID:@"HighlightSentenceOption"];
  [WeakRetained reloadSpecifier:v2];
}

void __48__AXHighlightContentSettingsController_loadView__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForID:@"WordHighlightColor"];
  [WeakRetained reloadSpecifier:v2];
}

void __48__AXHighlightContentSettingsController_loadView__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [*(a1 + 32) specifierForID:@"SentenceHighlightColor"];
  [WeakRetained reloadSpecifier:v2];
}

- (void)willBecomeActive
{
  v3.receiver = self;
  v3.super_class = AXHighlightContentSettingsController;
  [(AXHighlightContentSettingsController *)&v3 willBecomeActive];
  [(AXHighlightContentSettingsController *)self updateLayout];
}

- (id)_colorForStyle:(id)style
{
  v3 = [style propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"WordHighlightColor"];
  v5 = +[AXSettings sharedInstance];
  v6 = v5;
  if (v4)
  {
    quickSpeakWordHighlightColor = [v5 quickSpeakWordHighlightColor];
  }

  else
  {
    quickSpeakWordHighlightColor = [v5 quickSpeakSentenceHighlightColor];
  }

  v8 = quickSpeakWordHighlightColor;

  return [AXSpeakHighlightColorController nameForColor:v8];
}

- (void)viewWillAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = AXHighlightContentSettingsController;
  [(AXHighlightContentSettingsController *)&v4 viewWillAppear:appear];
  [(AXHighlightContentSettingsController *)self updateLayout];
}

- (BOOL)shouldShowSentenceItems
{
  if (!_AXSQuickSpeakHighlightTextEnabled())
  {
    return 0;
  }

  v2 = +[AXSettings sharedInstance];
  if ([v2 quickSpeakHighlightOption] == &dword_0 + 2)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    v3 = [v4 quickSpeakHighlightOption] == &dword_0 + 3;
  }

  return v3;
}

- (BOOL)shouldShowWordColorItems
{
  if (!_AXSQuickSpeakHighlightTextEnabled())
  {
    return 0;
  }

  v2 = +[AXSettings sharedInstance];
  if ([v2 quickSpeakHighlightOption] == &dword_0 + 1)
  {
    v3 = 1;
  }

  else
  {
    v4 = +[AXSettings sharedInstance];
    v3 = [v4 quickSpeakHighlightOption] == &dword_0 + 3;
  }

  return v3;
}

- (void)updateLayout
{
  [(AXHighlightContentSettingsController *)self setContentHighlightItemsHidden:_AXSQuickSpeakHighlightTextEnabled() == 0];
  shouldShowWordColorItems = [(AXHighlightContentSettingsController *)self shouldShowWordColorItems];
  shouldShowSentenceItems = [(AXHighlightContentSettingsController *)self shouldShowSentenceItems];
  if (shouldShowSentenceItems || shouldShowWordColorItems)
  {
    [(AXHighlightContentSettingsController *)self _insertColorGroupingHeaderIfNecessary];
    [(AXHighlightContentSettingsController *)self setShowWordColorItems:shouldShowWordColorItems];
    [(AXHighlightContentSettingsController *)self setShowSentenceItems:shouldShowSentenceItems];
    [(AXHighlightContentSettingsController *)self beginUpdates];
  }

  else
  {
    [(AXHighlightContentSettingsController *)self setShowWordColorItems:0];
    [(AXHighlightContentSettingsController *)self setShowSentenceItems:0];
    [(AXHighlightContentSettingsController *)self beginUpdates];
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    colorHighlightItems = [(AXHighlightContentSettingsController *)self colorHighlightItems];
    v6 = [colorHighlightItems countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(colorHighlightItems);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v10 + 1) + 8 * v9) animated:1];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [colorHighlightItems countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  [(AXHighlightContentSettingsController *)self endUpdates];
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  cellCopy = cell;
  specifier = [cellCopy specifier];
  v6 = [specifier propertyForKey:@"_highlightOption"];
  if (v6)
  {
    v7 = +[AXSettings sharedInstance];
    quickSpeakHighlightOption = [v7 quickSpeakHighlightOption];

    [cellCopy setChecked:{quickSpeakHighlightOption == objc_msgSend(v6, "intValue")}];
  }

  v9 = [specifier propertyForKey:@"_sentenceHighlightOption"];
  if (v9)
  {
    v10 = +[AXSettings sharedInstance];
    quickSpeakSentenceHighlightOption = [v10 quickSpeakSentenceHighlightOption];

    [cellCopy setChecked:{quickSpeakSentenceHighlightOption == objc_msgSend(v9, "intValue")}];
  }
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v47.receiver = self;
  v47.super_class = AXHighlightContentSettingsController;
  [(AXHighlightContentSettingsController *)&v47 tableView:viewCopy didSelectRowAtIndexPath:pathCopy];
  v36 = pathCopy;
  v8 = [(AXHighlightContentSettingsController *)self specifierAtIndex:[(AXHighlightContentSettingsController *)self indexForIndexPath:pathCopy]];
  v9 = [v8 propertyForKey:@"_highlightOption"];
  v10 = v9;
  v37 = v9;
  v38 = v8;
  if (v9)
  {
    intValue = [v9 intValue];
    v12 = +[AXSettings sharedInstance];
    [v12 setQuickSpeakHighlightOption:intValue];

    [(AXHighlightContentSettingsController *)self updateLayout];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    visibleCells = [viewCopy visibleCells];
    v14 = [visibleCells countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v44;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v44 != v16)
          {
            objc_enumerationMutation(visibleCells);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          specifier = [v18 specifier];
          v20 = [specifier propertyForKey:@"_highlightOption"];
          v21 = v20;
          if (v20)
          {
            [v18 setChecked:{objc_msgSend(v20, "intValue") == intValue}];
          }
        }

        v15 = [visibleCells countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v15);
    }

    v10 = v37;
    v8 = v38;
  }

  v22 = [v8 propertyForKey:@"_sentenceHighlightOption"];
  v23 = v22;
  if (v22)
  {
    intValue2 = [v22 intValue];
    v25 = +[AXSettings sharedInstance];
    [v25 setQuickSpeakSentenceHighlightOption:intValue2];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = viewCopy;
    visibleCells2 = [viewCopy visibleCells];
    v27 = [visibleCells2 countByEnumeratingWithState:&v39 objects:v48 count:16];
    if (v27)
    {
      v28 = v27;
      v29 = *v40;
      do
      {
        for (j = 0; j != v28; j = j + 1)
        {
          if (*v40 != v29)
          {
            objc_enumerationMutation(visibleCells2);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          specifier2 = [v31 specifier];
          v33 = [specifier2 propertyForKey:@"_sentenceHighlightOption"];
          v34 = v33;
          if (v33)
          {
            [v31 setChecked:{objc_msgSend(v33, "intValue") == intValue2}];
          }
        }

        v28 = [visibleCells2 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v28);
    }

    viewCopy = v35;
    v10 = v37;
    v8 = v38;
  }
}

- (id)highlightEnabled:(id)enabled
{
  v3 = _AXSQuickSpeakHighlightTextEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setHighlightEnabled:(id)enabled specifier:(id)specifier
{
  [enabled BOOLValue];
  _AXSQuickSpeakSetHighlightTextEnabled();

  [(AXHighlightContentSettingsController *)self updateLayout];
}

@end