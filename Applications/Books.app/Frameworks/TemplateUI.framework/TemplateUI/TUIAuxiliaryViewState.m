@interface TUIAuxiliaryViewState
- (BOOL)configureNavigationItem:(id)a3 scrollView:(id)a4 extraLeftItems:(id)a5 extraRightItems:(id)a6;
- (TUIAuxiliaryViewState)initWithSearchControllerDelegate:(id)a3 hostingController:(id)a4 viewVisibilityController:(id)a5;
- (UISearchControllerDelegate)searchControllerDelegate;
- (double)navigationBarBackgroundOpacity:(id)a3 anchors:(id)a4 scrollView:(id)a5;
- (id)_axBarButtonItemForLargeTitleAccessoryView:(id)a3;
- (id)_renderItemsForButtonTypeWithFactory:(id)a3 type:(unint64_t)a4 triggerManager:(id)a5;
- (id)_renderLargeTitleAccessoryViewWithFactory:(id)a3;
- (id)_renderSearchControllerWithFactory:(id)a3;
- (id)_renderTitleForType:(unint64_t)a3;
- (id)navigationBarItemMatchingQuery:(id)a3;
- (void)_setupHosting;
- (void)_updateSearchController:(id)a3;
- (void)configureSearchControllerIfNeededForNavigationItem:(id)a3;
- (void)setBarButtonItem:(id)a3 forHostingIdentifier:(id)a4;
- (void)updateWithRenderModel:(id)a3 factory:(id)a4 triggerManager:(id)a5 promoteAccessory:(BOOL)a6;
@end

@implementation TUIAuxiliaryViewState

- (TUIAuxiliaryViewState)initWithSearchControllerDelegate:(id)a3 hostingController:(id)a4 viewVisibilityController:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = TUIAuxiliaryViewState;
  v11 = [(TUIAuxiliaryViewState *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_searchControllerDelegate, v8);
    objc_storeStrong(&v12->_hostingController, a4);
    objc_storeStrong(&v12->_viewVisibilityController, a5);
    v13 = [[NSMapTable alloc] initWithKeyOptions:0 valueOptions:5 capacity:3];
    barButtonItems = v12->_barButtonItems;
    v12->_barButtonItems = v13;
  }

  return v12;
}

