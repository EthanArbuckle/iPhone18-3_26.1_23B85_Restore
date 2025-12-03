@interface ShortcutsRowCellProvider
- (ShortcutsRowCellProvider)initWithCollectionView:(id)view;
- (ShortcutsRowCellProviderDelegate)delegate;
- (UICollectionView)collectionView;
- (id)_collectionViewLayout;
- (id)_modelAtIndexPath:(id)path;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier;
- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point;
- (void)_buildModels;
- (void)_captureTapActionWithModel:(id)model;
- (void)_updateContentAnimated:(BOOL)animated;
- (void)_updateHeightConstraint;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path;
- (void)fetchMissingImages;
- (void)setFavoritesDataProvider:(id)provider;
- (void)setSuggestionsDataProvider:(id)provider;
- (void)setTraitCollection:(id)collection;
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

- (void)_captureTapActionWithModel:(id)model
{
  modelCopy = model;
  [GEOAPPortal captureUserAction:2007 target:8 value:0];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = modelCopy;
    if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
    {
      entry = [v3 entry];
      [HomeAnalyticsManager captureTapActionWithFavorite:entry];
    }

    else
    {
      entry = [v3 entryLegacy];
      [HomeAnalyticsManager captureTapActionWithEntry:entry];
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

- (id)collectionView:(id)view contextMenuConfiguration:(id)configuration highlightPreviewForItemAtIndexPath:(id)path
{
  v5 = [view cellForItemAtIndexPath:{path, configuration}];
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

- (id)collectionView:(id)view contextMenuConfigurationForItemsAtIndexPaths:(id)paths point:(CGPoint)point
{
  firstObject = [paths firstObject];
  v7 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:firstObject];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    entry = 0;
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
    entry = [v8 entry];
    isShortcutForSetup = [entry isShortcutForSetup];

    if (isShortcutForSetup)
    {
      goto LABEL_8;
    }

LABEL_6:
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100BA22F8;
    v13[3] = &unk_10163C1A0;
    v13[4] = self;
    entry = entry;
    v14 = entry;
    v11 = [UIContextMenuConfiguration configurationWithIdentifier:0 previewProvider:0 actionProvider:v13];

    goto LABEL_9;
  }

  entry = 0;
LABEL_8:
  v11 = 0;
LABEL_9:

  return v11;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  viewCopy = view;
  pathCopy = path;
  v7 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:pathCopy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    delegate2 = v7;
    v9 = +[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled];
    delegate = [(ShortcutsRowCellProvider *)self delegate];
    if (v9)
    {
      entry = [delegate2 entry];
      [delegate shortcutsRowCellProvider:self openFavorite:entry];
    }

    else
    {
      entry = [delegate2 entryLegacy];
      [delegate shortcutsRowCellProvider:self openShortcut:entry];
    }
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_9;
    }

    delegate2 = [(ShortcutsRowCellProvider *)self delegate];
    [delegate2 shortcutsRowCellProviderAddNewShortcut:self];
  }

LABEL_9:
  [viewCopy deselectItemAtIndexPath:pathCopy animated:1];
  [(ShortcutsRowCellProvider *)self _captureTapActionWithModel:v7];
  v12 = +[NSDate date];
  lastCellTappedTimestamp = self->_lastCellTappedTimestamp;
  self->_lastCellTappedTimestamp = v12;
}

- (void)collectionView:(id)view willDisplayCell:(id)cell forItemAtIndexPath:(id)path
{
  cellCopy = cell;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    model = [cellCopy model];
    [model fetchImageIfMissing];
  }

  [(NSDate *)self->_lastCellTappedTimestamp timeIntervalSinceNow];
  if (v9 < -1.0)
  {
    v10 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:pathCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
      {
        entry = [v10 entry];
        [HomeAnalyticsManager captureDisplayActionWithFavorite:entry];
      }

      else
      {
        entry = [v10 entryLegacy];
        [HomeAnalyticsManager captureDisplayActionWithEntry:entry];
      }
    }
  }
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path itemIdentifier:(id)identifier
{
  viewCopy = view;
  pathCopy = path;
  identifierCopy = identifier;
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
  v12 = identifierCopy;
  v21 = v12;
  v22 = &v23;
  [(NSArray *)cellModels enumerateObjectsUsingBlock:&v17];
  v13 = [ShortcutsRowCollectionViewCell cellReuseIdentifier:v17];
  v14 = [viewCopy dequeueReusableCellWithReuseIdentifier:v13 forIndexPath:pathCopy];
  v15 = [(ShortcutsRowCellProvider *)self _modelAtIndexPath:v24[5]];
  [v14 setModel:v15];

  [v14 setAccessibilityIdentifier:@"ShortcutsRowCell"];
  _Block_object_dispose(&v23, 8);

  return v14;
}

