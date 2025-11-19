@interface ShortcutsRowCellProvider
- (ShortcutsRowCellProvider)initWithCollectionView:(id)a3;
- (ShortcutsRowCellProviderDelegate)delegate;
- (UICollectionView)collectionView;
- (id)_collectionViewLayout;
- (id)_modelAtIndexPath:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5;
- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5;
- (void)_buildModels;
- (void)_captureTapActionWithModel:(id)a3;
- (void)_updateContentAnimated:(BOOL)a3;
- (void)_updateHeightConstraint;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5;
- (void)fetchMissingImages;
- (void)setFavoritesDataProvider:(id)a3;
- (void)setSuggestionsDataProvider:(id)a3;
- (void)setTraitCollection:(id)a3;
@end

@implementation ShortcutsRowCellProvider

- (ShortcutsRowCellProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (UICollectionView)collectionView
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionView);

  return WeakRetained;
}

- (void)_captureTapActionWithModel:(id)a3
{
  v5 = a3;
  [GEOAPPortal captureUserAction:2007 target:8 value:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v5;
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      v4 = [v3 entry];
      [HomeAnalyticsManager captureTapActionWithFavorite:v4];
    }

    else
    {
      v4 = [v3 entryLegacy];
      [HomeAnalyticsManager captureTapActionWithEntry:v4];
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [GEOAPPortal captureUserAction:2044 target:8 value:0];
    }
  }
}

- (id)collectionView:(id)a3 contextMenuConfiguration:(id)a4 highlightPreviewForItemAtIndexPath:(id)a5
{
  v5 = [a3 cellForItemAtIndexPath:{a5, a4}];
  if (v5)
  {
    v6 = objc_alloc_init(UIPreviewParameters);
    [v5 bounds];
    v7 = [UIBezierPath bezierPathWithRoundedRect:"bezierPathWithRoundedRect:cornerRadius:" cornerRadius:?];
    [v6 setVisiblePath:v7];

    v8 = [[UITargetedPreview alloc] initWithView:v5 parameters:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)collectionView:(id)a3 contextMenuConfigurationForItemsAtIndexPaths:(id)a4 point:(CGPoint)a5
{
  v6 = [a4 firstObject];
  v7 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:v6];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    v9 = 0;
    v11 = 0;
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_9;
    }

    goto LABEL_6;
  }

  v8 = v7;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v9 = [v8 entry];
    v10 = [v9 isShortcutForSetup];

    if (v10)
    {
      goto LABEL_8;
    }

LABEL_6:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100BA22F8;
    v13[3] = &unk_10163C1A0;
    v13[4] = self;
    v9 = v9;
    v14 = v9;
    v11 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

    goto LABEL_9;
  }

  v9 = 0;
LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v14 = a3;
  v6 = a4;
  v7 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:v6];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
    v9 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    v10 = [(ShortcutsRowCellProvider *)self delegate];
    if (v9)
    {
      v11 = [v8 entry];
      [v10 shortcutsRowCellProvider:self openFavorite:v11];
    }

    else
    {
      v11 = [v8 entryLegacy];
      [v10 shortcutsRowCellProvider:self openShortcut:v11];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    v8 = [(ShortcutsRowCellProvider *)self delegate];
    [v8 shortcutsRowCellProviderAddNewShortcut:self];
  }

LABEL_9:
  [v14 deselectItemAtIndexPath:v6 animated:1];
  [(ShortcutsRowCellProvider *)self _captureTapActionWithModel:v7];
  v12 = +[NSDate date];
  lastCellTappedTimestamp = self->_lastCellTappedTimestamp;
  self->_lastCellTappedTimestamp = v12;
}

- (void)collectionView:(id)a3 willDisplayCell:(id)a4 forItemAtIndexPath:(id)a5
{
  v12 = a4;
  v7 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v12 model];
    [v8 fetchImageIfMissing];
  }

  [(NSDate *)self->_lastCellTappedTimestamp timeIntervalSinceNow];
  if (v9 < -1.0)
  {
    v10 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:v7];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
      {
        v11 = [v10 entry];
        [HomeAnalyticsManager captureDisplayActionWithFavorite:v11];
      }

      else
      {
        v11 = [v10 entryLegacy];
        [HomeAnalyticsManager captureDisplayActionWithEntry:v11];
      }
    }
  }
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4 itemIdentifier:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100BA2A84;
  v27 = sub_100BA2A94;
  v28 = 0;
  cellModels = self->_cellModels;
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100BA2A9C;
  v20 = &unk_10163C150;
  v12 = v10;
  v21 = v12;
  v22 = &v23;
  [(NSArray *)cellModels enumerateObjectsUsingBlock:&v17];
  v13 = [ShortcutsRowCollectionViewCell cellReuseIdentifier:v17];
  v14 = [v8 dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:v9];
  v15 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:v24[5]];
  [v14 setModel:v15];

  [v14 setAccessibilityIdentifier:@"ShortcutsRowCell"];
  _Block_object_dispose(&v23, 8);

  return v14;
}