- (void)updateWithRenderModel:(id)a3 factory:(id)a4 triggerManager:(id)a5 promoteAccessory:(BOOL)a6
{
  v6 = a6;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  objc_storeStrong(&self->_renderModel, a3);
  v14 = [(TUIAuxiliaryViewState *)self _renderRightNavigationItemsWithFactory:v12 triggerManager:v13];
  rightItems = self->_rightItems;
  self->_rightItems = v14;

  v16 = [(TUIAuxiliaryViewState *)self _renderLeftNavigationItemsWithFactory:v12 triggerManager:v13];
  leftItems = self->_leftItems;
  self->_leftItems = v16;

  v18 = [(TUIAuxiliaryViewState *)self _renderNavigationBarTitle:v13];
  title = self->_title;
  self->_title = v18;

  v20 = [(TUIAuxiliaryViewState *)self _renderLargeNavigationBarTitle:v13];
  largeTitle = self->_largeTitle;
  self->_largeTitle = v20;

  v22 = [(TUIAuxiliaryViewState *)self _renderLargeTitleAccessoryViewWithFactory:v12];
  largeTitleAccessoryView = self->_largeTitleAccessoryView;
  self->_largeTitleAccessoryView = v22;

  if (self->_largeTitleAccessoryView && v6)
  {
    v24 = [(TUIAuxiliaryViewState *)self _axBarButtonItemForLargeTitleAccessoryView:?];
    if (v24)
    {
      v45 = v11;
      if (!self->_rightItems)
      {
        self->_rightItems = &__NSArray0__struct;
      }

      v25 = [v24 accessibilityIdentifier];
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v53 = 0u;
      v26 = self->_rightItems;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v55 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v51;
LABEL_8:
        v30 = 0;
        while (1)
        {
          if (*v51 != v29)
          {
            objc_enumerationMutation(v26);
          }

          v31 = [*(*(&v50 + 1) + 8 * v30) accessibilityIdentifier];

          if (v31 == v25)
          {
            break;
          }

          if (v28 == ++v30)
          {
            v28 = [(NSArray *)v26 countByEnumeratingWithState:&v50 objects:v55 count:16];
            if (v28)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }
      }

      else
      {
LABEL_14:

        v32 = [(NSArray *)self->_rightItems arrayByAddingObject:v24];
        v26 = self->_rightItems;
        self->_rightItems = v32;
      }

      v33 = [(TUIRenderModelNavigationItem *)self->_largeTitleAccessoryModel hostingIdentifiers];

      if (v33)
      {
        v48 = 0u;
        v49 = 0u;
        v46 = 0u;
        v47 = 0u;
        v34 = [(TUIRenderModelNavigationItem *)self->_largeTitleAccessoryModel hostingIdentifiers];
        v35 = [v34 countByEnumeratingWithState:&v46 objects:v54 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v47;
          do
          {
            v38 = 0;
            do
            {
              if (*v47 != v37)
              {
                objc_enumerationMutation(v34);
              }

              [(TUIAuxiliaryViewState *)self setBarButtonItem:v24 forHostingIdentifier:*(*(&v46 + 1) + 8 * v38)];
              v38 = v38 + 1;
            }

            while (v36 != v38);
            v36 = [v34 countByEnumeratingWithState:&v46 objects:v54 count:16];
          }

          while (v36);
        }
      }

      v11 = v45;
    }

    v39 = self->_largeTitleAccessoryView;
    self->_largeTitleAccessoryView = 0;
  }

  else
  {
    largeTitleAccessoryItem = self->_largeTitleAccessoryItem;
    self->_largeTitleAccessoryItem = 0;
  }

  v41 = [(TUIAuxiliaryViewState *)self searchController];

  if (v41)
  {
    [(TUIAuxiliaryViewState *)self _updateSearchController:self->_searchController];
  }

  else
  {
    v42 = [(TUIAuxiliaryViewState *)self _renderSearchControllerWithFactory:v12];
    if (v42)
    {
      objc_storeStrong(&self->_searchController, v42);
      WeakRetained = objc_loadWeakRetained(&self->_searchControllerDelegate);
      v44 = [(TUISearchController *)self->_searchController searchController];
      [v44 setDelegate:WeakRetained];
    }
  }

  [(TUIAuxiliaryViewState *)self _setupHosting];
}

- (void)_setupHosting
{
  if (self->_largeTitleAccessoryView && ([(TUIRenderModelNavigationItem *)self->_largeTitleAccessoryModel hostingIdentifiers], v3 = objc_claimAutoreleasedReturnValue(), v3, v3))
  {
    if (!self->_largeTitleViewHostMap)
    {
      v4 = objc_opt_new();
      largeTitleViewHostMap = self->_largeTitleViewHostMap;
      self->_largeTitleViewHostMap = v4;
    }

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(TUIRenderModelNavigationItem *)self->_largeTitleAccessoryModel hostingIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v19;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v18 + 1) + 8 * i);
          v12 = [(NSMutableDictionary *)self->_largeTitleViewHostMap objectForKeyedSubscript:v11];
          v13 = v12;
          if (!v12 || ([(_TUIAuxiliaryViewHost *)v12 view], v14 = objc_claimAutoreleasedReturnValue(), largeTitleAccessoryView = self->_largeTitleAccessoryView, v14, v14 != largeTitleAccessoryView))
          {
            v16 = [[_TUIAuxiliaryViewHost alloc] initWithIdentifier:v11 hostingController:self->_hostingController viewVisibilityController:self->_viewVisibilityController view:self->_largeTitleAccessoryView];

            [(NSMutableDictionary *)self->_largeTitleViewHostMap setObject:v16 forKeyedSubscript:v11];
            v13 = v16;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v17 = self->_largeTitleViewHostMap;
    self->_largeTitleViewHostMap = 0;
  }
}

