@interface AXHighlightContentSettingsController
- (BOOL)shouldShowSentenceItems;
- (BOOL)shouldShowWordColorItems;
- (id)_colorForStyle:(id)a3;
- (id)highlightEnabled:(id)a3;
- (id)specifiers;
- (void)_insertColorGroupingHeaderIfNecessary;
- (void)_reloadHighlightContentSpecifier;
- (void)loadView;
- (void)setContentHighlightItemsHidden:(BOOL)a3;
- (void)setHighlightEnabled:(id)a3 specifier:(id)a4;
- (void)setShowSentenceItems:(BOOL)a3;
- (void)setShowWordColorItems:(BOOL)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateLayout;
- (void)viewWillAppear:(BOOL)a3;
- (void)willBecomeActive;
@end

@implementation AXHighlightContentSettingsController

- (void)setContentHighlightItemsHidden:(BOOL)a3
{
  if (self->_contentHighlightItemsHidden != a3)
  {
    v3 = a3;
    self->_contentHighlightItemsHidden = a3;
    [(AXHighlightContentSettingsController *)self beginUpdates];
    if (v3)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v5 = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
      v6 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
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
              objc_enumerationMutation(v5);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v46 + 1) + 8 * i) animated:1];
          }

          v7 = [v5 countByEnumeratingWithState:&v46 objects:v54 count:16];
        }

        while (v7);
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v10 = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
      v11 = [v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
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
              objc_enumerationMutation(v10);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v42 + 1) + 8 * j) animated:1];
          }

          v12 = [v10 countByEnumeratingWithState:&v42 objects:v53 count:16];
        }

        while (v12);
      }

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v15 = [(AXHighlightContentSettingsController *)self colorHighlightItems];
      v16 = [v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
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
              objc_enumerationMutation(v15);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v38 + 1) + 8 * k) animated:1];
          }

          v17 = [v15 countByEnumeratingWithState:&v38 objects:v52 count:16];
        }

        while (v17);
      }

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v20 = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
      v21 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
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
              objc_enumerationMutation(v20);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v34 + 1) + 8 * m) animated:1];
          }

          v22 = [v20 countByEnumeratingWithState:&v34 objects:v51 count:16];
        }

        while (v22);
      }

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v25 = [(AXHighlightContentSettingsController *)self contentHighlightItems];
      v26 = [v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
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
              objc_enumerationMutation(v25);
            }

            [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v30 + 1) + 8 * n) animated:1];
          }

          v27 = [v25 countByEnumeratingWithState:&v30 objects:v50 count:16];
        }

        while (v27);
      }
    }

    else
    {
      v25 = [(AXHighlightContentSettingsController *)self contentHighlightItems];
      [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:v25 afterSpecifierID:@"HighlightContent" animated:1];
    }

    [(AXHighlightContentSettingsController *)self endUpdates];
  }
}

- (void)_insertColorGroupingHeaderIfNecessary
{
  v3 = [(AXHighlightContentSettingsController *)self specifiers];
  v4 = [v3 indexOfSpecifierWithID:@"COLOR_CHOICE"];

  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = [(AXHighlightContentSettingsController *)self colorHighlightItems];
    v5 = [(AXHighlightContentSettingsController *)self contentHighlightItems];
    v6 = [v5 lastObject];
    v7 = [v6 propertyForKey:PSIDKey];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:v8 afterSpecifierID:v7 animated:1];
  }
}

- (void)setShowWordColorItems:(BOOL)a3
{
  v3 = a3;
  [(AXHighlightContentSettingsController *)self beginUpdates];
  if (!v3)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v9 = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
    v10 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v9);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v14 + 1) + 8 * v13) animated:1];
          v13 = v13 + 1;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v11);
    }

    goto LABEL_11;
  }

  v5 = [(AXHighlightContentSettingsController *)self specifiers];
  v6 = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
  v7 = [v6 firstObject];
  v8 = [v5 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(AXHighlightContentSettingsController *)self wordColorHighlightItems];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:v9 afterSpecifierID:@"COLOR_CHOICE" animated:1];
LABEL_11:
  }

  [(AXHighlightContentSettingsController *)self endUpdates];
}