- (id)_modelAtIndexPath:(id)a3
{
  v4 = a3;
  if (([v4 row] & 0x8000000000000000) != 0 || (v5 = objc_msgSend(v4, "row"), v5 >= -[NSArray count](self->_cellModels, "count")))
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_cellModels, "objectAtIndexedSubscript:", [v4 row]);
  }

  return v6;
}

- (void)_buildModels
{
  v3 = +[NSMutableArray array];
  v4 = +[NSMutableSet set];
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v29 = 0uLL;
    v30 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v5 = self->_shortcuts;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v28;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v28 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = [[SuggestionShortcutsRowCellModel alloc] initWithMapsFavoriteItem:*(*(&v27 + 1) + 8 * i)];
          v11 = sub_10009B2BC(v10);
          if (v11 && ([v4 containsObject:v11] & 1) == 0)
          {
            [v3 addObject:v10];
            [v4 addObject:v11];
          }
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v7);
    }
  }

  else
  {
    v25 = 0uLL;
    v26 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v5 = self->_shortcutsLegacy;
    v12 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v24;
      do
      {
        for (j = 0; j != v13; j = j + 1)
        {
          if (*v24 != v14)
          {
            objc_enumerationMutation(v5);
          }

          v16 = *(*(&v23 + 1) + 8 * j);
          v17 = [SuggestionShortcutsRowCellModel alloc];
          v18 = [(SuggestionShortcutsRowCellModel *)v17 initWithMapsSuggestionsEntry:v16, v23];
          v19 = sub_10009B2BC(v18);
          if (v19 && ([v4 containsObject:v19] & 1) == 0)
          {
            [v3 addObject:v18];
            [v4 addObject:v19];
          }
        }

        v13 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v13);
    }
  }

  v20 = objc_alloc_init(AddShortcutsRowCellModel);
  [v3 addObject:v20];

  v21 = [v3 copy];
  cellModels = self->_cellModels;
  self->_cellModels = v21;
}

- (void)_updateContentAnimated:(BOOL)a3
{
  v3 = a3;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    v5 = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
    v6 = [v5 isEqual:self->_shortcuts];

    if (v6)
    {
      return;
    }

    v7 = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
    shortcuts = self->_shortcuts;
    self->_shortcuts = v7;

    v9 = self->_cellModels;
    [(ShortcutsRowCellProvider *)self _buildModels];
    objc_initWeak(&location, self);
    v10 = [NSDiffableDataSourceSnapshot _maps_singleSectionSnapshotWithIdentifiersForItems:self->_cellModels reloadingChangesFromPreviousItems:v9];
    diffableDataSource = self->_diffableDataSource;
    v12 = v20;
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100BA30C8;
    v20[3] = &unk_101661B98;
    objc_copyWeak(&v21, &location);
    [(UICollectionViewDiffableDataSource *)diffableDataSource applySnapshot:v10 animatingDifferences:v3 completion:v20];
  }

  else
  {
    v13 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider shortcuts];
    v14 = [v13 isEqual:self->_shortcuts];

    if (v14)
    {
      return;
    }

    v15 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider shortcuts];
    shortcutsLegacy = self->_shortcutsLegacy;
    self->_shortcutsLegacy = v15;

    v9 = self->_cellModels;
    [(ShortcutsRowCellProvider *)self _buildModels];
    objc_initWeak(&location, self);
    v10 = [NSDiffableDataSourceSnapshot _maps_singleSectionSnapshotWithIdentifiersForItems:self->_cellModels reloadingChangesFromPreviousItems:v9];
    v17 = self->_diffableDataSource;
    v12 = v18;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100BA3108;
    v18[3] = &unk_101661B98;
    objc_copyWeak(&v19, &location);
    [(UICollectionViewDiffableDataSource *)v17 applySnapshot:v10 animatingDifferences:v3 completion:v18];
  }

  objc_destroyWeak(v12 + 4);

  objc_destroyWeak(&location);
}