- (id)navigationBarItemMatchingQuery:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_125908;
  v17 = sub_125918;
  v18 = 0;
  v5 = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_125920;
  v9[3] = &unk_2620E8;
  v6 = v4;
  v11 = self;
  v12 = &v13;
  v10 = v6;
  [v5 enumerateObjectsUsingBlock:v9];

  v7 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v7;
}

- (void)setBarButtonItem:(id)a3 forHostingIdentifier:(id)a4
{
  v14 = a3;
  v6 = a4;
  itemHostMap = self->_itemHostMap;
  if (!itemHostMap)
  {
    v8 = objc_opt_new();
    v9 = self->_itemHostMap;
    self->_itemHostMap = v8;

    itemHostMap = self->_itemHostMap;
  }

  v10 = [(NSMutableDictionary *)itemHostMap objectForKeyedSubscript:v6];
  v11 = v10;
  if (!v10 || ([(_TUIAuxiliaryItemHost *)v10 item], v12 = objc_claimAutoreleasedReturnValue(), v12, v12 != v14))
  {
    v13 = [[_TUIAuxiliaryItemHost alloc] initWithIdentifier:v6 hostingController:self->_hostingController item:v14];

    [(NSMutableDictionary *)self->_itemHostMap setObject:v13 forKeyedSubscript:v6];
    v11 = v13;
  }
}

- (BOOL)configureNavigationItem:(id)a3 scrollView:(id)a4 extraLeftItems:(id)a5 extraRightItems:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = self->_leftItems;
  v15 = self->_rightItems;
  v16 = [(NSArray *)v15 count]|| [(NSArray *)v14 count]|| self->_largeTitleAccessoryView != 0;
  if ([v12 count])
  {
    if (v14)
    {
      v17 = v14;
    }

    else
    {
      v17 = &__NSArray0__struct;
    }

    v18 = [v12 arrayByAddingObjectsFromArray:v17];

    v14 = v18;
  }

  if ([v13 count])
  {
    if (v15)
    {
      v19 = v15;
    }

    else
    {
      v19 = &__NSArray0__struct;
    }

    v20 = [v13 arrayByAddingObjectsFromArray:v19];

    v15 = v20;
  }

  if (self->_title || self->_largeTitle)
  {
    [v10 setTitle:?];
  }

  [v10 _setLargeTitleAccessoryView:self->_largeTitleAccessoryView alignToBaseline:0];
  [v10 setRightBarButtonItems:v15 animated:0];
  [v10 setLeftBarButtonItems:v14 animated:0];
  v21 = [v11 window];
  if (v21)
  {
    v22 = v21;
    [v10 searchController];
    v33 = v14;
    v23 = v13;
    v24 = v12;
    v25 = v11;
    v27 = v26 = v16;
    v28 = [(TUISearchController *)self->_searchController searchController];

    v29 = v27 == v28;
    v16 = v26;
    v11 = v25;
    v12 = v24;
    v13 = v23;
    v14 = v33;
    if (!v29)
    {
      v30 = [(TUISearchController *)self->_searchController searchController];
      [v10 setSearchController:v30];

      v31 = [(TUISearchController *)self->_searchController searchFilterPalette];
      [v10 _setBottomPalette:v31];

      [v11 scrollRectToVisible:0 animated:{0.0, -1.0, 1.0, 1.0}];
    }
  }

  [v10 setHidesSearchBarWhenScrolling:0];

  return v16;
}