- (id)_modelAtIndexPath:(id)path
{
  pathCopy = path;
  if (([pathCopy row] & 0x8000000000000000) != 0 || (v5 = objc_msgSend(pathCopy, "row"), v5 >= -[NSArray count](self->_cellModels, "count")))
  {
    v6 = 0;
  }

  else
  {
    v6 = -[NSArray objectAtIndexedSubscript:](self->_cellModels, "objectAtIndexedSubscript:", [pathCopy row]);
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

- (void)_updateContentAnimated:(BOOL)animated
{
  animatedCopy = animated;
  if (+[_TtC4Maps18LibraryUIUtilities isMyPlacesEnabled])
  {
    shortcutsForMapsHome = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
    v6 = [shortcutsForMapsHome isEqual:self->_shortcuts];

    if (v6)
    {
      return;
    }

    shortcutsForMapsHome2 = [(MapsFavoritesManager *)self->_favoritesDataProvider shortcutsForMapsHome];
    shortcuts = self->_shortcuts;
    self->_shortcuts = shortcutsForMapsHome2;

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
    [(UICollectionViewDiffableDataSource *)diffableDataSource applySnapshot:v10 animatingDifferences:animatedCopy completion:v20];
  }

  else
  {
    shortcuts = [(SuggestionsDataProvider *)self->_suggestionsDataProvider shortcuts];
    v14 = [shortcuts isEqual:self->_shortcuts];

    if (v14)
    {
      return;
    }

    shortcuts2 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider shortcuts];
    shortcutsLegacy = self->_shortcutsLegacy;
    self->_shortcutsLegacy = shortcuts2;

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
    [(UICollectionViewDiffableDataSource *)v17 applySnapshot:v10 animatingDifferences:animatedCopy completion:v18];
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
  preferredContentSizeCategory = [(UITraitCollection *)self->_traitCollection preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

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

- (void)setTraitCollection:(id)collection
{
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_traitCollection != collectionCopy)
  {
    v8 = collectionCopy;
    v7 = [(UITraitCollection *)collectionCopy isEqual:?];
    v6 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_traitCollection, collection);
      [(ShortcutsRowCellProvider *)self _updateHeightConstraint];
      v6 = v8;
    }
  }
}

- (void)setSuggestionsDataProvider:(id)provider
{
  providerCopy = provider;
  suggestionsDataProvider = self->_suggestionsDataProvider;
  if (suggestionsDataProvider != providerCopy)
  {
    v9 = providerCopy;
    observers = [(SuggestionsDataProvider *)suggestionsDataProvider observers];
    [observers unregisterObserver:self];

    objc_storeStrong(&self->_suggestionsDataProvider, provider);
    observers2 = [(SuggestionsDataProvider *)self->_suggestionsDataProvider observers];
    [observers2 registerObserver:self];

    [(ShortcutsRowCellProvider *)self _updateContentAnimated:0];
    providerCopy = v9;
  }
}

- (void)setFavoritesDataProvider:(id)provider
{
  providerCopy = provider;
  favoritesDataProvider = self->_favoritesDataProvider;
  if (favoritesDataProvider != providerCopy)
  {
    v7 = providerCopy;
    [(MapsFavoritesManager *)favoritesDataProvider unregisterObserver:self];
    objc_storeStrong(&self->_favoritesDataProvider, provider);
    [(MapsFavoritesManager *)self->_favoritesDataProvider registerObserver:self];
    [(ShortcutsRowCellProvider *)self _updateContentAnimated:0];
    providerCopy = v7;
  }
}

- (ShortcutsRowCellProvider)initWithCollectionView:(id)view
{
  viewCopy = view;
  v31.receiver = self;
  v31.super_class = ShortcutsRowCellProvider;
  v5 = [(ShortcutsRowCellProvider *)&v31 init];
  v6 = v5;
  if (v5)
  {
    v7 = objc_storeWeak(&v5->_collectionView, viewCopy);
    [viewCopy setDelegate:v6];

    _collectionViewLayout = [(ShortcutsRowCellProvider *)v6 _collectionViewLayout];
    WeakRetained = objc_loadWeakRetained(&v6->_collectionView);
    [WeakRetained setCollectionViewLayout:_collectionViewLayout];

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
    heightAnchor = [v18 heightAnchor];
    v20 = [heightAnchor constraintEqualToConstant:0.0];
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