- (id)_collectionViewLayout
{
  collectionViewLayout = self->_collectionViewLayout;
  if (!collectionViewLayout)
  {
    v4 = objc_alloc_init(UICollectionViewCompositionalLayoutConfiguration);
    [v4 setScrollDirection:1];
    objc_initWeak(&location, self);
    v5 = [UICollectionViewCompositionalLayout alloc];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100BA326C;
    v9[3] = &unk_10165E4F0;
    objc_copyWeak(&v10, &location);
    v6 = [v5 initWithSectionProvider:v9 configuration:v4];
    v7 = self->_collectionViewLayout;
    self->_collectionViewLayout = v6;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);

    collectionViewLayout = self->_collectionViewLayout;
  }

  return collectionViewLayout;
}

- (void)_updateHeightConstraint
{
  [ShortcutsRowCollectionViewCell cellSizeWithTraitCollection:self->_traitCollection];
  v4 = v3;
  v5 = [(UITraitCollection *)self->_traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v7 = v4 + v4;
  if (!IsAccessibilityCategory)
  {
    v7 = v4;
  }

  heightConstraint = self->_heightConstraint;

  [(NSLayoutConstraint *)heightConstraint setConstant:v7];
}

- (void)fetchMissingImages
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_cellModels;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6) fetchImageIfMissing];
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)setTraitCollection:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_traitCollection != v5)
  {
    v8 = v5;
    v7 = [(UITraitCollection *)v5 isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_traitCollection, a3);
      [(ShortcutsRowCellProvider *)self _updateHeightConstraint];
      v6 = v8;
    }
  }
}

- (void)setSuggestionsDataProvider:(id)a3
{
  v5 = a3;
  suggestionsDataProvider = self->_suggestionsDataProvider;
  if (suggestionsDataProvider != v5)
  {
    v9 = v5;
    v7 = [(SuggestionsDataProvider *)suggestionsDataProvider observers];
    [v7 unregisterObserver:self];

    objc_storeStrong(&self->_suggestionsDataProvider, a3);
    v8 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider observers];
    [v8 registerObserver:self];

    [(ShortcutsRowCellProvider *)self _updateContentAnimated:0];
    v5 = v9;
  }
}

- (void)setFavoritesDataProvider:(id)a3
{
  v5 = a3;
  favoritesDataProvider = self->_favoritesDataProvider;
  if (favoritesDataProvider != v5)
  {
    v7 = v5;
    [(MapsFavoritesManager *)favoritesDataProvider unregisterObserver:self];
    objc_storeStrong(&self->_favoritesDataProvider, a3);
    [(MapsFavoritesManager *)self->_favoritesDataProvider registerObserver:self];
    [(ShortcutsRowCellProvider *)self _updateContentAnimated:0];
    v5 = v7;
  }
}

- (ShortcutsRowCellProvider)initWithCollectionView:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = ShortcutsRowCellProvider;
  v5 = [(ShortcutsRowCellProvider *)&v31 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_collectionView, v4);
    [v4 setDelegate:v6];

    v8 = [(ShortcutsRowCellProvider *)v6 _collectionViewLayout];
    WeakRetained = objc_loadWeakRetained(&v6->_collectionView);
    [WeakRetained setCollectionViewLayout:v8];

    v10 = objc_loadWeakRetained(&v6->_collectionView);
    v11 = objc_opt_class();
    v12 = +[ShortcutsRowCollectionViewCell cellReuseIdentifier];
    [v10 registerClass:v11 forCellWithReuseIdentifier:v12];

    v13 = [UICollectionViewDiffableDataSource alloc];
    v14 = objc_loadWeakRetained(&v6->_collectionView);
    v15 = sub_1007CDFC8(v6);
    v16 = [v13 initWithCollectionView:v14 cellProvider:v15];
    diffableDataSource = v6->_diffableDataSource;
    v6->_diffableDataSource = v16;

    v18 = objc_loadWeakRetained(&v6->_collectionView);
    v19 = [v18 heightAnchor];
    v20 = [v19 constraintEqualToConstant:0.0];
    heightConstraint = v6->_heightConstraint;
    v6->_heightConstraint = v20;

    v22 = [ShortcutsRowBackgroundView alloc];
    v23 = objc_loadWeakRetained(&v6->_collectionView);
    v24 = [(ShortcutsRowBackgroundView *)v22 initWithCollectionView:v23];
    backgroundView = v6->_backgroundView;
    v6->_backgroundView = v24;

    v26 = v6->_backgroundView;
    v27 = objc_loadWeakRetained(&v6->_collectionView);
    [v27 setBackgroundView:v26];

    v28 = +[NSDate distantPast];
    lastCellTappedTimestamp = v6->_lastCellTappedTimestamp;
    v6->_lastCellTappedTimestamp = v28;
  }

  return v6;
}

@end