- (id)_axBarButtonItemForLargeTitleAccessoryView:(id)a3
{
  v4 = a3;
  v5 = [v4 _accessibilityFindUnsortedSubviewDescendantsPassingTest:&stru_262128];
  v6 = [v5 firstObject];
  if (v6)
  {
    largeTitleAccessoryItem = self->_largeTitleAccessoryItem;
    if (!largeTitleAccessoryItem)
    {
      v8 = objc_alloc_init(UIBarButtonItem);
      v9 = self->_largeTitleAccessoryItem;
      self->_largeTitleAccessoryItem = v8;

      largeTitleAccessoryItem = self->_largeTitleAccessoryItem;
    }

    [(UIBarButtonItem *)largeTitleAccessoryItem setCustomView:v4];
    v10 = self->_largeTitleAccessoryItem;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)configureSearchControllerIfNeededForNavigationItem:(id)a3
{
  searchController = self->_searchController;
  v5 = a3;
  v6 = [(TUISearchController *)searchController searchController];
  [v5 setSearchController:v6];

  v7 = [(TUISearchController *)self->_searchController searchFilterPalette];
  [v5 _setBottomPalette:v7];
}

- (id)_renderItemsForButtonTypeWithFactory:(id)a3 type:(unint64_t)a4 triggerManager:(id)a5
{
  v30 = a3;
  v29 = a5;
  v28 = objc_alloc_init(NSMutableArray);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v36 + 1) + 8 * i);
        if ([v12 itemType] == a4)
        {
          v13 = [v12 observeTrigger];
          if (!v13 || (v14 = v13, [v12 observeTrigger], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v29, "stateForTriggerWithName:", v15), v17 = objc_msgSend(v12, "observeTriggerValue"), v15, v14, v16 == v17))
          {
            v18 = [v12 renderItemWithFactory:v30];
            if (v18)
            {
              [v28 addObject:v18];
              v19 = [v12 identifier];
              [(TUIAuxiliaryViewState *)self setBarButtonItem:v18 forIdentifier:v19];

              v20 = [v12 hostingIdentifiers];

              if (v20)
              {
                v34 = 0u;
                v35 = 0u;
                v32 = 0u;
                v33 = 0u;
                v21 = [v12 hostingIdentifiers];
                v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
                if (v22)
                {
                  v23 = v22;
                  v24 = *v33;
                  do
                  {
                    for (j = 0; j != v23; j = j + 1)
                    {
                      if (*v33 != v24)
                      {
                        objc_enumerationMutation(v21);
                      }

                      [(TUIAuxiliaryViewState *)self setBarButtonItem:v18 forHostingIdentifier:*(*(&v32 + 1) + 8 * j)];
                    }

                    v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
                  }

                  while (v23);
                }
              }
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
  }

  v26 = [v28 copy];

  return v26;
}

- (id)_renderTitleForType:(unint64_t)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 itemType] == a3)
        {
          v10 = [v9 title];
          goto LABEL_11;
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (double)navigationBarBackgroundOpacity:(id)a3 anchors:(id)a4 scrollView:(id)a5
{
  v37 = a3;
  v8 = a4;
  v9 = a5;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v10 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v39;
    v13 = NAN;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v39 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v38 + 1) + 8 * i);
        [v15 navigationBarBackgroundOpacity];
        v16 = [v15 observeTrigger];
        if (!v16 || (v17 = v16, [v15 observeTrigger], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v37, "stateForTriggerWithName:", v18), v20 = objc_msgSend(v15, "observeTriggerValue"), v18, v17, v19 == v20))
        {
          [v15 navigationBarBackgroundOpacity];
          v13 = v32;
          goto LABEL_19;
        }

        v21 = [v15 observeTrigger];

        if (v8 && v21 && v9)
        {
          v22 = [v15 observeTrigger];
          [v8 offsetForTriggerWithName:v22 inScrollView:v9];
          v24 = v23;

          [v9 contentOffset];
          v26 = v25;
          if ([v15 ignoreInsetsForOpacityTrigger])
          {
            [v9 safeAreaInsets];
            v28 = v27;
            [v9 contentInset];
            v30 = v28 + v29;
            v26 = v26 + v30;
            v24 = v24 + v30;
          }

          [v15 navigationBarBackgroundOpacity];
          v13 = v26 / v24 * v31;
        }
      }

      v11 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v13 = NAN;
  }