- (void)setShowSentenceItems:(BOOL)a3
{
  v3 = a3;
  [(AXHighlightContentSettingsController *)self beginUpdates];
  if (!v3)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v15 = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
    v16 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
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
            objc_enumerationMutation(v15);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v28 + 1) + 8 * v19) animated:1];
          v19 = v19 + 1;
        }

        while (v17 != v19);
        v17 = [v15 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v17);
    }

    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v14 = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
    v20 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
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
            objc_enumerationMutation(v14);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v24 + 1) + 8 * v23) animated:1];
          v23 = v23 + 1;
        }

        while (v21 != v23);
        v21 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v21);
    }

    goto LABEL_20;
  }

  v5 = [(AXHighlightContentSettingsController *)self specifiers];
  v6 = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
  v7 = [v6 firstObject];
  v8 = [v5 containsObject:v7];

  if ((v8 & 1) == 0)
  {
    v9 = [(AXHighlightContentSettingsController *)self sentenceHighlightItems];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:v9 afterSpecifierID:@"HighlightSentenceOption" animated:1];
  }

  v10 = [(AXHighlightContentSettingsController *)self specifiers];
  v11 = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
  v12 = [v11 firstObject];
  v13 = [v10 containsObject:v12];

  if ((v13 & 1) == 0)
  {
    v14 = [(AXHighlightContentSettingsController *)self sentenceColorHighlightItems];
    [(AXHighlightContentSettingsController *)self insertContiguousSpecifiers:v14 afterSpecifierID:@"WordHighlightColor" animated:1];
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
    v35 = self;
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
          v15 = [v14 BOOLValue];

          if (v15)
          {
            [v40 addObject:v10];
          }

          v16 = [v10 propertyForKey:@"hideWhenColorHighlightContentDisabled"];
          v17 = [v16 BOOLValue];

          if (v17)
          {
            [v38 addObject:v10];
          }

          v18 = [v10 propertyForKey:@"hideWhenWordColorHighlightContentDisabled"];
          v19 = [v18 BOOLValue];

          if (v19)
          {
            [v36 addObject:v10];
          }

          v20 = [v10 propertyForKey:@"hideWhenSentenceColorHighlightContentDisabled"];
          v21 = [v20 BOOLValue];

          if (v21)
          {
            [v37 addObject:v10];
          }

          v22 = [v10 propertyForKey:@"hideWhenSentenceHighlightDisabled"];
          v23 = [v22 BOOLValue];

          if (v23)
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

    [(AXHighlightContentSettingsController *)v35 setWordColorHighlightItems:v36];
    [(AXHighlightContentSettingsController *)v35 setSentenceColorHighlightItems:v37];
    [(AXHighlightContentSettingsController *)v35 setColorHighlightItems:v38];
    [(AXHighlightContentSettingsController *)v35 setContentHighlightItems:v40];
    [(AXHighlightContentSettingsController *)v35 setSentenceHighlightItems:v39];
    v35->_contentHighlightItemsHidden = _AXSQuickSpeakHighlightTextEnabled() == 0;
    v35->_sentenceHighlightItemsHidden = ![(AXHighlightContentSettingsController *)v35 shouldShowSentenceItems];
    v24 = [(AXHighlightContentSettingsController *)v35 shouldShowWordColorItems];
    if (v35->_contentHighlightItemsHidden)
    {
      v25 = [(AXHighlightContentSettingsController *)v35 contentHighlightItems];
      [obj removeObjectsInArray:v25];

      v26 = [(AXHighlightContentSettingsController *)v35 colorHighlightItems];
      [obj removeObjectsInArray:v26];
    }

    if (v35->_sentenceHighlightItemsHidden)
    {
      v27 = [(AXHighlightContentSettingsController *)v35 sentenceHighlightItems];
      [obj removeObjectsInArray:v27];

      v28 = [(AXHighlightContentSettingsController *)v35 sentenceColorHighlightItems];
      [obj removeObjectsInArray:v28];
    }

    if ((v24 & 1) == 0)
    {
      v29 = [(AXHighlightContentSettingsController *)v35 wordColorHighlightItems];
      [obj removeObjectsInArray:v29];
    }

    if ([(AXHighlightContentSettingsController *)v35 shouldShowFooterText]&& v7)
    {
      v30 = settingsLocString(@"HighlightContentFooterText", @"HighlightContentSettings");
      [v7 setProperty:v30 forKey:PSFooterTextGroupKey];
    }

    [(AXHighlightContentSettingsController *)v35 setAllSpecifiersUnsearchable:obj];
    v31 = *&v35->AXUISettingsSetupCapableListController_opaque[v34];
    *&v35->AXUISettingsSetupCapableListController_opaque[v34] = obj;
    v32 = obj;

    v3 = *&v35->AXUISettingsSetupCapableListController_opaque[v34];
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

- (id)_colorForStyle:(id)a3
{
  v3 = [a3 propertyForKey:PSIDKey];
  v4 = [v3 isEqualToString:@"WordHighlightColor"];
  v5 = +[AXSettings sharedInstance];
  v6 = v5;
  if (v4)
  {
    v7 = [v5 quickSpeakWordHighlightColor];
  }

  else
  {
    v7 = [v5 quickSpeakSentenceHighlightColor];
  }

  v8 = v7;

  return [AXSpeakHighlightColorController nameForColor:v8];
}

- (void)viewWillAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = AXHighlightContentSettingsController;
  [(AXHighlightContentSettingsController *)&v4 viewWillAppear:a3];
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
  v3 = [(AXHighlightContentSettingsController *)self shouldShowWordColorItems];
  v4 = [(AXHighlightContentSettingsController *)self shouldShowSentenceItems];
  if (v4 || v3)
  {
    [(AXHighlightContentSettingsController *)self _insertColorGroupingHeaderIfNecessary];
    [(AXHighlightContentSettingsController *)self setShowWordColorItems:v3];
    [(AXHighlightContentSettingsController *)self setShowSentenceItems:v4];
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
    v5 = [(AXHighlightContentSettingsController *)self colorHighlightItems];
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(v5);
          }

          [(AXHighlightContentSettingsController *)self removeSpecifier:*(*(&v10 + 1) + 8 * v9) animated:1];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }

  [(AXHighlightContentSettingsController *)self endUpdates];
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v12 = a4;
  v5 = [v12 specifier];
  v6 = [v5 propertyForKey:@"_highlightOption"];
  if (v6)
  {
    v7 = +[AXSettings sharedInstance];
    v8 = [v7 quickSpeakHighlightOption];

    [v12 setChecked:{v8 == objc_msgSend(v6, "intValue")}];
  }

  v9 = [v5 propertyForKey:@"_sentenceHighlightOption"];
  if (v9)
  {
    v10 = +[AXSettings sharedInstance];
    v11 = [v10 quickSpeakSentenceHighlightOption];

    [v12 setChecked:{v11 == objc_msgSend(v9, "intValue")}];
  }
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = a3;
  v7 = a4;
  v47.receiver = self;
  v47.super_class = AXHighlightContentSettingsController;
  [(AXHighlightContentSettingsController *)&v47 tableView:v6 didSelectRowAtIndexPath:v7];
  v36 = v7;
  v8 = [(AXHighlightContentSettingsController *)self specifierAtIndex:[(AXHighlightContentSettingsController *)self indexForIndexPath:v7]];
  v9 = [v8 propertyForKey:@"_highlightOption"];
  v10 = v9;
  v37 = v9;
  v38 = v8;
  if (v9)
  {
    v11 = [v9 intValue];
    v12 = +[AXSettings sharedInstance];
    [v12 setQuickSpeakHighlightOption:v11];

    [(AXHighlightContentSettingsController *)self updateLayout];
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v13 = [v6 visibleCells];
    v14 = [v13 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v43 + 1) + 8 * i);
          v19 = [v18 specifier];
          v20 = [v19 propertyForKey:@"_highlightOption"];
          v21 = v20;
          if (v20)
          {
            [v18 setChecked:{objc_msgSend(v20, "intValue") == v11}];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v43 objects:v49 count:16];
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
    v24 = [v22 intValue];
    v25 = +[AXSettings sharedInstance];
    [v25 setQuickSpeakSentenceHighlightOption:v24];

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v35 = v6;
    v26 = [v6 visibleCells];
    v27 = [v26 countByEnumeratingWithState:&v39 objects:v48 count:16];
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
            objc_enumerationMutation(v26);
          }

          v31 = *(*(&v39 + 1) + 8 * j);
          v32 = [v31 specifier];
          v33 = [v32 propertyForKey:@"_sentenceHighlightOption"];
          v34 = v33;
          if (v33)
          {
            [v31 setChecked:{objc_msgSend(v33, "intValue") == v24}];
          }
        }

        v28 = [v26 countByEnumeratingWithState:&v39 objects:v48 count:16];
      }

      while (v28);
    }

    v6 = v35;
    v10 = v37;
    v8 = v38;
  }
}

- (id)highlightEnabled:(id)a3
{
  v3 = _AXSQuickSpeakHighlightTextEnabled();

  return [NSNumber numberWithUnsignedChar:v3];
}

- (void)setHighlightEnabled:(id)a3 specifier:(id)a4
{
  [a3 BOOLValue];
  _AXSQuickSpeakSetHighlightTextEnabled();

  [(AXHighlightContentSettingsController *)self updateLayout];
}

@end