LABEL_19:

  v33 = fmax(v13, 0.0);
  if (v33 > 1.0)
  {
    v33 = 1.0;
  }

  v34 = v33;

  return v34;
}

- (id)_renderLargeTitleAccessoryViewWithFactory:(id)a3
{
  v4 = a3;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v5 = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v6 = [v5 countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v45;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v45 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v44 + 1) + 8 * i);
        if ([v10 itemType] == &dword_4 + 1)
        {
          objc_storeStrong(&self->_largeTitleAccessoryModel, v10);
          v12 = [v10 renderViewWithFactory:v4];
          largeTitleAccessoryContainer = self->_largeTitleAccessoryContainer;
          if (!largeTitleAccessoryContainer)
          {
            v14 = objc_alloc_init(UIView);
            v15 = self->_largeTitleAccessoryContainer;
            self->_largeTitleAccessoryContainer = v14;

            largeTitleAccessoryContainer = self->_largeTitleAccessoryContainer;
          }

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v16 = [(UIView *)largeTitleAccessoryContainer subviews];
          v17 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v17)
          {
            v18 = v17;
            v19 = *v41;
            do
            {
              for (j = 0; j != v18; j = j + 1)
              {
                if (*v41 != v19)
                {
                  objc_enumerationMutation(v16);
                }

                [*(*(&v40 + 1) + 8 * j) removeFromSuperview];
              }

              v18 = [v16 countByEnumeratingWithState:&v40 objects:v49 count:16];
            }

            while (v18);
          }

          [(UIView *)self->_largeTitleAccessoryContainer addSubview:v12];
          y = CGPointZero.y;
          [v12 bounds];
          [(UIView *)self->_largeTitleAccessoryContainer setBounds:CGPointZero.x, y];
          v22 = [(TUIRenderModelNavigationItem *)self->_largeTitleAccessoryModel axAttributes];
          v23 = [v22 axLabel];

          if (v23)
          {
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v24 = [(UIView *)self->_largeTitleAccessoryContainer interactions];
            v25 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v37;
              do
              {
                for (k = 0; k != v26; k = k + 1)
                {
                  if (*v37 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v36 + 1) + 8 * k);
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    [(UIView *)self->_largeTitleAccessoryContainer removeInteraction:v29];
                  }
                }

                v26 = [v24 countByEnumeratingWithState:&v36 objects:v48 count:16];
              }

              while (v26);
            }

            v30 = self->_largeTitleAccessoryContainer;
            v31 = objc_alloc_init(UILargeContentViewerInteraction);
            [(UIView *)v30 addInteraction:v31];

            [(UIView *)self->_largeTitleAccessoryContainer setShowsLargeContentViewer:1];
            v32 = self->_largeTitleAccessoryContainer;
            v33 = [(TUIRenderModelNavigationItem *)self->_largeTitleAccessoryModel axAttributes];
            v34 = [v33 axLabel];
            [(UIView *)v32 setLargeContentTitle:v34];
          }

          v11 = self->_largeTitleAccessoryContainer;

          goto LABEL_31;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v44 objects:v50 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_31:

  return v11;
}

- (id)_renderSearchControllerWithFactory:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 itemType] == &dword_4 + 2)
        {
          v6 = [v9 renderSearchControllerWithFactory:v4];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)_updateSearchController:(id)a3
{
  v4 = a3;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = [(TUIRenderModelAuxiliary *)self->_renderModel navigationItems];
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        if ([v10 itemType] == &dword_4 + 2)
        {
          [v4 configureWithModel:v10];
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
}

- (UISearchControllerDelegate)searchControllerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_searchControllerDelegate);

  return WeakRetained;
}

@end